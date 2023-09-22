# Allgemeine Beschreibung

_ediarum_ ist eine seit 2012 entwickelte digitale Arbeits- und Publikationsumgebung, die aus mehreren Softwarekomponenten besteht und im Grunde ein Werkzeugkasten aus verschiedenen auf TEI-Standard basierenden Modulen ist. Damit bietet _ediarum_ eine Schnittstelle zwischen Editionsumgebung, XML-Datenbank und Rechercheportal, wobei die Kernfähigkeit jedenfalls in der Aufbereitung von XML-Dateien besteht. Die digitale Arbeitsumgebung basiert auf einer eXist-db und ermöglicht nicht nur die Transkription von Manuskripten und Drucken, sondern vor allem auch die TEI-konforme Annotation und Erstellung von Text- und Sachapparaten sowie Registern.

_ediarum_ ist als ein Add-On für Oxygen konzipiert und seit 2015 gibt es eine generalisierte Eingabeoberfläche. Zu beachten ist, dass _ediarum_ keine Plug-and-Play-Software ist, da immer ein:e DH-Entwickler:in für die Implementierung und den Betrieb von _ediarum_ nötig ist. In laufenden Projekten werden nicht immer alle Module, sondern mitunter auch nur Frameworks eingesetzt.

<div class="essence">
Der größte Vorteil von <span style="font-style:italic">ediarum</span> liegt darin, dass Transkripte sehr benutzerfreundlich mit TEI-konformem XML in einer gut individualisierbaren Editionsumgebung ausgezeichnet werden können. Die Einrichtung von projektspezifischen Bearbeitungsmöglichkeiten bzw. Buttons erfordert aber jedenfalls Programmierkenntnisse oder die Betreuung durch eine:n DH-Entwickler:in. Die Suchmöglichkeiten im Autormodus des Register-Moduls sind außerdem leider auf wortwörtliche Eingaben beschränkt, die von den Editionsmitarbeitenden eine genaue Kenntnis der Daten verlangen.
</div>

<span style="font-size:0.8rem;"><u>Hinweis:</u> Die nachfolgenden Ausführungen beschränken sich auf die Module ediarum.DB, ediarum.BASE.edit und ediarum.REGISTER.edit.</span>


## Anwendungsbereiche

* Transkription von Manuskripten und Drucken
* Text-Mark-up
* TEI-konforme Annotation
* Indexierung
* Erstellung von Text- und Sachapparaten sowie Registern
* Publikation in Web und Druck


## Funktionsübersicht

* Kollaborationsmöglichkeit
* Möglichkeiten der Qualitätssicherung
* Module innerhalb unterschiedlicher Umgebungen (hier nur auszugsweise):
    * _eXist-db:_
        * **ediarum.DB** zur Konfiguration einer eXist-Datenbank - die Daten, die von beliebigen Webtechnologien genutzt werden können, werden dabei über eine JSON-API geliefert
        * **ediarum.WEB** als Library, die entsprechende Funktionalitäten für die Erstellung einer WebApp für ein Rechercheportal bereitstellt
    * _Oxygen XML-Editor:_
        * **ediarum.BASE.edit** beinhaltet nützliche Funktionen für die Bearbeitung von XML-Dateien wie zum Beispiel Stylesheets für den Autor-Modus, die eine benutzerfreundlichere Transkription (von Formatierungen wie Unterstreichungen, Hervorhebungen, Streichungen, Leserlichkeit etc. oder Markierung fremdsprachlicher Einträge) mit Schaltflächen im Oxygen-Editor ermöglichen
        * **ediarum.REGISTER.edit** beinhaltet nützliche Funktionen für die erleichterte Auszeichnung von Personen, Orten etc.
        * **ediarum.PDF** für das Herunterladen und Ausdrucken von TEI-XML-kodierten Texteditionen (in Entwicklung)
        * **ediarum.MEDIAEVUM** für die Edition mittelalterlicher (Prosa-)Texte
* Diverse Ansichtsmöglichkeiten: Web-Ansicht und PDF-Vorschau
* Nutzung des DTA-Basisformats als Schema (ODD/RNG)


## Voraussetzungen

Jedes Tool kann einerseits bestimmte Vorkenntnisse der Benutzer:innen voraussetzen und andererseits auch hinsichtlich der Software-Umgebung gewisse Anforderungen stellen.


### Erforderliche Kenntnisse

* [EDV-Grundkenntnisse](https://digedtnt.github.io/about/#grundvoraussetzungen)
* TEI-XML
* XPath/XQuery
* HTML/CSS von Vorteil
* Grundverständnis von GitHub


### Benötigte Software

* Oxygen XML Author (kommerziell)
* eXist-db (optional - nur bei kollaborativem Arbeiten und für Registerverknüpfungen; Workarounds sind grundsätzlich möglich)
* Docker Desktop (für eine weniger fehleranfällige Installation von eXist-db)


## Tool-Kompatibilität

<div class="table-responsive tool-table">
<table>
  <tr>
   <td></td>
   <td>IIIF</td>
   <td>Transkribus</td>
   <td>FromThePage</td>
   <td>FairCopy</td>
   <td>OpenRefine</td>
   <td>ba[sic?]</td>
   <td>teiPublisher</td>
   <td>ediarum.WEB</td>
  </tr>
  <tr>
   <td>ediarum</td>
   <td>❌</td>
   <td>❌</td>
   <td><a href="https://digedtnt.github.io/transition-fromthepage-ediarum/">🦄</a></td>
   <td>❌</td>
   <td><a href="https://digedtnt.github.io/transition-openrefine-ediarum/">🦄</a></td>
   <td>❌</td>
   <td><a href="https://digedtnt.github.io/transition-ediarum-teipublisher/">🦄</a></td>
   <td>✅</td>
  </tr>
</table>
</div>

<div style="font-size:0.8rem;">
<span style="font-weight:bold;">Legende</span><br/>
<p>✅ Integrationen vorhanden und Entwickler:innen bewerben Übergänge<br/>
❌ Kein Entwicklung einer Transition im DigEdTnT-Projekt, keine Entwicklerintegration beschrieben<br/>
🦄 Transition im DigEdTnT-Projekt erstellt
</div>



## Kostenübersicht

* **ediarum & eXist-db:**
    * kostenlos
* **Oxygen XML Author:**
    * Halbjahres-Abo: $190 - 244
    * Jahres-Abo: $335 - 432

[Detaillierte Preisübersicht (Oxygen)](https://www.oxygenxml.com/xml_author/buy_oxygen_xml_author.html#_new_ath)


# Möglichkeiten & Grenzen

Da jedes Projekt unterschiedliche Anforderungen mit sich bringt, sollen nachfolgend mögliche Vor- und Nachteile des Tools aufgelistet werden, die während der Durchführung des jeweiligen [Beispielprojekts](https://digedtnt.github.io/about/#rezeptsammlung-pipeline-1) festgestellt wurden.


## Stärken

* Nutzung von Oxygen als komfortable und stabile Arbeitsumgebung mit ergiebiger Dokumentation
* Projektmitarbeitende können die Edition in einer benutzerfreundlichen "Autoransicht" bearbeiten und über eine eigene Werkzeugleiste per Mausklick Auszeichnungen vornehmen
* Anpassungsmöglichkeit der Bearbeitungsansicht für den jeweiligen Arbeitsschritt
* Validierung von Dokumenten gegen das eingebundene Schema sowie Ausgabe von entsprechenden Fehlermeldungen direkt während Bearbeitung
* Ständige Weiterentwicklung durch [BBAW](https://www.bbaw.de/)
* Einfache Nachnutzbarkeit von Funktionalitäten und Designs
* Möglichkeit Daten-Backups einzustellen (dabei sind jedoch Speicherkapazitäten zu beachten)
* [Zotero](https://www.zotero.org/)-Integration möglich


## Herausforderungen & Probleme

* Implementierung und projektspezifische Konfiguration erfordert DH-Entwickler:in
* Abhängigkeit von eXist-db und Oxygen
* Datenbank-Technologie ist bei größeren Datenmengen noch suboptimal, da eXist-db viel Arbeitsspeicher benötigt - für eine stabile Funktion der Datenbank sollten zumindest 2 GB Arbeitsspeicher zur Verfügung stehen
* Metadaten-Anreicherung bzw. -Ergänzung nur teilweise im benutzerfreundlicheren Autormodus möglich
* Suche im Register bei der Annotation bietet keine Substring-Suchmöglichkeit und auch keine Suche nach alternativen Bezeichnungen eines Eintrags - Bezeichnungen der Registereinträge (z. B. Flaschenkürbis, Gewürznelke, Echter Pfeffer) werden nicht gefunden, wenn man Teilbezeichnungen sucht (z. B. Kürbis, Nelke, Pfeffer)


# Einrichtung & Erste Schritte

Anhand eines [Beispielprojekts](https://digedtnt.github.io/about/#rezeptsammlung-pipeline-1), das zum Ziel hat, Kochrezepte aus dem Mittelalter computergestützt zu analysieren und später über eine Forschungsplattform zur Verfügung zu stellen, soll nachfolgend ein möglicher Arbeitsablauf für die Annotation mit _ediarum_ beschrieben werden. Die dafür verwendeten Daten wurden bereits mit dem Tool [FromThePage](https://digedtnt.github.io/fromthepage/) transkribiert und daraufhin für die weitere Bearbeitung vorbereitet (siehe [Transition](https://digedtnt.github.io/transition-fromthepage-ediarum/)). In dieser Kurzanleitung soll nun mit _ediarum_ die weitere Annotation und Indexierung der Kochrezepte des Beispielprojektes erfolgen und beschrieben werden.



## 1. Installation einzelner Komponenten

* **Installation von eXist-db:** Um die Abläufe für ein kollaborativ angelegtes Projekt genauer zu betrachten, soll nachfolgend zuerst das Einrichten einer XML-Datenbank beschrieben werden. Dies dient dazu, die bereits erstellten Transkriptionen für die weitere Annotation zu speichern und für die gemeinsame Bearbeitung bereitzustellen.
    * Hier geht es zur detaillierten [Installationsanleitung für Docker Desktop und eXist-db](https://digedtnt.github.io/docker-exist/).
* **Installation von ediarum.DB in eXist-db:** Um später unser eigenes Projekt generieren zu können, müssen wir nun _ediarum_ in eXist einrichten.
    * Dafür laden wir aus dem [ediarum-Github-Repository](https://github.com/ediarum/ediarum.DB/releases) die aktuellste Version von ediarum.DB als XAR-Datei herunter. Zum Zeitpunkt dieses Projekts ist dies die Version 4.0.2.
      ![Download von ediarum auf Github](../img/github-ediarum.PNG)
    * Im eXist-Dashboard können wir nun über den Package Manager die XAR-Datei hochladen.
      ![Upload von ediarum im Package Manager von eXist](../img/ediarum-upload.PNG)
      → Nach erfolgreichem Upload finden wir nun eine eigene Kachel mit der _ediarum_-App, die ab sofort außerdem auch im Dashboard über einen Link verfügbar ist.
      ![ediarum-Applikation in eXist](../img/ediarum-app.PNG)
* **Installation des Oxygen XML-Editors:** Abschließend fehlt nur mehr der Download und die Installation des [Oxygen XML Author](https://www.oxygenxml.com/documentation.html) - und zwar mindestens in Version 20.1. Alternativ kann auch der Oxygen XML Editor installiert bzw. genutzt werden.


## 2. Einrichtung des Projekts

* Zuerst wollen wir in unserer eXist-Datenbank für unsere Edition ein Projekt mit standardisierter Ablagestruktur sowie bestimmten Settings einrichten. Damit diese Standards korrekt angelegt werden, nutzen wir die ediarum.DB-App.
* Wir klicken also zunächst auf "ediarum" in unserem eXist-Dashboard.
  ![ediarum.DB in eXist](../img/ediarum-dashboard.PNG)
* Die _ediarum_-App öffnet sich nun in einem weiteren Fenster im Browser, wo wir im Menü zu **Verwaltung > Projekte** navigieren und dort im Feld "Neues Projekt" einen Projektnamen für unsere Edition eingeben und abschließend auf "Anlegen" klicken.
  ![Einrichten eines Projektes in der ediarum-App](../img/ediarum-project-setup.PNG)
  → Es dürfen keine Umlaute, Leer- oder Sonderzeichen verwendet werden.
* Außerdem möchten wir für unser Projekt in der Datenbank noch ein _ediarum_-Register aktivieren. In der geöffneten _ediarum_-App wählen wir dafür wieder unser Projekt aus und gelangen so auf die Projekt-Übersichtsseite.
  ![Projektkonfiguration in der ediarum-App](../img/ediarum-register.PNG)
  Dort legen wir ein neues Register an, indem wir neben **Neues Register** auf "Aktivieren" klicken. Für unser Beispielprojekt wählen wir hier "Sachbegriffe" aus dem Drop-Down-Menü des _ediarum_-Registers und wählen bei Registeraufbau die Option "Register in einer Datei".
  ![Einrichten eines projektspezifischen Registers](../img/ediarum-register-setup.PNG)
* Wir können nun als Admin mit dem admin-Benutzernamen (ohne Passwort-Eingabe) eine Verbindung unseres Oxygen-Editors zur Datenbank herstellen. Für unsere Projektmitarbeitenden wollen wir aber noch weitere Benutzer:innen in der _ediarum_-App anlegen. Dafür gehen wir wieder auf die Übersichtsseite unseres Projekts und wählen in dem Menüpunkt **Projektkonfiguration > Benutzer** aus. Dort haben wir bereits *zim-digedtnt* als User angelegt und fügen jetzt noch *zim-student* als weiteres Projektmitglied hinzu.
  ![Anlegen von Projektmitgliedern in der ediarum-App](../img/ediarum-user.PNG)
  → Damit auch andere Benutzer:innen bzw. Projektmitarbeitende die Register nutzen können, müssen wir im User Manager der eXist-db entsprechende Zugriffsrechte vergeben. Dafür gehen wir zum eXist-db-Dashboard, wählen dort **User Manager** und klicken jenen Benutzernamen an, dem wir Zugriffsrechte einräumen wollen.
  ![User-Manager in der eXist-db](../img/user-manager.PNG)
  Am Ende der User-Ansicht gibt es ein Gruppenverwaltungssystem, wo wir unserem/unserer Benutzer:in auch Zugriff auf die Gruppe "oxygen" gewähren sollten, wenn wir unseren Projektmitarbeitenden Zugriff auf die erstellten Projekt-Register einräumen wollen.
  ![Einstellung der Zugriffsrechte für Benutzer:innen](../img/user-permissions.PNG)
  Damit hat der/die ausgewählte Projektmitarbeitende nun ebenfalls Zugriff auf das zuvor angelegte Register und kann dieses bei der Annotation nutzen.
* Im nächsten Schritt stellen wir im Oxygen XML Author eine Verbindung zu unserem soeben eingerichteten Projekt her, um alle in _ediarum_ enthaltenen Funktionalitäten verfügbar zu machen. Wir öffnen dafür den Oxygen XML Author und wählen im Menü **Optionen > Einstellungen**, um anschließend in der linken Spalte "Datenquellen" anzuklicken und unter der Tabelle zu den Verbindungen auf das Plus zu klicken. Dort geben wir nun unsere Projektdaten an.
  ![Erstellen einer Datenverbindung zu unserer ediarum-Datenbank](../img/oxygen-author.PNG)
  Ob unsere Datenbankverbindung erfolgreich war, können wir herausfinden, indem wir im Menü **Fenster > Ansicht zeigen > Datenquellen Explorer** auswählen. Dort scheint nun unser Projekt mit der darin angelegten Ordnerstruktur auf.
  ![Erfolgreiche Datenbank-Verbindung im Oxygen XML Author](../img/oxygen-dataexplorer.PNG)
  Den Ordner mit den Briefen und dem Briefbeispiel.xml können wir schließlich löschen. Für unser Projekt legen wir stattdessen einen neuen Ordner mit der Bezeichnung "Manusrikpte" an, indem wir nach einem Rechtsmausklick auf unser Projekt im Datenquellen-Explorer "Verzeichnis erstellen" wählen. In diesen Ordner importieren wir nun unsere transformierten und auf das [DTABf angepasste XML-Dokumente](https://github.com/DigEdTnT/digedtnt.github.io/tree/master/data/pipelines/pipeline_1/ediarum/data/import).
  ![Projektspezifischen Ordner erstellen und Dateien importieren](../img/dataexplorer-manuscripts.PNG)
  Wenn wir nun alle Verzeichnisse ausklappen, sieht die Ordnerstruktur und der Ordnerinhalt folgendermaßen aus:
  ![Projektspezifische Datenstruktur](../img/dataexplorer-new-project.PNG)
* Als nächstes richten wir uns noch die grundlegenden _ediarum_-Frameworks in unserer Arbeitsumgebung ein. Dafür legen wir zuerst einen Ordner für diese Frameworks auf unserem lokalen Dateisystem an und legen dort die GitHub-Repositorien [ediarum.BASE.edit](https://github.com/ediarum/ediarum.BASE.edit/releases) und [ediarum.REGISTER.edit](https://github.com/ediarum/ediarum.REGISTER.edit/releases) ab, indem wir jeweils die ZIP-Dateien mit dem Source Code des letzten Releases herunterladen und diese dann entpacken. Da wir später auch ein editionsspezifisches Framework für unsere eigene Edition benötigen, legen wir zusätzlich noch einen projektspezifischen Ordner zur Erweiterung des Basis-Frameworks an.
  ![Anlegen der ediarum-Frameworks](../img/folder-frameworks.PNG)
  In Oxygen müssen wir nun noch unter **Optionen > Einstellungen** in der linken Spalte zu **Dokumenttypen-Zuordnung > Orte** navigieren, dort "Benutzerdefiniert" aktivieren und dann den Dateipfad zu unserem Framework-Ordner angeben.
  ![Framework-Konfiguration in Oxygen](../img/oxygen-framework-connection.PNG)
  Nach einem Neustart des Oxygen XML Author sollten nun unter **Optionen > Einstellungen > Dokumenttypen-Zuordnung** die _ediarum_-Frameworks aufscheinen. Hier wählen wir "ediarum.BASE.edit" aus und klicken "Erweitern" an, um unser eigenes Erweiterungsframework für unsere Edition einzubinden. Wir geben hierfür den Namen für unser editionsspezifisches Framework an, aktivieren beim Speicherort die Option "Extern" und geben dann den Pfad zu unserem zuvor angelegten Framework-Ordner an.
  ![Framework-Zuordnung](../img/oxygen-own-framework.PNG)
* Abschließend richten wir uns im Oxygen XML Author ein Projekt ein. Dafür navigieren wir in Oxygen auf **Projekt > Neues Projekt** und wählen dort den Ordner unseres projektspezifischen Frameworks aus.
  ![Erstellen eines Projekts in Oxygen](../img/oxygen-project.PNG)
  Damit die Editorvariablen im Projekt gespeichert werden, gehen wir außerdem auf **Optionen > Einstellungen** und wählen dort "Benutzerspezifische Editorvariablen", um im Weiteren diese Projekt-Optionen anzuwenden.
  ![Speichern von Editorvariablen](../img/oxygen-project-variables.PNG)
  → Am Ende sehen die Editorvariablen für unser spezifisches Projekt so aus:
  ![Projektspezifische Editorvariablen](../img/oxygen-editor-variables.PNG)


## 3. Erweiterung des projektspezifischen Frameworks

### a. Erstellen eines neuen Buttons
* Im vorangegangenen Kapitel haben wir uns zusätzlich zu dem über GitHub heruntergeladenen BASE-framework (ediarum.BASE.edit) auch ein eigenes projektspezifisches Framework mit dem Namen *ediarum.MARezepte.edit* angelegt. Dieses wollen wir nun erweitern. Nachdem es in unserem zuvor genutzten Transkriptionstool ([FromThePage](https://digedtnt.github.io/fromthepage/)) nicht möglich war, Textstellen mit roter Schriftfarbe zu annotieren, legen wir uns nun einen Button für den Oxygen XML Author an, um Projektmitarbeitenden diese spezifische Annotation zu vereinfachen.
* Im Oxygen XML Author gehen wir unter **Optionen > Einstellungen** auf **Dokumenttypen-Zuordnung** und wählen dort das projektspezifische Framework ediarum.MARezepte.edit, um dieses zu bearbeiten.
  ![Framework-Einstellungen](../img/framework-settings.PNG)
* In dem neuen Dokumenttypen-Fenster wählen wir nun den Reiter **Autor** und in der linken Menüleiste **Aktionen**. Mit einem Klick auf das Plus-Zeichen öffnet sich schließlich ein weiteres Fenster, in dem wir eine neue Aktion bzw. einen neuen Button anlegen können.
  ![Anlegen einer neuen Aktion bzw. eines neuen Buttons](../img/create-action.PNG)
* Für die Konfiguration eines Buttons, der die Annotation von Textstellen mit roter Schrift erleichtert, haben wir die Felder wie folgt befüllt.
  ![Konfiguration der neuen Aktion](../img/configure-action.PNG)
  → Nach der Wahl einer ID, eines kurzen und verständlichen Namens sowie eines Menü-Tastenkürzels (a), haben wir einen kurzen Beschreibungstext gewählt (b), der im Oxygen XML Author als Tooltip angezeigt wird. Wir haben schließlich Icons für den Button in zwei unterschiedlichen Größen erstellt, innerhalb unseres projekteigenen Frameworks gespeichert und den Pfad zu den Icons referenziert, sowie außerdem ein Tastenkürzel gewählt (c), mit dem Projektmitarbeitende auch ohne Mausklick auf den Button Textstellen annotieren können. Im nächsten Feld (d) geben wir an, unter welcher Bedingung die Aktion überhaupt gesetzt werden darf. Da wir in unserem Fall eine Textpassage mit einem [`<hi>`-Element](https://www.tei-c.org/release/doc/tei-p5-doc/de/html/ref-hi.html) umgeben wollen, geben wir bei der **XPath-Aktivierung** an, dass dieser Button bzw. diese Annotation nur dann möglich sein soll, wenn an dieser Stelle auch tatsächlich ein `<hi>`-Element erlaubt ist. Für diese Art der Annotation haben wir uns im Übrigen auf Grundlage der Vorgabe für [Einfärbungen](https://www.deutschestextarchiv.de/doku/basisformat/einfaerbung.html) im DTABf entschieden. In dem Auswahlmenü zum Vorgang (e) wählen wir den gewünschten Prozess, den wir mit unserer Aktion ausführen wollen - in unserem Fall ist dies die "SurroundWithFragmentOperation", die bewirkt, dass die markierte Textstelle mit einem "Fragment" umgeben wird. Welches Element mit welchen Attributen dieses Fragment am Ende sein soll, legen wir schließlich etwas weiter unten fest, wo wir die Zeile **fragment** auswählen und schließlich auf das Konfigurationssymbol klicken.
* In dem Fenster zur Bearbeitung des Fragments können wir angeben, dass wir die markierte Stelle mit einem `<hi>`-Element umgeben wollen, das ein Attribut `@rendition` mit dem Wert "#red" beinhaltet.
  ![Auswahl der Annotation](../img/action-value.PNG)
* Damit der Button letztlich auch in unserer Menüleiste erscheint und den Projektmitarbeitenden bei der Annotation zur Verfügung steht, fügen wir in dem Dokumenttypen-Fenster im Reiter **Autor** unter **Symbolleiste** unsere neue verfügbare Aktion zu den Textaktionen hinzu.
  ![Hinzufügen eines neuen Buttons zur Menüleiste im Autormodus](../img/menu-button.PNG)
* Um im Autormodus nach einem Klick auf den neu konfigurierten Button auch eine sichtbare Veränderung zu bewirken, muss im CSS noch eine entsprechende Änderung vorgenommen werden. Im Dokumenttypen-Fenster kann man einsehen, auf welches CSS zugegriffen wird.
  ![CSS für Autormodus](../img/css-ediarum.PNG)
  Es wäre nun entweder möglich, ein eigenes projektspezifisches CSS anzulegen, oder aber das im ediarum.BASE.edit-Framework bereits vorhandene standard.css zu erweitern.  Wir haben uns dazu entschlossen, die entsprechenden Erweiterungen im standard.css, das im Frameworks-Verzeichnis in dem Ordner ediarum.BASE.edit zu finden ist, vorzunehmen. Wir fügen also folgenden CSS-Code hinzu:
  ```css
  quote hi[rendition="#red"],
  text hi[rendition="#red"] {
      color: red;
      -oxy-display-tags: none;
  }
  ```
* Wenn wir nun im Autormodus unseren neuen Button verwenden, wird unser markierter Text rot eingefärbt. Die Oxygen-Tags, die im Autormodus standardmäßig erscheinen, werden außerdem unterdrückt.
  ![Sichtbares Ergebnis nach Auswahl der Aktion](../img/button-highlight.PNG)

### b. Anpassung bereits bestehender Buttons

* Grundsätzlich besteht im ediarum.BASE.edit-Framework bereits ein Button für die Annotation mit Registereinträgen, der ein Dropdown-Menü mit einer Registerliste öffnet.
  ![Vordefinierter Button für Annotation mit Registereinträgen](../img/register-shortcut.PNG)
  → Um die Annotation der Zutaten zu erleichtern und die Klickzahl zu minimieren, haben wir entschieden, den Listenpunkt "Sachbegriffe" aus dem Dropdown als eigenen Button in der Menüleiste anzulegen.
* Dafür navigieren wir über **Optionen > Einstellungen > Dokumenttypen-Zuordnung** zu unserem projektspezifischen Framework (ediarum.MaRezepte.edit), klicken auf "Bearbeiten" und wählen anschließend im Dokumenttypen-Fenster im Reiter **Autor** den Menüpunkt **Aktionen**.
  ![Änderung vordefinierter Aktionen](../img/register-action.PNG)
  Hier wählen wir die Aktion mit dem Namen "Sachbegriff" und klicken auf das Werkzeugsymbol, um diese Aktion zu bearbeiten.
* Im Fenster zur Bearbeitung der Aktion ändern wir die ID von rs[term] auf term, fügen neue Icons hinzu, die wir lokal im Ordner für das projektspezifische Framework gespeichert haben, wählen ein Tastenkürzel (Strg + I) für jene Projektmitarbeiter:innen, die die Arbeit mit der Tastatur bevorzugen, und ändern die XPath-Aktivierung dahingehend, dass wir bei der Annotation die entsprechende Textstelle nun anstatt mit einem `<rs>`-Element mit einem `<term>`-Element auszeichnen.
  ![Gestaltung des neuen Buttons für Registereinträge](../img/register-action-changes.PNG)
  In der Argumente-Tabelle wählen wir außerdem noch das Argument **element**, um diese Anpassungen auch dort vorzunehmen.
* Bei der Bearbeitung des Argumentwerts ersetzen wir das `<rs>`-Element mit einem `<term>`-Element und wählen als Wert des Attributs `@type` die Bezeichnung "ingredient". Außerdem stellen wir vor die `$ITEMS`-Variable des `@key`-Attributs, das später auf die `@xml:id` im Register verweist, ein "#".  
  ![Änderung des Elements für Annotation](../img/register-action-term.PNG)
* Damit der adaptierte Button auch in der Symbolleiste aufzufinden ist, wählen wir nun im Dokumenttyp-Fenster die Aktion Sachbegriff aus und fügen sie unter "Text(Benutzerdefinierte Author-Aktionen)" als Kindelement hinzu.
  ![Hinzufügen der adaptierten Aktion zur Symbolleiste im Autormodus](../img/register-action-menu.PNG)
→ Im Einstellungsfenster unter Dokumenttypen-Zuordnung sollte man im Übrigen nicht vergessen, auf "Anwenden" zu klicken, damit alle Änderungen auch tatsächlich übernommen werden.
* Zurück in der Autor-Ansicht im Oxygen XML Author verfügen wir jetzt über einen eigenen Button, der ein Fenster mit den Einträgen unseres Sachbegriff-Registers öffnet. (Weiteres zur Registerbearbeitung: siehe [Punkt 4d](https://digedtnt.github.io/ediarum/#d-annotation-mit-registereintr%C3%A4gen))
  ![Mit einem Klick direkt zum Sachbegriff-Register](../img/register-ingredient-button.PNG)
  In der Text-Ansicht ist es möglich, zu überprüfen, ob unsere Änderungen auch tatsächlich zum gewünschten Output führen (sofern wir bereits Einträge in unserem Sachregister haben).
  ![Ergebnis des Register-Buttons im Code](../img/register-tag.PNG)

## 4. Bearbeitung der Dokumente

* Bei jedem Start unserer Arbeitsroutine müssen wir zuerst Docker Desktop aktivieren und anschließend den exist-Container starten, indem wir auf die Play-Schaltfläche klicken.
  ![Starten des exist-Containers in Docker Desktop](../img/exist-container-run.PNG)
  → Mit einem Klick auf den Port (8080:8080) öffnet sich schließlich im Browser das eXist-db-Dashboard, über das wir uns anmelden können, falls wir Anpassungen an den Projektkonfigurationen in der _ediarum_-App vornehmen wollen.
* Wenn uns das Status-Feld unseres exist-Containers "Running" anzeigt, wurde die Verbindung zur Datenbank hergestellt und wir haben auch im Oxygen XML Author über den Datenquellen-Explorer Zugriff auf unsere Dateien. Wir öffnen das erste Manuskript und müssen nur mehr sicherstellen, dass wir uns im Autormodus befinden, um direkt mit der Bearbeitung beginnen zu können.
  ![Start der Editionsarbeit im Autormodus](../img/author-mode-start.PNG)
* Einige einfache Annotationen, die in unserem Workflow bereits über [FromThePage](https://digedtnt.github.io/fromthepage/) möglich waren, haben wir übernommen bzw. im Zuge unserer [Transition](https://digedtnt.github.io/transition-fromthepage-ediarum/) für die weitere Bearbeitung in _ediarum_ transformiert. Für unser Beispielprojekt ergeben sich daher noch folgende Bearbeitungsschritte:
  * Bearbeitung der nach DTABf obligatorischen Metadaten
  * Ergänzung von Annotationen, die in _FromThePage_ vorgenommen wurden, aber in ediarum (bzw. gemäß DTABf) bei der Validierung aufgrund eines fehlenden Attributs eine Fehlermeldung werfen
  * Annotation von Textstellen mit roter Schrift, für die es in _FromThePage_ keine Annotationsmöglichkeit gab
  * Annotation von Zutaten aus dem eigens erstellten Zutatenregister
→ Auf all diese Schritte soll nachfolgend genauer eingegangen werden.

### a. Bearbeitung der Manuskript-Metadaten
* Für die Bearbeitung der Metadaten ist es notwendig, den Projektmitarbeitenden, Metadaten zur Verfügung zu stellen, damit diese alle Felder, die während der [Transition](https://digedtnt.github.io/transition-fromthepage-ediarum/) von FromThePage zu ediarum mit einem Hinweis versehen wurden bzw. über einen Platzhalter in eckigen Klammern verfügen, entsprechend ausfüllen können.
  ![Ausfüllen von Platzhaltern](../img/editing-metadata.PNG)
  Wir gehen hierzu einfach auf die zu bearbeitende Stelle, löschen den Platzhalter und überschreiben die Stelle mit den entsprechenden Metadaten.
  ![Befüllen der Metadaten](../img/edited-metadata.PNG)
  → Anhand der oberen Leiste können wir auch stets nachvollziehen, in welchem Element wir uns befinden.
* Leider werden nicht alle Elemente, die im Textmodus im `<teiHeader>` vorzufinden sind, im Autormodus angezeigt. So findet man im Autormodus das `<publicationStmt>` beispielsweise weder in der `<fileDesc>`, noch in der `<sourceDesc>`. Diese Metadatenfelder können somit also nur im Textmodus bearbeitet bzw. ergänzt werden.
* **Kleiner Exkurs hinsichtlich der Möglichkeiten einer Metadaten-Anreicherung über die ediarum-Werkzeugleiste:** Für die Erweiterung der Metadaten über die _ediarum_-Oberfläche klicken wir in der Werkzeugleiste auf "Metadaten" und wählen zu Demonstrationszwecken für unser Projekt den Punkt "Ungefährer Erstellungszeitraum".
  ![Neues Metadatenfeld einfügen](../img/metadata-additions.PNG)
  Daraufhin erscheinen drei Eingabeaufforderungen zu dem frühest-möglichen Erstelldatum, dem spätest-möglichen Erstelldatum sowie einer Angabe, wie sicher man sich mit der Datierung ist.
  ![Eingabeaufforderungen zu den Metadaten](../img/metadata-extras.PNG)
  In unserem Dokument finden wir schließlich eine neue Zeile mit dem entsprechenden Eintrag.
  ![Anzeige der hinzugefügten Metadaten im Autormodus](../img/metadata-adds.PNG)
  → Da wir das DTABf-Schema eingebunden haben, in dem das `<creation>`-Element im `<TEIHeader>` nicht vorgesehen ist, wird diese Metadaten-Erweiterung rot unterwellt. Es müsste also an dieser Stelle entweder das DTABf-Schema an unsere projektspezifischen Metadaten-Anforderungen angepasst werden oder wir ignorieren die fehlerhafte Validierung. Da wir in unserem Projekt nicht auf die Datierung verzichten wollen, aber auch das Schema nicht anpassen wollen, entfernen wir diese zusätzliche Metadaten-Angabe trotz fehlerhafter Validierung nicht.
### b. Annotationen mit eigenem Button
* Einige der Annotationen haben wir in unserem Beispielprojekt bereits mithilfe von [FromThePage](https://digedtnt.github.io/fromthepage/) vorgenommen. Nicht möglich war es uns jedoch, farbliche Hervorhebung - also in unserem Fall rote Textstellen - als solche auszuzeichnen. Dies können unsere Projektmitarbeitenden nun mittels des eigens dafür erstellten Rotstift-Buttons. Für die Bearbeitung der Transkripte benötigen wir in diesem Fall für die Annotation die Digitalisate der Manuskripte. Wir öffnen dafür im Oxygen XML Author einerseits unter **Fenster > Ansicht** **zeigen** die **Bildvorschau** und wählen andererseits unter demselben Pfad den Menüpunkt **Projekt** für die Projektansicht. In der Projektansicht navigieren wir zu unserem ediarum.MaRezepte.edit-Ordner und legen in diesem einen neuen Ordner mit der Bezeichnung "faksimiles" an, in den wir unsere Faksimiles hineinkopieren. Wenn wir hier nun auf eine der Bilddateien klicken, öffnet sich diese in der Bildvorschau und wir verfügen somit über eine Bild-Text-Ansicht, die es uns erleichtert, die entsprechenden in roter Farbe geschriebenen Textstellen im Original zu finden und diese Passage entsprechend im Transkript zu markieren und mittels Rotstift-Button zu annotieren.
  ![Annotation von Textstellen mit roter Schrift](../img/red-highlighting.PNG)
* Sollten wir einmal aus Versehen eine Textstelle falsch ausgezeichnet haben, gibt es in _ediarum_ auch die Möglichkeit, die Auszeichnung wieder zu entfernen. Da der Button hierfür aber nicht standardmäßig in der Werkzeugleiste aufscheint, müssen wir zuerst in dem Fenster, das sich über einen Rechtsmausklick auf den Freibereich im Menü öffnet, die Option "Werkzeugleisten konfigurieren..." auswählen.
  ![Änderungen an der Werkzeugleiste vornehmen](../img/configure-menu-view.PNG")
  In dem darauf erscheinenden Bearbeitungsfenster haken wir die Checkbox "Auszeichnung" an und klicken anschließend auf "OK", um die Änderungen zu übernehmen.
  ![Auswahl weiterer Buttons für die Werkzeugleiste](..img/delete-annotation.PNG)
  Nun erscheint die Button-Leiste zu den Auszeichnungen in der _ediarum_-Werkzeugleiste. Wenn wir unseren Cursor in eine annotierte Textstelle setzen und den entsprechenden Button betätigen, wird die bereits getätigte Annotation wieder entfernt.
  ![Erweiterte Werkzeugleiste](..img/delete-annotation-menu.PNG)
### c. Ergänzung von nicht validen Annotationen
* Außerdem befinden sich in den bereits teilweise über _FromThePage_ annotierten Transkriptionen einige Auszeichnungen, die noch nicht dem DTA-Basisformat entsprechen. Dies trifft in unserem Beispielprojekt auf Tilgungen und Ergänzungen durch die ursprüngliche Schreiber:in zu, da wir hier über _FromThePage_ mit den vorgegebenen Buttons nur Auszeichnungen mit `<del>`- und `<add>`-Elementen vornehmen, aber keine Attribute setzen konnten. Die Attribute haben wir im Zuge der [Transition FromThePage → ediarum](https://digedtnt.github.io/transition-fromthepage-ediarum/) zwar hinzugefügt, es fehlt nun aber noch der entsprechende Wert. Im Oxygen XML Author sind diese nicht validen Stellen rot unterwellt. Mit einem Klick auf die nicht valide Textstelle erscheint links ein kleines Glühbirnen-Symbol mit Sofort-Lösungsvorschlägen.
  ![Anpassung nicht valider Annotationen](../img/rendition-choice.PNG)
  Da wir im Faksimile erkennen können, dass die getilgten Wörter durchgestrichen wurden, wählen wir das #s, welches für Streichungen steht. Die Unterwellung verschwindet schließlich, da dieses Element nun - wie im DTABf erforderlich - ein `@rendition`-Attribut mit entsprechenden Wert erhalten hat.
* Das Gleiche machen wir nun auch für die `<add>`-Elemente, die ebenfalls unterwellt sind, da diesen für ihre DTABf-Konformität ein valides `@place`-Attribut fehlt.
  ![Ergänzung von Attributen zur gültigen Validierung nach dem DTABf](../img/attribute-problem.PNG)
### d. Annotation mit Registereinträgen
* Für die Annotation der Zutaten, die in den Manuskripten zu finden sind, gibt es nun zwei Möglichkeiten. Entweder besteht bereits eine Zutatenliste und man überführt diese in die für _ediarum_ geeignete XML-Struktur oder man fügt erst während des Annotationsprozesses in _ediarum_ die in den Rezepten auftretenden Zutaten dem Register nach und nach hinzu. In unserem Beispielprojekt besteht bereits eine Zutatenliste, die aber noch nicht über alle Zutaten-Einträge verfügt. Daher wird im Folgenden einerseits der Workflow mit einem bereits bestehenden Register sowie das nachträgliche Hinzufügen von Registereinträgen beschrieben.
* Unsere (unvollständige) Zutatenliste, die zuerst nur als Exceltabelle verfügbar war, wurde über die [Transition OpenRefine → ediarum](https://digedtnt.github.io/transition-openrefine-ediarum/) mit Wikidata-Normdaten angereichert und schließlich in das Sachregister überführt, wodurch wir hier mit der Annotation der Zutaten fortsetzen können.
* Da wir aufgrund des DTABf-Schemas, das wir im Zuge der [Transition FromThePage → ediarum](https://digedtnt.github.io/transition-fromthepage-ediarum/) eingebunden haben, aber das Problem haben, dass unsere `<term>`-Elemente, die wir für die Zutaten verwenden, im Fließtext nicht verwendet werden können und daher der Zutaten-Button noch nicht funktioniert, müssten wir nun entweder das eingebundene DTABf-Schema anpassen oder könnten als Workaround im Textmodus die ersten beiden `<?xml-model>`-Elemente entfernen. Wir haben uns im Rahmen unseres Projekts für Letzteres entschieden.
  ![Entfernung der eingebundenen Schemata](../img/register-delete-schema.PNG)
* Sobald wir anschließend im Text auf eine Zutat stoßen, klicken wir auf den Zutaten-Button und wählen aus der Registeransicht, den entsprechenden Eintrag.
  ![Annotation der Zutaten mit projektspezifischem Button](../img/ingredient-annotation.PNG)
* Sollte eine Zutat noch nicht in unserem Register auffindbar sein, können wir diese manuell hinzufügen. Dafür öffnen wir im Datenquellen-Explorer im Ordner "Register" die Datei "Sachbegriffe.xml" und legen dort einen neuen Eintrag an.
  ![Neuen Registereintrag anlegen](../img/register-new-entry.PNG)
* Über den Punkt **Sachregister** in der untersten Menüleiste ist es uns außerdem möglich, eine "Alternative Bezeichnung" anzulegen (oder sogar Unterlisten zu erstellen). Dafür müssen wir auf das Label klicken, um nicht den gesamten Eintrag angewählt zu haben.
  ![Weitere Bezeichnungen für einen Eintrag hinzufügen](../img/register-label-alt.PNG)
  → An dieser Stelle fügen wir im Sinne unseres Beispielprojekts die frühneuhochdeutsche Bezeichnung ein.
* In der Menüleiste unter **Allgemein** gibt es die Möglichkeit, eine Norm-ID hinzuzufügen. Diese ist im Register-Framework von _ediarum_ vorerst aber nicht für Sachbegriffe aktiviert und daher ausgegraut. Um dies zu ändern, wählen wir unter **Optionen > Einstellungen >Dokumenttypen-Zuordnung** "ediarum.REGISTER.edit" und gehen auf "Bearbeiten".
  ![Änderungen im Register-Framework](../img/register-new-action.PNG)
  Im Reiter **Autor** wählen wir schließlich **Aktionen** und suchen in der Spalte Name nach "Norm-ID", um schließlich über das Werkzeugsymbol zur Bearbeitungsansicht zu kommen.
  ![Bearbeitung des Norm-ID-Buttons](../img/register-id-action.PNG)
  Unter Vorgänge gehen wir auf einen der 4 Vorgänge und duplizieren diesen.
  ![Kopie einer Aktion](../img/register-copy-action.PNG)
  Nun tauschen wir "org" mit "label" aus, um das Einfügen einer ID auch in unserem Sachregister zu ermöglichen, und speichern unsere Einstellungen. Hierbei sollte nicht vergessen werden, im Einstellungsfenster noch auf "Anwenden" zu klicken, damit unsere Änderungen auch wirklich übernommen werden.
  ![Anpassung der kopierten Aktion](../img/register-adapt-action.PNG)
  Jetzt können auch im Sachregister Norm-IDs - wie in unserem Fall der entsprechende Wikidata-Link - hinzugefügt werden.
  ![Wikidata-Link zum Registereintrag hinzufügen](../img/register-wikidata-idno.PNG)
* Zuletzt möchten wir für unseren Eintrag noch die automatisch generierte @xml:id ändern. Dafür gehen wir auf unseren Eintrag (und zwar am Besten über den Wikidata-Link, damit wir den gesamten Eintrag markieren und nicht nur das Label oder die Idno) und wählen nach einem Rechtsmausklick im daraufhin erscheinenden Menü "Attribute bearbeiten".
  ![Änderung der automatisch generierten xml:id](../img/register-add-xml-id.PNG)
  Wir geben hier unseren neuen Wert - in unserem Fall die englische Übersetzung - ein und speichern unsere Änderung.
  ![Eingabe einer individuellen xml:id](../img/register-xml-id.PNG)
  → Während dieses Prozesses hat sich ein kleines Problem ergeben: Leider ist das Register nicht auf die alternativen Bezeichnungen durchsuchbar, sondern man muss den genauen Wortlaut des Eintrags wissen, der die reguläre Schreibweise abbildet. So, hatten wir beispielsweise nach dem Begriff "Nelke" gesucht, wurden aber aufgrund dessen, dass es keine Substring-Suche gibt, nicht fündig. Denn die Nelke ist in unserem Register unter "Gewürznelke" gespeichert, und erst als wir die xml:id mit dem Wert "clove" anlegen wollten, haben wir die Meldung bekommen, dass diese xml:id (für den Eintrag Gewürznelke) bereits besteht. Ein weiterer Nachteil ist, dass die `<label>`-Elementen mit `@alt`-Attribut der einzelnen Einträge, in denen die frühneuhochdeutschen Schreibweisen gespeichert sind, nicht während der Annotation durchsucht werden können. Dadurch müssten wir jedes Mal in die Registeransicht wechseln und manuell überprüfen, ob die im Manuskript auftretende Schreibung bereits im Register festgehalten ist.

## 5. Export der Dokumente
* Um die XML-Dateien auf unserem lokalen Gerät zu speichern, gehen wir mit einem Rechtsmausklick auf jenen Ordner, dessen Inhalte wir herunterladen wollen, und klicken auf "Exportieren".
  ![Export der annotierten XML-Dateien](../img/export-data.PNG)
* Im darauffolgenden Fenster geben wir den Speicherort an.
  ![Angabe des Speicherorts](../img/export-data-path.PNG)
  → Die Dateien befinden sich jetzt in unserem lokalen Verzeichnissystem.


# Kontakt

**Unternehmensgröße:**

**Weblink:** [www.weblink.com](www.weblink.com)

<div class="table-responsive">
<table class="table">
  <tr>
   <td>Allgemeiner Support   </td>
   <td><a href="mailto:ediarum@bbaw.de">ediarum@bbaw.de</a>   </td>
  </tr>
  <tr>
   <td>Mailingliste (für DH-Entwickler:innen)   </td>
   <td><a href="https://mailman.bbaw.de/mailman/listinfo/dev.list">dev.list@ediarum.org</a>    </td>
  </tr>
  <tr>
   <td><a href="https://www.bbaw.de/die-akademie/mitarbeiterinnen-mitarbeiter/fechner-martin">Martin Fechner</a> (ediarum Web + eXist)   </td>
   <td><a href="mailto:fechner@bbaw.de">fechner@bbaw.de</a>   </td>
  </tr>
</table>
</div>


# Ressourcen

* [Workshop- und MeetUp-Termine](https://www.ediarum.org/veranstaltungen.html)

## Dokumentation

* [ediarum Setup-Anleitung](https://www.ediarum.org/docs/set-up/)
* [ediarum.BASE Benutzerhandbuch](https://www.ediarum.org/docs/ediarum.BASE.manual/)
* [Oxygen XML Author](https://www.oxygenxml.com/doc/versions/20.1/ug-editor/topics/authoring_customization.html)
    * [Erstellung von Buttons](https://www.oxygenxml.com/doc/versions/23.0/ug-editor/topics/dg-create-custom-actions.html)
* [XPath](https://www.data2type.de/xml-xslt-xslfo/xpath#c150)
* [eXist-db](http://exist-db.org/exist/apps/doc/)
* [GitHub Repository (Informationen zu einzelnen Modulen)](https://github.com/ediarum)

## Tutorials

* [Eigenes Framework für Oxygen XML bauen](https://digiversity.net/2013/tutorial-wie-baue-ich-ein-oxygen-xml-framework/)

## Projekte, die dieses Tool genutzt haben

* [edition humboldt digital](https://edition-humboldt.de/): Das Editionsvorhaben "Alexander von Humboldt auf Reisen - Wissenschaft aus der Bewegung" ediert und publiziert Reisetagebücher, Briefe sowie andere Dokumente seit 2015 mit _ediarum_. In der edition humboldt digital werden die edierten Texte nicht nur präsentiert, sondern auch über Personen-, Orts-, Werk-, Institutions- und Pflanzenregister erschlossen.
* [Schleiermacher in Berlin 1808-1834:](https://schleiermacher-digital.de/) In diesem Projekt werden Briefwechsel, Tageskalender sowie Vorlesungen von Friedrich Schleiermacher während seiner Zeit in Berlin ediert und die Edition durch Personen-, Orts-, Werkregister und ein Verzeichnis zu den erwähnten Bibelstellen erschlossen.


## Literatur

* Arndt, N., & Wegener, L. (2019). Überlegungen zur digitalen Edition mystischer Mosaiktraktate des Spätmittelalters. _Das Mittelalter_, _24_(1), 15–30. [https://doi.org/10.1515/mial-2019-0003](https://doi.org/10.1515/mial-2019-0003)
* Dumont, S., Arndt, N., Grabsch, S., & Klappenbach, L. (2021). _ediarum.BASE.edit v2.0.0_ (v2.0.0) [Computer software]. Zenodo. [https://doi.org/10.5281/ZENODO.5897100](https://doi.org/10.5281/ZENODO.5897100)
* Dumont, S., & Fechner, M. (2014). Bridging the Gap: Greater Usability for TEI encoding. _Journal of the Text Encoding Initiative_, _Issue 8_. [https://doi.org/10.4000/jtei.1242](https://doi.org/10.4000/jtei.1242)
* Dumont, S., & Fechner, M. (2019, April 2). _ediarum – Arbeits- und Publikationsumgebung  für digitale Editionsvorhaben_. [https://doi.org/10.5281/zenodo.2621062](https://doi.org/10.5281/zenodo.2621062)
* Fechner, M. (2018, März 4). _A Standardized Interface for Digital Scholarly Editions_. DHd 2018 - Konferenz der Digital Humanities im deutschsprachigen Raum, Köln vom 26.02.-02.03.2018, Köln. urn:nbn:de:kobv:b4-opus4-33277
* Fechner, M., & Dumont, S. (2019). _ediarum - from bottom-up to generic programming_. [https://av.tib.eu/media/42492](https://av.tib.eu/media/42492)
* Fechner, M., Dumont, S., JanWierzoch, Lauml, & Grobian. (2022). _ediarum/ediarum.DB: ediarum.DB 4.0.2_ (v4.0.2) [Computer software]. Zenodo. [https://doi.org/10.5281/ZENODO.5940465](https://doi.org/10.5281/ZENODO.5940465)
* Kraft, T. (2018). Hybride Edition und analoges Erbe: Editionsphilologie und Alexander von Humboldt-Forschung in der digitalen Sattelzeit. _Informatik-Spektrum_, _41_(6), 385–397. [https://doi.org/10.1007/s00287-018-01130-5](https://doi.org/10.1007/s00287-018-01130-5)
* Kraft, T., & Thomas, C. (2022). _Datenmanagementplan des Akademienvorhabens „Alexander von Humboldt auf Reisen – Wissenschaft aus der Bewegung"_. Berlin-Brandenburgische Akademie der Wissenschaften. [https://edoc.bbaw.de/opus4-bbaw/frontdoor/index/index/docId/3725](https://edoc.bbaw.de/opus4-bbaw/frontdoor/index/index/docId/3725)
* Mertgens, A. (2019). _Ediarum : a toolbox for editors and developers_. _RIDE 11_. [https://doi.org/10.18716/RIDE.A.11.4](https://doi.org/10.18716/RIDE.A.11.4)
* Vetter, A. (2022). ediarum.MEDIAEVUM. Eine Arbeitsumgebung zur Edition mittelalterlicher (Prosa)Texte. _Beiträge zur mediävistischen Erzählforschung_, _Themenheft 12_, 47-64 Seiten. [https://doi.org/10.25619/BME20223194](https://doi.org/10.25619/BME20223194)


# Factsheet

<table>
<tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em" ><strong>System</strong>
   </td>
</tr>
<tr>
   <td><strong>Scope des Tools</strong>
   </td>
   <td>Annotation
   </td>
</tr>
  <tr>
   <td><strong>Softwareumgebung/Softwaretyp
</strong>(Remotesystem im Browser / Lokaler Client)
   </td>
   <td>Applikation/Plug-In
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
   <td>✅
   </td>
  </tr>
  <tr>
   <td><strong>Accountsystem</strong>
   </td>
   <td>✅Hinzufügen von mehreren Usern möglich
   </td>
  </tr>
  <tr>
   <td><strong>Kostenmodell</strong> <br/>
   (Kostenübersicht/Open Source)
   </td>
   <td><span style="text-decoration:underline;">ediarum & eXist-db</span>: kostenlos<br/>
<span style="text-decoration:underline;">Oxygen:</span><br/>
$190 - 244/Halbjahres-Abo<br/>
$335 - 432/Jahres-Abo
   </td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em"><strong>Anforderungen & Methoden</strong>
   </td>
   </tr>
   <tr>
   <td><strong>Erforderte Code Literacy</strong>
   </td>
   <td>fortgeschritten
   </td>
   </tr>
  <tr>
   <td><strong>Interface-Sprachen (ISO 639-1)</strong>
   </td>
   <td>de
   </td>
  </tr>
  <tr>
   <td><strong>Unterstützte Zeichenkodierung</strong>
   </td>
   <td>Latin-1, UTF-8, UTF-16
   </td>
  </tr>
  <tr>
   <td><strong>Inkludierte Datenkonvertierung</strong><br/>
(Im Preprocessing mögliche Anpassung der Daten an für die Software erforderliches Format)
   </td>
   <td>❌
   </td>
  </tr>
  <tr>
   <td><strong>Abhängigkeit von anderer Software</strong> <br/>
(Falls ja, wird diese Software automatisch mitinstalliert?)
   </td>
   <td>✅ eXist-db und Oxygen sind eigenständig zu installieren
   </td>
  </tr>
  <tr>
   <td><strong>Erforderliche Plug-Ins</strong>(bei web-basierten Anwendungen)
   </td>
   <td>[nicht anwendbar]
   </td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em"><strong>Dokumentation & Support</strong>
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
   <td>✅ GitHub
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
   <td>Deutsch, Spanisch
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
   <td>Einführung, Allgemeine Bedienung, Metadaten, Text, Brief, Register
   </td>
  </tr>
  <tr>
   <td><strong>Verfügbarkeit von Tutorials</strong>
   </td>
   <td>✅ für Oxygen XML Frameworks
   </td>
  </tr>
  <tr>
   <td><strong>Aktiver Support/Community</strong><br/>
   (Forum, Slack, Issue Tracker etc.)
   </td>
   <td>✅ GitHub-Issues-Mechanismus, Mailingliste
   </td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em"><strong>Nutzbarkeit & Nachhaltigkeit</strong>
   </td>
   </tr>
   <tr>
   <td><strong>Installationsablauf</strong>
   </td>
   <td>fortgeschrittene Kenntnisse nötig
   </td>
   </tr>
  <tr>
   <td><strong>Test</strong><br/>
(Gibt es ein Test Suite, um zu überprüfen, ob die Installation erfolgreich war?)
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td><strong>Lizenz, unter der das Tool veröffentlicht wurde</strong>
   </td>
   <td>[GNU 3.0](https://www.gnu.org/licenses/gpl-3.0.en.html)
   </td>
  </tr>
  <tr>
   <td><strong>Registrierung in einem Repository</strong>
   </td>
   <td>✅ GitHub
   </td>
  </tr>
  <tr>
   <td><strong>Möglichkeit zur Software-Entwicklung beizutragen</strong>
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>Benutzerinteraktion & Benutzeroberfläche</strong>
   </td>
   </tr>
   <tr>
   <td><strong>Benutzerprofil</strong><br/>(erwartete Nutzer:innen)
   </td>
   <td>GeWi-Forschungsinstitutionen und GeWi-Forschende als Tool-Nutzende
   </td>
   </tr>
  <tr>
   <td><strong>Benutzerinteraktion</strong><br/>
   (erwartete Nutzung)
   </td>
   <td>Hochladen von Dateien, Projektmanagement, Edition bzw.
Annotation von Texten, Indexierung, Export
   </td>
  </tr>
  <tr>
   <td><strong>Benutzeroberfläche</strong>
   </td>
   <td>GUI
   </td>
  </tr>
  <tr>
   <td><strong>Visualisierungen</strong><br/>
(Analyse-, Input-, Outputkonfigurationen)
   </td>
   <td>❌
   </td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em"><strong>Benutzerverwaltung</strong>
   </td>
   </tr>
   <tr>
   <td><strong>Personenverwaltung</strong>
   </td>
   <td>✅ inklusive Rollenzuweisung
   </td>
   </tr>
  <tr>
   <td><strong>Interne Kommunikationsmöglichkeiten
</strong>(z. B. Annotationsrichtlinien, Kommentarfunktionen, …)
   </td>
   <td>✅ Kommentarfunktion
   </td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em"><strong>Daten- und Toolverwaltung</strong>
   </td>
   </tr>
   <tr>
   <td><strong>Zentrale/dezentrale Verwaltungsmöglichkeit</strong>
   </td>
   <td>✅
   </td>
   </tr>
  <tr>
   <td><strong>Versionskontrolle</strong>
   </td>
   <td>❌
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
   <td>❌
   </td>
  </tr>
  <tr>
   <td><strong>Möglichkeit auf simultanes Arbeiten </strong>
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em"><strong>Datenupload</strong>
   </td>
   </tr>
   <tr>
   <td><strong>Unterstützte Dateiformate</strong>
   </td>
   <td>XML, TEI-XML
   </td>
   </tr>
  <tr>
   <td><strong>Informationen zur Datensicherheit</strong>
   </td>
   <td>[nicht anwendbar, da Datenbank und Daten auf einem von der Projektleitung selbst gewählten Server gespeichert sind]
   </td>
  </tr>
  <tr>
   <td><strong>Zugänglichkeit von verschiedenen  <br/>
Standorten/Geräten</strong>
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td><strong>Einschränkungen hinsichtlich der Datenmenge</strong>
   </td>
   <td>[keine Angabe]
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
   <td>❌
   </td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em"><strong>Datenbearbeitung (Annotationstool)</strong>
   </td>
   </tr>
   <tr>
   <td><strong>Komplexitätsgrad bei Annotation</strong><br/>(z. B. Verfügbarkeit von Buttons, Drag&Drop-Funktion, …)
   </td>
   <td><strong>Buttons für Annotationen</strong><br/>
(individuelle Buttons müssen jedoch zuerst erstellt werden - benötigt fortgeschrittene Kenntnisse)
   </td>
   </tr>
  <tr>
   <td><strong>Standardeinstellungen entsprechend bestimmten Standards für Digitale Editionen </strong>
   </td>
   <td>✅ TEI, DTA-Basisformat
   </td>
  </tr>
  <tr>
   <td><strong>Anpassungsmöglichkeit und Validierung<br/>
entsprechend projektspezifischen Konventionen/Schemata</strong>
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td><strong>Definition eigener/projektspezifischer Tags</strong>
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td><strong>Metadaten-Anreicherung</strong>
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td><strong>Eigene Indexierung</strong>
   </td>
   <td>✅ Registerfunktion
   </td>
  </tr>
  <tr>
   <td><strong>Möglichkeit von Textvergleich bzw. Arbeit an Variantenapparat</strong>
   </td>
   <td>❌
   </td>
  </tr>
  <tr>
   <td><strong>Ansichtsmöglichkeiten</strong><br/>(z. B. Bearbeitungsansicht, Synopsen-Ansicht, Vorschauansicht …)
   </td>
   <td>Vorschauansicht (=Autormodus), <br/>
Bearbeitungsansicht (=Textmodus), <br/>
Synopsen-Ansicht
   </td>
  </tr>
  <tr>
   <td><strong>Verlinkung von Entitäten, NER</strong>
   </td>
   <td>✅über Register möglich
   </td>
  </tr>
  <tr>
   <td colspan="2" style="text-align: center;font-size: 1.2em"><strong>Datenexport</strong>
   </td>
   </tr>
   <tr>
   <td><strong>Unterstützte Dateiformate</strong>
   </td>
   <td>XML, TEI-XML
   </td>
   </tr>
  <tr>
   <td><strong>Datenverlust
</strong>(nicht vollständiger Erhalt von Annotationen, die bereits vor Verwendung des Tools gemacht wurden)
   </td>
   <td>❌   </td>
  </tr>
  <tr>
   <td><strong>Validierungsmöglichkeit für TEI-XML vor Export</strong></td>
   <td>✅   </td>
  </tr>
  <tr>
   <td><strong>Datenaufbewahrung nach Export</strong></td>
   <td>[nicht anwendbar, da Datenbank und Daten auf einem von der Projektleitung selbst gewählten Server gespeichert sind]</td>
  </tr>
</table>