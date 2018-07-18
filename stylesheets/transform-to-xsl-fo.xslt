<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

		<xsl:template match="/">
				<fo:root>
						<fo:layout-master-set>
								<fo:simple-page-master master-name="all-pages-page-master">
										<fo:region-body
												region-name="xsl-region-body"
												margin-left="1in"
												margin-right="1in"
												margin-top="1in"
												margin-bottom="1in"
												/>
								</fo:simple-page-master>
								<fo:page-sequence-master master-name="all-pages-sequence-master">
										<fo:single-page-master-reference master-reference="all-pages-page-master"/>
								</fo:page-sequence-master>
						</fo:layout-master-set>
						<fo:page-sequence master-reference="all-pages-sequence-master">
								<fo:flow flow-name="xsl-region-body" font-family="Times New Roman" font-size="11px">
										<fo:block-container space-after="10px">
												<fo:block text-align="center" font-size="16px" font-weight="bold">
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
																<xsl:value-of select="concat('(', substring(resume/phone/number, 1, 3), ') ', substring(resume/phone/number, 4, 3), '-', substring(resume/phone/number, 7, 4))"/>
														</fo:inline>
												</fo:block>
										</fo:block-container>
										<fo:block-container space-after="20px">
												<fo:block font-weight="bold">
														<fo:inline>PROFILE</fo:inline>
												</fo:block>
												<fo:block>
														<fo:inline>
																<xsl:value-of select="resume/profile"/>
														</fo:inline>
												</fo:block>
										</fo:block-container>
										<fo:block-container space-after="20px">
												<fo:block font-weight="bold">
														<fo:inline>PROFESSIONAL EXPERIENCE</fo:inline>
												</fo:block>
												<xsl:for-each select="resume/work-experience/job">
														<fo:table space-after="10px">
																<fo:table-column column-width="75%"/>
																<fo:table-column column-width="25%"/>
																<fo:table-body>
																		<fo:table-row>
																				<fo:table-cell>
																						<fo:block font-weight="bold">
																								<fo:inline>
																										<xsl:value-of select="company/name"/>
																								</fo:inline>
																						</fo:block>
																						<fo:block font-style="italic">
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
																										<xsl:value-of select="company/location/city"/>
																								</fo:inline>
																								<fo:inline>, </fo:inline>
																								<fo:inline>
																										<xsl:value-of select="company/location/state"/>
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
										</fo:block-container>
										<fo:block-container space-after="20px">
												<fo:block font-weight="bold">TECHNICAL SKILLS</fo:block>
												<fo:table>
														<fo:table-column column-width="30%"/>
														<fo:table-column column-width="70%"/>
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
																										<xsl:if test="position()!=1">
																												<fo:inline>, </fo:inline>
																										</xsl:if>
																										<fo:inline>
																												<xsl:value-of select="value"/>
																										</fo:inline>
																								</xsl:for-each>
																						</fo:block>
																				</fo:table-cell>
																		</fo:table-row>
																</xsl:for-each>
														</fo:table-body>
												</fo:table>
										</fo:block-container>
										<fo:block-container space-after="20px">
												<fo:block font-weight="bold">EDUCATION</fo:block>
												<fo:table>
														<fo:table-column column-width="85%"/>
														<fo:table-column column-width="15%"/>
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
																				<fo:block font-style="italic">
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
										</fo:block-container>
								</fo:flow>
						</fo:page-sequence>
				</fo:root>
		</xsl:template>

</xsl:stylesheet>
