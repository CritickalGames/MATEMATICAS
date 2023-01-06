<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/materia/grado">

  <div class="rol py-5 bg-success"></div>

  <div class="row">
    <div class="col bg-dark"/>



    <div class="col bg-secondary">
      <h2>My CD Collection</h2>


      <table border="3" border-color="black">
        <tr bgcolor="red">
          <th colspan="5" style="text-align:center;">
            <xsl:value-of select="tema[@id='Estudio Analitico de una funcion']/titulo" />
          </th>
        </tr>
        <tr bgcolor="#9acd32">
          <th style="text-align:center">Title</th>
          <th style="text-align:center">Teorico</th>
          <th style="text-align:center">herramienta</th>
          <th style="text-align:center">idPractico_Y_Demostracion</th>
        </tr>


        <xsl:for-each select="tema[@id='Estudio Analitico de una funcion']/subtema">
          <tr>
            <td><xsl:value-of select="titulo" /></td>
            <td><xsl:value-of select="teorico" /></td>
            <td><xsl:value-of select="herramienta" /></td>
            <td><xsl:value-of select="practico" /></td>
          </tr>
        </xsl:for-each>
        
      </table>
    </div>


    <div class="col bg-info"/>
  </div>
  <div class="row bg-primary" id ="div"/>
  

</xsl:template>

</xsl:stylesheet>