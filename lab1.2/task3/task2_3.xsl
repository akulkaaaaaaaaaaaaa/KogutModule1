<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Student Admission Details</title>
                <style>
                    body { font-family: Arial, sans-serif; margin: 20px; }
                    table { border-collapse: collapse; width: 50%; margin: auto; }
                    th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
                    th { background-color: #f4f4f4; }
                    caption { font-size: 1.5em; font-weight: bold; margin-bottom: 10px; }
                </style>
            </head>
            <body>
                <table>
                    <caption>Admission Details</caption>
                    <tr>
                        <th>First Name</th>
                        <td><xsl:value-of select="admission/student/firstName"/></td>
                    </tr>
                    <tr>
                        <th>Last Name</th>
                        <td><xsl:value-of select="admission/student/lastName"/></td>
                    </tr>
                    <tr>
                        <th>Middle Name</th>
                        <td><xsl:value-of select="admission/student/middleName"/></td>
                    </tr>
                    <tr>
                        <th>Previous Institution</th>
                        <td><xsl:value-of select="admission/student/previousInstitution"/></td>
                    </tr>
                    <tr>
                        <th>Faculty</th>
                        <td><xsl:value-of select="admission/student/faculty"/></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
