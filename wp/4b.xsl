
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body> <xsl:apply-templates/>
</body>
</html>
</xsl:template>
<xsl:template match="student">
<xsl:if test="usn='1AT10CS002' ">
<h2>STUDENT</h2>
USN:<xsl:value-of select="usn"/><br/> 
Name:<xsl:value-of select="name"/><br/> 
College:<xsl:value-of select="college"/><br/> 
Branch:<xsl:value-of select="branch" /><br/> 
Year of Join:<xsl:value-of select="yoj"/><br/> 
E-Mail:<xsl:value-of select="email"/><br/>
</xsl:if>
</xsl:template>
<xsl:template match="text()"/>
</xsl:stylesheet>
