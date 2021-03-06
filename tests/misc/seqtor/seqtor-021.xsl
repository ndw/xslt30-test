<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="text" />
    
    <xsl:template match="/" name="xsl:initial-template">
        <!--
            create text nodes that are concatenated together, intertwined with sequences of atomics. 
            Empty text nodes must be discarded. 
            Creating a lot of nothing (15 spaces removed by xsl:text)
        -->
        <xsl:sequence select="'-'"/>
        <xsl:sequence expand-text="yes">
            <xsl:for-each select="1 to 2">
                <xsl:text></xsl:text>
                <xsl:sequence select="xs:anyURI('')" />
                <xsl:text></xsl:text>
                <xsl:sequence select="xs:base64Binary('')" />
                <xsl:text></xsl:text>
                <xsl:sequence select="xs:string('')" />
                <xsl:text></xsl:text>
                <xsl:sequence select="''" />
                <xsl:text></xsl:text>
                <xsl:sequence select="xs:hexBinary('')" />
                <xsl:text></xsl:text>
                <xsl:sequence select="xs:token('')" />
                <xsl:text></xsl:text>
                <xsl:sequence select="xs:language(())" />
                <xsl:text></xsl:text>
                <xsl:sequence select="xs:normalizedString('')" />
                <xsl:text></xsl:text>
            </xsl:for-each>
        </xsl:sequence>
        <xsl:sequence select="'-'"/>
    </xsl:template>
    
</xsl:stylesheet>