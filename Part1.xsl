<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        
        <html>
            <head>
                <title>Endangered Species</title>
            </head>
            <body>
                <xsl:for-each select="endangered_species/animal">
                    <xsl:sort select="name[@language='Latin']" />
                    <table width="100%">
                    <tr>
                        <td style="text-align: center;"><h1 style="font-style: italic;"><xsl:value-of select="name[@language='Latin']" /></h1></td>
                        <td rowspan="2" width="210"><img src="{picture/@filename}" width="{picture/@x}" height="{picture/@y}" style="clear:left;"/></td>
                    </tr>
                    <tr>
                        <td>Threats:<br />
                            <ul>
                            <xsl:for-each select="threats/threat">
                            <li style="padding: 1%;"><xsl:value-of select="." /></li>
                            </xsl:for-each>
                            </ul>
                        </td>
                    </tr>
                </table>
                <hr />
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

