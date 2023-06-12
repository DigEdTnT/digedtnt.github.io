---

layout: post

title: Transkribus → FairCopy

categories: [transition, transkribus, faircopy, xslt]

excerpt: Die Transition von Transkribus zu FairCopy umfasst die Transforamtion des TEI/XML-Exports von Transkribus mittels XSLT

---

# Allgemeine Beschreibung

In dieser Transition wird beschrieben, wie die von Transkribus exportierten TEI/XML-Dokumente mittels einer XSL-Transformation vorverarbeitet werden, um ein gutes Ausgangsdokument für die weitere Bearbeitung im TEI-Editor FairCopy zu erstellen. Dies ist vor allem aus mehreren Gründen notwendig: Beim Export aus Transkribus werden nicht valide TEI-Dokumenten erzeugt, außerdem werden für unsere Zwecke nicht notwendige TEI-Elemente bzw. -Attribute im Export, die wir entfernen möchten. Zuletzt wollen wir auch einige TEI-Elemente und -Attribute modifizieren, um sie unseren Wünschen entsprechend anzupassen. 


## Voraussetzungen

Die im DigEdTnT-Projekt vorgestellten Transitions setzen nicht nur bestimmte Kompetenzen der Benutzer:innen voraus, sondern stellen auch hinsichtlich der Software-Umgebung gewisse Anforderungen.


### Erforderliche Kenntnisse



* Einrichten einer Oxygen-Transformation (in dieser Transition erklärt)
* Grundlegende XSLT-Kenntnisse (für erweiterte Anpassungen)


### Benötigte Software



* Oxygen Editor

→ <span style="text-decoration:underline;">Hinweis:</span> Natürlich wäre es auch ohne Oxygen Editor möglich, über diverse frei zugängliche Online-Plattformen eine XSL-Transformation durchzuführen. Da aber einerseits für ediarum in dieser Pipeline ohnehin Oxygen benötigt wird und außerdem bei Online-Transformationen auch rechtliche Aspekte bei der Datenverarbeitung zu berücksichtigen wären, wird nachfolgend das Transformationsszenario im Oxygen-Editor beschrieben .


# Möglichkeiten & Grenzen

Der Übergang von einem Tool zu einem anderen lässt sich verschieden gestalten. Nachfolgend soll ein Überblick über die Vor- und Nachteile unserer Transition gegeben werden. 


## Stärken



* Nicht valider TEI/XML-Export von Transkribus wird in ein valides TEI-Dokument transformiert
* Für unsere Zwecke nicht notwendige TEI-Elemente bzw. -Attribute werden entfernt
* TEI-Elemente und -Attribute werden unseren Wünschen entsprechend angepasst


## Herausforderungen & Probleme



* keine


# XSL-Transformation


### Für eine Transformation des ausTranskribus exportierten TEIs in ein für FairCopy weiterverarbeitbares Dokument, haben wir für unser Beispielprojekt die Daten transformiert. Wie unser Transformationsszenario genau funktioniert, ist dem Punkt XSLT Dokumentation zu entnehmen. Dieses kann für andere Projekte angepasst und weiterverwendet werden.

Hier ist die XSLT-Ressource für unsere Transkribus-FairCopy-Transformation.



* Für die Transformation öffnen wir zuerst die zu transformierende XML-Datei, wählen dann den Button “Transformationsszenarios konfigurieren”, klicken auf Neu und wählen die Option “XML Transformation with XSLT”. \
 {% include image.html url="../data/pipelines/pipeline_2/transition_1/img/configure_transformation.png" description="XSL-Ressource für Transformation auswählen" %}
* In dem neuen Fenster geben wir schließlich den Pfad zu unserer XSL-Datei an.  \
{% include image.html url="../data/pipelines/pipeline_2/transition_1/img/choose_files.png" description="XSL-Ressource für Transformation auswählen" %}

    → Wir haben dem Szenario auch gleich einen Namen gegeben, um das Transformationsszenario zu speichern und später weiterverwenden bzw. auch auf andere XML-Dateien anwenden zu können. 

* Unter dem Reiter “Ausgabedatei” wählen wir außerdem noch, wo unser transformiertes XML gespeichert werden soll und setzen ein Häkchen bei der Option “Im Editor öffnen”, um uns das Ergebnis direkt anzusehen.  \
{% include image.html url="../data/pipelines/pipeline_2/transition_1/img/transformation_output.png" description="Dateiname für den Output wählen" %}

[Allgemeines Video-Tutorial zu XSLT](https://github.com/chpollin/Teaching/blob/master/TTT/TTT_6_XSLT/XSLT.md)


# XSLT Dokumentation



1. 
 Einbinden des TEI-Namespaces und Hinzufügen eines Templates für “identity transform”
Da wir TEI-Dokumente transformieren, fügen wir als `xpath-default-namespace` den TEI-Namespace an, um die TEI-Elemente ohne ein vorhergehendes `tei:` ansprechen zu können.

```

xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.tei-c.org/ns/1.0"
	xpath-default-namespace="http://www.tei-c.org/ns/1.0"
	exclude-result-prefixes='#all'>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:strip-space elements="*"/>

	

```

Weiters fügen wir das sogenannte “identity transform”-Template ein, um - zunächst einmal - unsere Quelldaten unverändert in das Zieldokument zu übertragen.

```
 <xsl:template match="@*|node()">
    	<xsl:copy>
        	<xsl:apply-templates select="@*|node()"/>
    	</xsl:copy>
	</xsl:template>
```



2. Transformation der Metadaten
* **Anlegen eines validen und minimalen TEI-Headers: **Bei dem automatisch beim TEI-Export aus Transkribus generierten TEI-Header fehlt das obligatorische `publicationStatement`, dafür ist ein `seriesStatement`, das aufgrund des fehlenend `publicationStatement` an dieser Stelle noch nicht erlaubt ist. Da wir den TEI-Header erst später mit Metadaten befüllen werden, fügen wir zunächst einen minimalen, aber validen Header ein.

```
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



* **Anpassung des `facsimile`-Elements: **Im Transkribus-Export enthält das `facsimile`-Element 4 `surface`-Elemente, die jeweils einer Seite der in Transkribus importierten Faksimileseiten entsprechen. Diese haben `graphic`- und `zone`-Kindelemente, von denen wir nur erstere beibehalten wollen. Als Attribute fügen wir den `graphic`-Elementen noch einen Mime-Typ (“image/jpeg”) hinzu und eine XML-ID, die wir aus der Position der Elemente generieren lassen. 

```
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
</xsl:template
```



* **Bearbeitung der `ab`-Elemente: **Wir wollen die `ab`-Elemente durch `p`-Elemente ersetzen und auch deren `facs`- und alle im Dokument vorkommenden `type`-Attribute entfernen, da wir sie nicht benötigen und letztere außerdem, da sie leer sind, unser Dokument invalide machen.

```
<xsl:template match="ab">
    <p>
        <xsl:apply-templates select="@* except @facs | node()"/>
    </p>
</xsl:template>
	
<xsl:template match="@type"/>

<xsl:template match="lb/@facs"/>
```



* **Bearbeitung der `lb`-Elemente: ** Auch bei den `lb`-Elementen möchten wir die `facs`-Attribute entfernen, zusätzlich wollen wir die Zählung der Zeilen im `n`-Attribut geringfügig anpassen (von n=”N001” → n=”1”)

```
<xsl:template match="lb/@facs"/>
	<xsl:template match="lb">
    	<xsl:copy>
        	<xsl:attribute name="n">
            	<xsl:value-of select="count(preceding-sibling::lb) + 1"/>
        	</xsl:attribute>
    	</xsl:copy>
</xsl:template>
```



* **Bearbeitung der `pb`-Elemente: **Hier passen wir zunächst das `facs`-Attribut an, sodass ein richtiger Verweis auf die Faksimiles gesichert ist. Dann kopieren wir alle weiteren Attribute außer dem `facs`-Element (in diesem Fall nur das `n`-Attribut) und entfernen in einem letzten Schritt noch alle `xml:id`-Attribute.

```
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


# Fazit



* 