<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes=" xs"
    version="3.0">
   
  <!-- within a streaming template, use xsl:result-document -->
  
  <xsl:mode name="s" streamable="yes"/>
       
    
  <xsl:template name="main">
    <xsl:stream href="../docs/transactions.xml">
      <xsl:apply-templates select="./account" mode="s"/>
    </xsl:stream>  
  </xsl:template> 


  <xsl:template match="account" mode="s">
        <xsl:result-document href="{@nr}.xml">
          <root>
              <xsl:copy-of select="name()" />
          </root>
        </xsl:result-document>
  </xsl:template>   
       
</xsl:transform>
