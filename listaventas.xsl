<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output version="5.0" method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/listaventas">
        <html>
            <head>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
            </head>
            <body>

                <h1>Lista de Ventas</h1>

                <section>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Cod. Factura</th>
                                <th>Importe</th>
                                <th>Comprador</th>
                                <th>Vendedor</th>
                                <th>Fecha factura</th>
                            </tr>
                        </thead>
                        <tbody>
                        <xsl:for-each select="venta">
                            <tr>
                                <td><xsl:value-of select="codfactura"/></td>
                                <td><xsl:value-of select="importe"/></td>
                                <td><xsl:value-of select="comprador"/></td>
                                <td><xsl:value-of select="vendedor"/></td>
                                <td><xsl:value-of select="fecha"/></td>
                            </tr>
                        </xsl:for-each>
                        </tbody>
                    </table>
                </section>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>