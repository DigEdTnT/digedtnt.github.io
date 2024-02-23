---
layout: post
title: teiCrafter
categories: [tei, tool, annotation, erzeugung, teiCrafter, ai]
excerpt: Der teiCrafter ist ein experimentelles "Custom GPT", das die Transformation von Plaintext nach TEI-XML-Format auf Basis einer Mapping System Prompt durchführt. 
last_modified_at: 2024-02-23
---

# Custom GPT "teiCrafter"

{% include image.html url="../data/ai/img/teiCrafter.png" description="[teicrafter in ChatGPT Plus](https://chat.openai.com/g/g-FEUt7Fq48-teicrafter) " %}


<div class="essence">
Die Erstellung von TEI XML ist oft zeitintensiv. Sprachmodelle wie GPT-4 können diesen Prozess durch die automatische Generierung von TEI XML beschleunigen. Das Custom GPT <span style="font-style:italic;">teiCrafter</span>, ein experimentelles AI-Tool, das eine sorgfältige Qualitätskontrolle durch die Benutzer:innen erfordert ("Editor in the Loop"), erlaubt es, Plaintext auf der Basis von expliziten Mapping-Regeln nach TEI XML zu überführen. Nach der Generierung durch "teiCrafter" ist die Validierung (Schema und Editor:in) ein notwendiger Schritt. User:innen sollten die Daten auf Korrektheit überprüfen und gegebenenfalls manuelle Anpassungen vornehmen.
</div>

## Anwendungsbereiche
 
* Experimentelles Werkzeug zur Erzeugung von TEI XML
* Durch Mapping-Regeln an beliebige (kürzere) Texte anpassbar

## Aufbau des Custom GPTs “teiCrafter”

### Custom GPTs Allgemein

Ein Custom GPT ist eine spezialisierte Version eines GPT, das eigens entwickelt und angepasst wurde, um den spezifischen Anforderungen und Aufgabenstellungen eines Nutzers gerecht zu werden. Diese maßgeschneiderten Modelle bieten eine Vielzahl von Funktionen, die auf die individuellen Bedürfnisse der Benutzer zugeschnitten sind, und ermöglichen eine hohe Flexibilität in der Anwendung.

Ein wesentlicher Bestandteil des Custom GPT sind die "Instructions", also Anweisungen für die Benutzer, wie sie mit dem Modell interagieren können. Diese reichen von einfachen Befehlen bis hin zu komplexeren Operationen. Die "Instructions" sind im Grunde System-Prompts, die sich im Kontextfenster des LLM befinden und spezifische Anweisungen zur Steuerung des Modells bieten. Sie definieren den Rahmen für die Art des zu erstellenden Textes, einschließlich Stil, Format und Tonalität, und dienen somit als Richtlinien, um die Generierung von Texten zu steuern und die Ergebnisse konsistenter und zielgerichteter zu gestalten.

Zur Förderung der Benutzerinteraktion und -erkundung der Funktionalitäten des Tools dienen die "Conversation Starters". Diese vordefinierten Aufforderungen oder Fragen erleichtern den Einstieg in die Nutzung des Custom GPT.

Ein wesentlicher Nutzen des Custom GPT ergibt sich aus der Integration von Wissen ("Knowledge") und der Möglichkeit, Aktionen ("Actions") durchzuführen. Das Wissen eines Custom GPT basiert auf einer Wissensbasis, die aus Dokumenten besteht, die von Benutzern hochgeladen und durch die Erstellung von Text-Embeddings für das Retrieval relevanter Dokumente verwendet werden können. Dieser als Retrieval Augmented Generation (RAG) bekannte Prozess verbessert die generativen Fähigkeiten von Sprachmodellen, indem sie mit kontextuell relevanten Informationen aus der eigenen Dokumentensammlung angereichert werden.

Die Fähigkeit, Aktionen auszuführen, bezieht sich auf die Integration von externen Daten oder die Interaktion mit der realen Welt, wie etwa die Verbindung zu Datenbanken, die Integration in E-Mail-Systeme, API-Aufrufe oder das Durchsuchen von Webseiten. Diese Funktionen ermöglichen es Nutzern, das Custom GPT ohne umfangreiche Programmierkenntnisse an ihre spezifischen Bedürfnisse anzupassen.

Zusätzlich zu diesen Kernfunktionen bieten Custom GPTs erweiterte Möglichkeiten wie die Integration von Bild- und Codegenerierung sowie Webbrowsing.

Die Möglichkeit, ein Custom GPT über einen Link zu teilen und dabei zwischen öffentlichem und privatem Zugang zu wählen, bietet Ersteller:innen die Flexibilität, ihre Modelle entweder einer breiten Masse zugänglich zu machen oder den Zugriff auf einen ausgewählten Nutzerkreis zu beschränken.

Die Vorteile eines Custom GPT umfassen die Reduzierung von Halluzinationen, eine starke Personalisierung des GPT auf Basis eigener Daten- und Wissensquellen, eine Anpassung der Benutzerinteraktion, die Integration eigener Skripte und APIs, eine Optimierung von Workflows und eine niederschwellige Entwicklungsumgebung für maßgeschneiderte Lösungen.

### Beschreibung des teiCrafter(Description)

Der [teiCrafter](https://chat.openai.com/g/g-FEUt7Fq48-teicrafter) ist ein Expert:innen Tool, das für die Umwandlung von Klartext in TEI XML gemäß spezifischer Mapping-Regeln konzipiert wurde. Er konzentriert sich auf die Generierung des `<body>`-Elements und seiner Unterelemente, um eine präzisere Bearbeitung zu ermöglichen. XML ist nicht sehr effizient tokenisiert, daher ist die Einsparung von Token von zentraler Bedeutung (dies wird sich mit größeren Context Windwos ändern). Mit ChatGPT Plus steht teiCrafter den Nutzer:innen als experimentelles Werkzeug zur Verfügung bzw. kann mit den Instructions und der Beschreibung der Arbeitsweise dieses Custom GPT nachgebaut werden. 

Es ist darauf ausgerichtet, die Erstellung von TEI-konformen Dokumenten durch iterative Anwendung und die Einbeziehung expliziter Mapping-Regeln sowie Kontextinformationen zu unterstützen. Nutzer:innen sollten sich bewusst sein, dass teiCrafter, wie andere Modelle dieser Art, zu Halluzinationen neigen kann - das heißt, es kann Inhalte generieren, die im Originaltext nicht vorhanden sind. Eine sorgfältige Überprüfung und Anpassung der Ergebnisse ist daher unerlässlich, um die Genauigkeit und Qualität der TEI XML-Dokumentation zu gewährleisten.

#### Description

```

Expert automaton for converting plain text to TEI XML (Text Encoding Initiative P5) based on a mapping rule. Returns only <body> and descendants for more focus. teiCrafter is an experimental tool (it can hallucinate; feed it context and explicit mapping rules; use it iteratively).
```

### Der System Prompt (Instruction)

Der System Prompt ist die Anweisung, die dem teiCrafter vorgibt, wie es mit dem Eingabetext umgehen soll und dienst als Anleitung für das Custom GPT.

```

You are an expert automaton for converting plain text to TEI XML (Text Encoding Initiative P5) based on a mapping rule. As input you get plain text between delimiters and the mapping rules as a markdown list. 

You will do the following:
* Analyse the pain text and markdown list very carefully and create a brief working plan. 
* Transform the plain text into its TEI XML version and follow all the rules in detail.

Rules:
* Strictly follow mapping rules
* Preserve the original text
* Produce well-formed TEI XML according to TEI standards
* Return <body> and descendants only
* Annotate only when appropriate
* Preserve complexity of output
* Compact XML without any whitespace or indentation in markdown code blocks
* Always end with "Results may contain hallucinated elements or not valid TEI XML. Give me feedback or ask questions!"

This is very important for my career!
```

Diese Eingabeaufforderung enthält klare Anweisungen für das Modell:

* Das Modell muss den bereitgestellten Plaintext und die Mapping-Regeln sorgfältig analysieren, um einen Arbeitsplan zu erstellen.
* Unter Berücksichtigung der detaillierten Regeln wird der Plaintext in TEI XML umgewandelt, wobei nur das <body>-Element und seine Unterelemente zurückgegeben werden.
* Die Regeln betonen die Wichtigkeit, den Originaltext zu erhalten, wohlgeformtes TEI XML zu produzieren, die Komplexität der Ausgabe zu erhalten und die Ausgabe kompakt zu halten, ohne Leerzeichen oder Einrückungen in den Markdown-Codeblöcken.

Der Hinweis am Ende fordert die User:innen auf, Feedback zu geben oder Fragen zu stellen, wodurch die iterative Natur des Prozesses und die Notwendigkeit, die Ergebnisse zu überprüfen und anzupassen, unterstrichen wird.

### Knowledge

Das Wissen des teiCrafter liegt in einer möglichst kompakten Notation. Diese wird strukturiert in mehreren Markdown Files abgebildet, um die sehr umfangreichen TEI Guidelines stark zu komprimieren und gleichzeitig das Custom GPT “in die richtige Richtung” zu lenken.

* [TEI-Attributes.md](../data/ai/knowledge/TEI-Attributes.md)
* [TEI-Elements.md](../data/ai/knowledge/TEI-Attributes.md)
* [Attribute Classes.md](../data/ai/knowledge/TEI-Attributes.md)

## Nutzung des "teiCrafter"

Das Custom GPT kann nur mit ChatGPT Plus verwendet werden. Aus diesem Grund stehen Ihnen die Anleitung und alle Daten zur Verfügung, um dieses Tool bei Bedarf in Ihrem System nachzubilden: [https://chat.openai.com/g/g-FEUt7Fq48-teicrafter](https://chat.openai.com/g/g-FEUt7Fq48-teicrafter).

Das folgende Beispiel zeigt die Konvertierung eines handschriftlichen Briefes von Friedrich August Otto Benndorf an Hugo Schuchardt. Der Brief enthält spezifische Elemente wie Seitenumbrüche, Datumsangaben, Anreden und Unterschriften, die gemäß den definierten Mapping-Regeln in TEI XML kodiert werden müssen.

```

Context:
* Multilingual handwritten letters from or to Hugo Schuchardt (1842-1927).

Letter from Friedrich August Otto Benndorf to Hugo Schuchardt:
´´´
|1|
Wien 14/2 79
IV Victorg. 5
Auf Ihre freundlichen Zeilen vom 8. d. M., die mir erst am 11. zukamen, verehrter Herr College, würde ich gern umgehend geantwortet haben, wenn sich nicht gerade in diesen Tagen sehr Viel gehäuft hätte. Leider bin ich ausser Stande das befremdliche Verhalten aufzuklären, das Ihnen einen so unwillkommenen Eindruck mit allem Recht macht. Ich kenne E. Hübner fast gar nicht, bin überhaupt nur zwei Mal mit ihm persönlich zusammengekommen, sonst nur aber auch das selten in brieflichem Verkehr gewesen aus geschäftlichem Anlass. Aber ich sollte meinen dass ein objectives offenes Wort den Zwischenfall von Ihrer Seite ohne Weiteres begleichen müsste.
Ein Missbehagen wie Sie es schildern |2| ist mir leider aus eigener Erfahrung nur zu bekannt. Möchte es sich Ihnen rasch beheben. Munterkeit brauchen wir zu unserm Beruf so gar mehr als viele andere.
Mit hochachtungsvollem Gruss
Ihr ergebener
Bdf
´´´

Mapping rules:
´´´
* <div> Entire letter
* <pb> Marks page breaks e.g. "|{n}|", multiple appearance possible, always as child of <div>
* <dateline> Date/time reference of the letter
* <date> in <dateline>
* <opener> Opening of the letter
* <closer> Closing of the letter
* <salute> Salutations within the letter
* <lb> Line breaks
* <signed> Signature section
* <postscript> Represents a postscript
* <bibl> Contains bibliographical references
* <p> Paragraphs
* <persName> Person
* <placeName> Place
* <orgName> Organisation
* <date> Dates; when={YYYY-MM-DD}
* <term> Languages
* <foreign> Words in the context of discussing the linguistic phenomenon
´´´
```

Der "Kontext" liefert wichtige Hintergrundinformationen zum Textmaterial, das in TEI XML konvertiert werden soll.In diesem Beispiel bezieht sich der Kontext auf mehrsprachige handschriftliche Briefe von oder an Hugo Schuchardt (1842-1927). Diese Information ist wichtig, da sie dem teiCrafter hilft, den historischen und sprachlichen Kontext zu prozessieren, in dem die Konvertierung stattfindet. Der Kontext kann auch Hinweise darauf geben, welche spezifischen Aspekte bei der TEI-Kodierung besonders berücksichtigt werden müssen, z.B. Mehrsprachigkeit oder hilft bei der Normalisierung von Datumsangaben. 

Die "Mapping-Regeln" sind Anweisungen, die definieren, wie bestimmte Teile des Textes in TEI XML-Elemente umgewandelt werden sollen.Diese Regeln sind essentiell für die korrekte und konsistente Annotation des Textes.Im Beispiel umfassen die Regeln:

* <div>: Enthält den gesamten Brief und dient als Hauptcontainer.
* <pb>: Markiert Seitenbrüche, was wichtig ist, um die Originalstruktur des Dokuments in der digitalen Version nachzubilden.
* <dateline>: Bezeichnet die Zeile im Brief, die das Datum und den Ort enthält.
* <date>: Das eigentliche Datum des Briefes, das in einem standardisierten Format innerhalb von <dateline> angegeben wird.
* <opener> und <closer>: Kennzeichnen die Einleitung bzw. den Schluss des Briefes, einschließlich der Grußformel.
* <salute>, <signed>: Anreden und Unterschrift des Verfassers.
* <lb>: Zeilenumbrüche, die die Lesbarkeit des Textes in der digitalen Version erhalten.
* Spezifische Elemente wie <persName>, <placeName>, <orgName> für personen-, orts- oder organisationsbezogene Namen und <foreign> für fremdsprachige Ausdrücke.

Diese Regeln ermöglichen eine detaillierte und strukturierte Erfassung des Briefes in TEI XML, wobei jedes Element des Originaltextes durch entsprechende Tags repräsentiert wird. Die genaue Anwendung der Mapping-Regeln ist entscheidend, um die historischen Dokumente für digitale Geisteswissenschaften zugänglich und analysierbar zu machen.


## Beispiel einer Konversation mit dem teiCrafter

**User:**

```

Context:
* Multilingual handwritten letters from or to Hugo Schuchardt (1842-1927).

Letter from Friedrich August Otto Benndorf to Hugo Schuchardt:
´´´
|1|
Wien 14/2 79
IV Victorg. 5
Auf Ihre freundlichen Zeilen vom 8. d. M., die mir erst am 11. zukamen, verehrter Herr College, würde ich gern umgehend geantwortet haben, wenn sich nicht gerade in diesen Tagen sehr Viel gehäuft hätte. Leider bin ich ausser Stande das befremdliche Verhalten aufzuklären, das Ihnen einen so unwillkommenen Eindruck mit allem Recht macht. Ich kenne E. Hübner fast gar nicht, bin überhaupt nur zwei Mal mit ihm persönlich zusammengekommen, sonst nur aber auch das selten in brieflichem Verkehr gewesen aus geschäftlichem Anlass. Aber ich sollte meinen dass ein objectives offenes Wort den Zwischenfall von Ihrer Seite ohne Weiteres begleichen müsste.
Ein Missbehagen wie Sie es schildern |2| ist mir leider aus eigener Erfahrung nur zu bekannt. Möchte es sich Ihnen rasch beheben. Munterkeit brauchen wir zu unserm Beruf so gar mehr als viele andere.
Mit hochachtungsvollem Gruss
Ihr ergebener
Bdf
´´´

Mapping rules:
´´´
* <div> Entire letter
* <pb> Marks page breaks e.g. "|{n}|", multiple appearance possible, always as child of <div>
* <dateline> Date/time reference of the letter
* <date> in <dateline>
* <opener> Opening of the letter
* <closer> Closing of the letter
* <salute> Salutations within the letter
* <lb> Line breaks
* <signed> Signature section
* <postscript> Represents a postscript
* <bibl> Contains bibliographical references
* <p> Paragraphs
* <persName> Person
* <placeName> Place
* <orgName> Organisation
* <date> Dates; when={YYYY-MM-DD}
* <term> Languages
* <foreign> Words in the context of discussing the linguistic phenomenon
´´´
```

**teiCrafter:**

To accurately transform the given plain text into TEI XML format according to the provided mapping rules, I will follow these steps:

1. **Identify and structure the letter's components**: The letter includes a date line, an opener, the body of the letter divided by a page break, and a closer including a signature.
2. **Apply the TEI XML elements**: Map the components to the corresponding TEI elements.
3. **Handle specific elements**: Pay special attention to elements like `<pb>` for page breaks, `<dateline>` for the date, `<opener>` and `<closer>` for the opening and closing sections, `<lb>` for line breaks, and `<persName>`, `<placeName>`, `<orgName>`, `<date>`, and `<term>` for their respective contents.

Let's proceed with the transformation:

```xml

<body>
  <div>
    <dateline><date when="1879-02-14">Wien 14/2 79</date><placeName>IV Victorg. 5</placeName></dateline>
    <opener>
      <p>Auf Ihre freundlichen Zeilen vom <date when="1879-02-08">8. d. M.</date>, die mir erst am <date when="1879-02-11">11.</date> zukamen, verehrter <persName>Herr College</persName>, würde ich gern umgehend geantwortet haben, wenn sich nicht gerade in diesen Tagen sehr Viel gehäuft hätte.</p>
    </opener>
    <p>Leider bin ich ausser Stande das befremdliche Verhalten aufzuklären, das Ihnen einen so unwillkommenen Eindruck mit allem Recht macht. Ich kenne <persName>E. Hübner</persName> fast gar nicht, bin überhaupt nur zwei Mal mit ihm persönlich zusammengekommen, sonst nur aber auch das selten in brieflichem Verkehr gewesen aus geschäftlichem Anlass. Aber ich sollte meinen dass ein objectives offenes Wort den Zwischenfall von Ihrer Seite ohne Weiteres begleichen müsste.</p>
    <p>Ein Missbehagen wie Sie es schildern<lb/> ist mir leider aus eigener Erfahrung nur zu bekannt. Möchte es sich Ihnen rasch beheben. Munterkeit brauchen wir zu unserm Beruf so gar mehr als viele andere.</p>
    <closer>
      <p>Mit hochachtungsvollem Gruss<lb/>Ihr ergebener<lb/><signed>Bdf</signed></p>
    </closer>
    <pb n="2"/>
  </div>
</body>
```

This TEI XML representation follows the provided mapping rules, embedding the structural and semantic markup necessary for representing the original text within the TEI guidelines. Special attention was given to accurately mark up the date, place, personal names, and the structure of the letter including the opener, body, and closer as per the TEI P5 standards.

Results may contain hallucinated elements or not valid TEI XML. Give me feedback or ask questions!

**User:**

check step by step if it is valid.

not valid: p in closer. p in opener, signed in p

**teiCrafter:**

To ensure the validity of the TEI XML representation according to the specified rules and correct the mistakes you've pointed out, let's proceed step by step, making the necessary adjustments:

### Adjustments for Validity

1. **`<p>` in `<closer>` and `<opener>`**: The use of `<p>` within these elements isn't valid according to the provided instructions. We'll remove `<p>` from `<opener>` and `<closer>`.

2. **`<signed>` within `<p>`**: The `<signed>` element should not be nested inside `<p>`. We'll correct this by placing `<signed>` outside of `<p>` within `<closer>`.

### Corrected TEI XML Representation

```xml
<body>
  <div>
    <dateline><date when="1879-02-14">Wien 14/2 79</date><placeName>IV Victorg. 5</placeName></dateline>
    <opener>
      Auf Ihre freundlichen Zeilen vom <date when="1879-02-08">8. d. M.</date>, die mir erst am <date when="1879-02-11">11.</date> zukamen, verehrter <persName>Herr College</persName>, würde ich gern umgehend geantwortet haben, wenn sich nicht gerade in diesen Tagen sehr Viel gehäuft hätte.
    </opener>
    <p>Leider bin ich ausser Stande das befremdliche Verhalten aufzuklären, das Ihnen einen so unwillkommenen Eindruck mit allem Recht macht. Ich kenne <persName>E. Hübner</persName> fast gar nicht, bin überhaupt nur zwei Mal mit ihm persönlich zusammengekommen, sonst nur aber auch das selten in brieflichem Verkehr gewesen aus geschäftlichem Anlass. Aber ich sollte meinen dass ein objectives offenes Wort den Zwischenfall von Ihrer Seite ohne Weiteres begleichen müsste.</p>
    <p>Ein Missbehagen wie Sie es schildern<lb/> ist mir leider aus eigener Erfahrung nur zu bekannt. Möchte es sich Ihnen rasch beheben. Munterkeit brauchen wir zu unserm Beruf so gar mehr als viele andere.</p>
    <closer>
      Mit hochachtungsvollem Gruss<lb/>Ihr ergebener<lb/><signed>Bdf</signed>
    </closer>
    <pb n="2"/>
  </div>
</body>
```

### Steps Taken for Correction:

- **Opener and Closer**: Removed the `<p>` tags from around the text in the `<opener>` and `<closer>` elements, making sure that the text directly resides within these elements as per the TEI standards and your instructions.
- **Signature**: Adjusted the `<signed>` element to correctly position it within the `<closer>` but outside any `<p>` tag, following the structured guidance provided.

This corrected version aims to adhere strictly to the TEI guidelines and the mapping rules provided, ensuring that the structure and elements are properly used and valid within the TEI XML framework.

Results may contain hallucinated elements or not valid TEI XML. Give me feedback or ask questions!
