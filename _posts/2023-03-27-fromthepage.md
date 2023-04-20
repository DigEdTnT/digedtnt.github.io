---

layout: post

title: FromThePage

categories: [tool, transcription, FromThePage, opensource]

excerpt: FromThePage ist eine Plattform für kollaborative Transkriptionen.

---



# Allgemeine Beschreibung

FromThePage ist eine Plattform für kollaborative Transkriptionen, die 2005 ins Leben gerufen wurde, um die Arbeit bei der Transkription von Textsammlungen zu erleichtern. Die Software wurde 2009 unter einen Open-Source-Lizenz veröffentlicht und wird seit 2010 für die Transkription nach dem Crowdsourcing-Prinzip von Bibliotheken, Archiven und Museen genutzt. Durch die Anpassung an die besonderen Bedürfnisse der verschiedenen Institutionen wird die Software ständig weiterentwickelt. Seit 2014 liegt der Fokus vor allem auf wissenschaftlichen digitalen Editionen.


## Anwendungsbereiche



* Manuskript-Transkription
* [OCR](https://de.wikipedia.org/wiki/Texterkennung)/[HTR](https://de.wikipedia.org/wiki/Handschrifterkennung)-Textkorrekturen
* Simples Text-Mark-up
* Annotation (Fokus: historische Dokumente)
* Indexierung


## Funktionsübersicht



* Transkription in Editoransicht mit Bild-Text-Synopse
* Multilinguales Interface (DE momentan in Arbeit)
* Versionskontrolle (Tracking bei jedem Abspeichern, Versionen öffentlich einsehbar)
* Textuelles Mark-up (auf 3 Arten)
    * Silent Mark-up → Zeilenumbrüche, Absatzmarkierungen bedürfen keiner zusätzlichen Auszeichnung, sondern werden direkt übernommen und in entsprechende Codes umgewandelt
    * Tags (inklusive farblicher Kennzeichnung) → hierfür gibt es eine Auswahl an unterstützten Mark-up-Tags (vorwiegend entsprechend TEI-Standard)
    * Buttons → die Auswahl der Buttons kann von den Projektinhaber:innen konfiguriert werden (es können jedoch keine eigenen Buttons kreiert werden)
* Editorkonfigurationen
    * projektspezifische Auswahl an unterstützten Tag-Buttons kann durch Projektinhaber:in zur Verfügung gestellt werden
    * projektspezifische Transkriptionsrichtlinien können festgelegt werden
* Indexierung und spätere Indexansicht kanonischer Namen mittels Mouseover
* Data Mining über Referenzierungen für Suchbegriffe/Stichworte
* Metadaten-Anreicherung zur Beschreibung des gesamten Projektmaterials und einzelner Werke
* Sprachunterstützung → alle nach Unicode-Standard unterstützten Zeichensätze
* Eigene Übersetzungseditoransicht
* Unterstützung von Texttypen wie Formulare, Karteikarten und Bestandsbücher mit Tabellenformatierung über [Markdown-Tabellensyntax](https://content.fromthepage.com/project-owner-documentation/table-encoding/)
* [LaTex-Kodierung](https://content.fromthepage.com/project-owner-documentation/encoding-formula-with-latex/) für wissenschaftliche und mathematische Formeln möglich
* Unterschiedliche Darstellung des Mark-ups je nach Umgebung:
    * _Single-Page-Darstellung:_ 1:1-Darstellung (Zeilenumbrüche werden beibehalten)
    * _Multi-Page-Darstellung:_ nur Thumbnail-Bilder für die Faksimiles, zur Darstellung von Suchergebnissen (Absatzumbrüche werden beibehalten)
* Übersicht über Projektfortschritt durch die Möglichkeit Bearbeitungsstati für einzelne Dokumente und Werke zu setzen (z.B. “Needs Review”)
* Diskussionsmöglichkeit für Mitarbeitende am Ende jeder Transkription
* Diverse Exportformate: TEI, PDF, DOCX, Plain Text, HTML etc.
* Integrative Workflows mit Transkribus, Omeka-S und FairCopy
* Direkte Verknüpfung zu Voyant, Verbatim, IIIF
* API für die automatisierte Veröffentlichung bei Fertigstellung einer Transkription


Weitere und technische Übersicht: siehe [Fact Sheet zum Tool](#fact-sheet-zum-tool)


## Voraussetzungen

Jedes Tool kann einerseits bestimmte Vorkenntnisse der Benutzer:innen voraussetzen und andererseits auch hinsichtlich der Software-Umgebung gewisse Anforderungen stellen.


### Erforderliche Kenntnisse



* Keine
* Grundkenntnisse zu Markup-Sprachen (HTML, TEI, MediaWiki) von Vorteil


### Benötigte Software



* Webbrowser


## Tool-Kompatibilität


<table>
  <tr>
   <td>
   </td>
   <td>IIIF
   </td>
   <td>Transkribus
   </td>
   <td>ediarum
   </td>
   <td>OpenRefine
   </td>
   <td>ba[sic?]
   </td>
   <td>teiPublisher
   </td>
   <td>ediarum.WEB
   </td>
  </tr>
  <tr>
   <td>FromThePage
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>🦄
   </td>
   <td>❌
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



* Klein- oder Testprojekte: 200 Seiten - kostenlos
* Einzelforschende: bis zu 10.000 Seiten - 1200 Dollar/Jahr
* Betreuung von Institutionen: bis zu 50.000 Seiten - ca. 3600 Dollar/Jahr

[Detaillierte Preisübersicht](https://fromthepage.com/pricing)


# Möglichkeiten & Grenzen

Da jedes Projekt unterschiedliche Anforderungen mit sich bringt, sollen nachfolgend mögliche Vor- und Nachteile des getesteten Tools dargestellt werden.


## Stärken



* Remote Kollaboration möglich
* Subject-Tagging zur Erstellung von Registern und nach einem gewissen Projektfortschritt auch automatische Verlinkungen
* User- bzw. Projekt-Management: Überblick über Statistiken (Dauer, Umfang, etc.)
* Schneller und hilfreicher Support über Chat-Interface (Erreichbarkeit zu Arbeitszeiten in anderer Zeitzone - CST/CDT)
* Vielzahl an qualitätssichernden Maßnahmen:
    * Schutz vor Vandalismus durch Registrierungserfordernis
    * Einschränkung auf bestimmten Kreis an Mitarbeitende möglich
    * Einstellungen für eine strikte Qualitätskontrolle: Obligatorische Reviews können angefordert und Validierungen auf bestimmten Kreis an Reviewer:innen eingeschränkt werden
    * Fertiggestellte Unterprojekte können eingeschränkt und nur für bestimmte Mitarbeitende für die Revision bearbeitbar gemacht werden
    * Textpassagen können vor Webcrawlern oder Eingriffen von unregistrierten Nutzer:innen geschützt werden (nur Transkribierenden mit entsprechender Erlaubnis - über &lt;sensitive>-Tag - dürfen markierte Textpassage bearbeiten)
* Community für Transkription: Bewerbung des Projekts über den Newsletter von FromThePage oder über Social Media (z. B. Twitter)

Mögliche (von den Entwickler:innen vorgeschlagene) Transitions bzw. Integrationen:



* FromThePage → IIIF → TEI-XML → FairCopy
* Transkribus (HTR) → Plain Text → FromThePage
* FromThePage → Plain Text → Transkribus (Ground Truth/Training)
* FromThePage → TEI/XML → teiPublisher/EVT (Publikationstool)


## Herausforderungen & Probleme



* Eingeschränkte Mark-up-Möglichkeiten durch Beschränkung auf unterstützte Tags (derzeit 30 Tags)
* Für detaillierte Annotationen entsprechend TEI-Konventionen eher weniger praktisch, da es keine Möglichkeit einer TEI-Validierung innerhalb des Transkriptionseditors gibt
* Farbliche Markierungen, Ergänzungen durch Transkribierende und einige andere Textmerkmale, die selbst von editionswissenschaftlich ungeschulten Transkribierenden einfach ausgezeichnet werden könnten, werden nicht mit eigenen Tag-Buttons unterstützt. Auch wenn ein Workaround möglich ist und Tags entsprechend des TEI-Standards verwendet werden könnten, werden diese aber in der Transkriptionsansicht nicht validiert. Dadurch besteht grundsätzlich immer das Risiko einer intensiven Nachbearbeitung im TEI/XML-Export (z.B. bei Tippfehlern in den Tags oder Positionierung der Tags an unzulässigen Stellen)
* Probleme mit der Zeichenkodierung beim Export: Buchstaben mit Diakritika werden im TEI nicht korrekt dargestellt
* Tabellarische Darstellungen nur über Mark-Down (Pipes und Dashes) möglich
* Metadaten-Beschreibung in den Projekt-Einstellungen teilweise unklar - aus den Bezeichnungen im Eingabeformular geht nicht klar hervor, welchen TEI-Header-Elementen diese im Output entsprechen könnten (siehe Export)
* Metadaten aus den Werk-Einstellungen werden nicht in den TEI-Export integriert
* Exportiertes TEI ist nicht valide (siehe unter Export der Dokumente)
* Keine XSL-Transformationen  innerhalb des Systems möglich oder durchführbar


# Einrichtung & Erste Schritte

Anhand eines Beispielprojekts, das zum Ziel hat, Kochrezepte aus dem Mittelalter computergestützt zu analysieren und später über eine Forschungsplattform zur Verfügung zu stellen, soll nachfolgend ein möglicher Arbeitsablauf mit dem Transkriptions- und Annotationstool FromThePage beschrieben werden.



## 1.  Registrierung
   * Um in FromThePage ein Projekt anzulegen, muss man sich jedenfalls registrieren. Für unsere Testzwecke haben wir ein zweiwöchiges Probe-Benutzerkonto eingerichtet, das uns ermöglicht, bis zu 200 Seiten zur Transkription hochzuladen. Erforderlich ist dafür lediglich eine E-Mail-Adresse.
{% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/registration.PNG" description="Abb. x: Registrierung" %}
## 2.  Projekteinrichtung
   * In der Dashboard-Ansicht ist es sinnvoll, zu Beginn eine Sammlung (“create a collection”) anzulegen, indem ein Titel sowie eine Beschreibung der Sammlung erstellt wird.
{% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/owner-dashboard.PNG" description="Abb. x: Projekt-Dashboard" %}
   * Für unser Projekt legen wir eine Sammlung mit Kochrezepten aus dem Mittelalter an.
{% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/create-collection.PNG" description="Abb. x: Anlegen einer Sammlung" %}
   * In unserem Beispielprojekt handelt es sich um verschiedene Manuskripte aus unterschiedlichen Regionen und mit unterschiedlichen Handschriften, die zu unterschiedlichen Zeiten erstellt wurden. Im nächsten Schritt legen wir also in unserer Sammlung für jedes Manuskript ein eigenes Werk an.
{% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/create-work.PNG" description="Abb. x: Werke erstellen" %}
   * Für einen möglichst schnellen Upload mit wenigen Klicks wählen wir die Möglichkeit, eine ZIP-Datei mit den gesammelten Bilddateien von zwei Manuskripten hochzuladen. Wichtig dabei ist, die Manuskripte in separaten Ordnern abzuspeichern, damit diese direkt als eigenständige Werke erkannt werden.
   {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/zip-folder.PNG" description="Abb. x: ZIP-Upload" %}
   → Sollten später noch Faksimiles zu einem Werk hinzukommen, können diese übrigens jederzeit noch nachträglich zu einem Werk hinzugefügt werden.
   * Da uns von den Bibliotheken, die über die Originale verfügen, bereits ein paar Metadaten bekannt sind, legen wir in jedem unserer Manuskript-Ordner auch eine [YAML-Datei](https://de.wikipedia.org/wiki/YAML) mit den bereits vorhandenen Metadaten ab. Um zu vermeiden, dass es mit dem Upload Probleme gibt, überprüft man am besten mit dem [YAML-Checker](https://yamlchecker.com/), ob die Syntax korrekt ist.
   {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/zip-with-metadata.PNG" description="Abb. x: Metadaten-Upload" %}
   * Eine Vorlage für den Aufbau der Metadaten-Datei steht unter der Upload-Möglichkeit zur Verfügung und kann einfach mit den entsprechenden Inhalten gefüllt werden.
   ```yml
   # Title of a work -- this brief string is displayed prominently to end users
   title: 'MS Augsburg, Universitätsbibl., Cod.III.1.2°43 (A1)'
   # Description -- a block of HTML describing the work
   description: 'Dieses Manuskript beinhaltet mittelalterliche Rezepte in Bastarda. Kenntnis des Bayrischen und mittelalterlichen Lateins von Vorteil.'
   # Physical Description -- raw HTML is accepted
   physical_description: 'Neue Blattzählung 1-84. Wortreklamanten meist abgeschnitten.Textverlust: 1 Blatt fehlt zwischen fol. 59-60. Bastarda -durchgehend von einer Hand; Nachträge einiger jüngerer Hände, um 1500/Anfang 16. Jh.: 23r, 35r, 73r-79r an den Rändern; geübte Hand, sauberes Schriftbild, Oberlängen orientieren sich am Mittelband. Alter Einband: starker Pergamentumschlag mit übergreifendem Rückendeckel.'
   # Document History -- raw HTML is accepted
   document_history: '4. Viertel 15. Jh. Entstehungsort unbekannt. Alter Besitzvermerk fol. 1r durch Übermalen völlig getilgt; Erwerbung des Fürsten Ludwig, vgl. 1r. Oettingisches Wappen und Erwerbsjahr: 1813. Bibliothekssignatur des 19. Jhs.'
   # Permission Description -- raw HTML is accepted
   permission_description: 'Text: <a href="https://creativecommons.org/licenses/by/4.0">Creative Commons BY 4.0</a> Faksimiles: <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons BY-NC-SA 4.0 </a>'
   # location of composition (brief string)
   location_of_composition: 'Unknown'
   # author or creator (brief string)
   author: 'Unknown'
   # Recipient -- the recipient of the document, i.e. for a letter or other targeted document
   recipient: ''
   # HTML transcription conventions.  Only specified to override the transcription conventions for the collection
   transcription_conventions: '<p><b>Transkriptionsanleitung</b><ul><li><i>Konsontanten mit Reduplikationsstrich (waagrechter Strich über Buchstabe): </i>Immer Doppelkonsonanten ausschreiben, z.B. nn oder mm.</li> <li><i>Unsicherheiten aufgrund Unleserlichkeit: </i>Gesamtes Wort mit dem Button "unclear" markieren und unleserliche Zeichen mit Fragezeichen ersetzen. Die Leerzeichen vor und nach dem Wort müssen außerhalb des Tags stehen; z. B. <unclear>n?m</unclear> </li> <li><i>Zeilenumbrüche:</i>Drücke nach jeder Zeile <code>Enter</code>, um das Zeilenende zu markieren. Zwei mal Enter bzw. eine Leerzeile wird als Absatz dargestellt. Bitte nur verwenden, wenn ein großer Abstand zu sehen ist. </li></ul>'
   # Boolean allowing collaborators to change page titles.  Set to true if you request users to catalog each page
   scribes_can_edit_titles: false
   # Boolean enabling translation as a step following transcription
   supports_translation: true
   # HTML block to be displayed to collaborators as they translate this work
   translation_instructions: '<p><b>Translationsrichtlinien für das Projekt Mittelalterlicher Kochrezepte:</b> Übersetzung ins Englische optional.</p>'
   # Boolean for how prominently to display a page.  Setting to false will suppress page title displays.
   pages_are_meaningful: true
   # Slug to be used for URL permalink
   slug: 'ms-augsburg'
   document_set: ''
   #you can also put multiple document sets in arrays like ['Diaries', 'Public']
   ```
→ Leider sind wir hier hinsichtlich unserer Metadaten etwas eingeschränkt und können den Werken nur jene Metadaten mitgeben, für die es in der Vorlage auch eine entsprechende Vorgabe gibt. Sollten die Metadaten erst im Zuge des Projekts erforscht werden, können diese auch erst später in den allgemeinen Einstellungen zur Sammlung sowie in den Einstellungen zum Werk ergänzt werden. Für Nutzer:innen, die lieber mit einer grafischen Oberfläche arbeiten, empfiehlt sich ebenfalls die Metadaten in den allgemeinen Einstellungen einzutragen (siehe Punkt “Metadaten-Anreicherung” unter dem Punkt “Einstellungen für das jeweilige Werk”).
   * Nach erfolgreichem Upload kann man die Werke in der “Works List” einsehen und für die einzelnen Werke noch weitere Einstellungen vornehmen. Auf unserem Dashboard sollten wir nun unsere Werke einsehen können.
{% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/project-dashboard.PNG" description="Abb. x: Dashboard-Ansicht der Werke einer Sammlung" %}
## 3.  Projektvorbereitung & -konfiguration
### 3.1. Einstellungen im Projekt-Dashboard
   * **Allgemeine Einstellungen:** In den Einstellungen am Projekt-Dashboard konfigurieren wir schließlich die Ansicht, die den Transkribierenden zur Verfügung steht. Wir können unserer Projektseite zum Beispiel eine eigene URL zuweisen (Abb. x - a), einen eigenen Einladungslink zum Transkriptionsprojekt erstellen (Abb. x - f), ein Projektbild (Abb. x - e) sowie einen eigenen Footer gestalten (Abb. x - c), um z. B. direkten Kontakt zur Projektleitung zu ermöglichen). Die Beschreibung, die wir beim Anlegen der Sammlung eingefügt haben, scheint hier bereits auf und kann noch weiter adaptiert werden (Abb. x - b).
   {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/project-setup1.PNG" description="Abb. x: Konfiguration des Projekts " %}
   * **Einschränkung der Projektmitarbeitenden:** Da wir unser Projekt nur einem eingeschränkten Kreis an Mitarbeitenden zur Verfügung stellen wollen, nutzen wir außerdem die Möglichkeit, unsere Sammlung auf privat zu stellen (Abb. x - g) sowie den Transkribierendenkreis einzuschränken (Abb. x - h) und nur bestimmte registrierte Mitarbeitende über ihre E-Mail-Adresse hinzuzufügen.
   * **Adaptierung der Hilfestellungen für das Projektteam:** FromThePage ermöglicht uns, auch diverse Hilfestellungen für unsere Transkribierenden anzupassen. Es können hier also noch mal Transkriptionsrichtlinien festgelegt werden (Abb. x - d), die für alle Werke dieser Sammlung gelten. In unserem Fall haben wir mit der YAML-Datei bereits unsere Richtlinien hochgeladen und finden diese nun in den entsprechenden Feldern. Die englischen Vorlagen für den allgemeinen Hilfetext sowie für das Subject Linking ändern wir vorerst nichts (Abb. y - a).
   * **API-Aktivierung:** Die Zugänglichkeit des Projekts über eine API lassen wir für unser Projekt vorerst deaktiviert (Abb. y - b).
   * **Erweiterung der Projektleitung:** Nachdem wir in unserem Projekt zwei Projektleiter:innen haben, fügen wir außerdem noch einen zweiten Projektleiter hinzu (Abb. y - c). Hierzu muss die zweite Person ebenfalls registriert sein und die Mailadresse muss bekannt sein.
   {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/project-setup2.PNG" description="Abb. x: Weitere Projektkonfigurationen" %}
   * **Aktivierung der Indexierung (Subject Indexing):** Wir möchten unser Team außerdem motivieren, in den Rezepten Zutaten und Speisen zu annotieren und aktivieren daher die Möglichkeit der Indexierung von Entitäten (Abb. z - a). Die Kategorien und Entitäten können nur von Projektinhaber:innen angelegt werden. Die Transkribierenden können dann in ihrem Projekt-Dashboard die Entitäten einsehen und bearbeiten, nicht aber neue Entitäten anlegen.
   {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/project-setup3.PNG" description="Abb. x: Weitere Projektkonfigurationen" %}
   Es ist auch möglich, die Entitäten (in einem CSV) hochzuladen, wobei sich diese in unserem Projekt erst im Laufe der Transkription ergeben werden.
   * **Sprachauswahl:** In den Projekteinstellungen lässt sich außerdem die Sprache und für Transkriptionen in Standardsprache auch eine Rechtschreibprüfung einstellen. Da wir es in unserem Projekt bei jedem Manuskript bzw. Werk mit diversen mittelalterlichen Varianten der deutschen Sprache zu tun haben, wählen wir hier “Germanic languages” (Abb. z - b). Auf eine Aktivierung der Speech-to-text-Funktion verzichten wir vorerst, da wir nicht davon ausgehen, dass unsere Mitarbeitenden fließend Frühneuhochdeutsch sprechen; und auch die Rechtschreibprüfung wird nicht aktiviert, da diese für unsere Texte mit großer Wahrscheinlichkeit wenig hilfreich ist.
{% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/language-options-ger.PNG" description="Abb. x: Sprachauswahl" %}
   * **Einstellung des Revisionstyps**: Da wir in unserem Editionsprojekt nach dem 4-Augen-Prinzip arbeiten, stellen wir den Review type auf “restricted”, so dass alle fertiggestellten Transkriptionen unbedingt von einem autorisierten Reviewer noch einmal gelesen und gegebenenfalls korrigiert werden (Abb. z - c).
   * **Erstellung von Metadaten für einzelne Werke**: Damit unsere Transkribierenden uns auch bei der Anreicherung mit Metadaten helfen können, aktivieren wir die Metadaten-Beschreibung in den Einstellungen (Abb. z - d). Auch hierfür erscheint in der Navigation nun ein neuer Reiter (Metadata Fields), in dem die entsprechenden Voreinstellungen getroffen werden können.
   {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/metadata-fields.PNG" description="Abb. x: Metadaten-Felder" %}
   * **Einrichtung eines Forums:** Um auch eine aktive Diskussion zwischen den Mitarbeitenden in unserem Projekt zu ermöglichen, eröffnen wir zudem ein Forum (Abb. z - e).
   → Durch das An- oder Abwählen von diversen Funktionalitäten in den Projekteinstellungen erweitert sich übrigens das Navigationsmenü um entsprechende Tabs (z. B. das Aktivieren des Buttons “Enable Forum” führt dazu, dass im Projekt-Dashboard der Reiter “Forum” zur Verfügung steht.
   {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/project-dashboard-tabs.PNG" description="Abb. x: Tab-Erweiterung im Projektdashboard" %}
   * **Anpassungen des Transkriptionseditors**: Um auch für Transkribierende, die bisher noch nie oder nur wenig mit spitzen Klammern gearbeitet haben, die Transkriptionsarbeit möglichst einfach zu gestalten, nutzen wir die Möglichkeit, die vordefinierten Editor-Buttons (derzeit sind 21[ Tags ](https://content.fromthepage.com/project-owner-documentation/advanced-editor/)verfügbar) zu aktivieren (Abb. z - f).
   {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/editor-buttons.PNG" description="Abb. x: Editor-Buttons" %}
### 3.2. Einstellungen für das jeweilige Werk
   * **Allgemeine Einstellungen**: Auch für jedes Werk - also in unserem Fall für jedes Manuskript selbst - können wir diverse Voreinstellungen vornehmen. Darunter fallen die Vergabe eines Titels, die Zuordnung zu einer Sammlung bzw. einem Projekt, die Anpassung der URL sowie die Vergabe eines Identifiers von einem externen System. {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/work-setup.PNG" description="Abb. x: Konfigurationen in den Einstellungen zu den einzelnen Werken" %} \
   Zudem können wir diverse Häkchen für unterschiedliche Funktionen setzen, wobei in unserem Fall unsere Seiten weder als semantische Einheiten zu betrachten sind, noch eine [OCR](https://de.wikipedia.org/wiki/Texterkennung)-Korrektur anwendbar ist, und wir diese Optionen daher deaktiviert lassen.
   * **Beschreibung des Werkes:** Um unseren Transkribierenden einen Anhaltspunkt zu bieten, mit welcher Hand und welcher Sprache bzw. welchem Dialekt sie konfrontiert werden, halten wir diese Informationen bereits in den jeweiligen Werkbeschreibungen bereit.
   * **Transkriptionsrichtlinien:** Diese werden grundsätzlich von den Projekt-Einstellungen übernommen, können aber hier noch weiter angepasst werden. In unserem Fall verzichten wir auf Änderungen, da für alle Manuskripte die gleichen Richtlinien gelten sollen.
   * **Einschränkung der Mitarbeitenden:** Auch für die einzelnen Werke ist es möglich, den Personenkreis (nur registrierte Nutzer:innen) einzuschränken. \
   → Dabei ist zu beachten, dass Personen, die als Mitarbeitende zu einem Werk hinzugefügt werden, zuvor auch in den übergeordneten Projekteinstellungen als Mitarbeitende hinzugefügt werden müssen.
   * **Metadaten-Anreicherung:** In diesem Bereich sollten unsere zuvor mit der YAML-Datei hochgeladenen Metadaten ersichtlich sein. Diese können hier aber auch noch erweitert oder angepasst werden.
   {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/work-metadata.PNG" description="Abb. x: Werk-Metadaten" %}
## 4.  Bearbeitung der Dokumente
   * **Transkriptionsstatus**: Je nach Arbeitsfortschritt werden die einzelnen Dokumente in einem Werk als Not Started - Incomplete - Needs Review - Complete ausgewiesen. Diese Einstellung ermöglicht eine Statusübersicht über einzelne Werke bzw. den Projektfortschritt.
   {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/progress.PNG" description="Abb. x: Statusübersicht" %}
   * **Transkriptionsansicht:** Im Transkriptionseditor wird uns eine synoptische Ansicht unseres Faksimiles und des Bearbeitungsbereiches geboten.
   {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/image-text-synopsis.PNG" description="Abb. x: Bild-Text-Synopse" %}
   Wir können hier also direkt mit der zeilenweisen Transkription beginnen und die verschiedenen Funktionen von FromThePage nutzen:
      * **Auszeichnung unserer Transkription:** FromThePage ermöglicht es, unsere Auszeichnungen mittels Markdown entsprechend [Wiki-Text-Konventionen](https://www.mediawiki.org/wiki/Wikitext/de) zu gestalten sowie außerdem all jene Mark-up-Buttons zu verwenden, deren Anzeige wir zuvor in den Projekt-Einstellungen aktiviert haben.
      {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/transcription-view.PNG" description="Abb. x: Transkriptionsarbeit" %}
      Sollte es unter unseren Transkribierenden Personen geben, die Tags lieber ausschreiben statt Textbereiche mittels Klick auf Button zu markieren, ist dies ebenfalls möglich. Strukturierungen wie Zeilenumbrüche oder Absätze werden automatisch übernommen. Wenn wir die Möglichkeiten der TEI nutzen wollen, haben wir dafür zwar keine Buttons, wir können aber z. B. editorische Eingriffe - in der Abbildung durch das Element &lt;supplied> realisiert - trotzdem mit dem entsprechenden Tag auszeichnen.
      {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/markup.PNG" description="Abb. x: Mark-Up-Möglichkeiten" %}
      Das Element wird zwar in der allgemeinen Darstellung auf FromThePage nicht unterstützt, es befindet sich aber am Ende in unserem TEI-Export. Ein Nachteil dieses Workarounds ist aber, dass auf diese Weise angelegte Tags nicht validiert werden und wir bei einer falschen Schreibweise oder unzulässigen Positionierung des Elements keinen Hinweis darauf bekommen. Da wir FromThePage aber ohnehin nur für unsere Transkription und nicht für die Annotation verwenden wollen, setzen wir uns mit dieser Form der Auszeichnung nicht weiter auseinander.
      {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/transcription-overview.PNG" description="Abb. x: Allgemeine Ansicht" %}
      → An dieser Stelle hervorzuheben ist auch, dass es im Rahmen unseres Beispielsprojekts es leider nicht auf sichere und einfache Weise möglich war, farbliche Hervorhebungen, Hinzufügungen durch den/die Editor:in (und nicht den/die Autor:in) oder die Gründe für eine unleserliche Stelle zu annotieren.
      * **Anmerkungen und Fragen:** Sollten Mitarbeitende auf Probleme stoßen, die in den Transkriptionsrichtlinien nicht erläutert sind, so haben sie die Möglichkeit, für jedes Faksimile und die dazugehörige Transkription eine Anmerkung zu hinterlassen oder Fragen zu stellen. Diese Notizen werden auch in den TEI-Export übernommen und können somit nützlich sein, um damit Problemstellen zu kennzeichnen oder Kommentare für die spätere Annotation einzufügen. In unserem Beispiel wurde diese Funktion genutzt, um jene Transkriptionen zu markieren, in denen es Probleme mit der Darstellung von diakritischen Zeichen gab.
      {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/notes-and-questions.PNG" description="Abb. x: Austausch mit und zwischen Projektmitarbeitenden" %}
      * **Subject Linking:** Während der Transkription eines Dokumentes können auch Entitäten wie Personen, Orte oder eigens angelegte Kategorien (inklusive Unterkategorien) - in unserem Beispiel Zutaten und Speisen - ausgezeichnet werden.
      {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/subject-linking.PNG" description="Abb. x: Subject Linking" %}
      Projektinhaber:innen können dafür im Projekt-Dashboard die nötigen Vorbereitungen treffen, indem sie die entsprechenden Kategorien erstellen.
      {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/subject-linking-overview.png" description="Abb. x: Subject Linking Übersicht" %}
      Die einzelnen Entitäten können schließlich diesen Kategorien zugeordnet und mit einer URI sowie einer Beschreibung angereichert werden.
      {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/subject-linking-categorization.PNG" description="Abb. x: Kategorisierung von Entitäten" %}
      Diese Daten sowie die Verknüpfungen von Entitäten und ihr Auftreten bzw. ihre Häufigkeit in den Manuskripten kann schließlich eingesehen werden.
      {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/subject-description.PNG" description="Abb. x: Bearbeitung von Entitäten" %}
      In den einzelnen Dokumenten ist es den Mitarbeitenden möglich, neue Entitäten händisch während der Transkription (gemäß Anleitung) auszuzeichnen, oder über Autolink in einem bereits transkribierten Dokument gleichlautende Entitäten automatisch zu verlinken.
      {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/subject-linking-autolink.PNG" description="Abb. x: Automatische Verlinkung von Entitäten" %}
      Beim Hinzufügen neuer Entitäten können diese danach direkt einer Kategorie zugeordnet werden.
      {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/subject-linking-categorization-transcription.PNG" description="Abb. x: Zuordnung von Entitäten zu Kategorien" %}
      Die Transkribierenden können in ihrem Projekt-Dashboard die von der Projektleitung angelegten Entitäten einsehen und auch bearbeiten. Sie können jedoch keine weiteren Kategorien anlegen. Auch hier gilt wieder, dass FromThePage für unser Projekt nur als Transkriptionstool genutzt wird, weshalb wir versuchsweise nur auf der ersten Seite ein paar Entitäten verlinkt und innerhalb aller weiteren Transkriptionen die Auto-Link-Funktion ausprobiert, die auch tatsächlich zu ein paar Treffern führte.
      * **Zwischenspeichern oder Abschließen:** Wenn wir ein paar Zeilen transkribiert haben und zwischenspeichern wollen, klicken wir auf “Save”. Wenn die Transkription vollständig abgeschlossen ist, klicken wir auf “Done”. Danach wird aus dem “Done”-Button ein “Approve”-Button gemäß unserer zuvor festgelegten Einstellung, dass jedes Dokument einer Revision unterzogen werden muss.
   → Achtung: Sobald man den Tab mit der Transkriptionsansicht verlässt, verliert man ohne Vorwarnung seinen Arbeitsfortschritt - daher nicht vergessen, regelmäßig abzuspeichern.
      * **Metadaten-Anreicherung:** Nachdem wir für unser Projekt festgelegt haben, dass zu jedem Werk auch Metadaten angelegt werden können, steht unseren Transkribierenden ein Button zur Erstellung von Metadaten zur Verfügung.
      {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/create-metadata-button.PNG" description="Abb. x: Metadaten-Button für Bearbeitende" %}
      Über die damit aufgerufene Ansicht können schließlich die zuvor von der Projektleitung angelegten Felder (siehe unter Metadaten-Erstellung für einzelne Werke) befüllt werden.
      {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/metadata-creation-editor.PNG" description="Abb. x: Anreicherung von Metadaten durch Bearbeitende" %}
      Auch bei den Metadaten gibt es wieder die Option zwischenzuspeichern (“Save”), die Daten als vollständig zu markieren (“Done”) bzw. sie am Ende durch eine:n Reviewer:in zu bestätigen (“Approve”).
   * **Versionsansicht:** Im Tab “Versions” können wir nachverfolgen, wer wann welche Änderungen vorgenommen hat.
   {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/versions.PNG" description="Abb. x: Versionskontrolle" %}
## 5.  Export der Dokumente
Alle nachfolgenden Ausführungen beziehen sich auf die Möglichkeiten des Downloadbereiches im Projekt-Dashboard: Da wir unsere Daten in anderen Tools weiter annotieren und mit Normalisierungen anreichern wollen, soll der Output in einer XML/TEI-Datei exportiert werden. Dafür bietet uns FromThePage die Möglichkeit, entweder jedes Projekt einzeln oder die einzelnen Werke als Sammelexport in einer gewissen Ordnerstruktur herunterzuladen.
{% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/export.png" description="Abb. x: Exportmöglichkeiten" %}
   * **Export der Werke:** Über den Button “Export All Works” können wir nun verschiedene Formate und Einstellungen wählen und unsere gesamte Sammlung als ZIP-Datei exportieren.
   {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/export-all-works.PNG" description="Abb. x: Export aller Werke in ZIP-Datei" %}
   Wir wählen dabei einen Ordner pro Werk und stellen ein, dass unsere Export-Ordner den Namen der Import-Ordner übernehmen bzw. beibehalten sollen. Bei den Exportformaten wählen wir nur TEI/XML aus. In den exportierten TEI-Dateien (siehe hier für vollständige XML-Dateien) finden unsere Bearbeitungsschritte nun folgende Form:
        * **Metadaten:** Unsere über die YML-Datei importierten Metadaten sowie diverse manuell hinzugefügte Metadaten, Informationen zu den Versionen sind im TEI Header wiederzufinden.
      {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/tei-export-metadata.PNG" description="Abb. x: Metadaten" %}
      → Die einzelnen Werk-Metadaten (Material, Sprache usw.), die wir für jedes Manuskript einzeln angelegt haben, sind hier aber leider nicht abgebildet (nur im CSV-Metadaten-Export). Außerdem müssen wir an dieser Stelle feststellen, dass unser TEI nicht valide ist,  da einerseits in den Metadaten xml:ids mehrfach vergeben wurden.
        * **Entitäten & Kategorien:** Unsere Taxonomie für Zutaten und Gerichte wird in ein &lt;taxonomy>-Element verpackt, wo wir all unsere angelegten Daten und Kategoriezuordnungen wiederfinden.
      {% include image.html url="../data/pipelines/pipeline_1/fromthepage/img/tei-export-taxonomy.PNG" description="Abb. x: Taxonomie im XML/TEI" %}
      → Auch hier treffen wir auf ein Problem hinsichtlich der Validität unseres TEI/XML-Dokuments, da in der Taxonomie innerhalb der <catDesc>-Elemente <notes>-Elemente erzeugt wurden, die dort nicht zugelassen sind und außerdem die mit einem <head>-Element ausgezeichnete Überschrift von einem der Faksimiles unzulässigerweise innerhalb eines <p>-Elementes steht.
        * **Transkription:** Jede transkribierte Seite unseres Werkes wird schließlich in einem &lt;div>-Element wiedergegeben, wobei das vorangehende  &lt;pb>-Element einen Link zur Bilddatei im IIIF-Format beinhaltet.
        Wie erwartet können wir innerhalb des Textes die Auszeichnung von Zeilenumbrüchen, unklaren Stellen, Erweiterungen von Abkürzungen sowie Referenzen zu unserer Taxonomie wiederfinden.
   * **Export der Metadaten**: Viele der Metadaten, die wir auch im Header des XML/TEIs finden, können wir auch per CSV exportieren ([Link zum CSV-Export](https://github.com/DigEdTnT/digedtnt.github.io/blob/95d465f768eff02fdcd74f8e5248d8eea9e94586/data/pipelines/pipeline_1/fromthepage/export/fromthepage_work_metadata_export_32000501_2023-04-13T11_28_04Z.csv)).
   → Man beachte jedoch, dass bei diesem Export allgemeine Projekt-Metadaten und Statistiken wiederzufinden sind, sowie die eigens angelegten Metadaten (Material, Sprache & zeitliche Einordnung), nicht aber die von uns per YAML-Datei importierten Metadaten.


# Kontakt

**Unternehmensgröße:** 3 Software-Developer (Stand März 2023)

**Weblink:** [https://fromthepage.com/](https://fromthepage.com/)

**Mail:**


<table>
  <tr>
   <td>Allgemeiner Support
   </td>
   <td><a href="mailto:support@fromthepage.com">support@fromthepage.com</a>
   </td>
  </tr>
  <tr>
   <td>Ben Brumfield (Owner):
   </td>
   <td><a href="mailto:benwbrum@gmail.com">benwbrum@gmail.com</a>
   </td>
  </tr>
</table>





# Ressourcen


## Dokumentation



* [Dokumentation für Projektleitung](https://content.fromthepage.com/project-owner-documentation/)
* [Checkliste für das Anlegen eines neuen Projekts](https://content.fromthepage.com/project-owner-documentation/new-project-checklist/)
* [Integrationsanleitungen (CONTENTdm, Internet Archive, OmekaS)](https://content.fromthepage.com/project-owner-documentation/integrations/)


## Tutorials

[Youtube Channel](https://www.youtube.com/@fromthepage)


## Projekte, die dieses Tool genutzt haben



* [Wilford Woodruff Papers](https://wilfordwoodruffpapers.org/): In diesem Projekt wurde die Transkription durch Freiwillige vorgenommen, die Revision und Annotation durch Projektmitarbeiter:innen, und die Publikation der annotierten Dokumente letztlich via API.
* [Civil War and Reconstruction Governors of Mississippi](https://cwrgm.org/): Die Bilder & Metadaten bei diesem Projekt sind im Mississippi Digital Library gespeichert, während Transkription und Annotation ohne zusätzlichen Export/Import auf FromThePage erfolgen und die  Publikation schließlich - ohne zusätzlichen Import/Export-Aufwand - über Server des Projekts (CWRGM.org) erfolgt.


## Literatur

Literaturliste von Zotero


# Fact Sheet zum Tool


<table>
  <tr>
   <td colspan="2" >
<h3>System</h3>


   </td>
  </tr>
  <tr>
   <td><strong>Scope des Tools</strong>
   </td>
   <td>Transkription
   </td>
  </tr>
  <tr>
   <td><strong>Softwareumgebung/Softwaretyp
</strong>(Remotesystem im Browser / Lokaler Client)
   </td>
   <td>Browser-Anwendung/
<p>
web-basiert
   </td>
  </tr>
  <tr>
   <td><strong>Unterstützte Plattformen</strong>
   </td>
   <td>Linux & Windows
   </td>
  </tr>
  <tr>
   <td><strong>Geräte</strong>
   </td>
   <td>Desktop & mobil
   </td>
  </tr>
  <tr>
   <td><strong>Einbindung anderer Systeme (Interoperabilität)</strong>
   </td>
   <td>✅ (IIIF)
   </td>
  </tr>
  <tr>
   <td><strong>Accountsystem</strong>
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td><strong>Kostenmodell
</strong>(Kostenübersicht / Open Source)
   </td>
   <td>Kleinprojekte:
bis zu 200 Seiten - kostenlos
<p>
Betreuung von Institutionen: bis zu 50.000 Seiten - ca. 3600 Dollar/Jahr
   </td>
  </tr>
  <tr>
   <td colspan="2" >
<h3>Anforderungen & Methoden</h3>


   </td>
  </tr>
  <tr>
   <td><strong>Erforderte Code Literacy</strong>
   </td>
   <td>sehr gering
   </td>
  </tr>
  <tr>
   <td><strong>Interface-Sprachen (ISO 639-1)</strong>
   </td>
   <td>en, es, fr, pt, de (in Arbeit)
   </td>
  </tr>
  <tr>
   <td><strong>Unterstützte Zeichenkodierung</strong>
   </td>
   <td>UTF-8
   </td>
  </tr>
  <tr>
   <td><strong>Inkludierte Datenkonvertierung</strong>
<p>
(Im Pre-Processing mögliche Anpassung der Daten an für die Software erforderliches Format )
   </td>
   <td>❌
   </td>
  </tr>
  <tr>
   <td><strong>Abhängigkeit von anderer Software
</strong>(Falls ja, wird diese Software automatisch mitinstalliert?)
   </td>
   <td>❌
   </td>
  </tr>
  <tr>
   <td><strong>Erforderliche Plug-Ins </strong>(bei web-basierten Anwendungen)
   </td>
   <td>❌
   </td>
  </tr>
  <tr>
   <td colspan="2" >
<h3>Dokumentation & Support</h3>


   </td>
  </tr>
  <tr>
   <td><strong>Wartung und ständige Erweiterung</strong>
   </td>
   <td>✅ (solange Institutionen Projekte über FTP abwickeln)
   </td>
  </tr>
  <tr>
   <td><strong>Einbindung der Community</strong>
   </td>
   <td>✅via Github
   </td>
  </tr>
  <tr>
   <td><strong>Dokumentation</strong>
   </td>
   <td>✅ Dokumentation (für Projektleitung)
   </td>
  </tr>
  <tr>
   <td><strong>Dokumentationssprache</strong>
   </td>
   <td>Englisch
   </td>
  </tr>
  <tr>
   <td><strong>Dokumentationsformat</strong>
   </td>
   <td>HTML
   </td>
  </tr>
  <tr>
   <td><strong>Dokumentationsabschnitte</strong>
   </td>
   <td>Project Owner Documentation, FAQ, Descriptions of functionalities (Upload, Transcription, User Management, Project Configuration, Subject Linking, Export), verschiedene How-Tos (inkl. Videomaterial), Installationsanleitung
   </td>
  </tr>
  <tr>
   <td><strong>Verfügbarkeit von Tutorials</strong>
   </td>
   <td>✅keine Schritt-für-Schritt-
<p>
Anleitungen, aber Videomaterial zu Features und Projekten
   </td>
  </tr>
  <tr>
   <td><strong>Aktiver Support/Community
</strong>(Forum, Slack, Issue Tracker etc.)
   </td>
   <td>✅ E-Mail- & Chat-Support, Telefonische Beratung (für Institutionen), Slack Channel, Chat Option, Google Group (für Bug Fixes und Releases), Github-Issue-Mechanismus
   </td>
  </tr>
  <tr>
   <td colspan="2" >
<h3>Nutzbarkeit & Nachhaltigkeit</h3>


   </td>
  </tr>
  <tr>
   <td><strong>Installationsablauf </strong>
   </td>
   <td>sehr einfach
   </td>
  </tr>
  <tr>
   <td><strong>Test</strong>
<p>
(Gibt es ein Test Suite, um zu überprüfen, ob die Installation erfolgreich war?)
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td><strong>Lizenz, unter der das Tool veröffentlicht wurde</strong>
   </td>
   <td><a href="https://www.gnu.org/licenses/agpl-3.0.de.html">Affero GP</a><span style="text-decoration:underline;">L</span>
   </td>
  </tr>
  <tr>
   <td><strong>Registrierung in einem Repository</strong>
   </td>
   <td>✅ Github
   </td>
  </tr>
  <tr>
   <td><strong>Möglichkeit zur Software-Entwicklung beizutragen</strong>
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td colspan="2" >
<h3>Benutzerinteraktion & Benutzeroberfläche</h3>


   </td>
  </tr>
  <tr>
   <td><strong>Benutzerprofil
</strong>(erwartete Nutzer:innen)
   </td>
   <td>GeWi-Forschungsinstitutionen und Forschende als Tool-Nutzende
   </td>
  </tr>
  <tr>
   <td><strong>Benutzerinteraktion
</strong>(erwartete Nutzung)
   </td>
   <td>Projektkonfiguration und -bearbeitung
   </td>
  </tr>
  <tr>
   <td><strong>Benutzeroberfläche</strong>
   </td>
   <td>webbasiertes GUI
   </td>
  </tr>
  <tr>
   <td><strong>Visualisierungen </strong>
<p>
(Analyse-, Input-, Outputkonfigurationen)
   </td>
   <td>✅Projektstati, Vorschauansichten
   </td>
  </tr>
  <tr>
   <td colspan="2" >
<h3>Benutzerverwaltung</h3>


   </td>
  </tr>
  <tr>
   <td><strong>Personenverwaltung</strong>
   </td>
   <td>✅Hinzufügen/Einschränkung von Mitarbeitenden möglich
   </td>
  </tr>
  <tr>
   <td><strong>Interne Kommunikationsmöglichkeiten
</strong>(z. B. Annotationsrichtlinien, Kommentarfunktionen, …)
   </td>
   <td>✅ Anlegen von eigenen Hilfstexten, Transkriptionsrichtlinien, Anleitung zum Subject Linking, Forum für Projektdiskussionen, Kommentarfunktion für jede Transkription
   </td>
  </tr>
  <tr>
   <td colspan="2" >
<h3>Daten- und Toolverwaltung</h3>


   </td>
  </tr>
  <tr>
   <td><strong>Zentrale/dezentrale Verwaltungsmöglichkeit</strong>
   </td>
   <td>✅ mehrere Project Owner möglich
   </td>
  </tr>
  <tr>
   <td><strong>Versionskontrolle</strong>
   </td>
   <td>✅ im Interface integriert
   </td>
  </tr>
  <tr>
   <td><strong>Projektspezifische Einstellungen</strong>
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td><strong>API</strong>
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td><strong>Möglichkeit auf simultanes Arbeiten </strong>
   </td>
   <td>❌ Während Bearbeitung der Transkription einer Bilddatei, ist diese gesperrt
   </td>
  </tr>
  <tr>
   <td colspan="2" >
<h3>Datenupload</h3>


   </td>
  </tr>
  <tr>
   <td><strong>Unterstützte Dateiformate</strong>
   </td>
   <td>JPG, PNG, GIF, PDF, ZIP, IIIF (Manifest + Collection)
<p>
Zusätzlich: Import von CONTENTdm, Internet Archive
   </td>
  </tr>
  <tr>
   <td><strong>Informationen zur Datensicherheit</strong>
   </td>
   <td>FromThePage erhebt keinen Anspruch auf geistiges Eigentum an Bildern, Transkripten, Annotationen oder Kommentaren, die auf FromThePage gepostet werden; Transkriptionen und Übersetzungen, die auf FromThePage gepostet werden, unterliegen dem Urheberrecht der Originale. FromThePage behält sich das Recht vor, jeglichen Inhalt, der von Nutzer:innen veröffentlicht wird, aus beliebigen Gründen zu entfernen.. FromThePage bewahrt Sicherungskopien von gelöschten Beiträgen oder Konten bis zu 14 Tage nach der Löschung auf den Servern auf.
   </td>
  </tr>
  <tr>
   <td><strong>Zugänglichkeit von verschiedenen Standorten/Geräten</strong>
   </td>
   <td> ✅
   </td>
  </tr>
  <tr>
   <td><strong>Einschränkungen hinsichtlich der Datenmenge</strong>
   </td>
   <td>❌
   </td>
  </tr>
  <tr>
   <td><strong>Verlustfreier Upload von bereits bearbeiteten Dokumenten </strong>
   </td>
   <td>[nicht anwendbar, da noch keine Annotation stattgefunden hat]
   </td>
  </tr>
  <tr>
   <td><strong>Unterstützung von IIIF-Import</strong>
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td colspan="2" >
<h3>Datenbearbeitung (Transkriptionstool)</h3>


   </td>
  </tr>
  <tr>
   <td><strong>Komplexitätsgrad beim Mark-up
</strong>(z. B. Verfügbarkeit von Buttons, Drag&Drop-Funktion, …)
   </td>
   <td>Silent Mark-Up
<p>
Tags & Buttons
   </td>
  </tr>
  <tr>
   <td><strong>Standardeinstellungen entsprechend bestimmten Standard für digitale Editionen </strong>
   </td>
   <td>✅ HTML, TEI
   </td>
  </tr>
  <tr>
   <td><strong>Anpassungsmöglichkeit und Validierung entsprechend projektspezifischen Konventionen/Schemata</strong>
   </td>
   <td>Subject Linking - Erweiterung um eigene Kategorien
   </td>
  </tr>
  <tr>
   <td><strong>Definition eigener/projektspezifischer Tags</strong>
   </td>
   <td>❌
   </td>
  </tr>
  <tr>
   <td><strong>Metadaten-Anreicherung</strong>
   </td>
   <td>✅ Allgemeine Projektmetadaten sowie Metadaten zu einzelnen Werken
   </td>
  </tr>
  <tr>
   <td><strong>Layoutmöglichkeiten
</strong>(z.B. Tabellendarstellung, Spalten wie in Zeitschriften, …)
   </td>
   <td>Tabellendarstellung über Markdown, Formularlayout für Werk konfigurierbar
   </td>
  </tr>
  <tr>
   <td><strong>Eigene Indexierung </strong>
   </td>
   <td>✅ Taxonomie über Subject Index
   </td>
  </tr>
  <tr>
   <td><strong>Möglichkeit von Textvergleich bzw. Arbeit an Variantenapparat</strong>
   </td>
   <td>❌
   </td>
  </tr>
  <tr>
   <td><strong>Ansichtsmöglichkeiten
</strong>(z. B. Bearbeitungsansicht, Synopsen-Ansicht, Vorschauansicht, …)
   </td>
   <td>Bearbeitungsansicht, Bild-Text-Editor-Synopse, Vorschauansicht
<p>
<em>Single-Page-Darstellung: </em>1:1-Darstellung (Zeilenumbrüche werden beibehalten)
<p>
<em>Multi-Page-Darstellung: </em>nur Thumbnail-Bilder für die Faksimiles, zur Darstellung von Suchergebnissen (Absatzumbrüche werden beibehalten)
   </td>
  </tr>
  <tr>
   <td><strong>Verlinkung von Entitäten, NER</strong>
   </td>
   <td>✅ Subject Linking (Personen, Orte und eigene Kategorien)
   </td>
  </tr>
  <tr>
   <td colspan="2" >
<h3>Datenexport</h3>


   </td>
  </tr>
  <tr>
   <td><strong>Unterstützte Dateiformate</strong>
   </td>
   <td>HTML, Plain Text (Verbatim, Searchable, Expanded), TEI, IIIF, PDF, DOCX, CSV, ZIP (nur für Projektleitung)
   </td>
  </tr>
  <tr>
   <td><strong>Datenverlust
</strong>(nicht vollständiger Erhalt von Annotationen, die bereits vor Verwendung des Tools gemacht wurden)
   </td>
   <td>[nicht anwendbar]
   </td>
  </tr>
  <tr>
   <td><strong>Validierungsmöglichkeit für TEI-XML vor Export</strong>
   </td>
   <td>❌
   </td>
  </tr>
  <tr>
   <td><strong>Datenaufbewahrung nach Export</strong>
   </td>
   <td>Solange das Konto bestehen bleibt, und nach Löschung des Projekts oder des Kontos noch weitere 14 Tage.
   </td>
  </tr>
</table>
