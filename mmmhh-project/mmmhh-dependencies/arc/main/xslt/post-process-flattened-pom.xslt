<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes" />
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()" />
		</xsl:copy>
	</xsl:template>
	<xsl:template
		match="/project/dependencyManagement/dependencies/dependency/version/text()[. = '${revision}']">
		<xsl:text>FOO</xsl:text>
	</xsl:template>
</xsl:stylesheet>