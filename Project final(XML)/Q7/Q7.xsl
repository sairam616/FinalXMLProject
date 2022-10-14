<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <html>
         <head>
            <title>Q7</title>
         </head>
         <body>
            <h1>Country Data</h1>

            <table border="1">

            <tr>
               <th>Province Name</th>
               <th>Local Name</th>
               <th>Population(2011)</th>
               <th>No of Cities in the province</th>
            </tr>

            <xsl:for-each select="/mondial/country">
               <tr>
                  <td><xsl:value-of select="province/name"/></td>
                  <td><xsl:value-of select="province/localname"/></td>
                  <td><xsl:value-of select="province/population[@year=2011]"/></td>
                  <td><xsl:value-of select="lastName"/></td>
               </tr>
            </xsl:for-each>

            </table>

         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>