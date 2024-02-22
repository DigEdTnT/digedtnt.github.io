---

layout: post

title: teiCrafter

categories: [tei, tool, annotation, erzeugung, teiCrafter, ai]

excerpt: Der teiCrafter ist ein experimentelles "Custom GPT", das die Transformation von Plaintext nach TEI-XML-Format auf Basis einer Mapping System Prompt durchführt. 

last_modified_at:   2024-02-22

---

# Custom GPT "teiCrafter"

[https://chat.openai.com/g/g-FEUt7Fq48-teicrafter](https://chat.openai.com/g/g-FEUt7Fq48-teicrafter) 

<div class="essence">
 Der <span style="font-style:italic;">teiCrafter</span> ist ein Custom GPT, das
</div>

## Anwendungsbereiche
 
* Experimentelles Werkzeug zur Generierung von TEI XML

## Aufbau des Custom GPTs “teiModeler”

### Beschreibung des teiModeler (Description)

Die Beschreibung ist die Information, die auch anderen User:innen in ChatGPT Plus angezeigt wird. ChatGPT Plus ist die kostenpflichtige Version von ChatGPT und ermöglicht den Zugang zu GPT-4 und somit auch zu benutzerdefinierten GPTs.

```
Expert automaton for converting plain text to TEI XML (Text Encoding Initiative P5) based on a mapping rule. Does only return <body> and descendants for more focus. teiCrafter is an experimental tool (it can hallucinate; feed it context and examples; use it iteratively).
```

### Der System Prompt (Instruction)

todo 

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

### Knowledge

Das Wissen des teiCrafter liegt in einer möglichst kompakten Notation. Diese wird strukturiert in mehreren Markdown Files abgebildet, um die sehr umfangreichen TEI Guidelines stark zu komprimieren und gleichzeitig das Custom GPT “in die richtige Richtung” zu lenken.

```
* TEI Attributes.md
* TEI Elements.md
* Attribute Classes.md
```

## Nutzung des "teiCrafter"

Das Custom GPT kann nur mit ChatGPT Plus verwendet werden. Aus diesem Grund stehen Ihnen die Anleitung und alle Daten zur Verfügung, um dieses Tool bei Bedarf in Ihrem System nachzubilden: [https://chat.openai.com/g/g-FEUt7Fq48-teicrafter](https://chat.openai.com/g/g-FEUt7Fq48-teicrafter).

Hier ist ein Beispiel für die Verwendung: 

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
```


Mapping rules:
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



## Beispiel einer Konversation mit dem teiCrafter

**User:**

**teiCrafter:**