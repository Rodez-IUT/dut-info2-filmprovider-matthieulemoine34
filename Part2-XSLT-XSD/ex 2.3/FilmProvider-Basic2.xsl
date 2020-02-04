<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/films">
    <html>
        <head>
            <title>Films</title>
        </head>
        <body>
            <h1>Films</h1>
            <table>
                <thead>
                    <tr>
                        <th>Titre</th><th>Résumé</th><th>Réalisateur</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="film">
                        <xsl:variable name="id"><xsl:value-of select="attribute::id_realisateur"></xsl:value-of></xsl:variable>
                        <tr>
                            <td><xsl:value-of select="titre"/></td>
                            <td><xsl:value-of select="resume/text"/></td>
                            <td><xsl:value-of select="/films/realisateur[@id_realisateur = $id]/prenom"/>_<xsl:value-of select="/films/realisateur[@id_realisateur = $id]/nom"/></td>
                        </tr>

                    </xsl:for-each>
                </tbody>
            </table>
        </body>
    </html>


</xsl:template>

</xsl:stylesheet>