<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">   

   <xsl:template match = "/"> 
		
      <html>
      <head>
      <title>Lab13_1</title>
      </head>
         <body bgcolor="bisque"> 
            <h2 align="center">Quotes</h2> 
            <table border = "1"> 
               <tr bgcolor = "silver"> 
                  <th>Quote</th>
                  <th>Author</th>
               </tr> 
               <xsl:for-each select="qoutes/qoute">
               <xsl:sort select="author" order="ascending"/>

                  <tr>

                     <td width = "700px"><xsl:value-of select = "contant"/></td> 
                     <td><xsl:value-of select = "author"/></td> 
						
                  </tr> 
               </xsl:for-each> 
					
            </table> 
         </body> 
      </html> 
   </xsl:template>  
</xsl:stylesheet>