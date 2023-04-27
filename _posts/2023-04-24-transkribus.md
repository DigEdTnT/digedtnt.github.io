---

layout: post

title: Transkribus Lite

categories: [tool, text recognition, layout recognition, transcription, annotation, Transkribus Lite, TEI]

excerpt: Transkribus Lite ist eine Plattform für KI-gestützte Layout- und Texterkennung

---


# Beschreibung

Transkribus Lite ist eine Plattform primär für die KI-gestützte Layout- und Texterkennung von gedruckten oder handgeschriebenen Dokumenten, ermöglicht aber auch - mit Grenzen - die Annotation von Struktur und Inhalt. Die Plattform geht auf das 2016 ins Leben gerufene READ-Projekt zurück und wird von der 2019 gegründeten Europäischen Genossenschaft READ-COOP SCE zur Verfügung gestellt und beständig weiterentwickelt. Die Genossenschaft hat mittlerweile mehr als 130 Mitglieder (Institutionen und Privatpersonen) in 30 Ländern (Stand April 2023).


## Anwendungsbereiche



* automatische KI-gestützte Layout- und Texterkennung von gedruckten und handschriftlichen Texten ([OCR](https://de.wikipedia.org/wiki/Texterkennung) bzw. [HTR](https://de.wikipedia.org/wiki/Handschrifterkennung))
* Training eigener Layout- und Texterkennungsmodelle oder Verwendung öffentlicher Modelle
* Anreicherung (Markieren, Taggen, Annotieren) von Struktur und Inhalt von Texten
* Suche in Dokumenten
* Export der Dokumente in verschiedenen Formaten (z. B. TEI-XML)

**Transkribus-Ökosystem:**



1. **Digitalisierung** (scantent.eu): Mittels LED beleuchtetes, tragbares Scanzelt zum Digitalisieren von Dokumenten z. B. in Archiven und Bibliotheken über Smartphones und App-Unterstützung (DocScan-App)
2. **Bearbeitung/Transkription und Datenerfassung + Annotation und KI-Training** ( Transkribus lite & eXpert, citizen&science)
3. **KI-gestützte Texterkennung** (Transkribus lite & eXpert, metagrapho&lt;api>, Transkribus.ai)
4. **Publikation** (read&search): Mittels read&search können die Dokumente aus den Transkribus-Sammlungen öffentlich zugänglich gemacht werden. 


## Funktionsübersicht



* Automatische Transkription handgeschriebener oder gedruckter Dokumente mittels öffentlicher oder selbst trainierter Modelle
* Separat oder gemeinsam mit Texterkennung ausführbare Layouterkennung
* Training von KI-Modellen zur Layout- und Texterkennung
* Editor mit Bild-Text-Synopse zur
    * Korrektur von automatisch erkanntem Text oder manuellen Transkriptionen
    * Anreicherung der Dokumentstruktur und des Inhalts (Markieren, Taggen, Annotieren):
        * Struktur: Auf dem Faksimile können Regionen ausgezeichnet und diesen ein Strukturtyp (z. B. “paragraph”) zugewiesen werden
        * Inhalt: Auszeichnung des Textformats (fett, kursiv, hochgestellt usw.) und Tagging von Textpassagen (z. B. “date”)
    * Es lassen sich allerdings nur einfache und keine komplexen Strukturen annotieren (z. B. überschneidende oder seitenübergreifende Annotationen)
* Selbst definierbare Struktur- und Texttags mit optionalen Attributen
* Kollaborative Zusammenarbeit: Nutzer:innen können mit verschiedenen Rollen (“owner”, “editor” und “transcriber”) zu Sammlungen hinzugefügt werden und gemeinsam an Projekten arbeiten. 
* Durchsuchen von Tags und Text
    * Volltextsuche: Suchbegriffe sind u. a. durch Wildcards modifizierbar
    * Fuzzy Search: Findet Ergebnisse, die sich in ein bis zwei Buchstaben vom Suchbegriff unterscheiden
    * Smart Search: Damit diese Art von Suche möglich ist, muss sie vor dem Durchführen der Texterkennung ausgewählt werden. Es werden dann hierbei nicht nur die automatisch erkannten Wörter gespeichert, sondern auch deren mögliche Varianten, was bedeutet, dass auch vom Texterkennungsmodell falsch transkribierte Wörter gefunden werden können. Die Smart Search ist mit 50 % höheren Kosten für die Texterkennung verbunden, da sie speicher- und rechenintensiver ist
* Export der Dokumente in verschiedenen Formaten: PAGE XML, ALTO XML, TEI XML, PDF (Bild- und Transkriptionslayer), Docx, Tags XLSX, Table XLSX 

### Derzeitige Versionen



* Transkribus eXpert (Standalone-Version, Java-basiert) 
* Transkribus Lite (Webversion) 

Aufgrund der großen Annahme der Webversion wird nur mehr diese weiterentwickelt, Transkribus eXpert steht zwar weiterhin zur Verfügung, allerdings werden keine neuen Features mehr hinzugefügt. Alle Dokumente, die in Transkribus Lite hochgeladen werden, stehen aufgrund der Speicherung auf den Servern der READ COOP SCE auch in Transkribus eXpert zur Verfügung. Transkribus Lite wird laufend um neue Funktionalitäten erweitert und ist zur Zeit nicht so mächtig wie die Standalone-Version.


## Tool-Kompatibilität


<table>
  <tr>
   <td>
   </td>
   <td>IIIF
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
   <td>teiPublisher
   </td>
   <td>ediarum.WEB
   </td>
  </tr>
  <tr>
   <td>Transkribus Lite
   </td>
   <td>❌
   </td>
   <td>✅
   </td>
   <td>🦄
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



* Kostenlos: Erstellen von Sammlungen, Upload von Dokumenten, manuelle Transkription, Layouterkennung, Training von Modellen zur Layout- und Texterkennung
* Nur automatische Texterkennung mit Kosten verbunden
* Creditsystem (Stand April 2023): 
    * 1 Credit transkribiert 1 handgeschriebene oder 6 gedruckte Seiten
    * Credits können on-demand (Minimum 120 Credits für € 18,00) oder im Abonnementsystem (Minimum 300 Credits für € 19,90/Monat) bezogen werden 
* 500 Credits bei Registrierung kostenlos


# Möglichkeiten und Grenzen


## Stärken



* Kein Software-Download oder Installation nötig - nur ein Webbrowser wird benötigt
* Keine Hardwareanforderungen, da Text- und Layouterkennung sowie das Trainieren von Modellen auf den Servern der READ COOP SCE in Innsbruck (Österreich) durchgeführt wird
* Da die Daten auf europäischen Servern gespeichert werden, ist gesichert, dass die Bestimmungen der DSGVO eingehalten werden
* Mehrsprachige Benutzeroberfläche (de, en, es, et, fi, fr, it, nl, pl, pt, sl, sv)
* Gute Anpassung der Layout- und Texterkennung an die jeweilige Dokumentenstruktur und Hand bzw. Hände über das Training eigener Modelle gegeben
* Für kollaborative Arbeit an Transkriptionen mit anderen Transkribus-Nutzer:innen geeignet
* Eigene Struktur- und Texttags definierbar, sodass Konformität mit den TEI-Guidelines erreicht werden kann
    * Einbindung von Normdaten möglich (Wikidata ID) 
* Schreibrichtung rechts-links wird unterstützt
* Smart Search (höherer Creditverbrauch): Es wird nicht nur ein erkanntes Wort, sondern auch Alternativen gespeichert, sodass nach gut nach (falsch) erkannten Wörtern gesucht werden kann
* Nur Creditverbrauch bei Texterkennung, alle anderen Funktionalitäten (siehe "Kostenübersicht") sind kostenfrei
* 10 % Discount beim Kauf von Credits als READ-COOP-SCE-Mitglied
* Erhalt von kostenfreien Credits für Studierende und Lehrende durch das Transkribus-Scholarship-Programm möglich 
* Teilen von Seiten mit Personen möglich, die nicht registriert sind


## Herausforderungen & Probleme



* Transkribus Lite ist (derzeit noch) nicht so mächtig wie das auslaufende, aber immer noch nutzbare Transkribus eXpert
* Um ein eigenes Texterkennungsmodell zu trainieren, werden zwischen 25-75 transkribierte Seiten (5.000-15.000 Wörter) als Trainingsdaten (“Ground Truth”) benötigt, in denen sehr unterschiedliche Fälle vorkommen sollten. 5.000 werden für gedruckte Texte benötigt, bei handgeschriebenen sollten es mindestens 10.000 für jede vorkommende Hand sein. Generell gilt: Je mehr transkribierte Seiten, desto besser die Ergebnisse
* Training von HTR-Modellen kann zeitintensiv sein und bei sehr heterogenen Handschriften eine hohe Fehlerrate aufweisen
* Es können zwar Annotationen vorgenommen werden und eigene Tags erstellt werden, allerdings ist der Editor kein vollwertiger Ersatz für ein eigenständiges Annotationstool
* Kein internes Kommunikationstool, um sich mit anderen, gemeinsam an einer Sammlung arbeitenden Nutzer:innen koordinieren zu können (keine Kommentarfunktion, kein Ort, an dem Guidelines für die Transkription abgelegt werden können, usw.) 
* Texterkennung mit kostenfreien Credits hat geringere Priorität als mit gekauften


# Voraussetzungen

Jedes Tool kann einerseits bestimmte Vorkenntnisse der Benutzer:innen voraussetzen und andererseits auch hinsichtlich der Software-Umgebung gewisse Anforderungen stellen.


## Erforderliche Kenntnisse



* Keine


## Benötigte Software



* Webbrowser


# Einrichtung & Erste Schritte (Beispielprojekt)

Anhand eines Beispielprojekts, in dem mit handgeschriebenen Briefen des Sprachwissenschaftlers Hugo Schuchardt (1842-1927) aus dem 19. Jahrhundert gearbeitet wird, soll nachfolgend ein möglicher Arbeitsablauf mit dem OCR- bzw. HTR-Tool Transkribus Lite beschrieben werden. In einem ersten Schritt soll überprüft werden, ob es ein öffentliches HTR-Modell gibt, mit dem die Briefe Schuchardts mit einer für uns annehmbaren Zeichenfehlerrate ("Character Error Rate", CER) transkribiert werden können. Da sich zeigen wird, dass dies nicht der Fall ist, werden wir unser eigenes Modell trainieren. In einem letzten Schritt werden wir das Textmaterial mittels Transkribus-Lite-Editor noch ansatzweise mittels TEI-konformer Tags annotieren und letztlich als TEI-XML-Dateien exportieren, um diese dann mittels anderer Tools weiter bearbeiten zu können.


## Allgemeiner Transkribus-Workflow

Der allgemeine Transkribus-Workflow kann wie folgt visualisiert werden:
{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/flowchart_workflow.jpg" description="Abb. 1: Allgemeiner Transkribus-Workflow" %}

* **Start**: Upload der Dokumente → Überprüfung, ob eines der öffentlichen Modelle für die automatische Transkription geeignet ist:
    * **JA:** Texterkennung → Tagging des erkannten Textes → Download
    * **NEIN:** Layouterkennung → Trainingsdaten (“Ground Truth”) mittels Transkriptionen erzeugen→ Training eines Texterkennungsmodells → Texterkennung → Tagging des erkannten Textes → Download
## 1. Registrierung
* Um Transkribus Lite nutzen zu können, ist eine Registrierung erforderlich, wobei Namen und E-Mail-Adresse angegeben werden müssen.

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/registration.jpg" description="Abb. 2: Registrierung" %}

* Bei Registrierung erhält man 500 nicht teilbare Credits zur Verfügung gestellt, mit denen 500 handgeschriebene oder 3000 gedruckte Seiten automatisch transkribiert werden können.


## 2. Transkribus Lite - Benutzeroberfläche
* **Dashboard:** Nach dem Einloggen findet man sich im Transkribus-Lite-Dashboard wieder. Hier können die Tabs “Workdesk” und Training ausgewählt werden, wobei per default “Workdesk” selektiert ist.
    * **“Workdesk” (Abb. X  - a):** Der Workdesk ist die Arbeitsumgebung, die Zugang zu den elementaren Funktionen von Transkribus bietet: 
        * Linke Menüleiste: “Tools” (Abb. X - c) (“Text-Erkennung”, “Sammlung erstellen”, “Hochladen”, “Hilfe”) und “Transkribus Organizer” (Abb. X - d) (“Sammlungen”, “Jobs”, “Tag Manager”, “Aktuelle Dokumente”) 
        * Rechte Menüleiste: Schnelle Texterkennung und Übersicht über das Creditsaldo (Abb. X. - e)
    * **“Training” (Abb. X - b):** Hier können Modelle für die Layout- und Texterkennung trainiert werden

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/dashboard.PNG" description="Abb. 4: Transkribus-Dashboard" %}



## 3.  Projekteinrichtung
* **Sammlungen:** Das Anlegen einer Sammlung ist nötig, um die Layout und/oder Texterkennung durchführen zu können. Eine Sammlung ist in Transkribus ein Ordner, der alle Dokumente eines bestimmten Projekts enthält. 
* **Anlegen einer Sammlung:** Eine Sammlung wird im Workdesk über die Schaltfläche “Sammlung erstellen” in der linken Menüleiste angelegt. Wir legen nun eine Sammlung mit dem Namen “Briefe Schuchardt” an. Eine angelegte Sammlung kann unter der Schaltfläche “Sammlungen” wieder gelöscht oder bearbeitet werden (Änderung der Metadaten wie dem Namen der Sammlung oder einer kurzen Beschreibung)

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/create_collection.jpg" description="Abb. 5: Erstellen einer Sammlung" %}



## 4.  Erste Aktionen innerhalb einer Sammlung
* **Upload von Dokumenten:** Wir navigieren nun über die linke Toolbar, bei der wir auf “Sammlungen” klicken, zur neu angelegten Sammlung. Die erste Aktion innerhalb einer Sammlung ist das Hochladen von Dokumenten, die in weiterer Folge transkribiert oder auf die die Layout- und Texterkennung angewandt werden. Ein Dokument ist in Transkribus Lite eine Menge an Bildern, die in einem bestimmten Zusammenhang stehen (z. B. ein Manuskript, ein Vertrag, ein Brief). Möglich ist der Upload von Bildern (JPEG/PNG) oder PDFs. Alle gemeinsam hochgeladenen Dateien werden als ein einzelnes Dokument angesehen, jedes einzelne Bild bzw. jede Seite eines PDFs wird zu einer Seite des Dokuments. Für unsere Zwecke ist jeder Brief Schuchardts, der aus mehreren Bildern besteht, ein Dokument, deshalb laden wir die jeweils zusammengehörigen Bilddateien separat hoch (“H1_1” bis “H1_4”, “H2_1 bis “H2_6” usw.). Wir geben den einzelnen Dokumenten die Namen “Brief 1”, “Brief 2” usw. Durch einen Klick auf die drei Punkte kann der Dokumentname nachträglich geändert werden, ebenso können Metadaten wie etwa “Autor” hinzugefügt werden.

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/upload_documents.jpg" description="Abb. 5: Hochladen von Dokumenten" %}



* **Hinzufügen von Nutzer:innen:** Im Transkribus Organizer in der linken Menüleiste können unter der Schaltfläche “User-Manager” andere Nutzer:innen zur Sammlung hinzugefügt werden, sodass gemeinschaftlich an einer Sammlung gearbeitet werden kann. Die möglichen Rollen sind “Owner”, “Editor” und “Transcriber”, wobei in absteigender Reihenfolge der “Owner” einer Sammlung über die meisten Rechte verfügt. Die Berechtigungen und ihre Abstufungen können [hier](https://help.transkribus.com/managing-users) eingesehen werden. Damit das Hinzufügen möglich ist, müssen die anderen Nutzer:innen bereits registriert sein und bei der Suche muss deren exakte E-Mail-Adresse angegeben werden. Wir fügen nun eine:n Nutzer:in hinzu und vergeben die Rolle “Transcribe”, sodass uns diese Person bei der Transkription behilflich sein kann.

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/add_user.PNG" description="Abb. 6: Hinzufügen von Nutzer:innen" %}



## 5. Durchführen von Texterkennung
* Will man Text von Transkribus Lite transkribieren lassen, ist es am sinnvollsten, zunächst zu überprüfen, ob bereits eines der öffentlich verfügbaren Modelle für die eigenen Zwecke geeignet ist und eine tolerierbare Zeichenfehlerrate (“Character Error Rate”, CER) aufweist, sodass nur geringe Nachkorrekturen des Textmaterials notwendig sind. Nur falls dies nicht der Fall ist, ist das Trainieren eines eigenen Modells notwendig. Allgemein kann der Workflow für das Training eines Texterkennungsmodells wie folgt visualisiert werden:

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/flowchart_texterkennung.jpg

" description="Abb. 11: Workflow für das Training eines Texterkennungsmodells" %}
* Wir wollen also nun feststellen, wie gut die Texterkennung der öffentlichen Modelle, angewandt auf die Handschrift Hugo Schuchardts, funktioniert. Dazu wählen wir nun in der Sammlungsübersicht das Dokument “Brief 1” aus und klicken in der linken Menüleiste auf “Texterkennung”. Nun werden wir auf eine neue Seite weitergeleitet, auf der wir das Modell, das zur Texterkennung verwendet werden soll, auswählen müssen. 

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/text_recognition.PNG" description="Abb. 7: Starten der Texterkennung" %}



* Da über 100 öffentliche Modelle zur Auswahl stehen, wenden wir die links selektierbaren Filterkriterien an, um die Anzahl an potentiell applikablen Modellen einzuschränken. Bei “Sprache” wählen wir “Deutsch”, bei “Typ” “Handschriftlich” und bei “Jahrhunderte” den Zeitraum 19. bis 20. Jahrhundert. Es ist wichtig, dass diese auf das jeweilige Textmaterial zugeschnittene Auswahl getroffen wird, damit die Auswahl auf die möglichst am besten geeigneten Modelle eingeschränkt wird. Nun werden nur mehr wenige Modelle angezeigt, wir entscheiden uns für das Modell “Transkribus German handwriting M1”, da die anderen Modelle primär für Kurrentschrift ausgelegt zu sein scheinen (Weiterführende Informationen zu den Modellen erhält man durch einen Klick auf “Beschreibung). Das Modell weist eine Zeichenfehlerrate (Character Error Rate (CER)) von 4,7 % auf, d. h. es würden von 100 Zeichen ca. 5 falsch erkannt werden. Nach dem Klick auf “Start” wird der Job ausgeführt und wir können unter der Schaltfläche “Jobs” seinen Fortschritt verfolgen.

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/recognition_model_selection.PNG" description="Abb. 8: Auswahl eines Texterkennungsmodells" %}



* Um zu sehen, wie gut die Texterkennung funktioniert hat, navigieren wir nun, nachdem der Job abgeschlossen ist, in das Dokument und klicken auf die erste Seite. Dabei öffnet sich der Editor mit Bild-Text-Synopse, wobei links das Faksimile angezeigt wird und rechts die automatisch erstellte Transkription. Wie zu erkennen ist, liegt die CER in unserem Fall augenfällig deutlich bei über 5 %. Wie sich außerdem auf der ersten und besonders auf den weiteren Seiten des Dokuments zeigt, hat auch die Layouterkennung bei unserem Material nicht optimal funktioniert. So wurde z. B. die zweite Seite des Briefes ohne erkennbaren Grund in 3 Zonen unterteilt.

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/text_recognition_test.PNG

" description="Abb. 9: Test der Texterkennung mit einem öffentlichen Modell" %}

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/layout_recognition_different_zones.PNG

" description="Abb. 10: Fehler bei der Layouterkennung" %}



* Da es also kein geeignetes öffentliches Modell gibt, das mit einer für uns annehmbaren CER die Briefe Hugo Schuchardts transkribiert, werden wir ein eigenes Modell trainieren, um seine Briefe optimal transkribieren zu können.
## 6. Training eines Texterkennungsmodells

* Zum Erstellen von Trainingsdaten gibt es, wie es im Flowchart ersichtlich ist, also 2 Wege:
    * **Händisch:** Zunächst wird eine Layouterkennung durchgeführt, danach der Text Zeile für Zeile transkribiert. Zuletzt werden die Transkripte als Trainingsdaten gespeichert und ein eigenes Texterkennungsmodell trainiert.
    * **Halb automatisch, halb händisch:** Hier wird zunächst ein öffentliches Modell verwendet und überprüft, ob die automatische Transkription zu einigermaßen korrekten Ergebnissen führt. Im nächsten Schritt werden die automatischen Transkriptionen händisch korrigiert und dann als Trainingsdaten gespeichert. Zuletzt wird auf Basis dieser Trainingsdaten ein eigenes Texterkennungsmodell trainiert.
* Für das Training eines Texterkennungsmodells werden von Transkribus 25-75 Seiten (5.000-15.000 Wörter) als Trainingsdaten (“Ground Truth”) benötigt bzw. empfohlen, bei handgeschriebenen Texten sollten es mindestens 10.000 Wörter pro Hand sein. Als Trainingsdaten werden in Transkribus die Faksimiles und die mit ihnen korrespondierenden fehlerfreien und genauen Transkriptionen bezeichnet, die in weiterer Folge für das Training der Texterkennungsmodelle verwendet werden. Generell gilt: Je mehr Trainingsdaten vorhanden sind, desto erfolgreicher verläuft das Modelltraining. 
* Momentan ist es in Transkribus Lite leider noch nicht möglich, bereits außerhalb transkribierten Text einzufügen. Es können bisher immer nur einzelne Zeile angewählt und befüllt werden, nicht aber ganze Textblöcke zeilenübergreifend eingefügt werden. 

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/pasting_lines.PNG

" description="Abb. 11: Das Befüllen einzelner Zeilen" %}



* Wir befinden uns also in einer etwas misslichen Lage und entscheiden uns, da die Texterkennung mit dem von uns gewählten öffentlichen Modell zumindest einigermaßen brauchbare Ergebnisse liefert, für den halb automatischen, halb händischen Zugang, da die Korrektur von falsch erkanntem Text in unserem Fall weniger Zeit in Anspruch nimmt, als ihn händisch von Grund auf zu transkribieren. Dazu müssen wir noch die automatische Texterkennung auf die Dokumente Brief 2 bis 6 anwenden. Nachdem dies erledigt ist, gleichen wir die automatisch transkribierten Texte mit unserer bereits vorhandenen Transkription ab und bessern die falsch erkannten Zeichen bzw. Wörter aus. Nach dem Abschluss der Korrekturen können wir uns nun dem Training eines auf Hugo Schuchardts Handschrift zugeschnittenen Texterkennungsmodells widmen.
* Um ein Texterkennungsmodell zu trainieren, wählen wir das Tab “Training” und klicken auf “Text-Erkennung”. Danach wählen wir die Sammlung “Briefe Schuchardt” aus.

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/text_recognition_choose_collection.jpg

" description="Abb. X: Auswahl einer Sammlung für die Texterkennung" %}



* Nun werden wir weitergeleitet und müssen nun zunächst einige Metadaten für unser Modell eingeben: Modellnamen, Beschreibung, Sprache(n) und Zeitspanne, die unsere Daten umfassen. Zuletzt müssen wir noch die Transkriptversion auswählen. Hier können wir uns zwischen “Latest Transcript” und “Nur Ground Truth” entscheiden. Entscheiden wir uns für “Ground Truth” sind im nächsten Schritt nur die Seiten, deren Status wir als “Trainingsdaten” festgelegt haben, anwählbar, bei “Latest Transkript” können alle Seiten, egal welchen Transkriptionsstatus wir ihnen früher zugewiesen haben, ausgewählt werden.

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/text_recognition_model_metadata.jpg

" description="Abb. 12: Eingabe der Metadaten des Texterkennungsmodells" %}



* In den nächsten beiden Schritten müssen die Dokumente bzw. Seiten unserer Sammlung, mit denen wir unser Modell trainieren, in ein “Training Set” und ein “Validation Set” aufgeteilt werden. Das Training Set umfasst jene Menge an Material, mit denen das Modell trainiert wird. Die Dokumente des Validation Set werden nicht im Training berücksichtigt, sondern dazu verwendet, die Genauigkeit des Modells zu überprüfen.
* Zunächst wählen wir die Trainingsdaten aus. Hier können wir die Dokumente gesamt auswählen oder uns für einzelne Seiten innerhalb der Dokumente entscheiden. Wir wählen Brief 1 bis 6 aus, da wir so die von Transkribus empfohlene Anforderung von mindestens 10.000 transkribierten Wörtern bei handgeschriebenen Texten erreichen und klicken auf “Weiter”.
* Im nächsten Schritt wählen wir die Validierungsdaten aus. Die Validierungsdaten sollten nach Empfehlungen von Transkribus 10 % der Trainingsdaten umfassen und repräsentativ für die Dokumente in unserer Sammlung sein, denn sonst könnte es zu einem Bias bei der Messung der Performance des Modells kommen. Die Dokumente bzw. Seiten für die Validierungsdaten können händisch ausgewählt oder automatisch (2 %, 5 % oder 10 %) zugewiesen werden. Nur Seiten, die nicht bereits den Trainingsdaten zugewiesen wurden, können ausgewählt werden. Wir folgen den Empfehlungen von Transkribus und entscheiden uns für eine automatische Zuweisung von 10 % und klicken auf “Weiter”.
* **Erweiterte Einstellungen:** In der letzten Ansicht vor dem Start des Trainings sehen auf einer Seite nochmals die Metadaten unseres Modells und können sie gegebenenfalls ändern, ebenso werden die ausgewählten Trainings- und Validierungsdaten nochmals gegenübergestellt angezeigt. Darunter findet sich ein mit “Erweitert” betitelter Reiter, der noch einige Einstellungen verbirgt:
    * **Anzahl an “Epochs”:** Zunächst können wir die Anzahl an ‘Epochen’ (“Epochs”) verändern, die standardmäßig auf 250 eingestellt ist. Diese Zahl gibt an, wie oft Trainings- und Validierungsset maximal evaluiert werden. Das Training wird automatisch gestoppt, wenn die niedrigstmögliche Zeichenfehlerrate (“Character Error Rate” (CER)) erreicht wurde. Transkribus empfiehlt, zunächst den Wert auf 250 zu belassen.
    * **Early Stopping:** Weiters können wir den “Early Stopping”-Parameter modifizieren, der standardmäßig auf 20 eingestellt ist. Ein Wert von 20 bedeutet, dass, falls nach 20 Epochen die CER nicht mehr sinkt, das Training beendet wird. Transkribus empfiehlt an diesem Punkt ein heterogenes Validierungsset, das repräsentativ für das Trainingsset ist, da sonst das Training zu früh abbrechen könnte. Außerdem wird empfohlen, diesen Wert nur dann zu erhöhen, wenn das Validierungsset klein ist, um zu verhindern, dass das Training abgebrochen wird, bevor das Modell alle Trainingsdaten verarbeitet hat. Auch hier empfiehlt Transkribus, den Wert zunächst einmal beizubehalten.
    * **Auswahl eines Basismodells:** Wir können auch ein Basismodell auswählen, das als Ausgangspunkt für das Training verwendet werden soll, was bedeuten würde, dass das Modell nicht von Grund auf lernen muss. Wird mit einem Basismodell trainiert, genügen möglicherweise weniger Trainingsdaten. Es ist allerdings nicht immer garantiert, dass die Verwendung eines Basismodells zu besseren Ergebnissen führt, sondern es muss im spezifischen Fall getestet werden. 
    * **“Reverse Text (RTL)”:** Zuletzt könnten wir noch wir noch “Reverse Text (RTL)” auswählen, falls die Schreibrichtung unseres Materials von rechts nach links ist.
* Wir behalten also alle erweiterten Einstellungen bei und klicken auf “Training starten".
## 7. Die Texteditoransicht
* Nachdem wir unser Modell trainiert, wollen wir zunächst noch den Texteditor von Transkribus erproben und unsere Dokumente annotieren. Zum Texteditor gelangen wir, indem wir über die linke Menüleiste “Sammlungen” auswählen, in unsere Sammlung navigieren, ein Dokument (z. B. “Brief 1”) öffnen und dann eine Seite des Dokuments anklicken. Nun öffnet sich der Editor mit Bild-Text-Synopse. 

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/text_editor.jpg

" description="Abb. X: Der Texteditor" %}



* In der Defaultansicht findet sich links im Bild das Faksimile und rechts der Texteditor. Die Ansicht kann über die untere Menüleiste umgestellt werden, sodass sich oben das Faksimile und unten der Texteditor findet.
* **Wichtige Optionen im Editorfenster** (rechts):
    * **Festlegen des Bearbeitungsstatus:** Im rechten oberen Eck kann Bearbeitungsstatus der Seite festgelegt werden (Abb. x - a): “In Bearbeitung”, “Erledigt” (die Seite wurde transkribiert), “Final” (die Seite wurde transkribiert und einem Review unterzogen) und “Trainingsdaten” (die Transkription ist so korrekt wie möglich und wird zum Modelltraining verwendet).
    * **Speichern:** Mit dem dem Diskettensymbol (Abb. x - b) kann gespeichert werden 	
    * **Versionskontrolle:** Die Schaltfläche mit Datums- und Zeitangabe (Abb. x -c) dient der Versionskontrolle. Mittels ‘Speicherständen’ kann zwischen auf frühere und von dort aus dann spätere Versionen zugegriffen werden werden.
    * **Konfiguration:** Über das Zahnradsymbol (Abb. x - d) können verschiedene Einstellungen vorgenommen werden und so z. B. das Verhalten und Layout des Editors an die eigenen Bedürfnisse angepasst werden. Es ist aber hier auch möglich, eigene Texttags hinzuzufügen oder bereits vorhandene zu entfernen. Ebenso kann die Sichtbarkeit der Strukturtags gesteuert werden.
    * **Virtuelles Keyboard:**  Das Keyboardsymbol (Abb. x - e) blendet das Virtuelle Keyboard ein, über das Unicode-Zeichen eingefügt werden können . Dazu müssen die gewünschten Unicode-Bereiche zunächst über die Konfigurationsschaltfläche (Zahnradsymbol) ausgewählt werden.
{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/text_editor_options.png

" description="Abb. X: Optionen im Texteditor-Fenster" %}

* **Wichtige Optionen im Faksimilefenster** (links):

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/text_editor_facsimile.jpg

" description="Abb. X: Wichtige Optionen im Faksimilefenster" %}



* **Hinzufügen von Zeilenlinien:** Über das Füllfedersymbol (Abb. x - a) können Zeilenlinien hinzugefügt werden. Wird eine Linie hinzugefügt, erscheint die mit ihr korrespondierende Zeile rechts im Editorfenster. Ausgewählte Zeilen können auch über die Entfernen-Taste auf der Tastatur gelöscht werden.
    * **Aktionen mit Regionen:**
        * Mittels Button (Abb. x -b) können Regionen hinzugefügt werden
        * Bereits bestehende Regionen können geteilt werden: Dazu muss die Region mittels Klick ausgewählt werden, nach einem Rechtsklick erscheinen können dann die Teilungsoptionen ausgewählt werden: Horizontal, vertikal oder benutzerdefiniert (Im letzten Fall kann mittels Pfeiltasten die Teilungslinie gedreht werden).
        * Zusammenfügen von Regionen: Dazu werden mit Strg und Mausklick mehrere Regionen markiert, nach einem Rechtsklick können sie mit “Merge shapes” zusammengeführt werden.
    * **Layoutbutton:** Nach einem Klick auf den Layoutbutton (Abb. x - c) öffnet sich ein Fenster, in dem die Struktur des Dokuments (Regionen und Zeilen) angezeigt wird. Hier können - was durchaus wichtig sein kann - Regionen und Zeilen miteinander ausgetauscht werden.

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/layout_regions_lines.PNG

" description="Abb. X: Optionen zum Verschieben von Regionen und Zeilen" %}



## 8.  Anreicherung von Struktur und Inhalt der Texte über den Editor
* **Auszeichnen von Text**
    * Markieren wir im Texteditor eine Textpassage, öffnet sich ein Popup-Fenster, das Möglichkeiten zur Textauszeichnung anbietet.
        * **Format:** fett, kursiv, durchgestrichen, unterstrichen, hochgestellt und tiefgestellt
        * **Tagging:** Textpassagen können mittels der von Transkribus vorkonfigurierten oder eigenen Tags ausgezeichnet werden. Über die “Configure”-Schaltfläche im Popup kann gesteuert werden, welche Tags zur Auswahl angezeigt werden, wenn eine Textpassage markiert wird. 

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/tagging_popup.PNG

" description="Abb. X: Das Popup-Fenster zur Textauszeichnung" %}



* **Anlegen eigener Texttags:** Da wir eigene und TEI-konforme Tags verwenden wollen, müssen wir diese zuerst anlegen. Dazu navigieren wir zurück in unsere Sammlung und klicken links im Transkribus Organizer auf “Tag Manager” (Tags werden in Transkribus immer für eine Sammlung konfiguriert). Da unsere Briefe über Datumszeilen verfügen, das TEI-konforme Tag “dateline” aber noch nicht in Transkribus vorkonfiguriert ist, erstellen wir es. Optional könnten wir dem Tag auch ein oder mehrere Attribute hinzufügen.

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/tag_manager.PNG

" description="Abb. X: Das Anlegen von Texttags" %}



* **Auszeichnen unsere Transkription:** Wir wollen nun den Text unseres ersten Briefes annotieren und die Funktionalitäten des Editors testen. Da es sich bei Transkribus Lite um keinen vollwertigen Ersatz für ein TEI-konformes Annotationswerkzeug handelt, werden wir nicht versuchen, eine bestmögliche Annotation anzufertigen, sondern lediglich einige der Möglichkeiten erproben. Dazu navigieren wir in der Sammlungsübersicht in das Dokument “Brief 1” und öffnen die erste Seite des Briefes. Wir wollen die Datumszeile unseres Briefes auszeichnen und markieren sie, nun öffnet sich ein Popup. Damit wir unser neues Tag auch auswählen können, müssen wir es zuerst über “Configure” sichtbar schalten. 

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/tags_configure.PNG

" description="Abb. X: Das Sichtbarschalten von Tags" %}



* Nachdem wir das erledigt haben, können wir die Datumszeilen taggen. Tags können auch verschachtelt werden. Wir wählen die Datumsangabe innerhalb der Datumszeile an und weisen ihr das Tag “date” zu und geben in dessen Attribut “when” das normalisierte Datum “1893-10-13” an. 

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/tags_date.PNG

" description="Abb. X: Verschachtelte Tags" %}



* Nun legen wir noch die neuen Tags “opener” an “salute” und taggen damit die Datumszeile und die Grußformel. Zuletzt taggen wir noch die sich weiter unten befindliche, zweite Datumsangabe auf der ersten Seite des Briefs. Auf den nächsten beiden Seiten zeichnen wir mit den Formatoptionen die unterstrichenen und höhergestellten Wörter aus, während wir auf der letzten Seite für die Passage am Briefende noch die Tags “closer” und “name” anlegen und die Verabschiedung samt Grußformel und Namen des Briefschreibers taggen.

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/tags_nested.PNG

" description="Abb. X: Die getaggte erste Seite des ersten Briefs" %}



## 9. Export der Dokumente
* **Downloadfunktion in der Sammlungsübersicht:** Da wir unsere Daten noch weiter annotieren und anreichern wollen, ist es für uns am sinnvollsten, sie als TEI-XML zu exportieren. Innerhalb unserer Sammlung können wir die Dokumente selektieren, die wir herunterladen wollen. Wir selektieren unseren bereits testweise annotierten ersten Brief und klicken auf “Download”. Im Popup wählen wir bei den unterschiedlichen Exportformaten lediglich “TEI” aus. Wir bekommen nun auf unsere E-Mail-Adresse einen Downloadlink zugeschickt, mit dem wir eine ZIP-Datei herunterladen können.

{% include image.html url="../data/pipelines/pipeline_2/transkribus/img/download_options.PNG

" description="Abb. X: Das Herunterladen von Dokumenten" %}

**Überprüfung und Validierung der TEI-Datei**:  


# Kontakte

**Unternehmensgröße:** Mehr als 30 Mitarbeiter:innen (Stand April 2023)

**Weblink:** [https://lite.transkribus.eu/](https://lite.transkribus.eu/) 

**Mailkontakt:** [Kontaktformular](https://readcoop.eu/contact/) bzw. Allgemeine Kontakt-E-Mail-Adresse: [info@readcoop.eu](mailto:info@readcoop.eu) 

**Webinar-Kontaktangaben:** 



* Mirjam El Attal
* Sara Mansutti
* Florian Stauder 


# Ressourcen


## Dokumentation



* Hilfecenter mit Schritt-für-Schritt-Anleitungen: [https://help.transkribus.com/](https://help.transkribus.com/) 
* Dokumentation für Entwickler:innen: [https://readcoop.eu/transkribus/docu/](https://readcoop.eu/transkribus/docu/) 


## Tutorials

YouTube-Channel von Transkribus



* [https://www.youtube.com/@transkribus/featured](https://www.youtube.com/@transkribus/featured) 

Video-Tutorials



* [Transkribus-Lite- Einführungskurs](https://www.youtube.com/watch?v=-rXJiqhFH6Q&list=PL7UbQtd4qlhJsrPcxPXExLmfEflIlIqj3&index=1)
* [Einführungswebinar (Englisch)](https://www.youtube.com/watch?v=9H9WlvOKzJY)


## Projekte

Siehe Slides Workshop vom 23./24. Februar


## Literatur

Literaturliste von Zotero