<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes='#all'>
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <!-- Identity transform -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
   
    <xsl:template match="*:teiHeader">
        <teiHeader>
            <fileDesc>
                <titleStmt>
                    <title>Title</title>
                </titleStmt>
                <publicationStmt>
                    <p>Publication Information</p>
                </publicationStmt>
                <sourceDesc>
                    <p>Information about the source</p>
                </sourceDesc>
            </fileDesc>
        </teiHeader>
        <facsimile>
            <xsl:for-each select="//*:facsimile/*:surface">
                <surface>
                    <graphic mimeType="image/jpeg" url="foo">
                        <xsl:attribute name="xml:id">
                            <xsl:value-of select="concat('IMG.', position())"/>
                        </xsl:attribute>
                    </graphic>
                </surface> 
            </xsl:for-each>
        </facsimile>
    </xsl:template>
    
    <xsl:template match="*:facsimile"/>
    
    <!-- Replace ab elements with p elements and remove facs attribute -->
    <xsl:template match="*:ab">
        <p>
            <xsl:apply-templates select="@* except @facs|node()"/>
        </p>
    </xsl:template>
    
    <xsl:template match="@type">
      
    </xsl:template>
    
    <!-- Remove facs attribute from lb elements -->
    <xsl:template match="*:lb/@facs">
        <!-- Do nothing -->
    </xsl:template>
    
    <!-- Remove facs attribute from lb elements -->
    <xsl:template match="*:lb">
        <!-- Do nothing -->
        <xsl:copy>
            <xsl:attribute name="n">
                <xsl:value-of select="count(preceding-sibling::*:lb) + 1"/>
            </xsl:attribute>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="*:pb">
        <xsl:copy>
            <xsl:attribute name="facs">
                <xsl:value-of select="concat('IMG.', count(preceding-sibling::*:lb) + 1)"/>
            </xsl:attribute>
            <xsl:apply-templates select="@* except @facs|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="*:pb/@xml:id"/>
    
</xsl:stylesheet>
