<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/films">
        <html>
            <head>
                <title>Films Provider</title>
            </head>
            <body>
                <h1>Liste des films</h1>
                <xsl:for-each select="film">
                    <xsl:variable name="id"><xsl:value-of select="attribute::id_realisateur"></xsl:value-of></xsl:variable>
                    <table>
                        <tr>
                            <td>
                                <b><xsl:value-of select="titre"/></b>&#160;
                                <i>(<xsl:value-of select="/films/realisateur[@id_realisateur = $id]/prenom"/>,&#160;<xsl:value-of select="/films/realisateur[@id_realisateur = $id]/nom"/>)</i>
                            </td>
                        </tr>
                        <tr>
                            <xsl:if test="resume/image">
                                <td>
                                    <img link=\"<xsl:value-of select="resume/image/@image"/>\"/>
                                </td>
                            </xsl:if>
                            <td>
                                <xsl:value-of select="resume"/>
                            </td>
                        </tr>
                    </table>
                    <hr/>
                </xsl:for-each>
            </body>
        </html>


    </xsl:template>

</xsl:stylesheet>