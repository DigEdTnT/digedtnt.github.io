---

layout: post

title: TEI Publisher

categories: [tool, TEI Publisher, publikation, tei, odd, opensource]

excerpt: Der TEI Publisher ist ein auf Standards basierender Werkzeugkasten und bietet funktionale und nachnutzbare Bausteine, die die Auswertung und Präsentation von digitalen Editionen und den dazugehörigen Forschungsdaten unterstützen.

---


# Allgemeine Beschreibung

Der TEI Publisher wurde mit dem Ziel entwickelt, Forschenden und Webredakteur:innen ein leistungsstarkes Werkzeug zur Verfügung zu stellen, das ohne umfangreiche Programmierkenntnisse die Veröffentlichung von Materialien ermöglicht. Nutzer:innen werden dabei nicht in ein starres Framework gezwängt, sondern können flexibel agieren. Auch erfahrene Entwickler:innen profitieren vom TEI Publisher, da sich ihr Programmieraufwand durch das Tool reduzieren lässt.

Das Tool bietet ein Framework bzw. eine Bibliothek für die Gestaltung einer digitalen Edition mit vorgefertigten Komponenten und verfügt über eine eigene interne Arbeits- und Verwaltungsumgebung, die die Bearbeitung der ODD-Datei, die Verwaltung und Annotation der projektspezifischen Daten sowie eine Anbindung an externe Dienste über klar definierte APIs ermöglicht. Die Kernfunktionalität des TEI Publisher liegt jedenfalls in der Veröffentlichung von TEI-XML-Dokumenten in verschiedenen Ausgabeformaten wie HTML oder PDF. Die beiden grundlegenden TEI-Publisher-Komponenten dafür sind erstens die TEI Publisher Lib, die das [TEI Processing Model](https://tei-c.org/release/doc/tei-p5-doc/en/html/TD.html#TDPM) implementiert und die Transformation der XML-Dateien zu HTML-Output ermöglicht, und zweitens der Baukasten für die Benutzeroberfläche bzw. die HTML5-Webkomponenten (Navigation, Buttons, Suchfelder etc.), die es ermöglichen, Vorlagen für die Webseiten der digitalen Edition zu erstellen. Der Annotationseditor ist ein zusätzliches Feature, das sich derzeit noch im Ausbau befindet.

Im Fokus steht nicht nur die Einhaltung von Standards, sondern auch die Nutzung von Modulbauweisen, die Förderung von Wiederverwendbarkeit und die Sicherstellung von langfristiger Nachhaltigkeit.

Schema des Ablaufs:
Daten(-stand) → <span style="text-decoration:underline;">Datenbank → Abfrage → Prozessierung → Aufbereitung </span>→ Darstellung


## Anwendungsbereiche

* Publikation in Web und Druck
* TEI-konforme Annotation


## Funktionsübersicht



* Benutzer- und Datenverwaltungssystem
* Kollaborationsmöglichkeit
* Erstellung von einfachen digitalen Editionen mit:
    * synoptischer Text-Faksimile-Ansicht
    * benutzerdefiniertem Rendering des Textes
    * Anzeige von Informationen zu verschiedenen Szenarien
* Formularbasierte Arbeitsumgebung für die [ODD](https://www.digitale-edition.at/o:konde.150)-Erstellung und -Anpassung
* Annotationsmodul - Möglichkeit zur rudimentären Auszeichnung von TEI-Daten in graphischer Oberfläche (wobei TEI mit minimalen Anforderungen bereits existieren muss)
* Webkomponenten (Navigation, Paginierung, Suchfeld, Faksimile-Anzeige, Sprachauswahl usw.)
* Anbindung an externe Dienste (über APIs)
* Diverse Ansichtsmöglichkeiten: Web-Ansicht und PDF-Vorschau


## Voraussetzungen

Jedes Tool kann einerseits bestimmte Vorkenntnisse der Benutzer:innen voraussetzen und andererseits auch hinsichtlich der Software-Umgebung gewisse Anforderungen stellen.


### **Erforderliche Kenntnisse**



* TEI-XML
* XPath/XQuery
* HTML/CSS Grundkenntnisse


### **Benötigte Software**



* eXist-db
* Docker Desktop (für eine weniger fehleranfällige Installation von eXist-db)


## Tool-Kompatibilität

<div class="table-responsive tool-table">
<table>
  <tr>
   <td>   </td>
   <td>IIIF</td>
   <td>Transkribus</td>
   <td>FromThePage</td>
   <td>FairCopy</td>
   <td>ediarum</td>
   <td>OpenRefine</td>
   <td>ba[sic?]</td>
   <td>ediarum.WEB</td>
  </tr>
  <tr>
   <td>TEI Publisher</td>
   <td>✅</td>
   <td>❌</td>
   <td>❌</td>
   <td>❌</td>
   <td>🦄</td>
   <td>❌</td>
   <td>❌</td>
   <td>❌</td>
  </tr>
</table>
</div>

<div style="font-size:0.8rem;">
<span style="font-weight:bold;">Legende</span><br/>
✅ Integrationen vorhanden und Entwickler:innen bewerben Übergänge<br/>
❌ Kein Entwicklung einer Transition im DigEdTnT-Projekt, keine Entwicklerintegration beschrieben<br/>
🦄 Transition im DigEdTnT-Projekt erstellt
</div>



## Kostenübersicht

* **TEI Publisher & eXist-db:**
    * kostenlos


# Möglichkeiten & Grenzen

Da jedes Projekt unterschiedliche Anforderungen mit sich bringt, sollen nachfolgend mögliche Vor- und Nachteile des getesteten Tools dargestellt werden.


## Stärken

* Kollaborationsmöglichkeit
* Nachhaltigkeit und Austauschbarkeit (durch die Möglichkeit der Weiterverwendung und Anpassung von Daten aus Beispielprojekten)
* Bereitstellung von Bausteinen einer digitalen Edition (Webkomponenten) zur Navigation, Paginierung, Suche, Faksimile-Anzeige
* Formularbasierter Editor zur Bearbeitung des ODD
* Eignung für komplexe Transformationsszenarien
* Eignung für jede Art von XML, nicht nur TEI
* Transformation von Importformaten TEI, DocBook, MS Word (DOCX) oder JATS zu Exportformaten wie HTML, eBook-Formaten, PDF oder LaTeX
* Erstellung von hoch-qualitativem und kameratauglichem Material für Buchveröffentlichungen

## Herausforderungen & Probleme

* Implementierung und Konfiguration von größeren Projekten erfordert DH-Entwickler:in, da mitunter viel technische Anpassungsarbeit notwendig ist
* Abhängigkeit von eXist-db
* Cache-Probleme im Browser, sodass Änderungen teilweise erst nach Leeren des Caches angezeigt werden


# Einrichtung & Erste Schritte

Anhand eines [Beispielprojekts](https://digedtnt.github.io/about/#rezeptsammlung-pipeline-1), das zum Ziel hat, Kochrezepte aus dem Mittelalter computergestützt zu analysieren und anschließend über eine Forschungsplattform zur Verfügung zu stellen, soll nachfolgend ein möglicher Arbeitsablauf beschrieben werden. Die dafür verwendeten Daten wurden bereits mit dem Tool FromThePage transkribiert, in ediarum annotiert und mit Normdaten, die in OpenRefine bearbeitet wurden, angereichert. Der letzte Abschnitt des Beispielprojekts soll sich nun mit den Möglichkeiten einer Publikation der digitalen Edition mittels TEI Publisher beschäftigen.


## 1. Installation einzelner Komponenten

* **Installation des TEI Publishers:** Da die Grundlage des TEI Publishers - ebenso wie bei [ediarum](https://digedtnt.github.io/ediarum/) - eine eXist-Datenbank ist, nutzen wir unsere bereits vorhandene Struktur mit Docker Desktop. Hier geht es zur detaillierten [Installationsanleitung für Docker Desktop sowie eines Containers für den TEI Publisher.](https://digedtnt.github.io/docker-exist/)


## 2. Einrichtung des Projekts

* Wir beginnen mit der Einrichtung unseres Projekts, indem wir uns im TEI Publisher anmelden. Dafür müssen wir nur sicherstellen, dass wir die eXist-db über den Docker Container gestartet haben. Mit einem Klick auf den Port sollte sich im Browser die eXist-db öffnen.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/docker-start.PNG" description="eXist über Docker Desktop starten" %}
    Anschließend wählen wir in der eXist-db die TEI-Publisher-Applikation, die sich ebenfalls in einem weiteren Browserfenster öffnet.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/exist-teipublisher-app.PNG" description="Öffnen der TEI-Publisher-Applikation in eXist" %}

* Im TEI Publisher gibt es bereits zwei vorangelegte Standard-User (tei-demo und tei), für die es auf der Startseite des TEI Publisher auch eine kleine Infobox mit Angaben zum Passwort gibt.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/start-page-teipublisher.PNG" description="Startseite des TEI Publisher mit Anmeldeinformationen" %}
    → Wir loggen uns hier als "tei-demo" mit dem Passwort "demo" ein, um anschließend die **Spielwiese** zu öffnen.
* In der Spielwiese können wir nun unsere Dokumente - in unserem Fall die bereits [annotierten Manuskripte als XML-Dateien](https://github.com/DigEdTnT/digedtnt.github.io/tree/master/data/pipelines/pipeline_1/teipublisher/data/import) - hochladen.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/upload-documents.PNG" description="Upload der XML-Dokumente" %}
    → Unsere beiden Manuskripte scheinen im Anschluss im Dokumentenverzeichnis des TEI Publishers auf.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/overview-upload.PNG" description="Dokumentenverzeichnis mit hochgeladenen Projektdateien" %}
* Um ein projektspezifisches ODD zu erstellen, scrollen wir im rechten Seitenbereich unter **ODD Dateien** bis zum Ende hinunter, wo wir schließlich einen Dateinamen für unsere ODD sowie einen Titel für die Anzeige eingeben, und mittels "ERZEUGEN" ein eigenes ODD anlegen.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/create-new-odd.PNG" description="Erstellung einer projekteigenen ODD-Datei" %}
    → Das neue ODD erscheint anschließend als eigenständige Instanz in der Liste.
* Wir wählen nun eines unserer Dokumente in der Spielwiese und öffnen dieses. Mit einem Klick auf das Hamburger-Symbol in der Navigationsleiste lassen sich die Einstellungen zu unserem Dokument öffnen.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/adapt-settings.PNG" description="Öffnen der Einstellungen für das zu bearbeitende Dokument" %}
    Bei der Auswahl der ODD-Datei wählen wir nun anstelle des voreingestellten "TEI Publisher Base" unser soeben erstelltes eigenes ODD-Dokument (MA Rezepte).
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/menu-odd-settings.PNG" description="Verknüpfung des ODD mit unserer XML-Datei" %}
    → Da das ODD vorerst noch leer ist, ergeben sich keine Änderungen. Im TEI Publisher wird aber auf das Base-ODD zurückgegriffen und alle dort gespeicherten Anpassungen gelten auch für unser Dokument.



## 3. Bearbeitung der Dokumente

Für eine vollständige Publikationsansicht (Content View) benötigt man die TEI-XML-Ressource, die über den TEI Publisher in die eXist-db hochgeladen werden, sowie zumindest eine ODD mit Processing Instructions und ein Page Template. Das ODD wird dabei auf Grundlage eines Basis-ODD im TEI Publisher erstellt und kann nachfolgend für das eigene Projekt angepasst werden. Für das Page Template ist es sinnvoll, sich in der Demo-Sammlung des TEI Publisher die Beispielprojekte anzusehen, und sich daraufhin ein zum eigenen Projekt passendes Template zu kopieren und anzupassen.



### a. Bearbeitung des ODD
* Bei jedem Start unserer Arbeitsroutine müssen wir zuerst Docker Desktop aktivieren und anschließend den teipublisher-Container starten, indem wir auf die Play-Schaltfläche klicken.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/teipublisher-container-run.PNG" description="Starten des TEI-Publisher-Containers in Docker Desktop" %}
    → Mit einem Klick auf den Port (8081:8080) öffnet sich schließlich im Browser das eXist-db-Dashboard, über das wir zum TEI Publisher gelangen, in dem wir uns einloggen müssen, um unsere Arbeit fortsetzen zu können.
* Um das eigens angelegte ODD anzupassen und damit unsere annotierten XML-Dateien für die Publikation aufzubereiten, gehen wir in der Navigation auf **Administration** und wählen dort "ODD editieren". (Der Link steht nur zur Verfügung, wenn man eingeloggt ist.)
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/edit-odd.PNG" description="Anpassung des projekteigenen ODDs" %}
* In der ersten Ansicht des bisher noch leeren ODD können wir nun die Metadaten ausklappen und auch für unser Projekt anpassen.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/empty-odd.PNG" description="Anpassung des projekteigenen ODDs" %}
* Um die einzelnen TEI-Elemente, mit denen wir unsere Manuskripttexte annotiert haben, für die Publikation aufzubereiten, müssen wir als Erstes im ODD jenen Element-Namen angeben, den wir bearbeiten möchten. Sollten wir nicht (mehr) wissen, welche TEI-Elemente wir bei der Annotation verwendet haben, können wir in der Navigationsleiste des TEI Publishers auf **Herunterladen** klicken und im Drop-Down-Menü "XML" auswählen.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/xml-view.PNG" description="Projektinterne XML-Datei öffnen" %}
    Unser Manuskript öffnet sich daraufhin in einem neuen Browserfenster in eXide.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/xml-exide.PNG" description="Originale Projektdatei in eXide" %}
    → Es empfiehlt sich stets mehrere Tabs geöffnet zu haben: die Manuskriptansicht, auf der man die Änderungen direkt nachverfolgen kann; die XML-Ansicht im exide, um einen Überblick über die Annotationen zu haben; sowie den ODD-Editor, wo die einzelnen Elemente bearbeitet werden können.
* Zurück zum ODD-Editor (unter **Administration > ODD editieren**): In der Formularansicht können wir nun das Layout der einzelnen Annotationen bzw. der entsprechenden TEI-Elemente gestalten. Als erstes möchten wir, dass in der Publikationsansicht die mit roter Farbe geschriebenen Textstellen ebenfalls in rot dargestellt werden. Wir geben also in das Feld mit der Überschrift **Element hinzufügen** "hi" ein und klicken auf das Plus-Symbol (+).
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/add-element.PNG" description="Zu bearbeitendes Element in das ODD einfügen" %}
* Wenn wir das `<hi>`-Element aufklappen, öffnet sich ein Formular zur Bearbeitung. Standardmäßig ist "behaviour=inline" eingestellt, was wir in diesem Fall auch so belassen. Etwas weiter unten im Formular klicken wir bei Rendition auf das Plus-Zeichen, um hier das Rendering festzulegen. Da wir möchten, dass die `<hi>`-Elemente, die für die Annotation roter Textstellen angelegt wurden, auch im Publikationsmedium eine rote Farbe erhalten, müssen wir in dem Feld die entsprechende [CSS-Syntax](https://www.w3schools.com/css/css_syntax.asp) angeben:
    ```css
    color: red;
    ```
    Die vom Standard-ODD übernommene Kursivschreibung für das `<hi>`-Element, die im oberen Renditionfeld (font-style="italic") gespeichert ist, löschen wir. Zuletzt müssen wir zum Speichern unserer Modul-Spezifikation unbedingt noch auf das Diskettensymbol klicken.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/edit-module.PNG" description="Bearbeitung des Layouts einer Annotation" %}
    Wenn wir anschließend in einem anderen Browser-Tab die Manuskript-Ansicht öffnen (oder dieses aktualisieren), sehen wir unsere Änderungen bereits.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/publication-view.PNG" description="Ansicht der ODD-Änderung im Manuskript-XML" %}
    → Sollten die Änderungen nicht sichtbar sein, muss möglicherweise überprüft werden, ob das Dokument nach wie vor mit dem eigenen ODD verknüpft ist (da sich dies mitunter automatisch auf die Standardeinstellung zurücksetzt) oder ob man nach wie vor eingeloggt ist (da man oft selbst nach kürzeren Pausen automatisch ausgeloggt wird). Es kann auch nötig sein, mit F5 zu aktualisieren oder den Cache zu leeren, um die Änderungen zu sehen.
* Wenn wir nun ein Element anlegen, dass im Standard-Template noch keine Modul-Spezifikationen besitzt, wie in diesem Fall das `<term>`-Element, dann müssen wir nach dem Hinzufügen des Elements außerdem das Plus-Zeichen  in der Elementansicht anklicken.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/add-new-element.PNG" description="Weitere Modulspezifikation hinzufügen" %}
    Wir möchten unsere Zutaten mit einer punktierten Unterstreichung hervorheben und müssen daher in dem Eingabefeld für die Rendition den entsprechenden CSS-Code angeben:
    ```css
    text-decoration-line: underline; text-decoration-style: dotted;
    ```
    Außerdem möchten wir in der Webansicht ein Popover haben, in dem der Wikidata-Link aus dem Sachregister erscheint. Dafür setzen wir das behaviour auf "alternate" und geben zwei Parameter an. Einmal den "default"-Parameter, wo wir nur einen Punkt setzen, da wir standardmäßig den Inhalt des `<term>`-Elements angezeigt bekommen wollen, und als "alternate"-Parameter geben wir an, was im Popover angezeigt werden soll. Wir möchten hier gerne die Informationen aus dem Register anzeigen lassen und wählen daher den entsprechenden XPath dorthin:
    ```xml
    id(substring-after(@key, '#'), root(.))
    ```
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/model-term-odd.PNG" description="Bearbeitung des Models vom term-Element im ODD" %}
    Wenn wir nun wieder zur Ansicht unseres Dokuments wechseln, sehen wir, dass die Zutaten unterstrichen sind und beim Bewegen des Mauszeigers über die Zutat ein Popover mit allen Informationen aus dem Register, die es für das `<item>`-Element, auf das das `<term>`-Element referenziert, erscheint. Da wir für die Kindelemente des `<item>`-Elements aus dem Register noch keine Modelle erstellt haben, werden die Inhalte dieser Elemente vorerst einfach im Ganzen ausgegeben.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/model-term-pub.PNG" description="Vorerst unstruktierte Ausgabe der Informationen aus dem Register im Popover" %}
* Als nächstes passen wir nun die Modellspezifikationen der Kindelemente der Registereinträge an. Die `<item>`-Elemente in unserem `<standOff>` beinhalten ein `<idno>`-Element mit der Wikidata-Referenz, ein `<label>`-Element mit dem Attribut `@type="reg"` für die reguläre Schreibweise sowie ein `<label>`-Element mit dem Attribut `@type="alt"` für die diversen frühneuhochdeutschen Varianten.
    Das `<idno>`-Element soll als Link fungieren, weshalb wir für dieses Element in der neu angelegten Modellspezifikation (die wir nur auf  `<idno>`-Elemente mit dem Attribut Attribut `@type="uri"` beschränken) als behaviour "link" auswählen. Bei den Parametern wählen wir nun "uri" und verweisen dabei mit einem Punkt auf den Inhalt `<idno>`-Elementes.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/model-idno-odd.PNG" description="Modellspezifikation für einen Link" %}
    Nun soll die Darstellung der `<label>`-Elemente modifiziert werden. Dafür legen wir eine Modellspezifikation für alle  `<label>`-Elemente mit dem Attribut `@type="reg"` sowie eine für `@type="alt"` an. Erstere soll sich in HTML wie ein `<div>`-Element verhalten und bekommt daher als behaviour "block" und dem Parameter content wird wieder ein Punkt zugeordnet, damit der Textknoten angezeigt wird. Die alternativen Schreibweisen hingegen wollen wir ausblenden, weshalb wir für die @type-Attribute mit dem Wert "reg" als behaviour "omit" auswählen.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/model-label-odd.PNG" description="Modellspezifikation für zwei verschieden attributierte label-Elemente" %}
    Wenn wir uns jetzt erneut unser aktualisiertes Dokument ansehen und die Maus über eine Zutat bewegen, sieht der Inhalt des Pop-Overs bereits anders aus.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/pop-over.PNG" description="Modifiziertes Pop-Over mit einem Link" %}

    → Als bei uns im Zuge der Bearbeitung des ODD beim Speichern ein Fehler aufgetreten ist, mussten wir uns nur als "tei" mit dem Passwort "simple" anmelden, um schließlich die Änderungen im ODD speichern zu können. Dies hängt vermutlich mit den [unterschiedlichen Rechten](http://localhost:8081/exist/apps/tei-publisher/doc/documentation.xml?odd=docbook&view=div#upload) zusammen, die man mit den zwei verschiedenen Usern hat.


### b. Bearbeitung des Page Templates (+ weitere ODD-Anpassungen)
* Da wir in unserem Projekt über die Faksimiles unserer Manuskripte verfügen, möchten wir für die Publikation eine Bild-Text-Synopse erstellen. Dies lässt sich im TEI Publisher über die Webkomponente `<pb-facsimile>` realisieren. Der einfachste Weg, um dies umzusetzen, besteht darin, dass wir uns zuerst ein Template kopieren, das diese synoptische Ansicht bereits integriert hat. Da im Demo-Ordner des TEI Publishers das Template, das für die XML-Struktur des Projekts Immanuel Kant unserem importierten XML-Dokument sehr nahe kommt, wollen wir dieses Template für uns nutzen. Dafür navigieren wir in eXide unter "Open" in der Ordnerstruktur zu dem Template des Deutschen Textarchivs (dta.html), indem wir folgenden Pfad nutzen: '/db/apps/tei-publisher/templates/pages/'
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/exide-template.PNG" description="Öffnen eines bereits bestehenden Templates in eXide" %}
    Wir ändern in diesem Template nur im `<meta>`-Element mit dem Attribut `@name="description"` den Wert des Attributs `@content` auf "MA Rezepte Template" und entfernen weiter unten im Dokument im `<pb-facsimile>`-Element den Wert aus dem Attribut `@base-uri`, da wir in den `<graphic>`-Elementen in unserem XML, bereits den gesamten Pfad zum Faksimile angegeben haben.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/html-template.PNG" description="Anpassungen im DTA-Template" %}
    Wir speichern das HTML-Dokument anschließend unter "ma-rezepte.html" in der gleichen Ordnerstruktur ab.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/exide-new-template.PNG" description="Speichern des neuen Templates" %}
    Zurück in der Manuskript-Ansicht wählen wir im Menü in der zweiten Navigationsleiste, wo wir bereits unser projekteigenes ODD verknüpft haben, jetzt zusätzlich unser eigenes Template aus.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/apply-html-template.PNG" description="Verknüpfung des eigenen Templates" %}
    Nun müssen wir nur den Browser aktualisieren, um schließlich zur Text-Bild-Synopse zu gelangen.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/faksimile-template.PNG" description="Neue synoptische Ansicht durch adaptiertes Template" %}
    Die Seite ist nun in zwei Bereiche aufgeteilt, wobei die rechte Hälfte für unsere Faksimiles vorbereitet ist, die wir jedoch noch einbinden müssen.
* Zum Einbinden der Faksimiles unserer Manusrkipte müssen wir im ODD eine Kommunikation zwischen den Webkomponenten herstellen. Wir gehen also zurück in den ODD-Editor, wo wir Ausgaberegeln für das `<div>`-Element spezifizieren wollen. Dafür werfen wir zuerst noch einen Blick auf das XML des Manuskripts. Dort befinden sich die Links zu den Faksimiles in den `<graphic>`-Elementen, und jedes `<pb>`-Element enthält eine Referenz.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/faksimile-xml.PNG" description="XML-Struktur für Faksimile" %}
    Im ODD-Editor legen wir nun für das `<div>`-Element eine Modellspezifikation an, die nur für jene `<div>`-Elemente gelten soll, denen ein `<pb>`-Element mit einem `@facs`-Attribut vorausgeht. Als behaviour wählen wir in diesem Fall "webcomponent" aus und setzen für diese Komponente die entsprechenden Parameter. Das Verbindungselement zwischen dem Faksimile und dem Text trägt den Namen "pb-facs-link" und enthält die Attribute `@emit` mit dem Wert "transcription", das für den Kanal steht, über den kommuniziert wird. Der Pfad zum Faksimile, auf das verwiesen wird, befindet sich letztlich im `@facs`-Attribut des `<pb->`-Elements vor dem `<div>` - wobei wir über den Wert im `@facs` zur `@xml:id` in der `<graphic>` gelangen und dort die `@url` wählen, die die URI zu unseren Faksmilies enthält.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/model-div-odd.PNG" description="Einbinden der Webkomponente für die Faksimile-Ansicht" %}
    Nach erneutem Aktualisieren in der Dokumentansicht werden die entsprechenden Faksimiles nun zu jeder Manuskriptseite in den [OpenSeadragon](http://openseadragon.github.io/)-Viewer geladen.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/facsimile-viewer.PNG" description="Vollständige Bild-Text-Synopse" %}

* Hinweis: Für das Speichern in eXide ist die Eingabe eines Passworts erforderlich, wobei hier ebenfalls der Nutzer "tei" mit dem entsprechenden Passwort genutzt werden kann (siehe TEI Publisher-Dokumentation).

    → Durch die Vielzahl an Demo-Projekten in der Demo-Sammlung ist es durchaus möglich, auch nur durch "Copy-Paste" der gewünschten Webkomponenten inklusive kleineren Anpassungen das eigene projektspezifische Template aufzubauen. Dadurch muss man nicht die gesamte Dokumentation durchgehen bzw. die Webkomponenten nicht selbst schreiben.


## 4. Export der Dokumente

[In Arbeit]


# Kontakt

**Unternehmensgröße:**

**Weblink:** [https://teipublisher.com](https://teipublisher.com)

<div class="table-responsive">
<table>
  <tr>
   <td><a href="https://github.com/eeditiones/tei-publisher-app/issues">Github Issues</a>
   </td>
  </tr>
  <tr>
   <td><a href="https://join.slack.com/t/e-editiones/shared_invite/zt-1fz52a9ra-tMWjgoKEWNF_rrRpMZQzRQ">Slack-Community</a> (inkl. Channel für Workshops)
   </td>
  </tr>
</table>
</div>



# Ressourcen


## Dokumentation

* [Offizielle TEI-Publisher-Dokumentation](https://teipublisher.com/exist/apps/tei-publisher/doc/documentation.xml?odd=docbook&view=div)
* [Webkomponenten-API](https://unpkg.com/@teipublisher/pb-components@1.38.5/dist/api.html)
* [XPath](https://www.data2type.de/xml-xslt-xslfo/xpath#c150)
* [Getting started with P5 ODDs](https://tei-c.org/guidelines/customization/getting-started-with-p5-odds/)


## Tutorials

* [Customising TEI, ODD, Roma](https://www.teibyexample.org/exist/tutorials/TBED08v00.htm)
* [Youtube - Learn TEI Publisher - Session 1 of 3](https://www.youtube.com/watch?v=QuWrfAS2SWM&t=1s)
* [Youtube - Learn TEI Publisher - Session 2 of 3](https://www.youtube.com/watch?v=5qu94bhftpk)
* [Youtube - Learn TEI Publisher - Session 3 of 3](https://www.youtube.com/watch?v=FS36nYFlTbE)
* [Learn TEI Publisher From Scratch (Workshop Material)](https://github.com/eeditiones/workshop#slides)


## Projekte, die dieses Tool genutzt haben

* Escher Briefedition (briefedition.alfred-escher.ch)
* Sammlung Schweizerischer Rechtsquellen online (editio.ssrq-online.ch)


## Literatur

* Bastianello, E. (2022). Digital Editions at the Bibliotheca Hertziana. _Journal of Art Historiography_, _27s_. [https://arthistoriography.wordpress.com/27s-dec22/](https://arthistoriography.wordpress.com/27s-dec22/)
* Chagué, A., Scheithauer, H., Terriel, L., Chiffoleau, F., & Tadjo-Takianpi, Y. (2022, July 25). _Take a sip of TEI and relax: a proposition for an end-to-end workflow to enrich and publish data created with automatic text recognition_. Digital Humanities 2022 : Responding to Asian Diversity. [https://inria.hal.science/hal-03739767](https://inria.hal.science/hal-03739767)
* Chiffoleau, F., Baillot, A., & Ovide, M. (2021, October). A TEI-based publication pipeline for historical egodocuments - the DAHN project. _Next Gen TEI, 2021 - TEI Conference and Members’ Meeting_. [https://hal.science/hal-03451421](https://hal.science/hal-03451421)
* Chiffoleau, F., & Scheithauer, H. (2022, September). From a collection of documents to a published edition : how to use an end-to-end publication pipeline. _TEI 2022 - Text Encoding Initiative 2022 Conference_. [https://hal.science/hal-03780316](https://hal.science/hal-03780316)
* Kränzle, A., Ritter, G., & Sieber, C. (2023). Sources Online: Eine nachhaltige Infrastruktur für digitale wissenschaftliche Texteditionen auf der Grundlage von TEI Publisher und IIIF: Sources Online: A Sustainable Infrastructure for Digital Scholarly Text Editions Based on TEI Publisher and IIIF. _ABI Technik_, _43_(3), 158–167. [https://doi.org/10.1515/abitech-2023-0030](https://doi.org/10.1515/abitech-2023-0030)
* Kumar, A., Bia, A., Holmes, M., Schreibman, S., Siemens, R., & Walsh, J. (2004). <teiPublisher> : Bridging the Gap Between a Simple Set of Structured Documents and a Functional Digital Library. In R. Heery & L. Lyon (Eds.), _Research and Advanced Technology for Digital Libraries_ (pp. 432–441). Springer. [https://doi.org/10.1007/978-3-540-30230-8_39](https://doi.org/10.1007/978-3-540-30230-8_39)
* Kumar, A., Schreibman, S., Stewart, Arneil, Holmes, M., Bia, A., & Walsh, J. (2005). <teiPublisher> : A Repository Management System for TEI Documents. _Literary and Linguistic Computing_, _20_(1), 117–132. [https://doi.org/10.1093/llc/fqh047](https://doi.org/10.1093/llc/fqh047)
* Morlock, E. (2017, October 6). _TeiPublisher for EpiDoc_. Visible Words: Digital Epigraphy in a Global Perspective, Providence, United States. [https://shs.hal.science/halshs-01773203](https://shs.hal.science/halshs-01773203)
* Scheithauer, H., Chagué, A., & Romary, L. (2021). _From eScriptorium to TEI Publisher_. Brace your digital scholarly edition! [https://inria.hal.science/hal-03538115/document](https://inria.hal.science/hal-03538115/document)


# Factsheet

[In Arbeit]



