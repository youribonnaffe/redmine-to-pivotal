<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output omit-xml-declaration="yes" indent="yes"/>

    <xsl:template match="node()|@*">
    </xsl:template>

    <xsl:template match="issues">
        <external_stories type="array">
            <xsl:apply-templates select="@*|node()"/>
        </external_stories>
    </xsl:template>

    <xsl:template match="issue">
        <external_story>
            <xsl:apply-templates select="@*|node()"/>
        </external_story>
    </xsl:template>

    <xsl:template match="issue/id">
        <external_id>
            <xsl:copy-of select="node()"/>
        </external_id>
        <story_type>bug</story_type>
        <requested_by>Redmine</requested_by>
    </xsl:template>

    <xsl:template match="issue/subject">
        <name>
            <xsl:copy-of select="node()"/>
        </name>
    </xsl:template>

    <xsl:template match="issue/description">
        <description>
            <xsl:copy-of select="node()"/>
        </description>
    </xsl:template>

</xsl:stylesheet>
