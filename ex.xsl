<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/catalog">


    <xsl:for-each select="pasos/paso">
     <p><xsl:value-of select="." /></p>
    </xsl:for-each>
</xsl:template>

</xsl:stylesheet>




