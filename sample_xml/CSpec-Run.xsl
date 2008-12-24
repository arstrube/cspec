<?xml version="1.0" ?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
       
  <xsl:template match="BEHAVIOUR">
    <html>
        <head>
          <meta http-equiv="content-style-type" content="text/css"/>
          <title> CSpec - Xml Run Report </title>
          <style>
            h1 {
              text-align:center;
              margin-bottom:50px;
            }
            h2 {
              filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr=#999999,EndColorStr=black);
              background-image:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAAZCAYAAADwkER/AAAAa0lEQVQImQXBkRaAMABA0XdONIqyKIqiURTNolEURVE0yqIo2u++7qXWKt/3yfu+8jyP3PctpRS5rkvO85TjOGTfd9m2TXLOsq6rpJRkWRaZ51lijDJNk4zjKMMwSN/30nWdtG0rIQRpmsYfRyYvUxEphwAAAAAASUVORK5CYII=");
              background-repeat:repeat-x;
              background-color:black;
              color:white;
              padding-left:1%;
            }
            table.result {
              width:75%;
              margin-left:5%;
            }
            td.result {
              border:solid;
              border-width:thick;
            }
          </style>
        </head>
          
        <body>
          <h1> CSpec - Behavior driven development in C </h1>
          <xsl:apply-templates/>
          <hr />
          <div style="text-align:right">
            generated by CSpec
          </div>
        </body>
      </html>
  </xsl:template>

  <xsl:template match="DESCRIBE">
    <h2> <xsl:value-of select="DESCRIPTION"/> </h2>
    <xsl:for-each select="EXAMPLE">
      <h3> <xsl:value-of select="IT"/> </h3>

      <table class="result">
      <xsl:for-each select="ASSERTION">
        <xsl:choose>
          <xsl:when test="RESULT='OK'">
            <tr>
              <td class="result" style="width:15%; border-color:green;">
                <xsl:value-of select="RESULT"/>
              </td>
              <td class="result" style="border-color:green;">
                <xsl:value-of select="MESSAGE"/>
              </td>
            </tr>
          </xsl:when>
          <xsl:when test="RESULT='Failure'">
            <tr>
              <td class="result" style="width:15%; border-color:red;">
                <xsl:value-of select="RESULT"/>
              </td>
              <td class="result" style="border-color:red;">
                <xsl:value-of select="MESSAGE"/>
              </td>
            </tr>
          </xsl:when>
          <xsl:when test="RESULT='Pending'">
            <tr>
              <td class="result" style="width:15%; border-color:yellow;">
                <xsl:value-of select="RESULT"/>
              </td>
              <td class="result" style="border-color:yellow;">
                <xsl:value-of select="MESSAGE"/>
              </td>
            </tr>
          </xsl:when>
        </xsl:choose>
      </xsl:for-each>
      </table>

    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
