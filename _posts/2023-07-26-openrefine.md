---

layout: post

title: OpenRefine

categories: [tool, OpenRefine, normalisierung, opensource]

excerpt: OpenRefine ist ein Open-Source-Tool zur Datenbereinigung und -transformation und zur Anreicherung eigener Daten mit Normdaten, kombiniert mit einer anwenderfreundlichen grafischen Oberfläche.

factsheet: https://github.com/DigEdTnT/digedtnt.github.io/blob/94bc95c4609c0ad3d53997d330691d28e5ba7cc2/data/pipelines/pipeline_1/openrefine/factsheet/DigEdTnT_FactSheet_OpenRefine.pdf

tooldoc: 

last_modified_at:   2023-07-26

---


# Allgemeine Beschreibung

OpenRefine ist ein Open-Source-Tool zur Datenbereinigung und -transformation, das ursprünglich als Google Refine bekannt war. Es bietet eine anwenderfreundliche grafische Benutzeroberfläche, mit der Daten in verschiedenen Formaten analysiert, bereinigt und strukturiert werden können.

OpenRefine eignet sich besonders gut für die Arbeit mit großen und unstrukturierten Datensätzen, wobei es das Filtern, Sortieren und Gruppieren von Daten sowie das Erkennen und Beheben von Fehlern und Unregelmäßigkeiten ermöglicht. Das Tool unterstützt außerdem auch die Zusammenführung von Datensätzen aus verschiedenen Quellen und das Aufteilen von Zellen, um Daten besser zu organisieren.

<div class="essence">
Der Vorteil von OpenRefine hinsichtlich digitaler Editionen ist, dass es nicht nur die Datenbereinigung, - transformation und -organisation großer unstrukturierter Datenmengen erleichtert, sondern vor allem auch Funktionen zur Normalisierung von Daten sowie zur Konsolidierung von Informationen bietet. Beim Export der Daten muss man auf die Möglichkeit, eine XML-Datei herunterzuladen, verzichten und auch etwas komplexere Datentransformationen beim Export - wie beispielweise das Gruppieren von Daten - werden nicht unterstützt.
</div>

## Anwendungsbereiche

* Bereinigung unstrukturierter und fehlerhafter Daten
* Zusammenführung und Konsolidierung von Daten aus verschiedenen Quellen 
* Normalisierung von bestehenden Datenbeständen


## Funktionsübersicht

* Datenbereinigung bei unstrukturierten und fehlerhaften Daten; erkennt Dubletten, Tippfehler, Inkonsistenzen und andere Unregelmäßigkeiten
* Datennormalisierung
* Datentransformation  (z. B. Excel/CSV-Input zu JSON oder XML-Struktur)
* Datenzusammenführung, wenn verschiedene Quellen vorhanden sind
* Möglichkeit der Strukturierung von Metadaten
* Datenvisualisierung 
* Automatisierung von wiederholten Datenbereinigungs- und Transformationsaufgaben durch die Erstellung von Skripten oder Aktionen für bestimmte Aufgaben


## Voraussetzungen

Jedes Tool kann einerseits bestimmte Vorkenntnisse der Benutzer:innen voraussetzen und andererseits auch hinsichtlich der Software-Umgebung gewisse Anforderungen stellen.

### Erforderliche Kenntnisse

* Ausdruckssprachen und Transformationstechniken von Vorteil


### Benötigte Software

* Stabile Internetverbindung
* Webbrowser

## Tool-Kompatibilität


<div class="table-responsive">
<table class="table">
  <tr>
   <td>
   </td>
   <td>
IIIF
   </td>
   <td>Transkribus
   </td>
   <td>FromThePage
   </td>
   <td>ediarum
   </td>
   <td>ba[sic?]
   </td>
   <td>teiPublisher
   </td>
   <td>ediarum.WEB
   </td>
  </tr>
  <tr>
   <td>OpenRefine
   </td>
   <td>❌
   </td>
   <td>❌
   </td>
   <td>❌
   </td>
   <td><a href="https://digedtnt.github.io/transition-openrefine-ediarum/">🦄</a>
   </td>
   <td>❌
   </td>
   <td>❌
   </td>
   <td>❌
   </td>
  </tr>
</table>
</div>


## Kostenübersicht

* kostenlos


# Möglichkeiten & Grenzen

Da jedes Projekt unterschiedliche Anforderungen mit sich bringt, sollen nachfolgend mögliche Vor- und Nachteile des getesteten Tools dargestellt werden. 

## Stärken

* Benutzerfreundliche Bearbeitungsoberfläche und Wahrung der Datensicherheit durch die Bearbeitung am eigenen Rechner
* Datenbereinigung: OpenRefine kann bei der Bereinigung von unstrukturierten und fehlerhaften Daten helfen, indem es Dubletten, Tippfehler, Inkonsistenzen und andere Unregelmäßigkeiten erkennt und korrigiert. Außerdem bietet es die Möglichkeit, Arbeitsschritte wieder rückgängig zu machen, aber auch bereits getätigte Schritte wiederherzustellen oder den Änderungsverlauf zu exportieren und auf neue Daten anzuwenden.
* Datenerweiterung und -normalisierung: Über Reconciliation-Services können die Daten mit externen Datenbanken abgeglichen und mit Normdaten angereichert werden. 
* Datentransformation: OpenRefine bietet Funktionen zur Transformation von Daten in andere Formate oder Strukturen. Dies kann nützlich sein, um Daten für bestimmte Anforderungen anzupassen oder in verschiedenen Datenbanken oder Plattformen zu verwenden.
* Datenzusammenführung: Wenn eine digitale Edition aus mehreren Quellen oder Versionen besteht, kann OpenRefine verwendet werden, um diese Daten zusammenzuführen, Dubletten zu entfernen und eine einheitliche Version zu erstellen.
* Strukturierung von Metadaten: OpenRefine ermöglicht die Organisation und Strukturierung von Metadaten, um eine bessere Durchsuchbarkeit und Navigation in der digitalen Edition zu gewährleisten. Dies kann die Indexierung und den Zugriff auf bestimmte Inhalte erleichtern.
* Datenvisualisierung: Diagramme, Grafiken und andere visuelle Darstellungen können Muster und Zusammenhänge in den Daten verdeutlichen. 
* Qualitätssicherung: OpenRefine unterstützt die Überprüfung der Datenqualität, indem es Inkonsistenzen und Fehler identifiziert. Dies ermöglicht es den Herausgebern, Probleme zu beheben und sicherzustellen, dass die digitale Edition genau und zuverlässig ist.
* Automatisierung: OpenRefine kann auch bei der Automatisierung von wiederholten Datenbereinigungs- und Transformationsaufgaben helfen. Durch die Erstellung von Skripten oder Aktionen können bestimmte Aufgaben automatisiert werden, was Zeit und Mühe spart.

## Herausforderungen & Probleme

* Keine simultane Kollaborationsmöglichkeiten: Da OpenRefine für die lokale Verwendung konzipiert ist, können nicht mehrere Personen gleichzeitig an einem Projekt arbeiten. Die beste - aber bei vielen Mitarbeitenden relativ umständliche - Möglichkeit, mit einer anderen Person zusammenzuarbeiten, besteht daher darin, Projekte inklusive der gespeicherten Bearbeitungsschritte zu exportieren und daraufhin an einem anderen Rechner zu importieren, sodass man dort weitermachen kann, wo jemand anderes aufgehört hat.
* Teilweise mühsame Bedienung: Bei der manuellen Zuordnung von passenden Wikidata-Einträgen springt das Programm nach jeder einzelnen Übernahme zum Start der Tabelle, wodurch jedes Mal ein Scrollen zum zuletzt bearbeiteten Begriff notwendig ist.
* Keine direkte XML-Exportmöglichkeit: Der Export in ein XML-Dateiformat ist nicht vorgesehen. Über den Templating-Export können die Daten jedoch zumindest in einer XML-Struktur (als Plaintext-Datei) exportiert werden.
* Komplexere Datentransformationen - wie beispielsweise das Gruppieren von Datensätzen anhand des Inhalts einer Zelle - sind beim Export nicht möglich, wodurch Redundanzen in den Daten auftreten können und eine Nachbearbeitung erforderlich sein kann.


# Einrichtung & Erste Schritte

Anhand unseres Beispielprojekts, das zum Ziel hat, Kochrezepte aus dem Mittelalter computergestützt zu analysieren und später über eine Forschungsplattform zur Verfügung zu stellen, soll nachfolgend ein möglicher Arbeitsablauf beschrieben werden. Die Manuskripte des Projektes wurden bereits mittels [FromThePage](https://digedtnt.github.io/fromthepage/) transkribiert und mit [ediarum](https://digedtnt.github.io/ediarum/) erfolgten bereits erste Annotationen. In dieser Kurzanleitung erfolgt nun die Aufbereitung der Zutatenliste, die wir von einem Historiker im CSV-Format erhalten haben. Unser Ziel ist es, die Daten zu normalisieren und sie zusätzlich mit [Q-Nummern](https://www.wikidata.org/wiki/Wikidata:Glossary/de) - auch QID genannt - von Wikidata-Einträgen anzureichern.


## 1. Installation 

* Unser erster Schritt besteht darin, uns die entsprechende Version für unser Betriebssystem von [OpenRefine herunterzuladen](https://openrefine.org/download). Nach dem Entpacken der ZIP-Datei haben wir openrefine.exe ausgeführt und OpenRefine hat sich direkt in unserem Browser geöffnet. 
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/openrefine-start.PNG" description="Startbildschirm von OpenRefine" %} 


## 2. Einrichtung des Projekts

* Um ein Projekt erstellen zu können, werden wir aufgefordert, Daten zu importieren. Wir laden daher als erstes unsere [EXCEL-Datei mit der Zutatenliste](https://github.com/DigEdTnT/digedtnt.github.io/blob/master/data/pipelines/pipeline_1/openrefine/data/list_of_ingredients.xlsx) hoch.  
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/create-project.PNG" description="Upload der EXCEL-Datei" %} 
* Mit dem Button "Next" kommen wir in die darauffolgende Ansicht und können einige Einstellungen vornehmen, bevor unser Projekt erstellt wird.  
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/import-data.PNG" description="Projekteinstellungen beim Import" %}  
    → Für unser Projekt haben wir die vorausgewählten Einstellungen belassen und nur einen Projektnamen gewählt, bevor wir mit "Create project" fortgefahren sind.
* Unsere Projektansicht sieht letztlich so aus: 
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/project-view.PNG" description="Projektansicht in OpenRefine" %}  
    → Die Einträge aus der CSV-Datei werden tabellarisch dargestellt. In der ersten Spalte sind verschiedene frühneuhochdeutsche Schreibvarianten einzelner Zutaten, in der zweiten Spalte die heutige Schreibweise und in der dritten Spalte Übersetzungen in modernes Englisch. Jede Spalte verfügt über ein Drop-Down-Menü, das uns verschiedene Bearbeitungsmöglichkeiten bietet, wobei für uns vor allem die Funktion, die eine Anreicherung mit Normdaten (Reconciliation) ermöglicht, von Interesse ist.


## 3. Bearbeitung der Dokumente

* Sollten wir zwischenzeitlich unser Projekt geschlossen haben, müssen wir für die Arbeit in OpenRefine zuerst wieder unsere Datei openrefine.exe starten, über die erneut der Browser geöffnet wird. Unter **Open Project** in der Navigation auf der linken Seite können wir schließlich unsere Projekte einsehen. Wir öffnen hier unser bereits angelegtes Projekt "MaRezepte". 
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/open-project.PNG" description="Einstieg zur Projektbearbeitung in OpenRefine" %} 
* Um unsere Zutatenliste mit Einträgen aus einer Normdatenbank anzureichern, überprüfen wir zuerst, welche Einträge auf Basis der Spalte mit den englischen Begriffen gefunden werden. Wir wählen hier das Englische, weil die englische Wikidata-Datenbank mit der größten Abdeckung an Begriffen zu einer höheren Trefferquote führt. Dafür wählen wir im Dropdown der Spalte mit der Überschrift "en" die Option **Reconcile** und in der damit verbundenen Auswahl **Start Reconcile**. 
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/start-reconciliation.PNG" description="Auswahl an Datenbearbeitungsmöglichkeiten" %} 
* In dem neuen Fenster, das sich daraufhin öffnet, klicken wir in der linken Menüleiste auf "Wikidata (en)". 
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/start-reconciliation.PNG" description="Start des Abgleichs mit den Normdaten von Wikidata" %} 
* In dem sich daraufhin öffnenden Fenster wählen wir folgende Einstellungen:
    * Bei der Kategorienzuordnung, mit der festgelegt werden kann, dass die Begriffe nur mit Entitäten einer bestimmten Kategorie abgeglichen werden, möchten wir uns nicht zu sehr einschränken. Wir könnten natürlich nur "food ingredients" auswählen, aber erstens sind nicht alle Entitäten einer Kategorie zugewiesen und zweitens ist die Kategoriezuordnung nicht immer eindeutig, weshalb beispielsweise einer Zutat wie Petersilie anstelle der Kategorie "Zutat", auch einfach nur die Kategorie "Pflanze" zugeordnet sein könnte. Um zu verhindern, dass durch die Einschränkung auf eine bestimmte Kategorie möglicherweise unkategorisierte oder abweichend kategorisierte Entitäten nicht mit unseren Daten abgeglichen werden, nutzen wir die Option: "Reconcile against no particular type".
    * Zusätzlich gibt es die Möglichkeit, über die Checkbox "Auto-match candidates with high confidence" einzustellen, dass bei jenen Begriffen, für die mit hoher Wahrscheinlichkeit eine passende Wikidata-Entität gefunden wurde, eine automatische Zuordnung vorgenommen wird. 
* Mit diesen Einstellungen für unsere Daten wurde schließlich der Reconciliation-Prozess gestartet.  
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/reconciliation-options.PNG" description="Diverse Einstellungen vor dem Start des Reconciliation-Prozesses" %}  
    → Dieser Prozess kann je nach Datenmenge ein paar Minuten dauern.  
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/reconciliation-processing.PNG" description="Unterschiedlich lange Wartezeiten je nach Datenmenge" %} 
* **Kleiner Exkurs bei alternativen Daten:** Wenn wir die Begriffe nicht auch Englisch, sondern nur im Standarddeutsch hätten, müssten wir über den Button "Add standard service" ein weiteres Service  für das deutsche Wikidata anlegen, indem wir die entsprechende URL zur API eingeben. 
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/add-reconciliation-service.PNG" description="Verknüpfung mit der API zu den deutschsprachigen Wikidata-Einträgen" %} 
    In unserer linken und über ein kleines Lesezeichen-Symbol ein- und ausklappbaren Liste erscheint nun ein Button für die Reconciliation von Begriffen mit deutschsprachigen Wikidata-Einträgen, die wir dann entsprechend für eine Spalte mit deutschsprachigen Begriffen auswählen könnten.  
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/choose-reconciliation-service.PNG" description="Auswahl eines anderen Services" %} 
    → Hinter dem Button "Discover Services" verbergen sich außerdem [noch weitere Normdaten-Ressourcen](https://reconciliation-api.github.io/testbench/#/).
* Sobald der Reconciliation-Prozess abgeschlossen ist, erhalten wir in der Header-Zeile der Spalte einen Überblick zu unserem Fortschritt in Form eines Balkens. Aus unserer Tabelle mit 536 Zeilen wurde knapp ein Fünftel automatisiert mit Normdaten angereichert und bei über 80% der Einträge ist noch eine manuelle Überprüfung nötig, da es hier mehrere Entitäten gibt, die mit dem Begriff aus der jeweiligen Zeile übereinstimmen.  
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/reconciliation-result.PNG" description="Auswertung des Reconciliation-Prozesses" %} 
    → Zusätzlich bekommen wir in der linken Leiste Informationen zu den Matches und haben auch die Möglichkeit, den Prozess rückgängig zumachen. 
* Bei allen Begriffen, für die nicht automatisch eine Entsprechung aus den Wikidata-Normaten übernommen wurde, müssen wir nun eine manuelle Zuordnung vornehmen. Durch die Übersetzung der verschiedenen Schreibweisen für einen konkreten Begriff haben wir im Englischen sehr viele gleiche Einträge. Damit wir nicht jeden Zeile einzeln durchgehen müssen, gibt es in OpenRefine die Möglichkeit, das Kästchen mit dem doppelten Häkchen zu verwenden, um den entsprechenden Wikidata-Eintrag für alle identischen Zellen zu übernehmen.  
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/reconcile-all-matches.PNG" description="Gleichzeitige Zuordnung eines Wikidata-Eintrages für alle identischen Zellen" %} 
    → Etwas mühsam bei dieser manuellen Zuordnung ist, dass nach jeder Übernahme eines Wikidata-Eintrages das Programm anschließend zum Start der Tabelle hüpft, und man daher anschließend immer erneut zur nächsten, zur Bearbeitung ausstehenden Zeile scrollen muss.  
* Sollte in den Vorschlägen eine passende Wikidata-Entsprechung fehlen, gibt es am Ende der Liste die Möglichkeit, nach weiteren Übereinstimmungen zu suchen und im neuen Suchfenster schließlich weitere Eingaben, unter denen ein Begriff auch zu finden sein könnte, vorzunehmen. 
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/search-for-matches.PNG" description="Suche nach alternativen Wikidata-Einträgen" %} 
    → In unserem Datensatz wurde zum Beispiel das englische Wort "horse radish" mit einem Leerzeichen geschrieben, weshalb in der Liste mit Vorschlägen kein passender Eintrag zu finden war. 
* Sollten wir mit einer unserer Zuordnungen nicht zufrieden sein, gibt es zwei Möglichkeiten, die Zuordnung wieder rückgängig zu machen. Entweder wir klicken einfach auf "Choose new match", direkt unter dem Begriff, der falsch zugeordnet wurde (a.), oder wir gehen in der linken Menüleiste in den Reiter **Undo/Redo** und wählen dort einen vorangegangen Schritt aus, um dort wieder weiterzumachen (b.).  
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/undo-processes.PNG" description="Zwei Möglichkeiten, unpassende Zuordnungen zu ändern oder zurückzusetzen" %} 
    → Mit dem "Extract"-Button in der linken Menüleiste ist es außerdem möglich, entweder alle oder einen Teil der bereits getätigten Schritte zu exportieren. Sollte sich die Liste beispielsweise erheblich verändern, so könnte man ein neues Projekt erstellen, und den bisherigen Arbeitsfortschritt über den Import der Arbeitsschritte (mittels "Apply"-Button) wiederherstellen. Es müssten anschließend nur mehr die neu hinzugekommenen Einträge mit Wikidata-Normdaten angereichert werden. 
* Für Einträge, die man nicht mit normalisieren möchte oder nicht kann, weil wie in unserem Beispielprojekt mitunter nicht jede Zutat entschlüsselt wurde, gibt es die Möglichkeit, über die Ansicht, die unter "Search for match" erscheint, auszuwählen, dass der Zelle kein Eintrag zugeordnet werden soll.  
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/unsolved-entries.PNG" description="Eintrag ohne Zuordnung einer Wikidata-Entität" %}
* Sobald wir all unsere Einträge mit Wikidata-Einträgen angereichert haben, können wir uns die Q-Nummern der Wikidata-Einträge in einer eigenen Spalte anzeigen lassen.  
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/add-qid.PNG" description="Spalte mit Daten der Normalisierung hinzufügen" %} 
    Wir müssen dieser Spalte nur mehr einen Namen geben und jede Zeile erhält eine weitere Zelle mit der entsprechenden Q-Nummer. 
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/wikidata-column.PNG" description="Q-Nummern für jeden Eintrag in eigener Spalte" %} 
    → Wir haben uns für commodity entschieden, da wir später beim Exportieren diesen Begriff direkt als Attributsbezeichnung übernehmen wollen und als Wert die entsprechende Q-Nummer eingefügt werden soll. 


## 4. Export der Dokumente

* Um unsere angereicherte Tabelle bzw. normalisierten Daten zu exportieren, klicken wir auf den Button "Export" und wählen die Option "Templating…". Denn unser Ziel ist es, direkt eine XML-Struktur zu generieren, die wir in unser Register in ediarum übernehmen können.  
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/export-data.PNG" description="Export der Daten über ein Template" %}
* In der Ansicht für die Template-Erstellung haben wir nun die Möglichkeit, unsere Daten direkt in eine XML-Struktur zu überführen bzw. so zu gestalten, dass sie nur mehr in das ediarum-Sachregister kopiert werden müssen. Dafür tragen wir in das Prefix-Textfeld `<list>` und als Suffix  `</list>` ein. Entsprechend des Schemas für Register in ediarum möchten wir für jede Zeile einen eigenen `<item>`-Eintrag erhalten. Als @xml:id soll die englische Übersetzung übernommen werden. Den Wikidata-Link übernehmen wir in Form eines `<idno>`-Elemente innerhalb des `<item>`-Elements. Außerdem legen wir auch 1-2 `<label>`-Elemente an, einmal mit dem Wert "reg" im @type-Attribut für die Übersetzung in Standarddeutsch, und ein weiteres mit dem Wert "alt", das die frühneuhochdeutschen Bezeichnung enthält.  
In der Vorschau rechts sehen wir auch, wie unser Output schließlich aussehen wird. 
    {% include image.html url="../data/pipelines/pipeline_1/openrefine/img/templating-export.PNG" description="Individuelle Anpassung des Outputs über die Templating-Möglichkeit" %} 
    → <span style="text-decoration:underline;">Erläuterungen zum Code im Textfeld "Row Template":</span> Unser Code, der über die einzelnen Zeilen unserer Tabelle iteriert, soll hier noch etwas genauer betrachtet werden. Mittels der [General Refined Expression Language (GREL)](https://openrefine.org/docs/manual/grel) haben wir unseren Code entsprechend unseren Anforderungen gestaltet. 
    ```plaintext
    <item xml:id="{{ if(cells['eng'].value != 'unsolved', cells['eng'].value, cells['deu-enh'].value + '_unsolved') }}">
        {{ if(cells['wikidata-qid'].value != 'null', '<idno type="uri">https://www.wikidata.org/entity/' + cells['wikidata-qid'].value + '</idno>', '') }}
        {{ if(cells['deu'].value != 'ungelöst', '<label type="reg">' + cells['deu'].value + '</label>', '<label type="reg">' + cells['deu'].value + '(' + cells['deu-enh'].value + ')</label>') }}
        <label type="alt">{{ cells['deu-enh'].value }}</label> 
    </item>
    ```
    Wir haben hier noch zusätzliche Bedingungen für folgende Spezialfälle eingeführt:
    * **Fehlende Übersetzungen:** Sollten Zellen in unserem Datensatz in der englischen Spalte "unsolved" bzw. in der deutschen Spalte "ungelöst" beinhalten, weil man nicht weiß, welche Bedeutung der frühneuhochdeutsche Begriff hat, nutzen wir das frühneuhochdeutsche Wort als @xml:id. 
    * **Fehlende Q-Nummer:** Sollte eine Zeile keine Q-Nummer besitzen, wird auch kein `<idno>`-Element angelegt. 
* Wenn unser Output so aussieht wie wir ihn gerne hätten, müssen wir nur mehr auf den "Export"-Button klicken und eine [TXT-Datei](https://github.com/DigEdTnT/digedtnt.github.io/blob/bb032626aee08b43c4b36da5476ae9ce0d63bb2a/data/pipelines/pipeline_1/openrefine/data/output_openrefine.txt) wird heruntergeladen. Für unser Projekt müssen wir diesen Output aber noch ein wenig anpassen (siehe [Transition OpenRefine → ediarum](https://digedtnt.github.io/transition-openrefine-ediarum/)).


# Kontakt

**Weblink:** [https://openrefine.org/](https://openrefine.org/) 

**Mail:**

<table>
  <tr>
   <td>Allgemeiner Support
   </td>
   <td><a href="https://forum.openrefine.org/c/support/12">Forum</a>
   </td>
  </tr>
  <tr>
   <td>Christian Steiner (DH Craft)
   </td>
   <td><a href="mailto:christian.steiner@dhcraft.org">christian.steiner@dhcraft.org</a> 
   </td>
  </tr>
</table>



# Ressourcen


## Dokumentation

* [Offizielle OpenRefine Dokumentation](https://openrefine.org/docs)
* [Reconciliation mit Wikibase](https://openrefine.org/docs/manual/wikibase/reconciling)
* [Github-Repository](https://github.com/OpenRefine/OpenRefine)


## Tutorials

* [Using OpenRefine to Clean Your Data](https://multimedia.journalism.berkeley.edu/tutorials/openrefine/)
* [Get Started with OpenRefine: Explore, Clean, and Transform your Data!](https://www.youtube.com/watch?v=yTJ6x6zEQmI)
* [Reconciliation with Wikidata](https://www.wikidata.org/wiki/Wikidata:Tools/OpenRefine/Editing/Tutorials/Basic_editing)


## Projekte, die dieses Tool genutzt haben

* [Corema - Cooking Recipes of the Middle Ages](https://gams.uni-graz.at/context:corema)


## Literatur

* Crossley, L. (2019, Oktober 29). _Text Mining Digital Humanities Blogs with APIs, OpenRefine, and R_. [https://mars.gmu.edu/handle/1920/11632](https://mars.gmu.edu/handle/1920/11632) 
* Delpeuch, A. (2019). _A survey of OpenRefine reconciliation services_ (arXiv:1906.08092). arXiv. [https://doi.org/10.48550/arXiv.1906.08092](https://doi.org/10.48550/arXiv.1906.08092) 
* Dreßen, A., & Sacher, E. (2023, März 6). _Querying Art History Data on the Web (5): Modelling Data with OpenRefine_. [https://www.db-thueringen.de/receive/dbt_mods_00055804](https://www.db-thueringen.de/receive/dbt_mods_00055804) 
* Engelhardt, F., Freitag, N., & Wildermuth, M. (2023). Die Migration der Bibliographia Cartographica: Daten aufräumen mit OpenRefine. _Bibliotheksdienst_, _57_(2), 95–110. [https://doi.org/10.1515/bd-2023-0016](https://doi.org/10.1515/bd-2023-0016) 
* Gallant, K., Lorang, E., & Ramirez, A. (2014). _Tools for the digital humanities : a librarian’s guide_ (Emerging Technologies in Libraries). [https://mospace.umsystem.edu/xmlui/handle/10355/44544](https://mospace.umsystem.edu/xmlui/handle/10355/44544) 
* Gutiérrrez De la Torre, Silvia Eunice. (2021, Juni 15). _OpenRefine, Authority Control and Wikidata_. [https://zenodo.org/record/4950866](https://zenodo.org/record/4950866) 
* Handelman, M. (2015). Digital Humanities as Translation: Visualizing Franz Rosenzweig’s Archive. _TRANSIT_, _10_(1). [https://doi.org/10.5070/T7101029573](https://doi.org/10.5070/T7101029573) 
* Ikonić Nešić, M., Stanković, R., Schöch, C., & Skoric, M. (2022). From ELTeC Text Collection Metadata and Named Entities to Linked-data (and Back). _Proceedings of the 8th Workshop on Linked Data in Linguistics within the 13th Language Resources and Evaluation Conference_, 7–16. [https://aclanthology.org/2022.ldl-1.2](https://aclanthology.org/2022.ldl-1.2) 
* Krimmel, Erica, & Walker, Lindsay J. (2022, Mai 11). _Using OpenRefine for natural history collections data_. Society for the Preservation of Natural History Collections (SPNHC), Edinburgh, Scotland, UK, 5-10 June 2022, Edinburgh, Scotland, UK,. [https://zenodo.org/record/6574729](https://zenodo.org/record/6574729) 
* Mandal, S. (2022). Integration of Linked Open Data Authorities with OpenRefine : A Methodology for Libraries. _Library Philosophy and Practice (e-journal)_. [https://digitalcommons.unl.edu/libphilprac/7195](https://digitalcommons.unl.edu/libphilprac/7195) 
* Myntti, J., & Neatrour, A. (2015). Use Existing Data First: Reconcile Metadata before Creating New Controlled Vocabularies. _Journal of Library Metadata_, _15_(3–4), 191–207. [https://doi.org/10.1080/19386389.2015.1099989](https://doi.org/10.1080/19386389.2015.1099989) 
* Ransom, L., & Coladangelo, L. P. (2021, Dezember 3). Semantic Enrichment of the Schoenberg Database of Manuscripts Name Authority through Wikidata. _15th International Conference on Metadata and Semantics Research_. [https://www.academia.edu/63137370/Semantic_Enrichment_of_the_Schoenberg_Database_of_Manuscripts_Name_Authority_through_Wikidata](https://www.academia.edu/63137370/Semantic_Enrichment_of_the_Schoenberg_Database_of_Manuscripts_Name_Authority_through_Wikidata) 
* Sohmen, L., & Rossenova, L. (2022). Open refine to wikibase: a new data upload pipeline. _Proceedings of the 22nd ACM/IEEE Joint Conference on Digital Libraries_, 1–2. [https://doi.org/10.1145/3529372.3530919](https://doi.org/10.1145/3529372.3530919) 
* Steeg, F., & Pohl, A. (2021). Ein Protokoll für den Datenabgleich im Web am Beispiel von OpenRefine und der Gemeinsamen Normdatei (GND). In M. Franke-Maier, A. Kasprzik, A. Ledl, & H. Schürmann (Hrsg.), _Qualität in der Inhaltserschließung_ (S. 259–278). De Gruyter. [https://doi.org/10.1515/9783110691597-013](https://doi.org/10.1515/9783110691597-013) 
* Woitas, Kathi. (2021, Dezember 13). _OpenRefine_. [https://zenodo.org/record/5776098](https://zenodo.org/record/5776098) 


# Factsheet

<table>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em" ><strong>System</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Scope des Tools</strong>
   </td>
   <td>Datenbereinigung & Normalisierung
   </td>
  </tr>
  <tr>
   <td><strong>Softwareumgebung/Softwaretyp 
</strong>(Remotesystem im Browser / Lokaler Client)
   </td>
   <td>lokale Browser-Anwendung
   </td>
  </tr>
  <tr>
   <td><strong>Unterstützte Plattformen</strong>
   </td>
   <td>Linux, Windows & Mac
   </td>
  </tr>
  <tr>
   <td><strong>Geräte</strong>
   </td>
   <td>Desktop
   </td>
  </tr>
  <tr>
   <td><strong>Einbindung anderer Systeme (Interoperabilität)</strong>
   </td>
   <td> ✅  (Wikidata, Wikibase)
   </td>
  </tr>
  <tr>
   <td><strong>Accountsystem</strong>
   </td>
   <td> ❌ (keine Anmeldung erforderlich)
   </td>
  </tr>
  <tr>
   <td><strong>Kostenmodell  <br/>
</strong>(Kostenübersicht / Open Source)
   </td>
   <td>kostenlos
   </td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em" ><strong>Anforderungen & Methoden</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Erforderte Code Literacy</strong>
   </td>
   <td> sehr gering
   </td>
  </tr>
  <tr>
   <td><strong>Interface-Sprachen (ISO 639-1)</strong>
   </td>
   <td>en
   </td>
  </tr>
  <tr>
   <td><strong>Unterstützte Zeichenkodierung</strong>
   </td>
   <td>UTF-8, UTF-16, ASCII
   </td>
  </tr>
  <tr>
   <td><strong>Inkludierte Datenkonvertierung</strong><br/>
(Im Pre-Processing mögliche Anpassung der Daten an für die Software erforderliches Format )
   </td>
   <td>✅ 
   </td>
  </tr>
  <tr>
   <td><strong>Abhängigkeit von anderer Software <br/>
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
   <td colspan="2" style="text-align: center;font-size: 1.2em" ><strong>Dokumentation & Support</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Wartung und ständige Erweiterung</strong>
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td><strong>Einbindung der Community</strong>
   </td>
   <td>✅via Github & Forum
   </td>
  </tr>
  <tr>
   <td><strong>Dokumentation</strong>
   </td>
   <td>✅
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
   <td>Introduction, Installing, Running, Starting a project, Exploring data, Transforming data, Reconciling, Wikibase, Wikidata, and Wikimedia Commons, Expressions, Exporting, Troubleshooting, GREL Reference, Technical Reference
   </td>
  </tr>
  <tr>
   <td><strong>Verfügbarkeit von Tutorials</strong>
   </td>
   <td>✅Blogbeitrag mit Sammlung an Tutorials
   </td>
  </tr>
  <tr>
   <td><strong>Aktiver Support/Community  <br/>
</strong>(Forum, Slack, Issue Tracker etc.) 
   </td>
   <td>✅Forum, GitHub-Issues-Mechanismus
   </td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em" ><strong>Nutzbarkeit & Nachhaltigkeit</strong>
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
<br/>
(Gibt es ein Test Suite, um zu überprüfen, ob die Installation erfolgreich war?)
   </td>
   <td>✅ 
   </td>
  </tr>
  <tr>
   <td><strong>Lizenz, unter der das Tool veröffentlicht wurde</strong>
   </td>
   <td><a href="https://creativecommons.org/licenses/by/4.0/">CC BY 4.0</a>
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
   <td colspan="2" style="text-align: center;font-size: 1.2em" ><strong>Benutzerinteraktion & Benutzeroberfläche</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Benutzerprofil  <br/>
</strong>(erwartete Nutzer:innen)
   </td>
   <td>Data Scientists, Datenbankbeauftragte
   </td>
  </tr>
  <tr>
   <td><strong>Benutzerinteraktion  <br/>
</strong>(erwartete Nutzung)
   </td>
   <td>Hochladen von Dateien, Datenzusammenführung, -bereinigung, -strukturierung, -normalisierung,-transformation und -visualisierung, Export von Dateien
   </td>
  </tr>
  <tr>
   <td><strong>Benutzeroberfläche</strong>
   </td>
   <td>browserbasiertes GUI
   </td>
  </tr>
  <tr>
   <td><strong>Visualisierungen </strong>
<br/>
(Analyse-, Input-, Outputkonfigurationen)
   </td>
   <td> ✅
   </td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em" ><strong>Benutzerverwaltung</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Personenverwaltung</strong>
   </td>
   <td>❌
   </td>
  </tr>
  <tr>
   <td><strong>Interne Kommunikationsmöglichkeiten  <br/>
</strong>(z. B. Annotationsrichtlinen, Kommentarfunktionen, …) 
   </td>
   <td>❌
   </td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em" ><strong>Daten- und Toolverwaltung</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Zentrale/dezentrale Verwaltungsmöglichkeit</strong>
   </td>
   <td>✅ mehrere Projekte möglich
   </td>
  </tr>
  <tr>
   <td><strong>Versionskontrolle</strong>
   </td>
   <td>✅ jegliche Änderungen können nachverfolgt und rückgängig gemacht bzw. wiederhergestellt werden
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
   <td>✅ für Reconciliation
   </td>
  </tr>
  <tr>
   <td><strong>Möglichkeit auf simultanes Arbeiten </strong>
   </td>
   <td>❌
   </td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em" ><strong>Datenupload</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Unterstützte Dateiformate</strong>
   </td>
   <td>CSV, TSV, TXT, JSON, XML, ODS, XLS, XLSX, PX, MARC, RDF(JSON-LD, N3, N-Triples, Turtle, RDF/XML), Wikitext
<br/>
Importmöglichkeiten auch über Weblinks, SQL-Datenbank oder Google Drive
   </td>
  </tr>
  <tr>
   <td><strong>Informationen zur Datensicherheit</strong>
   </td>
   <td>[nicht anwendbar, da lokale Ausführung]
   </td>
  </tr>
  <tr>
   <td><strong>Zugänglichkeit von verschiedenen Standorten/Geräten</strong>
   </td>
   <td>❌
   </td>
  </tr>
  <tr>
   <td><strong>Einschränkungen hinsichtlich der Datenmenge</strong>
   </td>
   <td>max. 1 GB
   </td>
  </tr>
  <tr>
   <td><strong>Verlustfreier Upload von bereits bearbeiteten Dokumenten </strong>
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td><strong>Unterstützung von IIIF-Import</strong>
   </td>
   <td>[nicht anwendbar]
   </td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em" ><strong>Datenbearbeitung (Normalisierungstool)</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Komplexitätsgrad der Normalisierung <br/>
</strong>(z. B. Verfügbarkeit von Buttons, Drag&Drop-Funktion, …)
   </td>
   <td>✅Buttons für Übernahme von Vorschlägen, Liste für Standardservices verfügbar
   </td>
  </tr>
  <tr>
   <td><strong>Reconciliation-Möglichkeiten entsprechend bestimmten Standards für digitale Editionen </strong>
   </td>
   <td>✅Wikidata, GND, GeoNames, Pleiades, etc. 
   </td>
  </tr>
  <tr>
   <td><strong>Anpassungsmöglichkeit und Validierung entsprechend projektspezifischen Konventionen/Schemata</strong>
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em" ><strong>Datenexport</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Unterstützte Dateiformate</strong>
   </td>
   <td>TSV, CSV, XLS, XSLX, HTML, ODF, SQL, TXT (Templatingmöglichkeit für JSON, XML usw.)
   </td>
  </tr>
  <tr>
   <td><strong>Datenverlust  <br/>
</strong>(nicht vollständiger Erhalt von Annotationen, die bereits vor Verwendung des Tools gemacht wurden)
   </td>
   <td>[nicht anwendbar]
   </td>
  </tr>
  <tr>
   <td><strong>Validierungsmöglichkeit für TEI-XML vor Export</strong>
   </td>
   <td>[nicht anwendbar, da keine Möglichkeit auf XML-Export]
   </td>
  </tr>
  <tr>
   <td><strong>Datenaufbewahrung nach Export</strong>
   </td>
   <td>[nicht anwendbar, da lokale Ausführung]
   </td>
  </tr>
</table>

