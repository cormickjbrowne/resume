<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>My Resume</h2>
    <ol>
    <xsl:for-each select="resume/work-experience/job">
        <li><xsl:value-of select="role/@value"/></li>
    </xsl:for-each>
    </ol>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>