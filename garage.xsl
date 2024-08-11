<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:gb="http://www.example.com/garage">

    <xsl:output method="html" indent="yes"/>

    <!-- Root template -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Garage Listings</title>
                <style>
                    html, body {
                        height: 100%;
                        margin: 0;
                    }

                    body {
                        display: flex;
                        flex-direction: column;
                    }

                    .container {
                        flex: 1;
                    }

                    header, footer {
                        background-color: #333;
                        color: white;
                        padding: 10px 0;
                        text-align: center;
                    }

                    header h1, footer p {
                        margin: 0;
                    }

                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin-bottom: 20px;
                    }

                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }

                    th {
                        background-color: #f2f2f2;
                    }

                    .book-button {
                        display: inline-block;
                        padding: 10px 20px;
                        margin: 5px;
                        color: white;
                        background-color: #28a745;
                        text-decoration: none;
                        border-radius: 5px;
                        text-align: center;
                    }

                    .book-button:hover {
                        background-color: #218838;
                    }
                </style>
            </head>
            <body>
                <header>
                    <h1>Garage Booking Website</h1>
                </header>

                <div class="container">
                    <h2>Garage Listings</h2>
                    <table>
                        <tr>
                            <th>Name</th>
                            <th>Location</th>
                            <th>Price</th>
                            <th>Availability</th>
                            <th>Action</th>
                        </tr>
                        <xsl:for-each select="gb:garages/gb:garage">
                            <tr>
                                <td><xsl:value-of select="gb:name"/></td>
                                <td><xsl:value-of select="gb:location"/></td>
                                <td><xsl:value-of select="gb:price"/></td>
                                <td><xsl:value-of select="gb:availability"/></td>
                                <td>
                                    <!-- Handle href values correctly -->
                                    <a href="book.html?garage={gb:name}" class="book-button">Book</a>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

                <footer>
                    <p>&#169; 2024 Garage Booking Website</p>
                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
