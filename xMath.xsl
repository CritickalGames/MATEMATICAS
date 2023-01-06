<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/materia/grado">

  <h2>My CD Collection</h2>


  <table border="1">

    <tr bgcolor="#9acd32">
      <th style="text-align:left">Title</th>
      <th style="text-align:left">Teorico</th>
      <th style="text-align:left">herramienta</th>
      <th style="text-align:left">idPractico_Y_Demostracion</th>
    </tr>


    <xsl:for-each select="tema[@id='Estudio Analitico de una funcion']/subtema">
    <tr>
      <td><xsl:value-of select="titulo" /></td>
    </tr>
    </xsl:for-each>
    
  </table>

</xsl:template>

</xsl:stylesheet>