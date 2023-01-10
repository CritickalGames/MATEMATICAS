<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template match="/math/grado[@id='1']">


  <div class="row">
  <div class="col-2 bg-dark" id="divIzquierdo">
    <!--ForEach-->
    <xsl:for-each select="tema">
      <a><xsl:value-of select="titulo" /></a><br/>
    </xsl:for-each>
  </div>
  <!--Cambio de div-->
  <div class="col-7 bg-secondary alig-content-center">
    
      <!--ForEach-->
      <xsl:for-each select="tema">
        <div class="bg-danger my-3 pb-1">
          <h1 class="d-flex align-items-center justify-content-center">
            <xsl:value-of select="titulo" />
          </h1>

          <!--ForEach-->
          <xsl:for-each select="subtema">
            <div class="bg-info my-1 mx-1">
              <p><xsl:value-of select="titulo" /></p>
              <p><xsl:value-of select="teorico" /></p>
            </div>
            <!--ForEach-->
            <xsl:for-each select="ejercicios/demostracion">
              <div class="bg-warning my-1 mx-1">
                <h3><xsl:value-of select="letra" /></h3>
                <xsl:for-each select="pasos/paso">
                    <p><xsl:value-of select="." /></p>
                </xsl:for-each>
              </div>
            </xsl:for-each>
            <!--ForEach-->
            <xsl:for-each select="ejercicios/practicos/practico">
              <div class="bg-warning my-1 mx-1">
                <h3><xsl:value-of select="letra" /></h3>
                <xsl:for-each select="paso">
                    <p><xsl:value-of select="." /></p>
                </xsl:for-each>
              </div>
            </xsl:for-each>
            
          </xsl:for-each>

          
        
        </div>
      </xsl:for-each>
  </div>

   
    <!--Cambio de div-->


    <div class="col bg-info" id="divDerecho">
      <!--ForEach-->
      <xsl:for-each select="tema">
        <h6><xsl:value-of select="titulo" /></h6>
      
        <div class="bg-danger my-3 py-1">
          <!--ForEach-->
          <xsl:for-each select="subtema">
            <div class="bg-success my-1 mx-1">
              <xsl:for-each select="herramientas/axiomas/axioma">
                <p><xsl:value-of select="titulo" /></p>
              </xsl:for-each>
              <xsl:for-each select="herramientas/terminos/termino">
                <p><xsl:value-of select="titulo" /></p>
              </xsl:for-each>
              <xsl:for-each select="herramientas/teoremas/teorema">
                <p><xsl:value-of select="titulo" /></p>
              </xsl:for-each>
            </div>
          </xsl:for-each>

        </div>
      </xsl:for-each>
 
    </div>
 
  </div>

</xsl:template>

</xsl:stylesheet>