---
layout: page
title: About
permalink: /about/
---

Digitale Editionen sind ein Kernbereich der Digital Humanities; sie machen historische Quellen zugänglich. Dabei werden computergestützte Methoden zur Umsetzung, Verbreitung und Erforschung von wissenschaftlich fundierten Quellenveröffentlichungen herangezogen. Digitale Editionen umfassen dabei textuelle, visuelle und ggf. auch quantitative Daten und erfordern oft spezielle Benutzeroberflächen, um domänenspezifische Forschungsfragen zu bearbeiten. Obwohl jedes Editionsprojekt seine eigenen spezifischen Anforderungen hat, lassen sich einzelne Schritte identifizieren, die für Editionsvorhaben generell notwendig sind. Das ist im weitesten Sinne die Digitalisierung der Quelle mit der Verwaltung von Bildern und Text, die Transkription, Modellierung relevanter Textphänomene mittels adäquater Auszeichnungssprachen, Annotation semantischer Informationen und Named Entities, Erstellung von Indizes, sowie eine den FAIR-Kriterien entsprechende Publikation über das Web. In den letzten Jahren haben sich für alle diese Schritte eine Anzahl an Tools etabliert, die bevorzugt eingesetzt werden.

Ziel des Projekts Digital Edition Creation Pipelines: Tools and Transitions (DigEdTnT), finanziert durch [Funding Call 2022: Interoperability and Reusability of DH Data and Tools von CLARIAH-AT](https://clariah.at/project-funding/), ist es, Best-Practice-Pipelines und Tutorials für ausgewählte Tools und deren Übergänge zu erstellen, die bei der Wahl der Tools und der Arbeit mit Tools zur Erstellung digitaler Editionen helfen sollen. Übergänge (=Transitions) beziehen sich dabei auf Herausforderungen, die entstehen, wenn beispielsweise Ergebnisse aus Transkribus nach ediarum zur weiteren Annotation überführt werden sollen.

## ToolDocs und FactSheets

Nach dem [ersten Workshop](https://digedtnt.github.io/workshop1/) im Februar 2023, bei dem Tool-Entwickler:innen und (potentielle) Tool-Nutzer:innen im Austausch standen, wurden die Kernfunktionalitäten, die jedes Tool bietet, vorgestellt, besprochen und später bei der Nutzung des Tools im Zuge von zwei Beispiel-Editionsprojekten getestet. Die jeweiligen Toolbeschreibungen, Funktionalitäten  sowie Vor- und Nachteile der Tools wurden anschließend in Form von ToolDocs festgehalten. 

In die Kriterien der FactSheets, die ebenfalls für jedes Tool erstellt wurden, flossen einerseits Fragen und Interessen ein, die im Laufe des ersten Workshops vonseiten der Teilnehmenden aufgekommen sind, und andererseits wurde auch eine Auswahl an relevanten Review-Kriterien von [RIDE](https://ride.i-d-e.de/reviewers/catalogue-criteria-for-reviewing-digital-editions-and-resources/) mitaufgenommen.

Es ist zu beachten, dass nicht alle Funktionalitäten der Tools im Rahmen des DigEdTnT-Projekts getestet wurden, sondern nur die für die Abwicklung der Beispielprojekte relevanten Funktionen in den ToolDocs näher beschrieben wurden. Empfehlenswert ist es daher jedenfalls, sich bereits vor Projektbeginn nicht nur mit den Tools ausführlicher auseinanderzusetzen, sondern im Besonderen die Inhalte und Anforderungen des bevorstehenden Editionsprojekts gründlich zu reflektieren, um möglicherweise auftretenden Schwierigkeiten früh entgegenwirken zu können. 


## Beispielprojekte


### Rezeptsammlung (Pipeline 1)

Beispielprojekt #1 beschäftigt sich mit der digitalen Edition von frühneuhochdeutschen Manuskripten aus dem Mittelalter, die Rezepte beinhalten. Die Daten für das Beispielprojekt wurden vom Projekt [CoReMa](https://gams.uni-graz.at/context:corema) übernommen, wobei sich die Zielsetzung im Rahmen des DigEdTnT-Projekts darauf beschränkt, nach der Erstellung von Transkripten auf Grundlage der Manuskript-Digitalisate, die textuelle Struktur sowie die in den Rezepten angeführten Zutaten TEI-konform zu annotieren, und zusätzlich die Zutaten mit Wikidata-Normdaten anzureichern. Abschließend sollen die annotierten und normalisierten Daten publiziert werden.

Im Zuge der Umsetzung dieses Beispielprojekts in der [Pipeline 1](https://github.com/DigEdTnT/digedtnt.github.io/tree/bb032626aee08b43c4b36da5476ae9ce0d63bb2a/data/pipelines/pipeline_1) wurden die Faksmiles der Manuskriptsammlungen A1 ([Augsburg, Universitätsbibliothek, Cod.III.1.2°43](https://gams.uni-graz.at/o:corema.a1#A1_002r)) sowie So1 ([Solothurn, Zentralbibliothek, Cod. S 490](https://gams.uni-graz.at/o:corema.so1)) für die Transkriptionsarbeit in FromThePage herangezogen und die in FromThePage verfügbaren Annotationsmöglichkeiten getestet. Das Ziel war hierbei, Transkripte der einzelnen Manuskriptseiten zu erstellen, die textuelle Merkmale wie Überschriften, Zeilenumbrüche, Streichungen, Ergänzungen usw. genau wiedergeben. Zusätzlich wurde in FromThePage auch die Möglichkeit des “Subject Linking” (Auszeichnung von Entitäten wie Personen, Orte oder eigens angelegten Kategorien) getestet. Die Resultate des Subject Linking wurden aber vor der Weiterbearbeitung in ediarum wieder entfernt, um in ediarum die Annotation mit Normdaten zu testen. Dafür wurde eine bereits zur Verfügung stehende Zutatenliste in OpenRefine mit Einträgen aus Wikidata angereichert bzw. normalisiert, und diese in Form eines Registers exportiert. Außerdem wurden in ediarum weitere Annotationen vorgenommen, die über FromThePage nicht möglich waren. Nach Abschluss der Annotations- und Normalisierungsprozesse wurden das Beispielprojekt mittels teiPublisher für die Publikation aufbereitet. 


### Briefsammlung (Pipeline 2)

Die Arbeitsgrundlage für Beispielprojekt#2 bildeten ausgewählte Briefe des 19. bzw. 20. Jahrhunderts des österreischisch-deutschen Romanisten Hugo Schuchardt. Die Daten (Faksimiles und Transkriptionen der Briefe) stammen vom Projekt [HSA (Hugo Schuchardt Archiv)](https://gams.uni-graz.at/context:hsa).

Im Rahmen des Beispielprojekts in der [Pipeline 2](https://github.com/DigEdTnT/digedtnt.github.io/tree/bb032626aee08b43c4b36da5476ae9ce0d63bb2a/data/pipelines/pipeline_2) wurden die Faksimiles der Briefe in das OCR-/HTR-Tool Transkribus Lite hochgeladen. Zusammen mit den bereits transkribierten Texten wurden fehlerfreie “Ground Truth”-Daten erzeugt und ein auf die Handschrift Hugo Schuchardts zugeschnittenes Handschriftenerkennungsmodell trainiert. Mit diesem ersten Schritt sollte primär erprobt werden, wie gut Transkribus Lite an individuelle Handschriften anpassbar und somit für die automatisierte Transkription von Quellenmaterial geeignet ist. Die vorhandenen Annotationsmöglichkeiten wurden ebenfalls gestestet, allerdings erzeugen sie teilweise nicht gewünschte Ergebnisse im TEI-Export, weshalb nur basale Annotationen vorgenommen wurden. Der eigentliche Annotationsschritt wurde dann mit dem recht jungen TEI-Editor FairCopy vorgenommen, der sich in seiner Funktionsweise von herkömmlichen Editoren unterscheidet, u. a. weil eine Vielzahl von Elementen über Drag-and-Drop angelegt wird. Nach der Normalisierungs- und Annotationsphase wurden die Dokumente mittels ediarumWEB publiziert-


## Grundvoraussetzungen

Die Einschätzung der benötigten Kenntnisse und Fähigkeiten im Sinne der Code Literacy von Tool-Nutzer:innen gestaltet sich meist als sehr schwierig. In Hinblick auf die hier präsentierten Tools werden allgemeine EDV-Grundkenntnisse jedenfalls stets implizit vorausgesetzt. Darunter verstehen wir einerseits ein grundlegendes Verständnis von Datenstrukturen, Datenformaten und Datenverarbeitungskonzepten, grundlegende Kenntnis der Datei- und Ordnerstrukturen am lokalen Rechner (für Upload- und Downloadprozesse), grundlegende Erfahrungen im Umgang mit verbreiteten Dateiformaten (.JPEG, .PNG, .TXT, .DOC, .XSLX, .CSV etc.) sowie in der Bedienung eines Webbrowsers. Für nahezu alle Tools ist außerdem eine stabile Internetverbindung Grundvoraussetzung. 

