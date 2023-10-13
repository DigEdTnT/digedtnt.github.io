# importing os, json and the xml module ElementTree from the standard library
import os
import json
from xml.etree import ElementTree as ET


##########################################
### FUNCTIONS ############################
##########################################
def read_json_file(filename: str) -> dict:
    """
    Opens the JSON file with the input filename and returns its content as a dictionary.

    Params
    ------
    filename : str
        The name of the file
    ------
    Return : The content of the JSON file as a dictionary
    """

    with open(filename, encoding="UTF-8") as fh:
        content = fh.read()
    return json.loads(content)


##########################################


def add_idno(ne_parent: ET.Element, ne_x_path: str, json_data: dict, json_key: str) -> None:
    """
    Accesses the child element specified with an XPath expression (f. i. "persName") of an input 
    xml element (f. i. "person"). The xml:id attribute of this child element is accessed and the 
    json dictionary is searched for an entry with a matching xml:id. If the status of this entry
    is marked as "safe", the identifier element is accessed. If there is a "preferred" entry with
    the value "YES", the "text" value of this identifier is accessed and appended to the input 
    xml element as an idno element. 

   Params
    ------
    ne_parent : ET.Element
        A xml element like "person" that contains a child element like "persName"
    ------
    ne_x_path : str
        An XPath expression to access the child element of the ne_parent element, f. i. "tei:persName"
    ------
    json_data : dict
        The JSON data as a dictionary
    ------
    json_data : str
        The to access the specific entry in the dictionary. One out of three values: "person", "place"
        or "organisation"
    ------
    Return : None 
    """

    ne_child_element = ne_parent.find(ne_x_path, namespace)
    ne_child_element_xml_id = ne_child_element.attrib["{http://www.w3.org/XML/1998/namespace}id"]
    for entry in json_data[json_key]:
        if entry["status"] == "safe" and entry["id"] == ne_child_element_xml_id:
            identifiers = entry["identifier"]
            for identifier in identifiers:
                if identifier["preferred"] == "YES":
                    idno = ET.Element("idno")
                    idno.text = identifier["#text"]
                    ne_parent.append(idno)


##########################################
### MAIN #################################
##########################################

# Registering the TEI namespace as the default namespace
ET.register_namespace("", "http://www.tei-c.org/ns/1.0")

# declaring the namespaces so we can use the shorthand notation with prefixes like "tei:"
namespace = {"tei": "http://www.tei-c.org/ns/1.0"}

# reading the JSON data
json_persons = read_json_file("basic-persons.json")
json_places = read_json_file("basic-places.json")
json_organisations = read_json_file("basic-organisations.json")

# adressing the directory on the disc on which the xml files are stored
input_directory = "briefe"
output_directory = "briefe_bearbeitet"

# looping through all the letters
for file in os.listdir(input_directory):
    tree = ET.parse(input_directory + "/" + file)
    root = tree.getroot()

    # looping through all the named entities in the letters and adding the identifier
    person_elements = root.findall(".//tei:listPerson/tei:person", namespace)
    for person_element in person_elements:
        add_idno(person_element, "tei:persName", json_persons, "person")

    place_elements = root.findall(".//tei:listPlace/tei:place", namespace)
    for place_element in place_elements:
        add_idno(place_element, "tei:placeName", json_places, "place")

    organisation_elements = root.findall(".//tei:listOrg/tei:org", namespace)
    for org_element in organisation_elements:
        add_idno(org_element, "tei:orgName", json_organisations, "organisation")

    # writing the letters to the output directory
    tree.write(output_directory + "/" + file, encoding="UTF-8")
