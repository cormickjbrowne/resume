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
										<fo:block text-align="center">
												<fo:inline>
														<xsl:value-of select="resume/name/first"/>
												</fo:inline>
												<fo:inline>&#160;</fo:inline>
												<fo:inline>
														<xsl:value-of select="resume/name/last"/>
												</fo:inline>
										</fo:block>
										<fo:block text-align="center">
												<fo:inline>
														<xsl:value-of select="resume/email"/>
												</fo:inline>
												<fo:inline space-start="5px" space-end="5px">&#183;</fo:inline>
												<fo:inline>
														<xsl:value-of select="resume/phone/number"/>
												</fo:inline>
										</fo:block>
										<fo:block>
												<fo:inline>PROFILE</fo:inline>
										</fo:block>
										<fo:block>
												<fo:inline>
														<xsl:value-of select="resume/profile"/>
												</fo:inline>
										</fo:block>
										<fo:block>
												<fo:inline>PROFESSIONAL EXPERIENCE</fo:inline>
										</fo:block>
										<xsl:for-each select="resume/work-experience/job">
												<fo:table>
														<fo:table-body>
																<fo:table-row>
																		<fo:table-cell>
																				<fo:block>
																						<fo:inline>
																								<xsl:value-of select="company/name"/>
																						</fo:inline>
																				</fo:block>
																					<fo:block>
																						<fo:inline>
																								<xsl:value-of select="role"/>
																						</fo:inline>
																				</fo:block>
																		</fo:table-cell>
																		<fo:table-cell>
																				<fo:block>
																						<fo:inline>
																								<xsl:value-of select="duration/start-date/month"/>
																						</fo:inline>
																						<fo:inline>&#160;</fo:inline>
																						<fo:inline>
																								<xsl:value-of select="duration/start-date/year"/>
																						</fo:inline>
																				</fo:block>
																					<fo:block>
																						<fo:inline>
																								<xsl:value-of select="role"/>
																						</fo:inline>
																				</fo:block>
																		</fo:table-cell>
																</fo:table-row>
																<fo:table-row>
																		<fo:table-cell number-columns-spanned="2">
																				<fo:list-block>
																						<xsl:for-each select="notes/note">
																								<fo:list-item>
																										<fo:list-item-label start-indent="15px">
																												<fo:block>
																														<fo:inline>&#183;</fo:inline>
																												</fo:block>
																										</fo:list-item-label>
																										<fo:list-item-body start-indent="25px">
																												<fo:block>
																														<fo:inline>
																																<xsl:value-of select="text"/>
																														</fo:inline>
																												</fo:block>
																										</fo:list-item-body>
																								</fo:list-item>
																						</xsl:for-each>
																				</fo:list-block>
																		</fo:table-cell>
																</fo:table-row>
														</fo:table-body>
												</fo:table>
										</xsl:for-each>
										<fo:block>TECHNICAL SKILLS</fo:block>
										<fo:table>
												<fo:table-body>
														<xsl:for-each select="resume/technical-skills/skill-set">
																<fo:table-row>
																		<fo:table-cell>
																				<fo:block>
																						<fo:inline>
																								<xsl:value-of select="type"/>
																						</fo:inline>
																						<fo:inline>:</fo:inline>
																				</fo:block>
																		</fo:table-cell>
																		<fo:table-cell>
																				<fo:block>
																						<xsl:for-each select="list/list-item">
																								<fo:inline>
																										<xsl:value-of select="value"/>
																								</fo:inline>
																								<fo:inline>, </fo:inline>
																						</xsl:for-each>
																				</fo:block>
																		</fo:table-cell>
																</fo:table-row>
														</xsl:for-each>
												</fo:table-body>
										</fo:table>
										<fo:block>EDUCATION</fo:block>
										<fo:table>
												<fo:table-body>
														<fo:table-row>
																<fo:table-cell number-columns-spanned="2">
																		<fo:block>
																				<fo:inline>
																						<xsl:value-of select="resume/education/school/name"/>
																				</fo:inline>
																				<fo:inline>, </fo:inline>
																				<fo:inline>
																						<xsl:value-of select="resume/education/school/location/city"/>
																				</fo:inline>
																				<fo:inline>, </fo:inline>
																				<fo:inline>
																						<xsl:value-of select="resume/education/school/location/state"/>
																				</fo:inline>
																		</fo:block>
																</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
																<fo:table-cell>
																		<fo:block>
																				<fo:inline>
																						<xsl:value-of select="resume/education/school/degree"/>
																				</fo:inline>
																		<fo:inline> in </fo:inline>
																		<fo:inline>
																						<xsl:value-of select="resume/education/school/major"/>
																				</fo:inline>
																		</fo:block>
																</fo:table-cell>
																<fo:table-cell>
																		<fo:block>
																				<fo:inline>
																						<xsl:value-of select="resume/education/school/graduation-date/month"/>
																				</fo:inline>
																				<fo:inline>&#160;</fo:inline>
																				<fo:inline>
																						<xsl:value-of select="resume/education/school/graduation-date/year"/>
																				</fo:inline>
																		</fo:block>
																</fo:table-cell>
														</fo:table-row>
												</fo:table-body>
										</fo:table>
								</fo:flow>
						</fo:page-sequence>
				</fo:root>
		</xsl:template>

</xsl:stylesheet>
