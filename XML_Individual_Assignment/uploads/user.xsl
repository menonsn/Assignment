﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="utf-8"/>
        <title>My Group</title>
      </head>
      <body>
        <div>
          <h1>Favorite Shortcuts</h1>
          <table border="1" width="100%">
            <tr>
              <th>First Name</th>
              <th>Last Name</th>
              <th>Bearcat ID</th>
              <th>Favorite Shortcut</th>
            </tr>
            <xsl:for-each select="/users/user">
              <tr>
                <td>
                  <xsl:value-of select="firstname"/>
                </td>
                <td>
                  <xsl:value-of select="lastname"/>
                </td>
                <td>
                  <xsl:value-of select="bearcatid"/>
                </td>
                <td>
                  <xsl:value-of select="favoriteshortcut"/>
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
