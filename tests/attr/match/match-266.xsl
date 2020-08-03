<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" expand-text="yes">
  <!-- Purpose: See that match="$nodeset" gives acceptable performance -->


  <xsl:variable name="nodes" as="element()*">
    <x>
      <a>23</a>
      <z>
        <b>25</b>
      </z>
    </x>
  </xsl:variable>


  <xsl:template name="xsl:initial-template">
    <xsl:apply-templates select="$nodes"/>
  </xsl:template>

  <xsl:template match="x">
    <X>
      <xsl:apply-templates/>
    </X>
  </xsl:template>

  <xsl:template match="z">
    <Z>
      <xsl:apply-templates/>
    </Z>
  </xsl:template>

  <xsl:template match="x/(child::a|descendant::b)">
    <AB>
      <xsl:value-of select="."/>
    </AB>
  </xsl:template>


</xsl:transform>
