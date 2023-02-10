---
layout: post
title: teiPublisher
categories: [Test1, test2]
excerpt: Der teiPublisher hilft bei der Auswertung und Präsentation von Forschungsdaten.
---



Last Update: 2022-09-29



## <span style="text-decoration:underline;">teiPublisher</span>


## Beschreibung

Der teiPublisher hilft bei der Auswertung und Präsentation von Forschungsdaten.

Daten(-stand) → <span style="text-decoration:underline;">Datenbank → Abfrage → Prozessierung → Aufbereitung </span>→ Darstellung

Digitale Editionen basieren auf ODD

Der teiPublisher ermöglicht die Veröffentlichung von TEI Dokumenten in verscheidenen Ausgabeformaten wie bspw. HTML oder PDF. Er bietet zudem einen Framework bzw. eine Bibliothek für die Gestaltung einer digitalen Edition mit vorgefertigten Komponenten. Außerdem verfügt er über eine eigene interne Arbeits- und Verwaltungsumgebung, die folgende Möglichkeiten bietet: 



* Bearbeitung des ODD
* Verwaltung und Annotation von Daten
* Anbindung an externe Dienste über klar definierte APIs

Erstellung einer einfachen digitalen Edition



* synoptische Ansicht Text-Facsimile
* benutzerdefiniertes Rendering des Texts
* Anzeige von Informationen zu verschiedenen Szenarien

Seit Version 6 gibt es auch Webcomponents, die typische Anwendungsfälle abdecken, um Programmieraufwand (z.B. Javascript) einzuschränken. Beispiele: &lt;pb-view/> = Anzeigeseite, &lt;pb-popover/> → Tooltip; &lt;pb-zoom/> → Zoom-Buttons; &lt;pb-search/> → Suchfeld; &lt;pb-lang/> → Sprachwauswahl;


### Beispiele an teiPublisher-Editionen

Escher Briefedition (briefedition.alfred-escher.ch)

Sammlung Schweizerischer Rechtsquellen online (editio.ssrq-online.ch)


### Funktionsübersicht anhand der App

Startseite:



* Navigationsleiste oben recht: Login/Logout
* Navigationsleiste oben links: Publisher- und API-Dokumentation (sehr hilfreich; nicht zu technisch, außer bei komplexeren Fragestellungen/Problematiken)
* Hauptabschnitt (Dokumente): Liste von Collections, die XML-Daten enthalten
* Navigationsleiste rechts (ODD Dateien): Liste an ODDs

ODD Editor:



* Navigation links: Liste von Elementen, die im ODD modelliert werden
* Kontrollpanel unterhalb der Navigationsleiste oben: ODD Quelldatei anzeigen, neu laden, speichern
* Hauptteil: Bearbeitung der &lt;elementSpec> von Elementen

Annotationsmodul:



* Navigation links: Annotationsmenü
* Hauptabschnitt: Haupttext
* Spalte rechts: Vorschau - Anzeige erst nach dem Speichern möglich


## Erforderliche Kenntnisse



* XML-TEI
* ODD (https://teibyexample.org/tutorials/TBED08v00.htm)
* XPath / XQuery (https://www.data2type.de/xml-xslt-xslfo/xslt/xslt-und-xpath-referenz) 
* HTML & CSS Basics


## Benötigte Software

Java-Laufzeitumgebung: [https://adoptium.net/de/temurin/releases?version=11](https://adoptium.net/de/temurin/releases?version=11)

eXist-db (Open Source): [https://github.com/eXist-db/exist/releases/tag/eXist-6.0.1](https://github.com/eXist-db/exist/releases/tag/eXist-6.0.1)


## Einrichtung & Erste Schritte



1. **Installation von eXist-db (und Java-Umgebung)**
* Passwort für admin unbedingt merken ;) 
2. **Installation des Publishers als App in eXist-db**
* Einstieg über Dashboard
* Einloggen
* Package Manager öffnen
* TEI Publisher über Download-Icon herunterladen und installieren (funktioniert nicht immer → Uni Wuppertal bietet Download-Link: [https://uni-wuppertal.sciebo.de/s/BZRsbZ3gfbL4oSO](https://uni-wuppertal.sciebo.de/s/BZRsbZ3gfbL4oSO) → XAR-Datei dann im eXist-db Package Manager hochladen - geht auch per Drag&Drop über Upload-Button; möglicherweise müssen zuerst noch Komponenten upgedatet werden → Update durchführen und nochmal Installation des Publishers starten → am Ende sollte im Package Manager unter “Installed” die Application TEI Publisher aufscheinen) 
3. **Upload des ersten XML-Dokuments**
* **Direkt über teiPublisher:** Über das Dashboard teiPublisher öffnen → Login mit user: tei und password: simple → Playground (dt. Spielwiese) öffnen →  rechts eine XML-Datei hochladen → sollte nun in dem Playground-Verzeichnis erscheinen und anklickbar sein
* **Über eXide**: Neue XML-Datei [New → Type XML → Create] erstellen mit minimalen Anforderungen (TEI mit Namespace, teiHeader mit fileDesc und titleStmt und title, sowie text mit body und einem p mit beliebigen Inhalt) → Speichern [Save as] unter dem Pfad  db/apps/tei-publisher/data/playground als “example.xml” → Dokument sollte ebenfalls im teiPublisher im Playground/Spielwiese erscheinen und anklickbar sein

4. **Textannotation über teiPublisher **



* Auf Startseite unter Annotations bereits Beispiele, man kann aber rechts auch eigens XML hochladen
* Man kann Wort markieren und rechts in Bearbeitungspanel bereits Referenzen von GND oder GeoNames auswählen und Wörter oder Passagen auszeichnen → momentan nur ein paar Standardelemente zum Tagging auswählbar (persName, orgName, placeName, Date, Sprache, Hervorhebungen usw.) 
* Achtung: bereits zuvor im XML händisch annotierte Passagen werden überschrieben, wenn man sie auswählt (Änderungen erfolgen jedoch nur in eXist-db und nicht lokal auf Rechner)
* Die im teiPublisher hinzugefügten Annotationen werden zusätzlich in einem standOff unter db/apps/tei-publisher/data in der register.xml gespeichert 

5. **Erstellung einer ODD** (TEI Processing Model für medienneutrale/-übergreifende Beschreibung zur Verarbeitung von TEI-Daten)



* Erzeugung über teiPublisher: Login → in der rechten Spalte unter ODD ganz unten: Dateinamen festlegen (ohne Leerzeichen, ohne Dateiendung → neue Datei erscheint in ODD Liste → Spalte links: neues Element hinzufügen → Element dann spezifizieren → im teiPublisher anschließend XML-Datei anzeigen lassen und in der zweiten Navigationsleiste das Sandwich-Symbol anklicken, wo man unter den Settings das abgespeicherte ODD auswählen kann
* Erzeugung über eXide: neue Datei erstellen → ODD (Template: None) → speichern unter File - Manager unter dem Pfad db/apps/teipublisher/odd → am besten Code aus teipublisher.odd, die im gleichen Ordner liegt, in neu erstellte Datei kopieren und alle Models aus schemaSpec löschen → außerdem im titleStmt den title anpassen, um Datei später im teiPublisher zu finden →entweder direkt in der odd arbeiten, oder im teiPublisher rechts in der ODD Liste die soeben angelegte Datei aufrufen und die einzelnen Elemente bearbeiten
* Bearbeitung in Exide: im teiPublisher ODD erzeugen → auf die spitzen Klammern neben der neu erstellten Datei klicken oder direkt in eXide über File - Manager über den Pfad db/apps/tei-publisher/odd entsprechende Datei öffnen → es folgt Wechsel in eXide, wo direkt im schemaSpec-Element gestartet wird (Default bei der Ausgabe ist immer die teipublisher.odd) → wichtig ist auch auf die Reihenfolge der Models zu achten: zuerst spezifischere Fälle, und nachgereiht die allgemeinen

**6. Anpassung der Oberfläche **(HTML Templates)



* Erzeugung über eXide: neues Dokument erstellen → HTML (Template:None) → Speichern unter db/apps/teipublisher/templates/pages, wo auch das Standard-HTML view.html zu finden ist → view.html öffnen und den gesamten Code herauskopieren und im neu angelegten html einfügen → im head noch unter dem title data-template im Element meta mit dem Attribut name=”description” die Dateibezeichnung in 
* Bilder hochladen: in eXide unter File - Manage unter dem Pfad db/apps/teipublisher/data einen eigenen Ordner mit dem Namen “images” anlegen → &lt;pb-facsimile> am besten aus Dokumentation unter der Demo in pb-facsimile kopieren und zusätzlich auch style-Anpassungen (kann aus einem der vorhandenen html-templates übernommen werden) vornehmen, damit Facsimile sichtbar wird → im HTML im Element pb-facsimile die base-uri anpassen (https:://localhost:8080/exist/apps/tei-publisher/”) → für die dynamische Ansicht muss im ODD ein neues Model für pb mit dem Attribut facs angelegt werden, das als behaviour eine webcomponent erzeugt (dieses Model muss ganz an den Anfang gestellt werden) → hier eine Verbindung zu Faksimiles erzeugen 

**7. Eigene Edition generieren**



* Im teiPublisher unter Administration → App Generator → eigene ODD auswählen → URL einfügen sowie Short Name und Titel der App → eigenes HTML Template hinzufügen →User Account mit Passwort anlegen und generieren → in der eigenen App dann mit eigens generierten Daten einloggen → dort unter Upload noch das XML hochladen (Anzeige hat bei Test nicht funktioniert) 


## Dokumentation

Allgemeine teiPublisher-Doku: auf der Website verfügbar

Webkomponenten: https://unpkg.com/@teipublisher/pb-components@1.38.5/dist/api.html


## Möglichkeiten



* Textannotation im TEIPublisher
    * Möglichkeit zur Auszeichnung von TEI-Daten in einer graphischen Oberfläche
    * TEI muss aber bereits mit minimalen Anforderungen existieren
* ODD-Erstellung & -Anpassung
* Anpassung der Oberfläche
* XQuery, API, Suchfunktionen, Registerseiten


## Grenzen


## Herausforderungen/Probleme



* Für große Projekte sehr viel Anpassungsarbeit notwendig, die oft auch eingehende technische Kenntnisse erfordern
* Installationsprobleme : bei eXist-db, aber auch beim teiPublisher innerhalb von eXist-db
* teiPublisher: Cache-Probleme im Browser (Browserverlauf muss mitunter zwischenzeitlich gelöscht werden)
* Annotationsmöglichkeiten innerhalb des teiPublishers begrenzt (Kernfunktionalität ist aber Publishing, dies ist nur ein zusätzliches Feature, das immer weiter ausgebaut wird)


## Vorteile



* Schlichtheit
* Nachhaltigkeit
* Austauschbarkeit


## Kontakte

**Slack-Community **(inklusive einem Channel für Workshops): [https://join.slack.com/t/e-editiones/shared_invite/zt-1fz52a9ra-tMWjgoKEWNF_rrRpMZQzRQ](https://join.slack.com/t/e-editiones/shared_invite/zt-1fz52a9ra-tMWjgoKEWNF_rrRpMZQzRQ)


## Ressourcen
