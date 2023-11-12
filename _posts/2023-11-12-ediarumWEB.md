---

layout: post

title: ediarum.WEB

categories: [tool, ediarum.WEB, publikation, tei, opensource]

excerpt: ediarum.WEB ist eine Bibliothek für die eXist-db, die die schnelle und einfache Publikation von (TEI-)XML-Datein ermöglichen soll

last_modified_at:   2023-11-12

---


# Allgemeine Beschreibung

[In Bearbeitung]

ediarum.WEB ist ein sich in Entwicklung befindliches Modul von [ediarum](https://www.ediarum.org/index.html), einem Open-Source-Softwareprojekt der TELOTA-Initiative der Berlin-Brandenburgischen Akademie der Wissenschaften. Bei ediarum.WEB handelt es sich um eine Bibliothek für die [eXist-db](http://www.exist-db.org), die es zum Ziel hat, das schnelle und einfache Publizieren von (TEI-)XML-Dateien zu ermöglichen.


## Anwendungsbereiche



* Webpublikation von (TEI-)XML-Daten


## Funktionsübersicht



* Erstellung von digitalen Editionen
    * Einfaches Anlegen von sogenannten Objekten (z. B. Briefen, Personen, Orte und Organisationen im Falle unserer Briefedition) und Beziehungen zwischen den Objekten (z. B. Person A als Absender von Brief B oder Nennung von Ort X in Brief Y)
    * Anlegen von Filtern bei Objekten (z. B. nach Jahreszahlen bei Briefen oder nach Alphabet bei Personen) möglich
    * Transformation der Daten bei Objekten durch das Einbinden XSLT-Stylesheets möglich
    * Referenzierung von Teilen der Objekte (z. B. Seiten von Briefen, eine Verschachtelung ist möglich, z. B. Seiten und Zeilen)
    * Einbindung einer Suche möglich
* API-Einbindung

## Voraussetzungen


Jedes Tool kann einerseits bestimmte Vorkenntnisse der Benutzer:innen voraussetzen und andererseits auch hinsichtlich der Software-Umgebung gewisse Anforderungen stellen.


### **Erforderliche Kenntnisse**



* TEI-XML
* XPath
* XQuery
* XSLT
* HTML/CSS-Grundkenntnisse
* [Bootstrap](https://getbootstrap.com/)-Grundkenntnisse


### **Benötigte Software**



* eXist-db 
* Docker Desktop (für eine weniger fehleranfällige Installation von eXist-db)


## Tool-Kompatibilität


<table>
  <tr>
   <td>
   </td>
   <td>IIIF
   </td>
   <td>Transkribus
   </td>
   <td>FromThePage
   </td>
   <td>FairCopy
   </td>
   <td>ediarum
   </td>
   <td>OpenRefine
   </td>
   <td>ba[sic?]
   </td>
   <td>TEI Publisher
   </td>
  </tr>
  <tr>
   <td>ediarum.WEB
   </td>
   <td>❌
   </td>
   <td>❌
   </td>
   <td>❌
   </td>
   <td>🦄
   </td>
   <td>✅
   </td>
   <td>❌
   </td>
   <td>❌
   </td>
   <td>❌
   </td>
  </tr>
</table>



## Kostenübersicht



* **_ediarum.WEB_ & _eXist-db_:** 
    * kostenlos


# Möglichkeiten & Grenzen

Da jedes Projekt unterschiedliche Anforderungen mit sich bringt, sollen nachfolgend mögliche Vor- und Nachteile des getesteten Tools dargestellt werden. 


## Stärken



* Vorkonfiguriertes Basislayout, das adaptiert werden kann
* Basale digitale Editionen mit typischen Funktionalitäten (z. B. Filter bei Objekten wie Personen (z. B. alphabetisch) und Texten (z. B. nach Jahreszahl) schnell und relativ einfach umsetzbar
* Rückgriff auf eine große Menge an vordefinierten XQuery-Funktionen möglich, um eine Vielzahl an potentiell gewünschten Funktionalitäten umzusetzen
* Kontinuierliche Weiterentwicklung (letztes Release im Mai 2023)
* Hilfsbereiter und reaktionsschneller Support 

## Herausforderungen & Probleme

* Höhere Einstiegsvoraussetzungen:
    * Zumindest Grundvertrautheit mit eXist-db erforderlich, idealerweise fortgeschrittene Kenntnisse
    * DH-Enwickler:in für die Umsetzung komplexerer digitaler Editionen erforderlich (z. B. fortgeschrittene XQuery-Kenntnisse für das Verständnis und die Anwendung der Funktionen, Webdesign-Kenntnisse, XSLT-Kenntnisse usw.)
* Abhängigkeit von eXist-db


# Einrichtung & Erste Schritte

Anhand eines[Beispielprojekts](https://digedtnt.github.io/about/#briefsammlung-pipeline-2), in dem mit handgeschriebenen Briefen des Linguisten Hugo Schuchardt (1842-1927) aus dem 19. Jahrhundert bzw. 20. Jahrhundert gearbeitet wird, soll nachfolgend ein möglicher Arbeitsablauf mit dem Publikationstool _ediarum.WEB_ beschrieben werden. In einem ersten Schritt wurden die handgeschriebenen Briefe bereits mittels des OCR/HTR-Tools [Transkribus Lite](https://digedtnt.github.io/transkribus/) transkribiert. Danach wurde der TEI/XML-Export in den TEI/XML-Editor [FairCopy](https://digedtnt.github.io/faircopy/) ingestiert und tiefergehend annotiert, wobei Named Entities (Personen, Orte und Organisationen) ausgezeichnet wurden. Diese Named Entities wurden im Zuge des ersten Teils der [Transition](https://digedtnt.github.io/transition-faircopy-basic/) aus den Briefen extrahiert und dann mittels des Normalisierungstools _[ba[sic?]](https://digedtnt.github.io/basic/)_ um Normdaten ergänzt (Links auf GND- und GeoNames-Einträge). Danach wurden diese erhobenen Informationen im zweiten Teil der [Transition](https://digedtnt.github.io/transition-faircopy-basic/) wieder mit den Briefen zusammengeführt. In der letzten, hier dokumentierten Phase des Beispielprojekts sollen nun die Möglichkeiten der Publikation der Briefe mittels des Tools _ediarum.WEB_ erprobt werden.


## 1. Installation einzelner Komponenten



* **Installation der XML-Datenbank eXist-db:** Da es sich bei ediarum.WEB um eine Bibliothek für eXist-db handelt, müssen wir diese Datenbank zunächst installieren. Wir entscheiden uns für die Installation via Docker Desktop, die [hier](https://digedtnt.github.io/docker-exist/) erläutert wird.
* **Installation von _ediarum.WEB_ in _eXist-db_:** Im nächsten Schritt muss nun ediarum-WEB in eXist-db eingerichtet werden. 
    * Dafür laden wir aus dem _[ediarum.WEB-GitHub-Repository](https://github.com/ediarum/ediarum.WEB/releases)_ die aktuellste Version (2.1.1) von _ediarum.WEB_ als XAR-Datei herunter. 

        {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/ediarum_web_XAR.png" description="Download von ediarum.WEB via GitHub" %} 

    * Nach Starten von eXist-db und Einloggen als Admin kann die XAR-Datei über den Package Manager hochgeladen werden:

        {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/upload_ediarum_web.png" description="Upload von ediarum.WEB in die eXist-db" %} 

    * _ediarum.WEB_ wird nicht im Package Manager als App angezeigt, betätigt man aber die Launcher-Schaltfläche und startet dann die eXide-IDE, findet man _ediarum.WEB_ im Ordner “apps” vor.

        {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/ediarum_web_installiert.png" description="ediarum.WEB in der eXide-IDE" %}

* **Erzeugen eines Projekttemplates mittels Apache Ant:** [In Bearbeitung]


## 2. Einrichtung des Projekts



* Zunächst müssen wir unsere XML-Dateien, die Briefe Hugo Schuchardts und das Named-Entity-Register, in eXist-db hochladen. Dazu öffnen wir eXide, wählen im Reiter “File” und daraus “Manage” aus, woraufhin sich der Dateimanager öffnet. 
{% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/exide_create_collection.png" description="Der eXide-Dateimanager" %}

Auf der Ebene der Ordner “apps” und “system” legen wir einen Ordner namens “projects” an und in diesem erzeugen wir folgende verschachtelte Struktur: 
{% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/folder_structure.png" description="Die neu angelegte Ordner-Struktur" %}

Danach navigieren wir in den Ordner “letters”, klicken auf das Wolkensymbol und laden die fünf Briefe Hugo Schuchardts hoch. Ist dies erledigt, kehren wir mittels Klick auf “done” zur Navigationsansicht zurück und laden in gleicher Weise das Named-Entity-Register in den Ordner “register” hoch.

{% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/upload_xml.png" description="Das Hochladen der Briefe" %} 
 



## 3. Bearbeitung der Dokumente



* **Anpassen des Titels der Indexsseite:** Zuerst wollen wir den Titel unseres Projekts abändern und navigieren dazu über eXide in den Ordner “templates” und öffnen die Datei “page.html”. Dort ändern wir die beiden Vorkommnisse von “Workshop” auf “Hugo Schuchardt: Briefe” ab, speichern die Datei und laden dann die Indexseite neu. 

    {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/landing_page_schuchardt.png" description="Die neue Indexsseite" %} 


    Den Footer und die Projektbeschreibung passen wir zunächst nicht an, beiden werden wir uns später zuwenden.

* **Bearbeiten der Projektinformationen:** Als nächstes öffnen wir die Datei `appconf.xml`, um die Projektinformationen zu bearbeiten. 

    {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/appconf.png" description="Die Datei appconf.xml" %}


    Wir ändern die dort im `<project>`-Element vorhandenen Daten wie folgt ab:


    ```xml
    <config
        xmlns="http://www.bbaw.de/telota/software/ediarum/web/appconf">
        <project>
            <name>Hugo_Schuchardt_Briefe</name>
            <status>test</status>
            <collection>/db/projects/schuchardt/data</collection>
        </project>
    </config>
    ```


    Folgende Informationen werden hier mittels XML-Elemente festgelegt:

    * `<name>`: Hier wird der Projektname festgelegt, der Name dient auch als ID
    * `<status>`: Hier wird der Status der Instanz festgelegt, unterschieden wird zwischen “test”, “internal” und “public”. Wir belassen hier den Status auf “test”
    * `<collection>`: Hier wird mittels einem absolutem Pfad oder relativen Pfad zur “appconf.xml” festgelegt, wo die Projektdaten zu finden sind
* **Anlegen von Objekten und Beziehungen über die “appconf.xml”:** Laut [Dokumentation](https://github.com/ediarum/ediarum.WEB/blob/main/APPCONF.md) wird in der `appconf.xml` festgelegt, wie die gewünschten Forschungsdaten aus dem XML-Datenbestand extrahiert werden. Es werden zwei Kategorien von Forschungsdaten definiert: Objekte (objects) und Beziehungen (relations). Als Objekte verschiedener Art können die unterschiedlichen atomaren Einheiten einer digitalen Edition verstanden werden. Eine Briefedition wie die unsrige kann z. B. folgende Objekttypen enthalten: Briefe, Personen, Orte, Schlüsselwörter usw. Zwischen den Objekten können Beziehungen hergestellt und definiert werden, z. B. zwischen einer Person und einem Brief (als Sender oder Empfänger) oder einer Person und einem Ort (z. B. als Geburtsort oder Wohnort). Neben Objekten und Beziehungen können auch Suchindizes definiert werden. Der allgemeine Aufbau der `appconf.xml` sieht wie folgt aus:

    ```xml
   <config xmlns="http://www.bbaw.de/telota/software/ediarum/web/appconf">
    	<project>
        	...
    	</project>
    	<object> ...</object>
    	<object> ...</object>
    	...
    	<relation> ...</relation>
    	<relation> ...</relation>
    	...
    	<search> ...</search>
    	<search> ...</search>
    	...
   </config>


    ```

    * **Anlegen eines Objekts für die Briefe:** Um ein Objekt für die Briefe anzulegen, fügen wird folgendes XML-Snippet als Schwesternelement von `<project>` ein:

        ```xml
        <object xml:id="briefe">
            <name>Briefe</name>
            <collection>/letters</collection>
            <item>
                <namespace id="tei">http://www.tei-c.org/ns/1.0</namespace>
                <root>tei:TEI</root>
                <id>.//tei:publicationStmt/tei:idno[@type="PID"]</id>
                <label type="xpath">.//tei:titleStmt/tei:title[1]/normalize-space()</label>
            </item>
        </object>
        ```


        Folgend wird erläutert, wozu die Elemente dienen:

        * `<object/@xml:id>`:  Hier wird die ID des Objekttyps festgelegt, sie wird zum Beispiel bei der Definition von Beziehungen benötigt
        * `<name>`: Hier wird der Name des Objekttyps festgelegt, dieser kann im Frontend verwendet werden. Wir entscheiden uns für “Briefe”
        * `<collection>`: Ein relativer Pfad zu dem im  `<project>` angegebenen Pfad, in dem nach Objekten gesucht werden soll
        * `<namespace>`: Hier können ein oder mehrere Namespaces angegeben werden, die dann in den in den nächsten Elementen angegebenen XPath-Ausdrücken verwendet werden. Das `@id` legt das Namespace-Prefix fest. 
        * `<root>`: Hier wird das Wurzelement der Objekts angegeben, der verwendete Ausdruck muss ein qualified name sein. Wir geben hier das Wurzelelement der Briefe, `<TEI>`, an
        * `<id>`: Hier muss ein XPath-Ausdruck angeführt werden, der angibt, wo die IDs der Objekte zu finden sind. In diesem Fall haben wir uns dazu entschieden, den `<TEI>`-Wurzelelementen der Briefe fortlaufende IDs zuzuweisen (“hsa.1” bis “hsa.5”), auf die wir hier zugreifen
        * `<label>`: Hier muss ein XPath- oder XQuery-Ausdruck angegeben werden, mit dem das Label, also der Anzeigename, der Objekte festgelegt wird

        Nach dem Speichern der `appconf.xml` und dem Neuladen der Indexseite finden wir die neue Schaltfläche “Briefe” vor. Wie sich zeigt, werden die Briefe in der Datenbank gezählt und als Liste ausgegeben.


        {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/letters_list.png" description="Die Briefe in der Datenbank" %}

    * **Anlegen der Objekte für Personen, Orte und Organisationen:** In gleicher Weise legen wir nun Objekte für die in unserem Named-Entity-Register verzeichneten Personen, Orte und Organisationen an. Zunächst passen wir den Pfad bei `<collection>` an, sodass er auf den Ordner verweist, in dem die Registerdatei abgelegt ist. Das `<root>`-Element wird ebenfalls abgeändert und lautet `tei:person`, `tei:place` oder `tei:org`. Ebenfalls muss noch der XPath-Ausdruck für das gewünschte Label angegeben werden, also z. B. `.//tei:persName/normalize-space()”`

        Personen:


        ```xml
        <object xml:id="personen">
            <name>Personen</name>
            <collection>/register</collection>
            <item>
                <namespace id="tei">http://www.tei-c.org/ns/1.0</namespace>
                <root>tei:person</root>
                <id>./@xml:id</id>
                <label type="xpath">.//tei:persName/normalize-space()</label>
            </item>
        </object>
        ```
        
        Orte:

        ```xml
        <object xml:id="orte">
            <name>Orte</name>
            <collection>/register</collection>
            <item>
                <namespace id="tei">http://www.tei-c.org/ns/1.0</namespace>
                <root>tei:place</root>
                <id>./@xml:id</id>
                <label type="xpath">.//tei:placeName/normalize-space()</label>
            </item>
        </object>
        ```


        Organisationen:


        ```xml
        <object xml:id="organisationen">
            <name>Organisationen</name>
            <collection>/register</collection>
            <item>
                <namespace id="tei">http://www.tei-c.org/ns/1.0</namespace>
                <root>tei:org</root>
                <id>./@xml:id</id>
                <label type="xpath">.//tei:orgName/normalize-space()</label>
            </item>
        </object>
        ```


        Nach dem Speichern der `appconf.xml` und dem Neuladen der Indexseite finden wir nun Schaltflächen für Personen, Orte und Organisationen vor, wobei die Named Entities analog wie bei den Briefen aufgelistet werden


        {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/named_entities.png" description="Die Indexseite mit den Schaltflächen für die Named Entities" %}

    * **Anlegen von Properties (Filtern):** Im nächsten Schritt wollen wir Filter anlegen, sodass wir die Briefe z. B. nach Jahren oder die Personen alphabetisch filtern können. Filter werden immer innerhalb von Objekten angelegt, wir fügen also innerhalb des Objekts “Briefe” folgenden XML-Block ein:

        ```xml
        <filters>
            <filter xml:id="correspYear">
                <name>Jahr</name>
                <type>union</type>
                <xpath>.//tei:correspAction//tei:date/@when/substring(.,1,4)</xpath>
                <label-function type="xquery">function($string){$string}</label-function>
            </filter>
        </filters>
        ```
        Die `appconf.xml` mit dem Filter nach Sendedatum der Briefe

        {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/filter.png" description="Anlegen des Jahreszahlen-Filters in der appconf.xml" %}


        Wiederum legen wir den Namen des Filters fest, der auch so im Frontend angezeigt wird und geben mittels XPath-Ausdruck an, wonach gefiltert werden soll. In unserem Fall wird mittels XPath auf das Sendedatum der Briefe zugegriffen (z. B. “1879-01-01”) und mittels Substring-Funktion das Jahr ausgewählt, das dann auch im Filter klickbar sein wird. Innerhalb des Filters finden sich auch zwei neue Elemente:

        * `<type>`: Hier wird das Verhalten des Filters definiert, die möglichen Werte des Filter sind in der [Dokumentation](https://github.com/ediarum/ediarum.WEB/blob/main/APPCONF.md#base-information) einsehbar. Wir wählen “union”, das bedeutet, dass im Filter mehrere Eigenschaften auswählbar sind und nur Dokumente, die zumindest eine dieser Eigenschaften haben, angezeigt werden. Wir können also z. B. zwei (oder mehr) Jahre auswählen und es werden folgend nur die Briefe angezeigt, die in einem dieser Jahre abgeschickt wurden.
        * `<label-function>`: Hier kann optional eine XQuery-Funktion angegeben werden, mit der der im Filter angezeigte Wert (also z. B. die durch den XPath-Ausdruck ausgewählte Jahreszahl) noch weiter manipuliert werden könnte. Wir entscheiden gegen eine Manipulation und lassen den Wert durch die XQuery-Funktion unverändert zurückgeben.

        Nach dem Speichern und der Rückkehr zur Indexseite der Briefe finden wir rechts neben der Liste der Briefe unseren Jahreszahl-Filter, der beim Scrollen auf die Schaltfläche “Alle” aufklappt.


        {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/filter_letters.png" description="Der Jahreszahl-Filter" %}


        In einem nächsten Schritt wollen wir einen Filter für die Personen anlegen, sodass wir diese alphabetisch nach Nachnamen filtern können. 


        ```xml
        <filters>
            <filter xml:id="alphabet">
                <name>alphabetisch</name>
                <type>single</type>
                <xpath>.//tei:persName/tei:surname</xpath>
                <label-function type="xquery"> function($string){substring(normalize-space($string), 1,1)}</label-function>
            </filter>
        </filters>
        ```


        Als Wert von `<type>` geben wir diesmal “single” an, da immer nur ein Buchstabe des Alphabets ausgewählt werden soll. Da wir nach Nachnamen filtern wollen, geben wir den entsprechenden XPath-Ausdruck an. Damit im Filter lediglich der Anfangsbuchstabe der Nachnamen angezeigt werden soll, greifen wir diesen mittels Substring-Funktion im XQuery-Ausdruck heraus.

    * **Einrichten einer XSL-Transformation für Briefe und Personen:** Folgen wir momentan den Links auf der jeweiligen Indexseite der Briefe, Orte oder Personen, landen wir auf einer Detailansicht, bei der momentan lediglich der Hinweis angezeigt wird, dass eine XSL-Transformation eingerichtet werden soll. 

        {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/letter_detail.png" description="Die Detailansicht eines Briefes" %}


        **Anlegen der XSL-Transformation für die Briefe**: Um die Briefanzeige umzusetzen, muss zunächst ein XSLT-Stylesheet angelegt werden. Wir navigieren dazu in eXide innerhalb unserer App in den Ordner “resources” und danach in “xslt” und legen folgendes Stylesheet namens `briefe_details.xsl` an:


        ```xml
        <xsl:stylesheet
            xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
            xmlns:telota="http://www.telota.de"
            xmlns:tei="http://www.tei-c.org/ns/1.0" version="2.0" exclude-result-prefixes="tei">
            <xsl:output method="html" doctype-system="http://www.w3.org/TR/html4/strict.dtd" doctype-public="-//W3C//DTD HTML 4.01//EN" indent="yes"/>
            <xsl:template match="/tei:TEI">
                <div class="row">
                    <div class="col-md-12">
                        <xsl:apply-templates select="tei:text"/>
                    </div>
                </div>
            </xsl:template>
            <xsl:template match="tei:p">
                <p>
                    <xsl:apply-templates/>
                </p>
            </xsl:template>
            <xsl:template match="tei:dateline|tei:opener|tei:salute|tei:signed">
                <p>
                    <xsl:apply-templates/>
                </p>
            </xsl:template>
            <xsl:template match="tei:hi">
                <hi style="text-decoration: underline;">
                    <xsl:apply-templates/>
                </hi>
            </xsl:template>
            <xsl:template match="tei:persName">
                <a href="$base-url/personen/{@ref/substring-after(., '#')}">
                    <xsl:apply-templates/>
                </a>
            </xsl:template>
            <xsl:template match="tei:placeName">
                <a href="$base-url/orte/{@ref/substring-after(., '#')}">
                    <xsl:apply-templates/>
                </a>
            </xsl:template>
            <xsl:template match="tei:orgName">
                <a href="$base-url/organisationen/{@ref/substring-after(., '#')}">
                    <xsl:apply-templates/>
                </a>
            </xsl:template>
        </xsl:stylesheet>
        ```


        Wir belassen es zunächst bei einem basalen Stylesheet, in dem alle `<p>`-, `<dateline>`-, `<opener>`-, `<salute>`- und `<signed>`-Elemente in einem  eigenen Absatz  ausgegeben werden sollen. Zusätzlich wollen wir bei den in den Briefen vorkommenden Named Entities, also den Personen, Orten und Organisationen, eine Verlinkung zu den jeweiligen Einträgen in den Registern herstellen. Dazu nutzen wir bei den Personen folgendes Template:


        ```xml
       <xsl:template match="tei:persName">
           	<a href="$base-url/personen/{@ref/substring-after(., '#')}">
           		<xsl:apply-templates/>
           	</a>
        </xsl:template>
        ```


        Wir greifen hier auf das `@ref` der Named Entities zu, greifen die ID, die sich hinter dem #-Zeichen findet, heraus (z. B. “P.HS”) und konstruieren einen Link auf den Eintrag im Personenregister.


        Im nächsten Schritt muss die `appconf.xml` adaptiert werden, um das Stylesheet mit den Briefen zu verknüpfen. Dazu fügen wir folgendes XML-Snippet innerhalb des Brief-Objekts ein:


        ```xml
        <views>
            <view id="default">
                <xslt>resources/xslt/briefe_details.xsl</xslt>
                <label>Standard</label>
            </view>
        </views>
        ```

        Die `appconf.xml` mit dem `<view>`-Element zum Einbinden des XSLT-Stylesheets:

        {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/xslt.png" description="Einbinden des XSLT-Stylesheets " %}


        Mit `view/@id` wird die ID des Views angegeben, die auch von der API verwendet wird. Im `<xslt>`-Element wird der relative Pfad zum XSLT-Styleheet ausgehend von der App angegeben. Das `<label>`-Element gibt wiederum die Bezeichnung des Views, an die im Frontend angezeigt werden könnte.


        Rufen wir jetzt die Detailansicht eines Briefes auf, sehen wir, dass er gemäß dem Stylesheet transformiert und angezeigt wird:


        {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/letter_stylesheet.png" description="Die Detailansicht eines Briefes" %}


        **Anlegen der XSL-Transformation für die Personen**: Im nächsten Schritt legen wir im selben Ordner ein XSLT-Stylesheet namens `personen_details.xsl` an, um die Detailansicht der Personen einzurichten. Wir greifen hierbei auf das bereits vorhandene Stylesheet des Workshops zurück und passen es für unsere Zwecke an. Wir lassen Vor- und Nachnamen der Personen und den Verweis auf den Eintrag in der GND ausgeben. Wären in unserem Register noch weitere Informationen wie etwa Geburts- und Sterbedatum ebenfalls verzeichnet, könnten wir sie hier auch ausgeben lassen.


        ```xml     
        <xsl:stylesheet
            xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
            xmlns:telota="http://www.telota.de"
            xmlns:tei="http://www.tei-c.org/ns/1.0" version="2.0" exclude-result-prefixes="tei">
            <xsl:output method="html" doctype-system="http://www.w3.org/TR/html4/strict.dtd" doctype-public="-//W3C//DTD HTML 4.01//EN" indent="yes"/>
            <xsl:template match="/tei:person">
                <div class="row">
                    <div class="col-md-12">
                        <h3>Grunddaten</h3>
                        <div class="row">
                            <label class="col-sm-2">Vorname:</label>
                            <div class="col-sm-10">
                                <xsl:value-of select="tei:persName/tei:forename"/>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-sm-2">Nachname:</label>
                            <div class="col-sm-10">
                                <xsl:value-of select="tei:persName/tei:surname"/>
                            </div>
                        </div>
                        <h3>Verweise</h3>
                        <ul>
                            <xsl:apply-templates select="tei:idno"/>
                        </ul>
                    </div>
                </div>
            </xsl:template>
            <xsl:template match="tei:persName">
                <li>
                    <xsl:value-of select="."/>
                </li>
            </xsl:template>
            <xsl:template match="tei:idno">
                <li>
                    <a href="{.}">
                        <xsl:value-of select="."/>
                    </a>
                </li>
            </xsl:template>
        </xsl:stylesheet>
        ```


        Zuletzt müssen wir wiederum die `appconf.xml` adaptieren, um das Stylesheet mit den Personen zu verknüpfen. Dazu fügen wir folgendes XML-Snippet innerhalb des Personen-Objekts ein:

        ```xml
        <views>
            <view id="default">
                <xslt>resources/xslt/personen_details.xsl</xslt>
                <label>Standard</label>
            </view>
        </views>
        ```
        
        Die `appconf.xml` mit dem `<view>`-Element zum Einbinden des XSLT-Stylesheets für die Personen:

        {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/xslt_persons.png" description="Das XML-Snippet für die Personen" %}


        Folgen wir jetzt den Links auf die Personen in den Briefen oder klicken im Personenregister auf einen Eintrag, werden wir zur Detailseite der Person weitergeleitet:


        {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/persons_details.png" description="Die Detailansicht der Personen" %}

    * **Anpassen der Detailseite für Personen:** In einem nächsten Schritt wollen wir die Detailseite für Personen anpassen und bei jeder Person anzeigen lassen, in welchem Brief sie genannt wird.
        * Wir öffnen zunächst die Datei `controller.xql` und kommentieren folgende Codezeile ein:

        `edwebcontroller:view-with-feed("/personen/", "data-pages/personen-details.html", "object-type/personen/id/"),`

        {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/controller_persons.png" description="Bearbeitung der Datei “controller.xql”" %}

        * Danach navigieren in “views” → “data-pages”, kopieren die Datei `template-details.html` und benennen sie in `personen-details.html` um.

            {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/datapages_persons.png" description="Erstellen der Datei “persons_details”" %}

        * Um die Personen mit den Briefen zu verknüpfen, in denen sie genannt werden, muss eine relation (Beziehung) in der `appconf.xml` angelegt werden. Wir fügen folgendes XML-Snippet als Geschwisterlement von `<object>` ein, das wir dem [Dokumentation](https://github.com/ediarum/ediarum.WEB/blob/main/APPCONF.md#42-subject-and-object-condition) entnehmen und geringfügig für unsere Zwecke adaptieren:

            ```xml
            <relation xml:id="namensnennung" subject="personen" object="briefe">
                <name>Namensnennung</name>
                <collection>/letters</collection>
                <item>
                    <namespace id="tei">http://www.tei-c.org/ns/1.0</namespace>
                    <root>tei:person/tei:persName</root>
                    <label type="xquery">function ($node as node()) { "Nennung" }</label>
                </item>
                <subject-condition>function($this as map(*), $subject as map(*)) {
                    $this?xml/@xml:id = $subject?id
                    }
                </subject-condition>
                <object-condition>function($this as map(*), $object as map(*)) {
                    $this?absolute-resource-id = $object?absolute-resource-id
                    }
                </object-condition>
            </relation>
            ```


            Mit `@xml:id` innerhalb von `<relation>` wird der Name der Beziehung angegeben, der auch von der API verwendet wird. Mit `@subject` wird die ID des Subjekts der Beziehung festgelegt, in unserem Fall die Personen, und mit `@object` das Objekt der Beziehung, in unserem Fall die Briefe. Mit `<name>` wird der Name des Beziehungstyps (“namensnennung”) definiert, `<collection>` gibt den relativen Pfad zur im `<project>` definierten Sammlung an, in der nach Beziehungen gesucht werden soll (im Ordner “letters”). Wiederum muss auch der TEI-Namespace in `<namespace>` angegeben werden. Mit `<root>` wird das Wurzelement jeder Beziehung angegeben, in unserem Fall bezieht sich der XPath-Ausdruck auf die im `<standOff>` der Briefe verzeichneten Personen. Bei `<label>` wird in unserem Fall ein XQuery-Ausdruck angegeben, um das Label der Beziehung zu festzulegen, in unserem Fall “Namensnennung”. Mit `<subject-condition>` und `<object-condition>` wird festgelegt, wie in einer Beziehung ein Subjekt mit einem Objekt verknüpft wird, dazu dienen XQuery-Funktionen, deren genauere Funktionsweise [hier](https://github.com/ediarum/ediarum.WEB/blob/main/APPCONF.md#4-definition-of-a-relation) dokumentiert ist. Wichtig ist, dass wir die in der Codezeile `$this?xml/@key = $subject?id` das `@key` durch `@xml:id` ersetzen, da dieses Attribut die ID der Personen enthält.


            {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/define_relation.png" description="Das Definieren einer Beziehung." %}

        * Nun müssen wir nur noch die Beziehung auf den Detailseiten der Personen anzeigen lassen. Wir öffnen dazu die Seite “personen-details” und fügen folgenden Code ein, dem wir dem [Tutorial](https://www.ediarum.org/docs/ediarum-web-step-by-step/index.html#/17/1) entnehmen und geringfügig adaptieren.

            ```html
            <div id="section/relations-msdesc">
                <h3> Wird in den folgenden Briefen genannt:</h3>
                <div data-template="edweb:load-relations-for-subject" data-template-relation="namensnennung">
                    <div data-template="edweb:template-switch">
                        <switch>
                            <span data-template="edweb:insert-count" data-template-from="relations" />
                        </switch>
                        <p case="0">Keine Briefe vorhanden.</p>
                        <span case="default">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">Titel</th>
                                        <th scope="col">Kontextrolle</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <div data-template="templates:each" data-template-from="relations" data-template-to="item">
                                        <tr>
                                            <td>
                                                <a data-template="edweb:template-detail-link" data-template-from="item">
                                                    <span data-template="edweb:insert-string" data-template-path="item?label" />
                                                </a>
                                            </td>
                                            <td>
                                                <span data-template="edweb:insert-string" data-template-path="item?predicate" />
                                            </td>
                                        </tr>
                                    </div>
                                </tbody>
                            </table>
                        </span>
                    </div>
                </div>
            </div>
            ```
            Die Seite `personen-details.html` mit eingefügtem HTML-Snippet:

            {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/relation_persons.png" description="Anzeigen der Beziehung auf der Detailseite der Personen" %}


            Öffnen wir jetzt eine Detailseite der Personen, werden die Briefe, in denen die Person genannt wird, in einer Tabelle angezeigt. Durch Klick auf die Links können wir zu den jeweiligen Briefen navigieren.


            {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/person_letters.png" description="Die mit der Person verknüpften Briefe" %}

    * **Anpassen der Detailseite der Briefe und Einrichtung eines seitenweisen Blätterns:**  Momentan wird der gesamte Brieftext auf einer Seite angezeigt, was bei umfangreicheren Briefen ein längeres Scrollen bedeutet. Wir wollen deshalb ein seitenweises Blättern einzurichten, wozu einige Schritte erforderlich sind.
        * Zunächst öffnen wir die `controller.xql` und fügen folgendes Codesnippet ein:

        `edwebcontroller:view-with-feed("/personen/", "data-pages/briefe-details.html", "object-type/briefe/id/"),`


        {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/controller_briefe.png" description="Einbinden der Detailseiten der Briefe" %}

        * Als nächstes müssen wir die Referenzierung der einzelnen Teile des Brief-Objekts, in unserem Fall der Seiten, einrichten. Dazu kehren wir zur `appconf.xml` und fügen innerhalb des `<object>` der Briefe folgendes XML-Snippet ein:

            ```xml
            <parts separator="." prefix="-">
                <part xml:id="page" starts-with="p">
               	    <root>tei:pb</root>
               	    <id>./@n</id>
                </part>
            </parts>
            ```


            Die Attribute `@separator` und `@prefix` müssen verpflichtend angegeben werden. Ersteres legt fest, wie Teile und Unterteile im Falle von Verschachtelung abgeteilt würden (also z. B. durch Punkt wie in unserem Fall). Zweiteres legt fest, wie die Namespaces (`@starts-with`) von den Werten getrennt werden (also z. B. durch Bindestrich in unserem Fall wie etwa “page-1”). `<root>` legt wieder das Wurzelelement des Teils fest, in unserem Fall die Seiten (`<tei:pb>`), `<id>` gibt die ID des Teils an, in unserem Fall das `@n`.


            {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/parts_briefe.png" description="Unterteilung der Briefe in der in Seiten" %}

        * Für das Umsetzen der seitenweisen Anzeige benötigen wir einige Funktionen, die wir dem Tutorial entnehmen können. Wir navigieren in den Ordner “modules”, entfernen die dort liegende Datei `app.xql` und ersetzen sie durch die gleichnamige im [Tutorial](https://www.ediarum.org/docs/ediarum-web-step-by-step/download/examples/app.xql) vorhandene Datei.
        * Nun müssen wir nur noch in “briefe_details.html” folgenden Codeblock ersetzen:

            ```html
           <div class="row">
               <div class="col-md-1"></div>
               <div class="col-md-7 book-like" id="object-content">
               	<div data-template="edweb:template-transform-current"></div>
               </div>
               <div class="col-md-1"></div>
               <div class="col-md-3"></div>
           </div>
            ```

            Wir fügen stattdessen folgenden Code ein, den wir ebenfalls dem Tutorial entnehmen, wobei wir ihn für unsere Zwecke geringfügig anpassen, u. a. deshalb, da wir keine zweite XSLT-Datei haben, mit der wir weitere Informationen der Briefe ausgeben.

            ```xml
           <div class="row" data-template="app:add-page-id">
               <div class="col-md-1"/>
               <div data-template="app:load-parts" data-template-part="page">
               	<div data-template="app:load-page">
               		<div class="col-7 box whitebox page-height">
               			<div class="nav-scroller py-1 mb-2">
               				<nav class="nav d-flex justify-content-center">
               					<div data-template="app:select-page"/>
               				</nav>
               			</div>
               			<div data-template="app:transform" data-template-from="part" data-template-resource="resources/xslt/briefe_details.xsl"/></div>
               		<div class="col-1"/></div>
               </div>
           </div>
            ```


            Navigieren wir nun zu der Detailansicht eines Briefes, zeigt sich, dass nur die erste Seite angezeigt wird und ein Navigationsmenü zur Verfügung steht, mit dem zwischen den einzelnen Seiten umgeschaltet werden kann.


            {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/briefe_pages.png" description="Das Menü zum Umschalten zwischen den einzelnen Briefseiten" %}

    * **Einfügen einer Suchfunktion:** [In Arbeit]


## 5. Export 

[In Arbeit]


# Kontakt

**Unternehmensgröße:** 

**Weblink:** [https://github.com/ediarum/ediarum.WEB](https://github.com/ediarum/ediarum.WEB)    


<table>
  <tr>
   <td>Martin Fechner (Telota)
   </td>
   <td><a href="mailto:fechner@bbaw.de">fechner@bbaw.de</a>  
   </td>
  </tr>
</table>



# Ressourcen


## Dokumentation



* [GitHub](https://github.com/ediarum/ediarum.WEB) (API.md, APPCONF.md, FEATURES.md, LIBRARIES.md, README.md)

## Tutorials

* [Erste Schritte](https://www.ediarum.org/docs/ediarum-web-step-by-step/index.html#/) 


## Projekte, die dieses Tool genutzt haben



* 


## Literatur



* Derzeit ist keine Literatur zu _ediarum.WEB_ bekannt


# Factsheet

[In Arbeit]
