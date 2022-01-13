<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <xsl:for-each select="recetas/header">
    <center>
    <img>
      <xsl:attribute name="src">
        <xsl:value-of select="imagen"/>
      </xsl:attribute>
    </img>
    </center>
  </xsl:for-each>
  <hr/>
  <xsl:for-each select="recetas/menu">
    <center>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="menu1/@link"/>
        </xsl:attribute>
        <xsl:value-of select="menu1"/>
      </a>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="menu2/@link"/>
        </xsl:attribute>
        <xsl:value-of select="menu2"/>
      </a>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="menu3/@link"/>
        </xsl:attribute>
        <xsl:value-of select="menu3"/>
      </a>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="menu4/@link"/>
        </xsl:attribute>
        <xsl:value-of select="menu4"/>
      </a>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="menu5/@link"/>
        </xsl:attribute>
        <xsl:value-of select="menu5"/>
      </a>
    </center>
  </xsl:for-each>
  <hr/>
  <h1><center>Listado de recetas</center></h1>
  <center><p style="color: #8A8070;">Aquí encontraras un listado de todas las recetas.</p></center>
  <xsl:for-each select="recetas/receta">
    <div style="background-color:whitesmoke;color:black;padding:4px;font-size:13pt">
      <span style="font-weight:bold"><xsl:value-of select="nombre"/> - </span>
      <xsl:value-of select="autor"/>
    </div>
    <div style="background-color:whitesmoke;color:black;padding:4px">
    </div>
    <div style="margin-left:20px;margin-bottom:1em;font-size:12pt">
      <p style="color: #8A8070;">
      <xsl:value-of select="descripcion"/>
      </p>
    </div>
    <div style="margin-left:20px;margin-bottom:1em;font-size:11pt">
      <p style="color: #8A8070;">
        <span style="font-style:italic"><b>Nivel de dificultad: </b><xsl:value-of select="dificultad"/></span>
      </p>
    </div>
    <div style="margin-left:20px;margin-bottom:1em;font-size:11pt">
      <p style="color: #8A8070;">
        <span style="font-style:italic"><b>Tiempo medio: </b><xsl:value-of select="tiempo"/></span>
      </p>
    </div>
    <img style="margin-left:20px;margin-bottom:10px;">
      <xsl:attribute name="src">
        <xsl:value-of select="imagen"/>
      </xsl:attribute>      
      <xsl:attribute name="width">100</xsl:attribute>
      <xsl:attribute name="height">70</xsl:attribute>
    </img>
    <div style="margin-left:20px;margin-bottom:1em;font-size:11pt">
      <button onclick="myFunction()">Mostrar mas</button>
    </div>
    <div id="receta{position()}" style="display:none;margin-left:20px;margin-bottom:1em;font-size:11pt">
      <h2>Ingredientes</h2>
      <xsl:value-of select="ingredientes"/>
      <h2>Preparacion</h2>
      <xsl:value-of select="preparacion"/>
    </div>
    <script>
      function myFunction() {
        var x = document.getElementById("receta1");
        if (x.style.display === "none") {
          x.style.display = "block";
        } else {
          x.style.display = "none";
        }
      }
    </script>
  </xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet>