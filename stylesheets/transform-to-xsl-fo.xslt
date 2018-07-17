<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

		<xsl:template match="/">
				<fo:root>
						<fo:layout-master-set>
								<fo:simple-page-master master-name="all-pages-page-master">
										<fo:region-body region-name="xsl-region-body"/>
								</fo:simple-page-master>
								<fo:page-sequence-master master-name="all-pages-sequence-master">
									<fo:single-page-master-reference master-reference="all-pages-page-master"/>
								</fo:page-sequence-master>
						</fo:layout-master-set>
						<fo:page-sequence master-reference="all-pages-sequence-master">
								<fo:flow flow-name="xsl-region-body">
										<fo:block>
												<xsl:value-of select="resume/name/first"/>
												<xsl:value-of select="resume/name/last"/>
										</fo:block>
								</fo:flow>
						</fo:page-sequence>
				</fo:root>
		</xsl:template>

</xsl:stylesheet>
