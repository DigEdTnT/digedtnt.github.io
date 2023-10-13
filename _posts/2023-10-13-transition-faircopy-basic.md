---

layout: post

title: FairCopy → ba[sic?]

categories: [transition, FairCopy, Python]

excerpt: Im Zuge der Transition von FairCopy zu ba[sic?] werden die in FairCopy annotierten Named Entities mit Normdaten angereichert.

---


# Allgemeine Beschreibung

Im Zuge der Annotation der Briefe Hugo Schuchardts mit _[FairCopy ](https://digedtnt.github.io/faircopy/)_ wurden Named Entities (Personen, Orte und Organisationen) ausgezeichnet und im `<standOff>` (z. B. in einer `<listPerson>`) verzeichnet. Im darauffolgenden Schritt der Normalisierung mit dem Tool _ba[sic?]_ sollen diese Named Entities mit Links auf Einträge von Normdatenanbietern angereichert werden. Um diese Normalisierung durchführen zu können, werden im Rahmen dieser mit der Programmiersprache Python durchgeführten Transition in einem [ersten Schritt](#1-erstellung-einer-indexdatei-der-in-den-briefen-annotierten-named-entities) alle Named Entities aus den Briefen extrahiert und in einer Index-Datei gesammelt. Im zweiten Schritt wird diese in _[ba[sic?]](https://digedtnt.github.io/basic/)_ ingestiert und die Normdatenanreicherung durchgeführt. Der Export aus _ba[sic?]_ wird dann in einem [dritten und letzten Schritt](#3-zusammenführung-der-normdaten-mit-den-in-den-briefen-annotierten-named-entities) mit den Einträgen im `<standOff>` der Briefe zusammengeführt.

<div class="essence">
Um die Normalisierung der Named Entities mit <span style="font-style:italic;">ba[sic?]</span> durchführen zu können, müssen diese zunächst aus den Briefen extrahiert werden, ebenso muss das Resultat dieser Normalisierung wieder mit den Briefen zusammengeführt werden. Beide Schritte werden im Zuge dieser Transition mittels der Programmiersprache Python umgesetzt.
</div>

## Voraussetzungen

Die im DigEdTnT-Projekt vorgestellten Transitions setzen nicht nur bestimmte Kompetenzen der Benutzer:innen voraus, sondern stellen auch hinsichtlich der Software-Umgebung gewisse Anforderungen.


### **Erforderliche Kenntnisse**



* [EDV-Grundkenntnisse](https://digedtnt.github.io/about/#grundvoraussetzungen)
* Grundlegende Python-Kenntnisse
* Grundlegende XML-Kenntnisse (v. a. XML-Struktur und XPath)


### **Benötigte Software**



* [Python](https://www.python.org/downloads/)
* Quelltext-Editor (z. B. [Visual Studio Code](https://code.visualstudio.com/download))


# Möglichkeiten & Grenzen

Der Übergang von einem Tool zu einem anderen lässt sich verschieden gestalten. Nachfolgend soll ein Überblick über die Vor- und Nachteile unserer Transition von FairCopy zu _ba[sic?]_ gegeben werden. 


## Stärken



* Erstellen eines Registers der in den Briefen annotierten Named Entities
* Anreicherung der in den Briefen annotierten Named Entities mit Verweisen auf Normdaten (GND- und GeoNames-Identifier in einem `<idno>`-Element)

## Herausforderungen & Probleme

* Keine


# Ausführen des Transition-Codes über Google Colab

Der in dieser Transition eingesetzte Python-Code ist auch in einem [Google-Colab-Notebook](https://colab.research.google.com/drive/1o0cPasIaeowj1XQkpTqQUTSxDyvnmFwI?usp=sharing) dokumentiert und kann dort eingesehen und  - ohne lokale Installation von Python - ausgeführt werden:

* Zunächst lassen wir uns mittels Klick auf das Ordnersymbol in der linken Leiste die Ordner und Dateien anzeigen, da im Zuge der Ausführung des Codes Dateien von GitHub geladen, aber auch erstellt werden.
* Danach können die einzelnen Codezellen per Klick auf das Play-Symbol ausgeführt werden. Über den Reiter “Laufzeit” können durch einen Klick auf “Alle ausführen” alle Codezellen automatisch hintereinander ausgeführt werden. Durch die Option “Verbindung trennen und Laufzeit löschen” kann das Notebook auf den Ursprungszustand zurückgesetzt werden.

{% include image.html url="../data/pipelines/pipeline_2/transition_2/data/img/colab_notebook.png" description="Google-Colab-Notebook"%}


# 1. Erstellung einer Indexdatei der in den Briefen annotierten Named Entities

Ziel des ersten Schrittes der Transition ist es, alle in den `<standOff>`-Elementen der Briefe verzeichneten Named Entities zu extrahieren und in einer Indexdatei zu sammeln. Die zugehörige Pythondatei kann auch von [GitHub](https://github.com/DigEdTnT/digedtnt.github.io/blob/master/data/pipelines/pipeline_2/transition_2/python/create_register.py) bezogen werden. Dabei soll folgendes Resultat erzielt werden:

```xml
<standOff xmlns="http://www.tei-c.org/ns/1.0">
	<listPerson>
		<person>
			<persName xml:id="P.HJ">Henry d´Arbois de Jubainville</persName>
		</person>
        <!-- more persons -->
    <listPerson>
    <listPlace>
		<place>
			<placeName xml:id="O.L">Lyon</placeName>
		</place>
        <!-- more places -->
    </listPlace>
    <listOrg>
		<org>
			<orgName xml:id="OR.RAN">Rossijskaja Akademija Nauk (St. Petersburg)</orgName>
		</org>
        <!-- more organisations -->
    </listOrg>
```

Der für das Erzeugen dieser Indexdatei notwendige Code wird folgend Abschnitt für Abschnitt erläutert. Zusammengefasst wird der obige (leere) Baum erzeugt und an diesen jedes in den Briefen verzeichnete Named-Entity-Element angehängt, sofern es in ihm noch nicht vorhanden ist.



* **Modulimport:** Zuerst werden zwei notwendige Module aus der Python-Standardbibliothek importiert:
    * os: Dieses Modul erlaubt Zugriff auf einige Funktionen des Betriebssystems und ermöglicht z. B.  die Arbeit mit Ordnern
    * ElementTree: Dieses Modul ermöglicht die Arbeit mit XML

```python
# importing os and the xml module ElementTree from the standard library
import os
from xml.etree import ElementTree as ET
```



* **Funktionsdefinition:** Das Gros der Arbeit im ersten Schritt der Transition erledigt eine von uns eigens definierte Funktion. Mit ihr wird auf das `@xml:id`-Attribut der übergebenen Named-Entity-Elemente (z. B. `<persName>`) zugegriffen und überprüft, ob ein Element mit diesem Attribut in einem anderen XML-Baum, der angelegt wurde, bereits vorhanden ist (siehe übernächster Punkt). Ist das Element in diesem Baum noch nicht vorhanden, wird für dieses Element ein Elternelement (je nach Argument, z. B. `<person>`) angelegt, dem es angefügt wird. Zuletzt wird dieses dem im anderen Baum vorhandenen entsprechenden “list”-Element angehängt (z. B. `<listPerson>`). 

```python
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
```



* **Namespaces:** Der TEI-Namespace wird hier als Default-Namespace festgelegt und es werden Kurzschreibweisen für den TEI- und XML-Namespace definiert, sodass diese Kürzel anstelle der URIs verwendet werden können.

```python
# Registering the TEI namespace as the default namespace
ET.register_namespace("", "http://www.tei-c.org/ns/1.0")

# declaring the namespaces so we can use the shorthand notation with prefixes like "tei:"
namespace = {"tei":"http://www.tei-c.org/ns/1.0", "xml": "http://www.w3.org/XML/1998/namespace"}
```



*  **Anlegen des Index-Baumes:** In diesem Schritt wird der XML-Baum angelegt, in dem alle in den Briefen verzeichneten einzigartigen Named Entities gesammelt werden. Es wird ein `<standOff>`-Element mit `<listPerson>`-, `<listPlace>`- und `<listOrg>`-Kindelementen erzeugt, an die im nächsten Schritt über Aufruf der oben definierten Funktion die in den Briefen verzeichneten Named Entities angehängt werden.

```python
# create the xml element "standOff" with child elements "listPerson", "listPlace" and "listOrg"
standoff = ET.Element("standOff")
list_person = ET.SubElement(standoff, "listPerson")
list_place = ET.SubElement(standoff, "listPlace")
list_org = ET.SubElement(standoff, "listOrg")
```



* **Iteration durch alle Briefe:** Hier wird durch alle Briefe in dem Eingabeordner iteriert. Bei jedem Brief wird auf alle im `<standOff>` verzeichneten Named Entities (`<persName>`, `<placeName>` und `<orgName>`) zugegriffen. Sie werden der oben definierten Funktion als Argumente übergeben und durch diese dem im vorherigen Schritt angelegten Index-Baum angehängt, falls sie noch nicht in ihm vorhanden sind.

```python
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
```



* **Schreiben der Index-Datei:** Zuletzt wird der Index-Baum formatiert und als XML-Datei auf die Festplatte geschrieben

```python
# writing the named entity index file
tree = ET.ElementTree(standoff)
ET.indent(tree, space="\t", level=0)
tree.write("ne_index.xml", encoding="UTF-8")
```


# 2. Anreicherung der extrahierten Named Entities mit Normdaten

Im zweiten Schritt der Transition werden die extrahierten Named Entities mittels des Tools _[ba[sic?]](basicdemo.saw-leipzig.de/)_ mit Normdaten angereichert. Die Umsetzung dieser Anreicherung ist im zugehörigen [Tooldoc](https://digedtnt.github.io/basic/) dokumentiert, die Resultate können als [JSON-Dateien](https://github.com/DigEdTnT/digedtnt.github.io/tree/master/data/pipelines/pipeline_2/basic/data/json) bezogen werden, sodass diese für die Durchführung des nächsten Schrittes genutzt werden können.


# 3. Zusammenführung der Normdaten mit den in den Briefen annotierten Named Entities

Im dritten und letzten Schritt der Transition wird den im `<standOff>` der Briefe verzeichneten Named Entities ein `<idno>`-Element mit Link auf den ihnen entsprechenden Eintrag in den Datenbanken der Normdatenanbieter (GND oder GeoNames) angefügt. Die Pythondatei kann von GitHub bezogen werden. Dabei soll folgendes Resultat erzielt werden, hier exemplarisch veranschaulich an einer Person:

```xml
<standOff xml:id="standOff-1">
    <listPerson>
        <person>
            <persName xml:id="P.FM">Franz von Miklosich</persName>
            <idno>https://d-nb.info/gnd/119065932</idno>
        </person>
    </listPerson>
```

In diesem Schritt wird durch jeden Brief und dort durch jede im `<standOff>`-Element der Briefe verzeichnete Named Entity iteriert und auf den ihr entsprechenden Eintrag in der jeweiligen JSON-Datei zugegriffen. Nur wenn es sich dort um einen als “safe” markierten Treffer handelt, wird der Named Entity der in der JSON-Datei vorhandene Link hinzugefügt.



* **Modulimport:** Zuerst werden drei notwendige Module aus der Python-Standardbibliothek importiert:
    * os: Dieses Modul erlaubt Zugriff auf einige Funktionen des Betriebssystems und ermöglicht z. B.  die Arbeit mit Ordnern
    * json: Dieses Modul dient der Verarbeitung von JSON-Dateien
    * ElementTree: Dieses Modul ermöglicht die Arbeit mit XML

```python
# importing os, json and the xml module ElementTree from the standard library
import os
import json
from xml.etree import ElementTree as ET
```



* **Funktionsdefinitionen:** Für diesen Teil der Transition haben definieren wir zwei Funktionen
    * Die erste Funktion dient dem Lesen von JSON-Dateien

```python
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
```



* Die zweite Funktion übernimmt die Hauptaufgabe in diesem Teil der Transition. Mit ihr wird auf das `@xml:id` der übergebenen Named Entities zugegriffen, danach wird die übergebene JSON-Datei nach einem Eintrag mit dieser ID durchsucht. Die JSON-Datei weist dabei folgende Struktur auf:

```json
{
    "person": [
        {
            "id": "P.HJ",
            "status": "safe",
            "name": "Henry d´Arbois de Jubainville",
            "identifier": [
                {
                    "preferred": "YES",
                    "#text": "https://d-nb.info/gnd/116317353"
                }
            ]
        },
    ]
}
```


Nur wenn der “status” der Entität als “safe” markiert ist, wird auf den Normdaten-Link zugegriffen, wobei der mit “preferred”: “YES” ausgezeichnete Link herausgegriffen wird. Dieser Link wird dann der Named Entity als `<idno>`-Element hinzugefügt.

```python
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
```



* **Namespaces:** Der TEI-Namespace wird hier als Default-Namespace festgelegt und es wird eine Kurzschreibweise für ihn definiert, sodass dieses Kürzel anstelle der URI verwendet werden kann.

```python
# Registering the TEI namespace as the default namespace
ET.register_namespace("", "http://www.tei-c.org/ns/1.0")

# declaring the namespaces so we can use the shorthand notation with prefixes like "tei:"
namespace = {"tei": "http://www.tei-c.org/ns/1.0"}

```



* **Lesen der JSON-Datei:** Mittels der eingangs definierten Funktion werden die [JSON-Dateien](https://github.com/DigEdTnT/digedtnt.github.io/tree/master/data/pipelines/pipeline_2/basic/data/json) eingelesen.

```python
# reading the JSON data
json_persons = read_json_file("basic-persons.json")
json_places = read_json_file("basic-places.json")
json_organisations = read_json_file("basic-organisations.json")
```



* **Iteration durch alle Briefe:** Hier wird durch alle Briefe in dem Eingabeordner iteriert. Bei jedem Brief wird auf alle im `<standOff>` verzeichneten Named Entities (`<person>`-, `<place>`- und `<org>`-Elemente) zugegriffen. Sie werden der oben definierten Funktion als Argumente übergeben und um die in den JSON-Dateien vorhandenen Links auf die Einträge in den Normdatenbanken ergänzt. Zuletzt werden die überarbeiteten Briefe in den Ausgabeordner geschrieben.

```python
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

```