<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei" version="2.0">

    <!-- Scope of stylesheet: converts a list with invalid xml:ids to a duplicate-free list. 
         Due to the row-based structure of the OpenRefine output a lot of redundancies need to be removed 
         in order to get a clean and condensed list to use as ediarum register. -->

    <xsl:output method="xml" indent="yes"/>

    <!-- Copy of all nodes with a template -->
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- Template to modify the list structure -->
    <xsl:template match="tei:list">
        <list>
            <!-- Group items by xml:idthen -->
            <xsl:for-each-group select="tei:item" group-by="@xml:id">
                <item xml:id="{translate(@xml:id, ' ', '_')}">
                    <!-- Only take the idno and labels with german translation from first item,
                         but alternatives labels from all grouped items -->
                    <xsl:apply-templates select="current-group()[1]/tei:idno"/>
                    <xsl:apply-templates select="current-group()[1]/tei:label[@type = 'reg']"/>
                    <xsl:apply-templates select="current-group()/tei:label[@type = 'alt']"/>
                </item>
            </xsl:for-each-group>
        </list>
    </xsl:template>

</xsl:stylesheet>
