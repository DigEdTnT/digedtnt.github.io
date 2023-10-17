<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:telota="http://www.telota.de"
	version="2.0" xmlns="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="tei xsi">

	<!-- Scope of stylesheet: Transforms the invalid output from FromThePage to the structure of the
		 DTA-Basisformat in order to be able to edit the transformed XML in ediarum. -->

	<xsl:output method="xml" indent="yes" />

		<!-- Embedding of RNG and SCHEMATRON of the DTA-Basisformat for manuscripts-->
		<xsl:template match="/">
			<xsl:processing-instruction name="xml-model">href="http://www.deutschestextarchiv.de/basisformat_ms.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"</xsl:processing-instruction>
			<xsl:processing-instruction name="xml-model">href="http://www.deutschestextarchiv.de/basisformat.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron</xsl:processing-instruction>
			<xsl:apply-templates></xsl:apply-templates>
		</xsl:template>



		<!-- Copy of all nodes with a template -->
		<xsl:template match="@* | node()">
			<xsl:copy>
				<xsl:apply-templates select="@* | node()"/>
			</xsl:copy>
		</xsl:template>

		<xsl:template match="tei:TEI/@xsi:schemaLocation"/>
		<xsl:template match="tei:TEI/@xml:lang"/>
		<xsl:template match="tei:TEI/@xml:id">
			<xsl:attribute name="xml:id">
				<xsl:text>dtabf</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="telota:doctype">
				<xsl:text>document</xsl:text>
			</xsl:attribute>
		</xsl:template>


	<!-- NICHT DTA_BF-KONFORM, ABER WICHTIG FÜR WEITERE EDITION -->
	 <!--insert <facsimile> elements between <teiHeader> and <text> -->
	<xsl:template match="tei:teiHeader">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()"/>
		</xsl:copy>
		<xsl:comment> Faksimiles sind im DTA-Basisformat nicht vorgesehen, sollen aber dennoch erhalten bleiben. </xsl:comment>
		<facsimile>
		<xsl:for-each select="./following-sibling::*//tei:pb/@facs">
			<graphic>
			<xsl:attribute name="xml:id">
				<xsl:value-of select="concat('f', format-number(../@n, '0000'))"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="url">
				<xsl:value-of select="."></xsl:value-of>
			</xsl:attribute>
			</graphic>
		</xsl:for-each>
			</facsimile>
	</xsl:template>


	<!-- ############################################################################### -->
	<!-- ADAPTIONS IN FILEDESC -->

	<!-- adapt <titleStmt> -->
	<xsl:template match="tei:title[@type = 'full']">
		<title type="main">
			<xsl:value-of select="./tei:title[@type = 'main']"/>
		</title>
	</xsl:template>

	<xsl:template match="tei:titleStmt/tei:author">
		<xsl:copy-of select="."> </xsl:copy-of>
		<respStmt>
			<xsl:comment> HINWEIS: Das nachfolgende Element ist obligatorisch und sollte daher ausgefüllt werden! </xsl:comment>
			<orgName>[Name der herausgebenden Organisation]</orgName>
			<resp>
				<note type="remarkResponsibility">Erstellung der Transkription nach
					DTA-Richtlinien</note>
				<date type="importDTA" when="2023-05">Mai 2023</date>
			</resp>
		</respStmt>
	</xsl:template>


	<!-- adapt <editionStmt> and insert <extent> -->
	<xsl:template match="tei:editionStmt">
		<editionStmt>
			<edition>Weiterverarbeitung des FromThePageExports mit Ediarum</edition>
		</editionStmt>
		<extent>
			<measure type="images">
				<xsl:value-of select="count(//tei:pb[@facs])"/>
			</measure>
		</extent>
	</xsl:template>


	<!-- adapt <publicationStmt> -->
	<xsl:template match="tei:publicationStmt">
		<publicationStmt>
			<publisher>
				<xsl:comment> HINWEIS: Das nachfolgende Element ist obligatorisch und sollte daher ausgefüllt werden! </xsl:comment>
				<orgName>[Name der publizierenden Institution]</orgName>
			</publisher>
			<pubPlace>Graz</pubPlace>
			<date type="publication">
				<xsl:comment> HINWEIS: Datum eintragen! </xsl:comment>
			</date>
			<availability>
				<licence>
					<xsl:attribute name="target">
						<xsl:value-of
							select="substring-before(substring-after(tokenize(./tei:availability/tei:p, ': ')[2], 'href=&quot;'), '&quot;')"
						/>
					</xsl:attribute>
					<p>
					<xsl:value-of select="tokenize(./tei:availability/tei:p, ': ')[1]"/>:
						<xsl:value-of
						select="substring-before(substring-after(tokenize(./tei:availability/tei:p, ': ')[2], '&quot;&gt;'), '&lt;/a')"
						/></p>
				</licence>
				<licence>
					<xsl:attribute name="target">
						<xsl:value-of
							select="substring-before(substring-after(substring-after(./tei:availability/tei:p, 'href=&quot;'), 'href=&quot;'), '&quot;&gt;')"
						/>
					</xsl:attribute>
					<p><xsl:value-of
						select="substring-before(substring-after(substring-after(./tei:availability/tei:p, ':'), '&lt;/a&gt;'), ':')"
					/>: <xsl:value-of
						select="substring-before(substring-after(tokenize(./tei:availability/tei:p, ': ')[3], '&gt;'), '&lt;/a&gt;')"
					/></p>
				</licence>
			</availability>
		</publicationStmt>
	</xsl:template>


	<!-- adapt <sourceDesc> -->
	<xsl:template match="tei:sourceDesc/tei:msDesc">
		<bibl type="M">
			<xsl:value-of
				select="../preceding-sibling::tei:titleStmt/tei:title/tei:title[@type = 'main']"/>
		</bibl>
		<biblFull>
			<titleStmt>
				<title level="m" type="main">
					<xsl:value-of
						select="../preceding-sibling::tei:titleStmt/tei:title/tei:title[@type = 'main']"
					/>
				</title>
				<author>
					<xsl:copy-of
						select="../preceding-sibling::tei:titleStmt/tei:author/tei:persName"/>
				</author>
			</titleStmt>
			<editionStmt>
				<edition n="1"/>
			</editionStmt>
			<publicationStmt>
				<xsl:comment> HINWEIS: Die nachfolgenden Elemente sind obligatorisch und sollten daher ausgefüllt werden! </xsl:comment>
				<publisher>
					<name>[Verlag/Druckerei]</name>
				</publisher>
				<pubPlace>[Druckort]</pubPlace>
				<date type="publication">[Erscheinungsjahr]</date>
			</publicationStmt>
		</biblFull>
		<msDesc>
			<msIdentifier>
				<xsl:copy-of select="tei:msIdentifier/tei:repository"/>
				<idno>
					<idno type="shelfmark">
						<xsl:value-of select="./tei:msIdentifier/tei:idno"/>
					</idno>
				</idno>
			</msIdentifier>
			<xsl:copy-of select="./tei:physDesc"/>

			<!-- NICHT DTA_BF-KONFORM, ABER WICHTIG FÜR WEITERE EDITION -->
			<!-- Include adapted <history> -->
				<xsl:if test="./tei:history">
					<xsl:comment> Das history-Element ist im DTA-Basisformat nicht vorgesehen, soll aber dennoch erhalten bleiben. </xsl:comment>
				<history>
					<origin>
						<xsl:copy-of select="./tei:history/tei:origin/tei:placeName"></xsl:copy-of>
						<xsl:copy-of select="../parent::node()/following-sibling::tei:profileDesc/tei:creation/tei:date"/>
					</origin>
					<xsl:copy-of select="./tei:history/tei:provenance"></xsl:copy-of>
				</history>
			</xsl:if>
		</msDesc>
	</xsl:template>


	<!-- ############################################################################### -->
	<!-- ADAPTIONS IN ENCODINGDESC -->

	<!-- TODO: what to do with the taxonomy in classDesc = not allowed anywhere!? -->
	<xsl:template match="tei:encodingDesc">
		<encodingDesc>
			<xsl:comment> HINWEIS: Das nachfolgende Element ist obligatorisch und sollte daher ausgefüllt werden! </xsl:comment>
			<p>[Hinweise zu den Transkriptions- und Annotationsrichtlinien]</p>
		</encodingDesc>
	</xsl:template>


	<!-- ############################################################################### -->
	<!-- ADAPTIONS IN PROFILEDESC -->

	<!-- insert <textClass> to <profileDesc> -->
	<xsl:template match="tei:profileDesc">
		<profileDesc>
			<xsl:comment> HINWEIS: DTA-Bf erfordert Angabe des Language Codes gemäß ISO 639-3 - entsprechend anpassen! </xsl:comment>
			<langUsage>
				<language ident="deu">
					<xsl:value-of select="./tei:langUsage/tei:language/text()"/>
				</language>
			</langUsage>
			<textClass>
				<classCode scheme="http://www.deutschestextarchiv.de/doku/klassifikation#"
					>Gebrauchsliteratur laut DTA-Klassifikation</classCode>
			</textClass>
		</profileDesc>
	</xsl:template>

	<!-- skip <revisionDesc> -->
	<xsl:template match="tei:revisionDesc"/>


	<!-- ############################################################################### -->
	<!-- ADAPTIONS IN BODY -->

	<!-- change the values of @facs attributes in <pb> -->
	<xsl:template match="tei:pb/@facs">
		<xsl:for-each select=".">
			<xsl:attribute name="facs">
				<xsl:value-of select="concat('#f', format-number(../@n, '0000'))"/>
			</xsl:attribute>
		</xsl:for-each>
	</xsl:template>


	<!-- change the values of @n attributes in <pb> -->
	<xsl:template match="tei:pb/@n">
		<xsl:for-each select=".">
			<xsl:attribute name="n">
				<xsl:value-of select="../following-sibling::tei:div[1]/tei:fw/text()"/>
			</xsl:attribute>
		</xsl:for-each>
	</xsl:template>


	<!-- change <head> elements to <fw> or skip <fw> when there are no <head> elements -->
	<xsl:template match="tei:fw">
		<xsl:if test="following-sibling::tei:p/tei:head">
			<fw>
				<xsl:attribute name="type">
					<xsl:text>header</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="place">
					<xsl:text>top</xsl:text>
				</xsl:attribute>
				<xsl:value-of select="following-sibling::tei:p/tei:head/text()"/>
			</fw>
		</xsl:if>
	</xsl:template>


	<!-- skip <head> in <p> -->
	<xsl:template match="tei:head"/>


	<!-- skip <rs> tags, but keep the content -->
	<!-- cleaning the FromThePage export from Subject Linking tags - if you want to keep them, delete the following 3 code lines -->
	<xsl:template match="tei:rs">
		<xsl:value-of select="."/>
	</xsl:template>


	<!-- skip <note> elements containing editor information from FTP -->
	<xsl:template match="tei:note[@resp]">
		<xsl:if test="not(@type = 'footnote')"> </xsl:if>
	</xsl:template>


	<!-- change attribute in <note> elements -->
	<xsl:template match="tei:note[@type = 'footnote']">
		<note place="foot">
			<xsl:attribute name="n">
				<xsl:value-of select="@n"/>
			</xsl:attribute>
			<xsl:value-of select="."/>
		</note>
	</xsl:template>


	<!-- convert <unclear> to <supplied> -->
	<xsl:template match="tei:unclear">
		<supplied cert="low">
			<xsl:value-of select="."/>
		</supplied>
	</xsl:template>


	<!-- add attribute to <del> elements -->
	<xsl:template match="tei:del">
		<del>
		<xsl:attribute name="rendition">
			<xsl:text></xsl:text>
		</xsl:attribute>
		<xsl:value-of select="."/>
		</del>
	</xsl:template>


	<!-- add attribute to <add> elements -->
	<xsl:template match="tei:add">
		<add>
		<xsl:attribute name="rendition">
			<xsl:text></xsl:text>
		</xsl:attribute>
		<xsl:value-of select="."/>
		</add>
	</xsl:template>


</xsl:stylesheet>
