<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" />

  
    <xsl:template match="noticies.xml">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>PERICO ASSOCIATION - Tu informació de primera mà</title>
                <link rel="stylesheet" href="styles.css"/>
            </head>
            <body>
               
                <header>
                    <div id="logo">
                        <h1><a href="inicio.html">PERICO ASSOCIATION</a></h1>
                    </div>
                    <nav class="menu">
                        <ul>
                            <li><a href="inicio.html">Inicio</a></li>
                            <li><a href="servicios.html">Servicios</a></li>
                            <li><a href="precios.html">Precios</a></li>
                            <li><a href="contacto.html">Contacto</a></li>
                            <li><a href="sobrenosotros.html">Sobre nosotros</a></li>
                        </ul>
                    </nav>
                </header>

              
                <main>
                    <section class="info">
                        <h2>Noticies per a Pericos</h2>
                        <div class="grid-container">
                        
                            <xsl:for-each select="noticies/noticia">
                                <div class="card">
                                    <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="imatge"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="alt">
                                            <xsl:value-of select="titol"/>
                                        </xsl:attribute>
                                    </img>
                                    <h3>
                                        <xsl:value-of select="titol"/>
                                    </h3>
                                    <p>
                                        <xsl:value-of select="text"/>
                                    </p>
                                </div>
                            </xsl:for-each>
                        </div>
                    </section>
                </main>

             >
                <footer>
                    <ul>
                        <li><a href="#cookies">Cookies policy</a></li>
                        <li><a href="#privacy">Privacy policy</a></li>
                        <li><a href="#terms">Terms of service</a></li>
                        <li><a href="#shipping">Secure shipping</a></li>
                        <li><a href="#pay">Secure pay</a></li>
                        <li>Copyright © 2024 PERICO ASSOCIATION. All rights reserved.</li>
                    </ul>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
