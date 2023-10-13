# importing os and the xml module ElementTree from the standard library
import os
from xml.etree import ElementTree as ET

##########################################
### FUNCTIONS ############################
##########################################

def append_named_entity(ne_element: ET.Element, ne_list: ET.Element, ne_parent: str):
    """
    Accesses the value of the xml:id attribute (f. i. "HS") of an input named entity xml 
    element (f. i. "persName") and checks if this named entity element is present in the input 
    xml tree (f. i. "listPerson"). If it is not present, a parent element (f. i "person") is 
    created and the named entity element is added to it as a child. In a last step this child
    element is added to the input tree. 

    Params
    ------
    ne_element : ET.Element
        A xml element that contains a named entity, f. i. "persName"
    ------
    ne_list : ET.Element
        A xml element like "listPerson", "listPlace", "listOrg"
    ------
    ne_parent : str
        The parent element of a named entity element like "persName", f. i. "person"
    ------
    Return : None 
    """

    ne_element_xml_id = ne_element.attrib['{http://www.w3.org/XML/1998/namespace}id']
    ne_list_element = ne_list.find(f".//{ne_element.tag}[@xml:id = '{ne_element_xml_id}']", namespace)
    if ne_list_element is None:
        named_entity_parent = ET.SubElement(ne_list, ne_parent)
        named_entity_parent.append(ne_element)

##########################################
### MAIN #################################
##########################################

# Registering the TEI namespace as the default namespace
ET.register_namespace("", "http://www.tei-c.org/ns/1.0")

# declaring the namespaces so we can use the shorthand notation with prefixes like "tei:"
namespace = {"tei":"http://www.tei-c.org/ns/1.0", "xml": "http://www.w3.org/XML/1998/namespace"}

# create the xml element "standOff" with child elements "listPerson", "listPlace" and "listOrg"
standoff = ET.Element("standOff")
list_person = ET.SubElement(standoff, "listPerson")
list_place = ET.SubElement(standoff, "listPlace")
list_org = ET.SubElement(standoff, "listOrg")

# adressing the directory in which the letters are stored
input_directory = 'briefe'

# looping through all the letters
for file in os.listdir(input_directory):
    tree = ET.parse(input_directory + "/" + file)
    root = tree.getroot()

    # looping through all the named entities in the standOff of the letters
    for element in root.findall(".//tei:listPerson/tei:person/tei:persName", namespace):
        append_named_entity(element, list_person, "person")

    for element in root.findall(".//tei:listPlace/tei:place/tei:placeName", namespace):
        append_named_entity(element, list_place, "place")

    for element in root.findall(".//tei:listOrg/tei:org/tei:orgName", namespace):
        append_named_entity(element, list_org, "org")

# writing the named entity index file
tree = ET.ElementTree(standoff)
ET.indent(tree, space="\t", level=0)
tree.write("ne_index.xml", encoding="UTF-8")
