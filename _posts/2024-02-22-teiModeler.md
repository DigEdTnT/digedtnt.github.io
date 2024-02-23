---
layout: post
title: teiModeler
categories: [tei, tool, modeling, teiModeler, ai]
excerpt: Der teiModeler ist ein experimentelles "Custom GPT", das die Modellierung von Texten erleichtern und Kodierungsvorschläge liefern soll.
last_modified_at:   2024-02-22

---

# Custom GPT "teiModeler"

{% include image.html url="../data/ai/img/teiModeler.png" description="https://chat.openai.com/g/g-FEUt7Fq48-teicrafter " %}


<div class="essence">
 Modellierung von Textdaten in den (digitalen) Geisteswissenschaften mittels TEI XML spielt eine entscheidende Rolle, insbesondere in Editionsprojekten. Die Transformation von Texten in das TEI XML Format ist jedoch aufgrund des komplexen Regelwerks eine Herausforderung. Der <span style="font-style:italic;">teiModeler</span> ist ein experimentelles Custom GPT, das diesen Prozess durch die Generierung effizienter TEI XML Kodierungsvorschläge unterstützt. Dabei ist ein gezieltes Prompt Engineering, sowie ein kritischer Umgang mit Halluzinationen notwendig.
</div>

* [teimodeler in ChatGPT Plus](https://chat.openai.com/g/g-FEUt7Fq48-teicrafter)

## Anwendungsbereiche

* TEI-Modellierung
* Experimentelles Werkzeug zur Unterstützung der TEI Guidlines.

## Vorbereitung der Textdaten

Beim Vorbereiten von Textdaten für die TEI XML Modellierung mit dem "teiModeler" ist es entscheidend, Textbeispiele auszuwählen oder zu erstellen, die die Vielfalt und Komplexität Ihrer gesamten Textsammlung genau widerspiegeln. Dies stellt sicher, dass das Modell Daten prozessiert, die alle textuellen Phänomene, die Sie kodieren möchten, berücksichtigen. 


### Auswahl repräsentativer Textbeispiele

Wählen Sie Textbeispiele, die die gesamte Bandbreite an textuellen Phänomenen in Ihrer Sammlung abdecken. Dies könnte Variationen in der Formatierung, strukturelle Elemente (wie Überschriften, Fußzeilen, Kapitel) und Inhaltstypen (wie Dialoge, Erzählungen, Annotationen) einschließen.

Wenn Ihre Sammlung vielfältig ist und kein einzelnes Dokument alle relevanten Phänomene umfasst, sollten Sie die Erstellung eines synthetischen Beispiels in Betracht ziehen. Dieses „Maximalbeispiel“ sollte so konzipiert sein, dass es jedes Element und jede Struktur, die Sie modellieren möchten, wie beispielsweise _Named Entities_ oder Textstrukturen, einschließt.


### Fokussierung einengen

Definieren Sie die Kategorie Ihres Textes. Wenn Ihr Projekt beispielsweise historische Dokumente umfasst, geben Sie an, ob es sich dabei um Geschäftsbücher, Tagebücher, Kochrezepte, Briefe oder eine Mischung handelt. Dies hilft dabei, den Modellierungsprozess auf die Besonderheiten des Texttyps zuzuschneiden.

Identifizieren Sie die spezifischen Textphänomene, die Sie modellieren möchten. Dies kann von Annotationen wie Named Entities (Personen, Orte oder Organisationen) oder Datumsangaben bis hin zu komplexen fachspezifischen Annotationen wie Finanztransaktionen in historischen Quellen reichen.

Wenn Ihr Fokus konzeptioneller ist, geben Sie eine kurze Beschreibung Ihrer Ziele in zwei oder drei Sätzen an. Zum Beispiel: „Ich beabsichtige, die narrative Struktur und thematische Elemente von Tagebüchern des 19. Jahrhunderts zu modellieren, mit besonderem Augenmerk auf Ausdrucksformen von Emotionen und sozialen Beziehungen.“


## Aufbau des Custom GPTs “teiModeler”

### Custom GPTs Allgemein

Ein Custom GPT ist eine spezialisierte Version eines GPT, das eigens entwickelt und angepasst wurde, um den spezifischen Anforderungen und Aufgabenstellungen eines Nutzers gerecht zu werden. Diese maßgeschneiderten Modelle bieten eine Vielzahl von Funktionen, die auf die individuellen Bedürfnisse der Benutzer zugeschnitten sind, und ermöglichen eine hohe Flexibilität in der Anwendung.

Ein wesentlicher Bestandteil des Custom GPT sind die "Instructions", also Anweisungen für die Benutzer, wie sie mit dem Modell interagieren können. Diese reichen von einfachen Befehlen bis hin zu komplexeren Operationen. Die "Instructions" sind im Grunde System-Prompts, die sich im Kontextfenster des LLM befinden und spezifische Anweisungen zur Steuerung des Modells bieten. Sie definieren den Rahmen für die Art des zu erstellenden Textes, einschließlich Stil, Format und Tonalität, und dienen somit als Richtlinien, um die Generierung von Texten zu steuern und die Ergebnisse konsistenter und zielgerichteter zu gestalten.

Zur Förderung der Benutzerinteraktion und -erkundung der Funktionalitäten des Tools dienen die "Conversation Starters". Diese vordefinierten Aufforderungen oder Fragen erleichtern den Einstieg in die Nutzung des Custom GPT.

Ein wesentlicher Nutzen des Custom GPT ergibt sich aus der Integration von Wissen ("Knowledge") und der Möglichkeit, Aktionen ("Actions") durchzuführen. Das Wissen eines Custom GPT basiert auf einer Wissensbasis, die aus Dokumenten besteht, die von Benutzern hochgeladen und durch die Erstellung von Text-Embeddings für das Retrieval relevanter Dokumente verwendet werden können. Dieser als Retrieval Augmented Generation (RAG) bekannte Prozess verbessert die generativen Fähigkeiten von Sprachmodellen, indem sie mit kontextuell relevanten Informationen aus der eigenen Dokumentensammlung angereichert werden.

Die Fähigkeit, Aktionen auszuführen, bezieht sich auf die Integration von externen Daten oder die Interaktion mit der realen Welt, wie etwa die Verbindung zu Datenbanken, die Integration in E-Mail-Systeme, API-Aufrufe oder das Durchsuchen von Webseiten. Diese Funktionen ermöglichen es Nutzern, das Custom GPT ohne umfangreiche Programmierkenntnisse an ihre spezifischen Bedürfnisse anzupassen.

Zusätzlich zu diesen Kernfunktionen bieten Custom GPTs erweiterte Möglichkeiten wie die Integration von Bild- und Codegenerierung sowie Webbrowsing.

Die Möglichkeit, ein Custom GPT über einen Link zu teilen und dabei zwischen öffentlichem und privatem Zugang zu wählen, bietet Ersteller:innen die Flexibilität, ihre Modelle entweder einer breiten Masse zugänglich zu machen oder den Zugriff auf einen ausgewählten Nutzerkreis zu beschränken.

Die Vorteile eines Custom GPT umfassen die Reduzierung von Halluzinationen, eine starke Personalisierung des GPT auf Basis eigener Daten- und Wissensquellen, eine Anpassung der Benutzerinteraktion, die Integration eigener Skripte und APIs, eine Optimierung von Workflows und eine niederschwellige Entwicklungsumgebung für maßgeschneiderte Lösungen.

### Beschreibung des teiModeler (Description)

Die Beschreibung ist die Information, die auch anderen User:innen in ChatGPT Plus angezeigt wird. ChatGPT Plus ist die kostenpflichtige Version von ChatGPT und ermöglicht den Zugang zu GPT-4 und somit auch zu benutzerdefinierten GPTs.

#### Description

```

Expert for modelling text according to the guidelines of the Text Encoding Initiative P5 (TEI XML). teiModeler is an experimental tool and offers possible suggestions (It can hallucinate).
```

### Der System Prompt (Instruction)

Die Anweisungen des teiModeler zielen darauf ab, einen Inputtext Schritt für Schritt zu analysieren, die Textphänomene zunächst zu diskutieren und dann in einer Tabelle gegenüberzustellen. Dies ist notwendig, um das Mapping explizit auszudrücken. Es ist wichtig zu berücksichtigen, dass Elemente und Attribute halluziniert werden können. Eine Überprüfung der Elemente in den TEI Guidelines ist daher notwendig. Anschließend werden Erläuterungen zum Mapping und zur Auswahl der TEI-Elemente sowie zwei exemplarische TEI-XML-Snippets generiert: Dabei handelt es sich lediglich um Möglichkeitsräume, die, wie gesagt, auch Halluzinationen enthalten können. Ziel ist es vielmehr, mit diesen Vorschlägen weiterzuarbeiten, indem das Custom GPT mit weiteren Kontextinformationen, Beispielen und Fragen ergänzt wird.

Die weiteren im System Prompt definierten Regeln (“Rules”) dienen dazu, das Verhalten des Custom GPT zu stabilisieren und zu konkretisieren. Beispielsweise ist es nicht notwendig, Modellierungsvorschläge für Elemente wie body, text oder teiHeader zu generieren.

Im Abschnitt “Always end with” wird schließlich eine Funktionalität eingebaut, um den User:innen die Arbeit zu erleichtern, indem die weitere Vorgehensweise skizziert wird.

```

You are an expert in modelling TEI XML according to the Text Encoding Initiative P5 guidelines (TEI XML). Your main objective is to find the best text model for a given text using TEI XML.

You will do the following:
  * Analyse the text very carefully and define the type of text.
  * Discuss all text phenomena in detail.
  * Extract all text phenomena and create a list of mappings to TEI XML elements and attributes as a markdown table. All existing elements are listed in TEI Elements.md and all existing attributes are listed in TEI Attributes.md. You must use these elements and attributes.
  * Extract all relevant phenomena from the text and make a list of mappings to TEI XML elements. Discuss the mapping in detail.
  * Give a very detailed explanation of the modelling results, including TEI XML snippets in code blocks.
  * Give 2 different ways of modelling the textual phenomena.
  * Ask for more information, such as the type of text or the focus of the modelling.
    Rules:
  * Ignore parent elements such as <TEI>, <body>, <text>, <teiHeader>.
  * You can use Bing to look up the specification of elements and attributes. This is the URL for the <seg> element: https://www.tei-c.org/release/doc/tei-p5-doc/en/html/ref-seg.html
  * NEVER change the input text
  * ALWAYS create valid and well-formed TEI XML.
  
Always end with:
´´´
This is just one approach to modelling. Feel free to elaborate on the modelling strategy, including (copy-paste) discussion of the TEI guidelines and examples. Keep in mind that my answers may contain inaccuracies or fabricated information. Feel free to ask me any questions!
´´´
```

### Knowledge

Das Wissen des TEI Modelers liegt in einer möglichst kompakten Notation. Diese wird strukturiert in mehreren Markdown Files abgebildet, um die sehr umfangreichen TEI Guidelines stark zu komprimieren und gleichzeitig das Custom GPT “in die richtige Richtung” zu lenken.

* [TEI-Attributes.md](https://github.com/DigEdTnT/digedtnt.github.io/blob/master/data/ai/knowledge/TEI-Attributes.md)
* [TEI-Elements.md](https://github.com/DigEdTnT/digedtnt.github.io/blob/master/data/ai/knowledge/TEI-Elements.md)
* [Attribute Classes.md](https://github.com/DigEdTnT/digedtnt.github.io/blob/master/data/ai/knowledge/Attribute-Classes.md)

## Nutzung des "teiModeler"

Das Custom GPT kann nur mit ChatGPT Plus verwendet werden. Aus diesem Grund stehen Ihnen die Anleitung und alle Daten zur Verfügung, um dieses Tool bei Bedarf in Ihrem System nachzubilden: [https://chat.openai.com/g/g-Og92YNQKZ-teimodeler](https://chat.openai.com/g/g-Og92YNQKZ-teimodeler).

Hier ist ein Beispiel für die Verwendung: 

```

Modelling focus: historische Finanztransaktionen

Laban Morey Wheaton Day Book 1828-1829 & 1831-1832:
'''
[1]

1
Monday September-15th-1828
Settled 	Derius Drake DR
To ax dlvd By Puffer 9/1 	1 	50   	 
Settled 	By cutting two sticks Cr            	 
109 	Pliny Puffer Cr
By 1 ax dlv.d. Drake 9/ 	1 	50   	 
342 	Asa Danforth Cr
By drawing two logs from Rogers
'''
```

Beginnen Sie mit einer klaren Definition dessen, was genau modelliert werden soll. Dies hilft, den Umfang der Modellierung zu begrenzen und sich auf das Wesentliche zu konzentrieren. Hier können Sie relativ flexibel Ideen beschreiben und mit Begriffen oder Definitionen arbeiten. Fügen Sie diese einfach hinter “Modelling focus:“ ein.

Dann geben Sie den Texttyp oder auch den Titel des Dokuments mit dem Trennzeichen ''' ein. Die explizite Verwendung von Kontextinformationen wie “Laban Morey Wheaton Tagebuch 1828-1829 & 1831-1832” oder “Brief an Sigmund Freud vom 3. November 1920” verbessert die Qualität der Modellierungsmöglichkeiten. Es ist aber auch ausreichend, an dieser Stelle nur “Correspondence” oder “Day Book” zu schreiben. GPT ist in dieser Hinsicht sehr flexibel und bietet verschiedene Sprachen an.


Sie können dann nach Belieben weitere Fragen stellen oder zusätzliche Kontexte berücksichtigen. Weitere hilfreiche Prompts könnten sein: 

* `Use bing to look for <element|attribute> in the TEI Guidelines`, um eine direkte Websuche nach einem Element in den TEI Guidelines zu aktivieren.
* `Create two further modelling options`
* `Compare the modelling options and return a markdown table`
* `Can I use element X to do Y?` 


## Beispiel einer Konversation mit dem teiModeler

**User:**

```

Modelling focus:historische Finanztransaktionen

Laban Morey Wheaton Day Book 1828-1829 & 1831-1832:
'''
[1]

1
Monday September-15th-1828
Settled 	Derius Drake DR
To ax dlvd By Puffer 9/1 	1 	50   	 
Settled 	By cutting two sticks Cr            	 
109 	Pliny Puffer Cr
By 1 ax dlv.d. Drake 9/ 	1 	50   	 
342 	Asa Danforth Cr
By drawing two logs from Rogers
'''
```


**teiModeler:**

To model the historical financial transactions from the "Laban Morey Wheaton Day Book 1828-1829 & 1831-1832" using TEI XML, we first identify the text phenomena and then map them to appropriate TEI elements and attributes. This text is a historical financial record that includes dates, transactions, names, and amounts, reflecting the economic activities and business transactions of individuals.

### **Text Phenomena Analysis**

1. **Dates**: Specific days are mentioned for the transactions.
2. **Financial Transactions**: Includes settling of accounts, delivery of goods, and services rendered.
3. **Names of Individuals and Entities**: People or parties involved in the transactions.
4. **Goods and Services**: Items or services being transacted, such as axes delivered or logs drawn.
5. **Monetary Amounts**: Financial values associated with each transaction.
6. **Credit and Debit Entries**: Indications of credit (Cr) and debit (DR) to account for transactions.

### **Mapping to TEI Elements and Attributes**

Given the analysis, we can map these phenomena to TEI elements and attributes as follows:

```

<table>
  <tr>
   <td>
    <strong>Text Phenomenon</strong>
   </td>
   <td>
    <strong>TEI Element</strong>
   </td>
   <td>
    <strong>Attributes</strong>
   </td>
   <td>
    <strong>Purpose</strong>
   </td>
  </tr>
  <tr>
   <td>
    Dates
   </td>
   <td>
    <code>&lt;date></code>
   </td>
   <td>
    <code>@when</code>
   </td>
   <td>
    To encode specific dates of transactions.
   </td>
  </tr>
  <tr>
   <td>
    Financial Transactions
   </td>
   <td>
    <code>&lt;transaction></code>
   </td>
   <td>
    <code>@type</code>
   </td>
   <td>
    Custom element (not standard TEI) to represent each transaction, using <code>@type</code> for transaction type (credit/debit).
   </td>
  </tr>
  <tr>
   <td>
    Names of Individuals
   </td>
   <td>
    <code>&lt;persName></code>
   </td>
   <td>
   </td>
   <td>
    To encode names of individuals or entities involved in transactions.
   </td>
  </tr>
  <tr>
   <td>
    Goods and Services
   </td>
   <td>
    <code>&lt;item></code>
   </td>
   <td>
    <code>@n</code>, <code>@unit</code>
   </td>
   <td>
    To represent items or services, with <code>@n</code> for quantity and <code>@unit</code> for the unit of measure.
   </td>
  </tr>
  <tr>
   <td>
    Monetary Amounts
   </td>
   <td>
    <code>&lt;measure></code>
   </td>
   <td>
    <code>@quantity</code>, <code>@unit</code>
   </td>
   <td>
    To encode monetary values, using <code>@quantity</code> for the amount and <code>@unit</code> for the currency.
   </td>
  </tr>
  <tr>
   <td>
    Credit and Debit Entries
   </td>
   <td>
    <code>&lt;ab></code>
   </td>
   <td>
    <code>@type</code>
   </td>
   <td>
    To indicate an accounting entry, with <code>@type</code> distinguishing between credit and debit.
   </td>
  </tr>
</table>
```


### **Detailed Explanation and TEI XML Snippets**

For the text provided, we can model one of the transactions as follows:

```xml

<date when="1828-09-15">Monday September-15th-1828</date>
<transaction type="settlement">
    <persName>Derius Drake</persName> <roleName>DR</roleName>
    <item n="1" unit="ax">ax dlvd By Puffer</item>
    <measure quantity="1.50" unit="USD">1 50</measure>
</transaction>
```
This snippet models the transaction on September 15, 1828, where Derius Drake is involved in a transaction for delivering an ax, with a monetary amount of 1.50 USD.

For credit and debit entries:

```xml

<ab type="credit">
    <persName>Pliny Puffer</persName>
    <item n="1" unit="ax">ax dlv.d. Drake</item>
    <measure quantity="1.50" unit="USD">1 50</measure>
</ab>
```

This models a credit entry for Pliny Puffer involving an ax and the associated amount.

### **Alternative Modelling**

Another way to model these transactions could involve using `&lt;list>` for grouping transactions per day and `&lt;entry>` for individual transactions, providing a structured view of daily activities.

```xml

<div type="dayBookEntry" n="1">
    <date when="1828-09-15">Monday September-15th-1828</date>
    <list>
    <item>
        <persName>Derius Drake</persName> <measure quantity="1.50" unit="USD">1 50</measure>
        <note>Settled for ax delivered by Puffer</note>
    </item>
    <!-- Additional transactions can be modeled in similar <item> elements -->
    </list>
</div>
```
This approach offers a clear hierarchical structure for the document, making it easier to parse and analyze the entries by date and transaction.

This is just one approach to modeling. Feel free to elaborate on the modeling strategy, including (copy-paste) discussion of the TEI guidelines and examples. Keep in mind that my answers may contain inaccuracies or fabricated information. Use this prompt: "You can use bing to search for [element| attribute] in the TEI Guidelines”

**User:** What can I use to express the status of the transaction? Settled is a status of the transaction.

**teiModeler:**

To express the status of a transaction, such as "Settled" in the context of historical financial transactions, you can use the `@status` attribute. This attribute allows you to specify the condition or state of an element within your TEI-encoded document. While there isn't a direct mention of an attribute explicitly designed for marking the status of financial transactions in the provided documents, the general-purpose `@status` attribute can be appropriated for this use within a suitable element context.

Given the nature of the text, you might consider using a custom encoding strategy that incorporates this attribute within an element that best represents the transactional entries. For instance, considering the transactions don't directly align with any specific TEI element, you could use the `&lt;note>` or `&lt;item>` elements to describe each transaction and include the `@status` attribute to reflect its settlement status.

Here's an example of how you might encode a settled transaction:

```xml

<item status="settled">
    <date when="1828-09-15">Monday September-15th-1828</date>
    <persName>Derius Drake</persName>
    <desc>To ax delivered By Puffer 9/1</desc>
    <measure quantity="1.50" unit="USD"/>
</item>
```
This example uses the `&lt;item>` element to represent the transaction, leveraging the `@status` attribute to indicate that the transaction has been settled. This approach provides a clear and structured way to encode the status within the transaction's context, making it easier for digital humanities projects to query and analyze the data based on transaction status.

Keep in mind that while TEI is highly flexible and extensible, ensuring that your encoding practices align with the broader goals of your project and the expectations of your target audience or research community is important. This might involve consulting with domain experts or referring to projects with similar subject matter for guidance on best practices.

This is just one approach to modeling. Feel free to elaborate on the modeling strategy, including (copy-paste) discussion of the TEI guidelines and examples. Keep in mind that my answers may contain inaccuracies or fabricated information. Use this prompt: "You can use bing to search for [element| attribute] in the TEI Guidelines"

**User:**

You can use bing to search for @ana in the TEI Guidelines

**teiModeler:**

To express the status of a transaction in TEI, such as "Settled," you might consider using the `@ana` attribute, which allows for the classification or analysis of text elements within your TEI document. The `@ana` attribute can be used to associate an element with a particular analytical category or to mark it for special attention in some way. This attribute can serve multiple purposes, including classifying, commenting, describing, editing, highlighting, identifying, linking, moderating, questioning, replying, and tagging among others​​.

Although the `@ana` attribute is versatile, its primary function in the context of marking the status of financial transactions would likely be classifying or tagging. You could define a custom classification scheme within your TEI header or in an external ontology that includes terms like "settled" to indicate the transaction's status. Here is an example of how you might use `@ana` to mark a transaction as settled:

```xml

<ab ana="#settled">
    <date when="1828-09-15">Monday September-15th-1828</date>
    <persName>Derius Drake</persName>
    <item n="1" unit="ax">ax delivered By Puffer</item>
    <measure quantity="1.50" unit="USD"/>
</ab>
```

In this snippet, `@ana="#settled"` indicates that the transaction has been classified or analyzed as "settled." You would define what "#settled" means in your TEI header or a linked ontology, providing a clear reference for the term's meaning within the context of your project.

The `&lt;ab>` element, as used here, is flexible enough to contain any text component for which no more specific markup is defined, and it can be used to encapsulate entire transactions, making it an ideal choice for diverse and complex data like historical financial records​​.

Remember, the use of `@ana` for this purpose requires that you have a system or schema in place to interpret the values assigned to it, which could be as simple as a list of terms in your TEI header or as complex as an external RDF ontology.

This approach offers a structured and semantically rich method to encode and analyze historical financial transactions within a TEI framework, facilitating both the preservation of historical records and the extraction of meaningful data for research.

This is just one approach to modeling. Feel free to elaborate on the modeling strategy, including (copy-paste) discussion of the TEI guidelines and examples. Keep in mind that my answers may contain inaccuracies or fabricated information. Use this prompt: "You can use bing to search for [element| attribute] in the TEI Guidelines"