<?xml version="1.0" encoding="ISO-8859-1"?>

<xslt:stylesheet version="1.0"
xmlns:xslt="http://www.w3.org/1999/XSL/Transform">

  <xslt:template match="/">
  <html>
    <head>
      <title>My Playlist</title>
      <style>
        BODY, A, LI, TD  {
          font-family: 'Verdana', 'Arial', sans-serif; 
          font-size: 9pt; 
          color : black;
        }
      </style>
    </head>
    <body>
      <h1>My Playlist</h1>
	  <table width="75%" bgcolor="#EEEEEE" cellpadding="3" cellspacing="1" border="0">
        <tr>
          <td><b>Artist</b> (genre)</td>
          <td><b>Album</b> (year)</td>
          <td><b>Song</b> (length)</td>  
        </tr>
<xslt:for-each select="playlist/Music">
		<tr>
		<td><xslt:value-of select="Artist" /> (<xslt:value-of select="@genre" />)</td>
		<td><xslt:value-of select="Album" /> (<xslt:value-of select="@year" />)</td>
		<td><xslt:value-of select="Song" /> (<xslt:value-of select="@length" />)</td>
		</tr>
</xslt:for-each>
	  </table>
	</body>
  </html>
  </xslt:template>
</xslt:stylesheet>