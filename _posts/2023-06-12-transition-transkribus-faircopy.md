---

layout: post

title: Transkribus → FairCopy

categories: [transition, transkribus, faircopy, xslt]

excerpt: Die Transition von Transkribus zu FairCopy umfasst die Transformation des TEI/XML-Exports von Transkribus mittels XSLT

transitiondoc: .

xslt: https://github.com/DigEdTnT/digedtnt.github.io/blob/master/data/pipelines/pipeline_2/transition_1/data/transkribus_to_faircopy.xsl

last_modified_at: 2023-08-25

---

# Allgemeine Beschreibung

In dieser Transition wird beschrieben, wie die von Transkribus exportierten TEI/XML-Dokumente mittels einer XSL-Transformation vorverarbeitet werden, um ein  für die weitere Bearbeitung im TEI-Editor FairCopy gut geeignetes Ausgangsdokument zu erstellen. Dies ist vor allem aus mehreren Gründen notwendig: Beim Export aus Transkribus werden nicht valide TEI-Dokumenten erzeugt, außerdem finden sich für unsere Zwecke nicht notwendige TEI-Elemente bzw. -Attribute im Export, die wir entfernen möchten. Zuletzt wollen wir auch einige Elemente und -Attribute modifizieren, um sie unseren Wünschen entsprechend anzupassen. 


## Voraussetzungen

Die im DigEdTnT-Projekt vorgestellten Transitions setzen nicht nur bestimmte Kompetenzen der Benutzer:innen voraus, sondern stellen auch hinsichtlich der Software-Umgebung gewisse Anforderungen.


### Erforderliche Kenntnisse


* [EDV-Grundkenntnisse](https://digedtnt.github.io/about/#grundvoraussetzungen)
* Einrichten einer [Oxygen-Transformation](https://digedtnt.github.io/xsl-transformation)
* Grundlegende XSLT-Kenntnisse


### Benötigte Software

* Oxygen Editor

<span style="font-size:0.8rem;">→ <u>Hinweis:</u>  Natürlich wäre es auch ohne Oxygen Editor möglich, über diverse frei zugängliche Online-Plattformen eine XSL-Transformation durchzuführen. Da aber einerseits für ediarum in der Pipeline 1 ohnehin Oxygen benötigt wird und außerdem bei Online-Transformationen auch rechtliche Aspekte bei der Datenverarbeitung zu berücksichtigen wären, wird nachfolgend das Transformationsszenario im Oxygen-Editor beschrieben </span>


# Möglichkeiten & Grenzen

Der Übergang von einem Tool zu einem anderen lässt sich verschieden gestalten. Nachfolgend soll ein Überblick über die Vor- und Nachteile unserer Transition gegeben werden. 


## Stärken

* Nicht valider TEI/XML-Export von Transkribus wird in ein valides TEI-Dokument transformiert
* Für unsere Zwecke nicht notwendige TEI-Elemente bzw. -Attribute werden entfernt
* TEI-Elemente und -Attribute werden unseren Wünschen entsprechend angepasst


## Herausforderungen & Probleme



* keine


# XSL-Transformation


Für eine Transformation des aus Transkribus exportierten TEIs in ein für FairCopy weiterverarbeitbares Dokument, haben wir für unser Beispielprojekt die Daten transformiert. Wie unser Transformationsszenario genau funktioniert, ist dem Punkt [XSLT Dokumentation](#xslt-dokumentation) zu entnehmen. Dieses kann für andere Projekte angepasst und weiterverwendet werden.

Hier ist die [XSLT-Ressource](https://github.com/DigEdTnT/digedtnt.github.io/blob/master/data/pipelines/pipeline_2/transition_1/data/transkribus_to_faircopy.xsl) für unsere FromThePage-ediarum-Transformation.

Eine Kurzanleitung für das Einrichten eines Transformationsszenarios findet sich [hier](https://digedtnt.github.io/xsl-transformation).


# XSLT Dokumentation



## 1. Einbinden des TEI-Namespaces und Hinzufügen eines Templates für “identity transform”:
Da wir TEI-Dokumente transformieren, fügen wir als `xpath-default-namespace` den TEI-Namespace an, um die TEI-Elemente ohne ein vorhergehendes `tei:` ansprechen zu können.

```xml
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.tei-c.org/ns/1.0"
	xpath-default-namespace="http://www.tei-c.org/ns/1.0"
	exclude-result-prefixes='#all'>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:strip-space elements="*"/>
```

Weiters fügen wir das sogenannte “identity transform”-Template ein, um - zunächst einmal - unsere Quelldaten unverändert in das Zieldokument zu übertragen.

```xml
 <xsl:template match="@*|node()">
    	<xsl:copy>
        	<xsl:apply-templates select="@*|node()"/>
    	</xsl:copy>
	</xsl:template>
```

## 2. Transformation der Metadaten
* **Anlegen eines validen und minimalen TEI-Headers:** Bei dem automatisch beim TEI-Export aus Transkribus generierten TEI-Header fehlt das obligatorische `<publicationStatement>`, dafür ist ein `<seriesStatement>` vorhanden, das aufgrund des fehlenden `<publicationStatement>` an dieser Stelle noch nicht erlaubt ist. Da wir den TEI-Header erst später mit Metadaten befüllen werden, fügen wir zunächst einen minimalen, aber validen Header ein.

```xml
<xsl:template match="teiHeader">
    <teiHeader>
        <fileDesc>
            <titleStmt>
                <title>Title</title>
            </titleStmt>
            <publicationStmt>
                <p>Publication Information</p>
            </publicationStmt>
            <sourceDesc>
                <p>Information about the source</p>
            </sourceDesc>
        </fileDesc>
    </teiHeader>
</xsl:template>
```

* **Anpassung des `<facsimile>`-Elements:** Im Transkribus-Export enthält das `<facsimile>`-Element vier `<surface>`-Elemente, die jeweils einer Seite der in Transkribus importierten Faksimileseiten unseres vierseitigen Briefes entsprechen. Diese haben wiederum `<graphic>`- und `<zone>`-Kindelemente, von denen wir nur erstere beibehalten wollen. Weiters verfügen die `<surface>`- und `<graphic>`-Elemente über eine Reihe von Attributen (wie z. B. die Angabe der Höhe und Breite der importierten Bilder), die wir nicht weiter benötigen und die durch unser Template entfernt werden. Als neue Attribute fügen wir den `<graphic>`-Elementen `@mimeType` (“image/jpeg”) hinzu und eine XML-ID, die wir mittels `position()` generieren lassen. 

```xml
<xsl:template match="//facsimile">
    <facsimile>
        <xsl:for-each select="surface">
            <surface>
                <graphic mimeType="image/jpeg" url="foo">
                    <xsl:attribute name="xml:id">
                        <xsl:value-of select="concat('IMG.', position())"/>
                    </xsl:attribute>
                </graphic>
            </surface>
        </xsl:for-each>
    </facsimile>
</xsl:template>
```

## 3. Transformation des transkribierten Briefs

* **Bearbeitung der `<ab>`-Elemente:** Wir wollen die `<ab>`-Elemente durch `<p>`-Elemente ersetzen und auch die `@facs` und (bzw. alle im Dokument vorkommenden) `@type`-Attribute entfernen, da wir sie hier nicht benötigen und letztere außerdem, da sie leer sind, dazu führen, dass unser Dokument nicht valide ist.

```xml
<xsl:template match="ab">
    <p>
        <xsl:apply-templates select="@* except @facs | node()"/>
    </p>
</xsl:template>
	
<xsl:template match="@type"/>
```

* **Bearbeitung der `<lb>`-Elemente:** Auch bei den `<lb>`-Elementen möchten wir die `@facs` entfernen, zusätzlich wollen wir die Zählung der Zeilen im `@n`-Attribut geringfügig anpassen (von n=”N001” → n=”1”).

```xml
<xsl:template match="lb/@facs"/>
	
<xsl:template match="lb">
    <xsl:copy>
        <xsl:attribute name="n">
            <xsl:value-of select="count(preceding-sibling::lb) + 1"/>
        	<xsl:attribute>
    </xsl:copy>
</xsl:template>
```

* **Bearbeitung der `<pb>`-Elemente:** Hier passen wir zunächst das `@facs` an, sodass ein richtiger Verweis auf die Faksimiles gesichert ist. Dann kopieren wir alle weiteren Attribute außer dem neu erstellten `<facs>`-Element (in diesem Fall nur das `@n`) und entfernen in einem letzten Schritt noch alle `@xml:id`.

```xml
<xsl:template match="pb">
    <xsl:copy>
        <xsl:attribute name="facs">
            <xsl:value-of select="concat('IMG.', count(preceding-sibling::pb) + 1)"/>
        </xsl:attribute>
        <xsl:apply-templates select="@* except @facs | node()"/>
    </xsl:copy>
</xsl:template>

<xsl:template match="pb/@xml:id"/>

```

