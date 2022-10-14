<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <html>
         <head>
            <title>Question 5</title>
            <style>
                table,
                th,
                td {
                    border: 1px solid lightseagreen;
                }
                th{
                    background-color: darkred;
                    color: lightseagreen;
                }
            </style>
         </head>
         <body>
            <table border="2">
                <tr>
                <th>Country name</th>
                <th>Capital</th>
                <th>Unemployment</th>
                <th>Total GDP</th>
                </tr>
                <xsl:for-each select="//country">
                    <tr>
                        <td>
                            <xsl:value-of select="name" /> 
                        </td>
                        <td>
                            <xsl:value-of select="@capital" /> 
                        </td>
                        <td>
                            <xsl:if test="count(unemployment)!=0">
                                <xsl:value-of select="unemployment" />
                            </xsl:if>
                            <xsl:if test="count(unemployment)=0">
                                N/A
                            </xsl:if>
                        </td>
                        <td>
                            <xsl:if test="count(gdp_total)!=0"> 
                                <xsl:value-of select="gdp_total" />
                            </xsl:if>
                            <xsl:if test="count(gdp_total)=0"> 
                                N/A
                            </xsl:if>
                        </td>
                    </tr>
                </xsl:for-each> 
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>