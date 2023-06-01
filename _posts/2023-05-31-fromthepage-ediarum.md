---

layout: post

title: FromThePage → ediarum

categories: [transition, fromthepage, ediarum, xslt, dta-basisformat]

excerpt: Die Transition von FromThePage zu ediarum beinhaltet die Anpassung des TEI/XML-Exports von FromThePage an das DTA-Basisformat, das in ediarum als Standard verwendet wird.

transitiondoc: .

last_modified_at: 2023-05-31

---



# Allgemeine Beschreibung

Die von FromThePage exportierten TEI/XML-Dokumente sollen nun für die weitere Bearbeitung in ediarum an die Grundstruktur des DTA-Basisformat (DTABf) angepasst werden. Auch wenn für die Verarbeitung in ediarum kein valides DTABf-XML erzeugt werden muss, wird mit dem XSLT der vorliegenden Transition versucht, dem DTA-Basisformat in so vielen Bereichen wie möglich gerecht zu werden. 


## Voraussetzungen

Die im DigEdTnT-Projekt vorgestellten Transitions setzen nicht nur bestimmte Kompetenzen der Benutzer:innen voraus, sondern stellen auch hinsichtlich der Software-Umgebung gewisse Anforderungen.


### **Erforderliche Kenntnisse**



* Einrichten einer Oxygen Transformation (in dieser Transition erklärt)
* Grundlegende XSLT-Kenntnisse (für erweiterte Anpassungen)


### **Benötigte Software**



* Oxygen Editor

→ <span style="text-decoration:underline;">Hinweis:</span> Natürlich wäre es auch ohne Oxygen Editor möglich, über diverse frei zugängliche Online-Plattformen eine XSL-Transformation durchzuführen. Da aber einerseits für ediarum in dieser Pipeline ohnehin Oxygen benötigt wird und außerdem bei Online-Transformationen auch rechtliche Aspekte bei der Datenverarbeitung zu berücksichtigen wären, wird nachfolgend das Transformationsszenario im Oxygen Editor beschrieben .


# Möglichkeiten & Grenzen

Der Übergang von einem Tool zu einem anderen lässt sich verschieden gestalten. Nachfolgend soll ein Überblick über die Vor- und Nachteile unserer Transition gegeben werden. 


## Stärken



* Nicht valider TEI/XML-Export von FromThePage wird in anerkannten Standard (DTA-Basisformat) überführt


## Herausforderungen & Probleme



* Einschränkung hinsichtlich der Möglichkeiten an Metadaten-Elementen im DTA-Basisformat 
* Entscheidung für einen DTA-konformen XML-Output führt zu Informationsverlust
* Verpflichtende Attribute bei Elementen gemäß DTABf, die zuvor in FromThePage nicht hinzugefügt wurden, führen zu einem nicht validen Dokument


# XSL Transformation


Für eine Transformation des aus FromThePage exportierten TEIs in ein für ediarum weiterverarbeitbares Dokument, haben wir für unser Beispielprojekt die Daten transformiert. Wie unser Transformationsszenario genau funktioniert, ist dem Punkt [XSLT Dokumentation](#xslt-dokumentation) zu entnehmen. Dieses kann für andere Projekte angepasst und weiterverwendet werden.

Hier ist die [XSLT-Ressource](https://github.com/DigEdTnT/digedtnt.github.io/tree/master/data/pipelines/pipeline_1/transition_1/data/ftp_export_to_dta.xsl) für unsere FromThePage-ediarum-Transformation.



* Für die Transformation öffnen wir zuerst die zu transformierende XML-Datei, wählen dann den Button “Transformationsszenarios konfigurieren”, klicken auf Neu und wählen die Option “XML Transformation with XSLT”. \
    {% include image.html url="../data/pipelines/pipeline_1/transition_1/img/configure-transformations.png" description="XSL-Ressource für Transformation auswählen" %}
* In dem neuen Fenster geben wir schließlich den Pfad zu unserer XSL-Datei an.  \
    {% include image.html url="../data/pipelines/pipeline_1/transition_1/img/xsl-source.png" description="XSL-Ressource für Transformation auswählen" %}
    → Wir haben dem Szenario auch gleich einen Namen gegeben, um das Transformationsszenario zu speichern und später weiterverwenden bzw. auch auf andere XML-Dateien anwenden zu können. 

* Unter dem Reiter “Ausgabedatei” wählen wir außerdem noch, wo unser transformiertes XML gespeichert werden soll und setzen ein Häkchen bei der Option “Im Editor öffnen”, um uns das Ergebnis direkt anzusehen.  \
    {% include image.html url="../data/pipelines/pipeline_1/transition_1/img/output.png" description="Dateiname für den Output wählen" %}

[Allgemeines Video-Tutorial zu XSLT](https://github.com/chpollin/Teaching/blob/master/TTT/TTT_6_XSLT/XSLT.md)


# XSLT Dokumentation



## 1. Einbindung des DTA-Basisformat
Ein erster Schritt ist die Einbindung des [Schematron Regelsatzes sowie des RelaxNGs des Deutschen Textarchivs](https://www.deutschestextarchiv.de/doku/basisformat/schema.html). Da es sich in unserem Fall um ein Manuskript handelt, wird in der XSL-Transformation neben dem [entsprechenden DTABf-Schematron](https://www.deutschestextarchiv.de/basisformat.sch) das [RNG-Schema des DTABf für Manuskripte](https://www.deutschestextarchiv.de/basisformat_ms.rng) eingebunden.
```xml
<xsl:template match="/">
    <xsl:processing-instruction name="xml-model">href="http://www.deutschestextarchiv.de/basisformat_ms.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"</xsl:processing-instruction>
    <xsl:processing-instruction name="xml-model">href="http://www.deutschestextarchiv.de/basisformat.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron</xsl:processing-instruction>
    <xsl:apply-templates></xsl:apply-templates>
</xsl:template>
```

Dies erzeugt im transformierten XML die entsprechende Einbindung der XML-Modelle:
```xml
<?xml-model href="http://www.deutschestextarchiv.de/basisformat_ms.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
<?xml-model href="http://www.deutschestextarchiv.de/basisformat.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron?>
```


## 2. Transformation der Metadaten

Auf Grundlage eines als gültig validierten [DTA-Metadatenbeispiels](https://github.com/DigEdTnT/digedtnt.github.io/tree/master/data/pipelines/pipeline_1/transition_1/data/dta_example.xml) wurden schließlich die Metadaten des FromThePage-Exports in eine DTABf-konforme Struktur übertragen. Dabei wurden verschiedene Maßnahmen angewendet: 



* **Übertragung von Inhalten:** Nach einer Gegenüberstellung des exportierten TEIs und dem DTABf-Beispiel wurden zuerst Inhalte wie Titel, Autor, Lizenzen sowie die Beschreibung des Manuskripts übernommen und in entsprechende zulässige bzw. obligatorische [Elemente im Header-Bereich](https://www.deutschestextarchiv.de/doku/basisformat/uebersichtHeader.html) des überführt.  \
    {% include image.html url="../data/pipelines/pipeline_1/transition_1/img/ftp-to-dta.png" description="Übertragung von Elementen in die DTABf-Struktur" %}
* **Einfügen von Platzhaltern:** Einige obligatorische Felder im DTABf-XML, für die es keine entsprechenden Metadatenbeschreibungen im TEI-Export von FromThePage gibt, wurden schließlich mit beschreibenden Platzhaltern in eckigen Klammern gefüllt. Diese erfordern noch eine projektspezifische Anpassung.  \
    {% include image.html url="../data/pipelines/pipeline_1/transition_1/img/placeholder.png" description="Einsatz von Platzhaltern, die nach der Transformation angepasst werden müssen" %}
* **Entfernen von (vorerst) irrelevanten Elementen:** Einige der Elemente im FromThePage-Export wurden außerdem ignoriert und nicht in das neue DTA-XML überführt, da diese im Zuge der Edition eine unwesentliche Rolle spielen oder ohnehin am Ende des Projekts noch ergänzt werden müssen. Als nicht weiter relevante Information im TEI-Export von FromThePage wurden zum Beispiel Angaben zu Änderungen während der Transkription identifiziert. Aber auch die in den &lt;respStmt> enthaltenen Mitarbeitenden wurden nicht übernommen, da der teiHeader ohnehin am Ende des Projektes noch einmal überarbeitet werden muss.

Die Einschränkungen, die sich aus der Überführung der Metadaten in das Schema des DTA-Basisformat ergeben, warfen außerdem noch folgendes Problem auf:



* **Fehlende Elemente:** Würde man sich strikt an das DTABf-Schema halten, müsste man auf bereits in FromThePage hinzugefügte Metadaten verzichten. was zu einem Datenverlust führen würde. So gibt es beispielsweise weder das &lt;history>-Element zur Beschreibung der geschichtlichen Hintergründe wie Herkunft und Entstehung eines Manuskripts im DTA-Basisformat, noch gibt es ein anderes passendes Element, in das die historischen Metadaten übertragen werden können. Im Rahmen dieses Projekts wurde daher entschieden, das &lt;history>-Element dennoch beizubehalten, auch wenn dies zu einem nicht validen Output führt. \
    {% include image.html url="../data/pipelines/pipeline_1/transition_1/img/history-metadata.png" description="Beibehalten von Elementen, die im DTA-Basisformat unzulässig sind" %}
* **Einbindung der Faksimiles:** Im DTA-Basisformat sind keine &lt;facsimile>-Elemente zulässig. Es gibt zwar die Möglichkeit, die &lt;pb>-Elemente zu Beginn jeder transkribierten Seite mit einem @facs-Attribut zu ergänzen, der Wert dieses Attributs darf jedoch keine URL sein. Der Wert des ersten @facs in einem &lt;pb> muss gemäß Schematron “#f0001” entsprechen. Da es für unser Projekt aber im weiteren Verlauf wichtig ist, die URLs, die zu den Bildressourcen führen, beizubehalten, sieht unsere Transformation die Aufnahme von &lt;facsimile>-Elementen vor. Die im FromThePage-Export enthaltenen Links auf die Bilddateien (dort im @facs-Attribut des &lt;pb>-Elements) finden sich im transformierten DTABf-XML im @target-Attribut der &lt;facsimile>-Elemente wieder.  \
    {% include image.html url="../data/pipelines/pipeline_1/transition_1/img/facsimile.png" description="Einbinden von Facsimiles" %} \
    → Auch wenn das Einbinden der &lt;facsimile>-Elemente zu einem nicht validen XML führt, lässt sich das Dokument ohne Probleme mit ediarum weiterverarbeiten. Es wäre aber auch möglich, das DTABf um &lt;facsimile>-Elemente oder andere projektspezifisch relevante Elemente zu erweitern. 

## 3. Transformation des transkribierten Manuskripts 

Der wichtigste Abschnitt unserer Transformation besteht letztlich darin, die in FromThePage teilweise ausgezeichneten Manuskript-Transkriptionen in eine DTABf-konforme Struktur zu übertragen. Dafür soll nun zuerst eine kurze Übersicht darüber gegeben werden, welche Annotationen bei unserem Beispielprojekt bei der Transkription über FromThePage bereits erfolgt sind, ob bzw. welche Entsprechung es dafür im DTA-Basisformat gibt, und mit welchen Problemen man bei der Transformation konfrontiert ist. 


<table>
  <tr>
   <td><strong>Annotation</strong>
   </td>
   <td colspan="2" ><strong>FromThePage Export</strong>
   </td>
   <td><strong>DTA-Bf</strong>
   </td>
   <td><strong>Transformation & Probleme</strong>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td><strong>Button und Darstellung in Webeditor</strong>
   </td>
   <td><strong>Element in TEI-Export</strong>
   </td>
   <td><strong>Zulässiges Äquivalent</strong>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Abkürzung <br/>
    (durch Verfasser:in des Originals)
   </td>
   <td><strong>abbr:</strong>
<p>
&lt;abbr expan=””&gt;&lt;/abbr&gt;
   </td>
   <td>&lt;choice&gt;
<p>
&lt;expan&gt;&lt;/expan&gt;
<p>
&lt;abbr&gt;&lt;/abbr&gt;
<p>
&lt;/choice&gt;
   </td>
   <td>&lt;choice&gt;
<p>
&lt;expan&gt;&lt;/expan&gt;
<p>
&lt;abbr&gt;&lt;/abbr&gt;
<p>
&lt;/choice&gt;
   </td>
   <td>Keine Anpassungen nötig
   </td>
  </tr>
  <tr>
   <td>Ergänzung (durch Verfasser:in des Originals)
   </td>
   <td><strong>add: </strong>
<p>
&lt;add&gt;&lt;/add&gt;
   </td>
   <td>&lt;add&gt;&lt;/add&gt;
   </td>
   <td>&lt;add place=”XXX”&gt;&lt;/add&gt;
   </td>
   <td>Obligatorisches Attribut: @place 
   </td>
  </tr>
  <tr>
   <td>Tilgung (durch Verfasser:in des Originals)
   </td>
   <td><strong>del:</strong>
<p>
&lt;del&gt;&lt;/del&gt;
   </td>
   <td>&lt;del&gt;&lt;/del&gt;
   </td>
   <td>&lt;del rendition=”XXX”&gt;&lt;/del&gt;
   </td>
   <td>Obligatorisches Attribut: @rendition
   </td>
  </tr>
  <tr>
   <td>Fußnote (durch Editor:in)
   </td>
   <td><strong>footnote:</strong>
<p>
&lt;footnote marker=”*”&gt;&lt;/footnote&gt;
   </td>
   <td>&lt;note n=”*” type=”footnote”&gt;&lt;/note&gt;
   </td>
   <td>&lt;note n=”*” place=”foot”&gt;&lt;/note&gt;
   </td>
   <td>Anpassung unproblematisch
   </td>
  </tr>
  <tr>
   <td>Auslassung (durch Editor:in)
   </td>
   <td><strong>gap:</strong>
<p>
&lt;gap&gt;&lt;/gap&gt;
   </td>
   <td>&lt;gap&gt;&lt;/gap&gt;
   </td>
   <td>&lt;gap&gt;&lt;/gap&gt;
   </td>
   <td>Keine Anpassungen nötig
   </td>
  </tr>
  <tr>
   <td>Überschrift
   </td>
   <td><strong>head:</strong>
<p>
&lt;head&gt;&lt;/head&gt;
   </td>
   <td>&lt;head&gt;&lt;/head&gt;
   </td>
   <td>&lt;fw&gt;&lt;/fw&gt;
   </td>
   <td>Anpassung unproblematisch 
<p>
Hinweis: Das &lt;head&gt;-Element wurde in unserem Beispielprojekt zweckentfremdet und für eine laufende Kopfzeile verwendet.
   </td>
  </tr>
  <tr>
   <td>Zeilenumbruch
   </td>
   <td><strong>lb:</strong>
<p>
&lt;lb&gt;&lt;/lb&gt;
   </td>
   <td>&lt;lb&gt;&lt;/lb&gt;
   </td>
   <td>&lt;lb&gt;&lt;/lb&gt;
   </td>
   <td>Keine Anpassungen nötig
   </td>
  </tr>
  <tr>
   <td>Regularisierte Form
   </td>
   <td><strong>reg:</strong>
<p>
&lt;reg orig=””&gt;&lt;/reg&gt;
   </td>
   <td>&lt;choice&gt;
<p>
&lt;reg&gt;&lt;/reg&gt;
<p>
&lt;orig&gt;&lt;/orig&gt;
<p>
&lt;/choice&gt;
   </td>
   <td>&lt;choice&gt;
<p>
&lt;reg&gt;&lt;/reg&gt;
<p>
&lt;orig&gt;&lt;/orig&gt;
<p>
&lt;/choice&gt;
   </td>
   <td>Keine Anpassungen nötig
   </td>
  </tr>
  <tr>
   <td>Unklare Stelle
   </td>
   <td><strong>unclear:</strong>
<p>
&lt;unclear&gt;&lt;/unclear&gt;
   </td>
   <td>&lt;unclear&gt;&lt;/unclear&gt;
   </td>
   <td>&lt;supplied cert=”low”&gt;&lt;/supplied&gt;
   </td>
   <td>Anpassung unproblematisch 
   </td>
  </tr>
</table>


Wie aus der Tabelle ersichtlich wird, können die meisten Elemente entweder ohne weitere Bearbeitung übernommen werden oder benötigen nur geringe Anpassungen, um dem DTA-Basisformat zu entsprechen.
Nachfolgend eine transkribierte und von FromThePage als TEI exportierte Seite von einem der Manuskripte:
```xml
<pb xml:id="F33038495" n="3"
facs="http://fromthepage.com/image-service/33038495/full/full/0/default.jpg"/>
<div xml:id="OTP33038495">
<fw type="pageNum">UB_Augsburg_Cod_III_1_2_43_059v</fw>
    <p xml:id="OTP33038495P0">nach an der andernn seittenn mit grunen totternn vnd peterlein vnd <choice>
        <expan>versaltz</expan>
        <abbr>vsaltz</abbr>
    </choice> es nit<lb/> Wiltu machen ein meyschen kuchenn So nÿm auff zehen eÿer vnd
    zuslach<lb/> sie wol vnd nÿm darzu peterlein vnd rurr es <choice>
        <expan>vndereinander</expan>
        <abbr>vndeinand</abbr>
    </choice> vnd nÿm einen<lb/> morserr vnd setz auff ein kolenn vnd thue dar ein einen
    loeffel vol schmaltz<lb/> vnd laß es heÿß werdenn vnd geuß die eÿerr darein vnd laß es
    kul pachen<lb/> vnd thu es also gantz auff ein schussel <choice>
        <expan>versaltz</expan>
        <abbr>vsaltz</abbr>
    </choice> es nit<lb/> Item Wiltu machen ein essen in dem meÿen das heÿßt ein gespoet So
    nym<lb/> einen fliessendenn keß vnd schneid den in vil schnittenn die duenn sein<lb/> vnd
    nÿm darzu sechs eÿer vnd slach die auff den keß vnd nÿm<lb/> meichßige putternn in ein
    pfannen vnd thue den keß mit den eÿernn<lb/> vber das fewrr vnd zeuch es eÿ dar mit auff
    das es slecht werr vnd<lb/> richte es an vnd <choice>
        <expan>versaltz</expan>
        <abbr>vsaltz</abbr>
    </choice> es nicht<lb/> Item einen fladenn zu machenn von fischenn velcherlej sie sind
    So<lb/> nÿm ein dicke mandelmilch wol gemengt mit reiß mel vnd thue<lb/> dar ein einen
    apffel oderr zwenn vnd ein wenig wurtz vnd seud<lb/> es in einem ofen vnd laß es pachenn
    vnd <choice>
        <expan>versalcz</expan>
        <abbr>vsalcz</abbr>
    </choice> es nit<lb/> Wiltu machen morchen vmb weihennachtenn So nÿm ein teick<lb/> auß
    weissem brot vnd auß ein wenig melbs vnd schla eÿer dar an<lb/> vnd mach zwen knebel vnd
    wurff die in den teick vnd zeuch<lb/> sie darInnen vmb vnd leg sie in ein schmaltz das nit
    zu heÿß<lb/> sej vnd wenn es ein wenig gepack So nÿm es her wider auß<lb/> vnd schneÿd
    es dann mitten auff dem knebel auff von <choice>
        <expan>einander</expan>
        <abbr>einand</abbr>
    </choice><lb/> vnd full es danne mit ein geruntenn eÿernn vnd zeuch es durch<lb/> einen
    lindenn straubenn teick leg es in ein schmaltz vnd laß es<lb/> pachenn vnd setz die
    morchen dar ein vnd laß sie pachenn<lb/> Wiltu machen ein gestrocztes gepachens So mach
    ein teÿck von<lb/> eÿtell eÿernn vnd wurtz in wol vnd mach in gel vnd warmm
    <unclear>du</unclear><note n="*" type="footnote">Lesart nach Feyl: dutzend</note><lb/>
    <choice>
        <expan>gutter</expan>
        <abbr>gutt</abbr>
    </choice> holmm in den teick das sie naß werdenn vnd nÿm sie dann<lb/> her auß vnd pack
    es in einem schmaltz vnd <choice>
        <expan>versaltz</expan>
        <abbr>vsaltz</abbr>
    </choice> nit<lb/> Wiltu machen gut kuchenn vonn eÿernn So nÿm eÿer wie vil<lb/> du
    wilt vnd zu slach die wol vnd schneid semel funf lot dar<lb/>
    <choice>
        <expan>vnter</expan>
        <abbr>vnt</abbr>
    </choice> vnd thue dar ein weinperr vnd schmaltz in ein pfannen des<lb/> genug sej vnd
    geuß die eÿer dar ein vnd laß es packenn ÿnnenn<lb/> vnd aussenn do mit slach es auff
    ein panck vnd hack dar <choice>
        <expan>vnter</expan>
        <abbr>vnt</abbr>
    </choice><lb/> gut wurtz vnd schneid es zu scheubenn vnd richt es an<lb/> Item Ein essenn
    von milch kuchenn So soltu sie clein <choice>
        <expan>schnëyden</expan>
        <abbr>schnëy</abbr>
    </choice><note n="*" type="footnote">Rezept endet hier</note>
    </p>
</div>
```
Bei der Transformation können einige Elemente in ihrer ursprünglichen Form erhalten bleiben, während andere an die Vorgaben des DTA-Basisformats angepasst wurden. 
```xml
<pb xml:id="F33038495" n="UB_Augsburg_Cod_III_1_2_43_059v" facs="#f0003"/>
    <div xml:id="OTP33038495">
    <p xml:id="OTP33038495P0">nach an der andernn seittenn mit grunen totternn vnd peterlein
        vnd <choice>
            <expan>versaltz</expan>
            <abbr>vsaltz</abbr>
        </choice> es nit<lb/> Wiltu machen ein meyschen kuchenn So nÿm auff zehen eÿer vnd
        zuslach<lb/> sie wol vnd nÿm darzu peterlein vnd rurr es <choice>
            <expan>vndereinander</expan>
            <abbr>vndeinand</abbr>
        </choice> vnd nÿm einen<lb/> morserr vnd setz auff ein kolenn vnd thue dar ein einen
        loeffel vol schmaltz<lb/> vnd laß es heÿß werdenn vnd geuß die eÿerr darein vnd laß
        es kul pachen<lb/> vnd thu es also gantz auff ein schussel <choice>
            <expan>versaltz</expan>
            <abbr>vsaltz</abbr>
        </choice> es nit<lb/> Item Wiltu machen ein essen in dem meÿen das heÿßt ein
        gespoet So nym<lb/> einen fliessendenn keß vnd schneid den in vil schnittenn die
        duenn sein<lb/> vnd nÿm darzu sechs eÿer vnd slach die auff den keß vnd nÿm<lb/>
        meichßige putternn in ein pfannen vnd thue den keß mit den eÿernn<lb/> vber das
        fewrr vnd zeuch es eÿ dar mit auff das es slecht werr vnd<lb/> richte es an vnd <choice>
            <expan>versaltz</expan>
            <abbr>vsaltz</abbr>
        </choice> es nicht<lb/> Item einen fladenn zu machenn von fischenn velcherlej sie
        sind So<lb/> nÿm ein dicke mandelmilch wol gemengt mit reiß mel vnd thue<lb/> dar
        ein einen apffel oderr zwenn vnd ein wenig wurtz vnd seud<lb/> es in einem ofen vnd
        laß es pachenn vnd <choice>
            <expan>versalcz</expan>
            <abbr>vsalcz</abbr>
        </choice> es nit<lb/> Wiltu machen morchen vmb weihennachtenn So nÿm ein teick<lb/>
        auß weissem brot vnd auß ein wenig melbs vnd schla eÿer dar an<lb/> vnd mach zwen
        knebel vnd wurff die in den teick vnd zeuch<lb/> sie darInnen vmb vnd leg sie in ein
        schmaltz das nit zu heÿß<lb/> sej vnd wenn es ein wenig gepack So nÿm es her wider
        auß<lb/> vnd schneÿd es dann mitten auff dem knebel auff von <choice>
            <expan>einander</expan>
            <abbr>einand</abbr>
        </choice>
        <lb/> vnd full es danne mit ein geruntenn eÿernn vnd zeuch es durch<lb/> einen
        lindenn straubenn teick leg es in ein schmaltz vnd laß es<lb/> pachenn vnd setz die
        morchen dar ein vnd laß sie pachenn<lb/> Wiltu machen ein gestrocztes gepachens So
        mach ein teÿck von<lb/> eÿtell eÿernn vnd wurtz in wol vnd mach in gel vnd warmm
            <supplied cert="low">du</supplied>
        <note place="foot" n="*">Lesart nach Feyl: dutzend</note>
        <lb/>
        <choice>
            <expan>gutter</expan>
            <abbr>gutt</abbr>
        </choice> holmm in den teick das sie naß werdenn vnd nÿm sie dann<lb/> her auß vnd
        pack es in einem schmaltz vnd <choice>
            <expan>versaltz</expan>
            <abbr>vsaltz</abbr>
        </choice> nit<lb/> Wiltu machen gut kuchenn vonn eÿernn So nÿm eÿer wie vil<lb/>
        du wilt vnd zu slach die wol vnd schneid semel funf lot dar<lb/>
        <choice>
            <expan>vnter</expan>
            <abbr>vnt</abbr>
        </choice> vnd thue dar ein weinperr vnd schmaltz in ein pfannen des<lb/> genug sej
        vnd geuß die eÿer dar ein vnd laß es packenn ÿnnenn<lb/> vnd aussenn do mit slach
        es auff ein panck vnd hack dar <choice>
            <expan>vnter</expan>
            <abbr>vnt</abbr>
        </choice>
        <lb/> gut wurtz vnd schneid es zu scheubenn vnd richt es an<lb/> Item Ein essenn von
        milch kuchenn So soltu sie clein <choice>
            <expan>schnëyden</expan>
            <abbr>schnëy</abbr>
        </choice>
        <note place="foot" n="*">Rezept endet hier</note>
    </p>
</div>
```

Die einzigen beiden Elemente, die in unserem Projekt für Probleme sorgen, sind Hinzufügungen (&lt;add>) sowie Tilgungen (&lt;del>) durch den/die ursprüngliche:n Verfasser:in. Denn während diese bei der Transkription in FromThePage keine Attribute erhalten haben, sind für das DTA-Basisformat Angaben zur Lokalisierung der Hinzufügung bzw. zur Art der Tilgung (Durchstreichen, Überschreiben, Radieren oder Auskratzen etc.) obligatorisch. 
{% include image.html url="../data/pipelines/pipeline_1/transition_1/img/del-add.png" description="Probleme bei der Überführung einzelner Elemente ins DTA-Basisformat" %}
Da wir über diese Informationen aber nicht verfügen und daher die Manuskripte erneut durchgehen müssten, belassen wir das transformierte XML vorerst ohne Attribute und widmen uns diesem Problem bei der Annotation in ediarum. 

