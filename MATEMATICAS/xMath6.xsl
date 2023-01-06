<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template match="/math/grado[@id='1']">


  <div class="row">
  <div class="col-2 bg-dark" id="divIzquierdo">
    <xsl:for-each select="tema">
      <a><xsl:value-of select="titulo" /></a><br/>
    </xsl:for-each>
  </div>

    <div class="col-7 bg-secondary alig-content-center">
      
        <xsl:for-each select="tema">
          <div class="bg-danger my-3 pb-1">
            <h1 class="d-flex align-items-center justify-content-center"><xsl:value-of select="titulo" /></h1>

            <xsl:for-each select="subtema">
              <div class="bg-info my-1 mx-1">
                <p><xsl:value-of select="titulo" /></p>
                <p><xsl:value-of select="teorico" /></p>
              </div>
              <xsl:for-each select="practicos_y_demostraciones">
              <div class="bg-warning">
                <p><xsl:value-of select="practico/paso" /></p>
              </div>
            </xsl:for-each>
            </xsl:for-each>

            
          
          </div>
        </xsl:for-each>
    </div>

   


    <div class="col bg-info" id="divDerecho">
      <xsl:for-each select="tema">
        <h6><xsl:value-of select="titulo" /></h6>
        <div class="bg-danger my-3 py-1">
          <xsl:for-each select="subtema">
            <div class="bg-success my-1 mx-1">
              <a><xsl:value-of select="herramienta" /></a><br/>
            </div>
          </xsl:for-each>
        </div>
      </xsl:for-each>
    </div>
  </div>

</xsl:template>

</xsl:stylesheet>