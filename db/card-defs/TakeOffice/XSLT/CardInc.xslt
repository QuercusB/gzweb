<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="replace" match="text()" mode="replace">
		<xsl:param name="str" select="."/>
		<xsl:param name="search-for" select="'&#xA;'"/>
		<xsl:param name="replace-with">
			<xsl:element name="BR"/>
			<xsl:text>&#xA;</xsl:text>
		</xsl:param>
		<xsl:choose>
			<xsl:when test="contains($str, $search-for)">
				<xsl:value-of select="substring-before($str, $search-for)"/>
				<xsl:copy-of select="$replace-with"/>
				<xsl:call-template name="replace">
					<xsl:with-param name="str"
						select="substring-after($str, $search-for)"/>
					<xsl:with-param name="search-for" select="$search-for"/>
					<xsl:with-param name="replace-with" select="$replace-with"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$str"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="convertdatetime" match="text()" mode="replace">
		<xsl:param name="str" select="."/>
		<xsl:copy-of select="substring($str, 12, 8)"/>
		<xsl:text> </xsl:text>
		<xsl:copy-of select="substring($str, 6, 2)"/>
		<xsl:text>/</xsl:text>
		<xsl:copy-of select="substring($str, 9, 2)"/>
		<xsl:text>/</xsl:text>
		<xsl:copy-of select="substring($str, 1, 4)"/>
	</xsl:template>

	<xsl:template name="printfile">
		<xsl:param name="file" select="."/>
		<td class="field" width="70%">
			<xsl:value-of select="$file/MainInfo/@Name"/>
		</td>
		<td class="field" width="30%">
			<xsl:variable name ="VersionedFileID">
				<xsl:value-of select="$file/MainInfo/@FileID"/>
			</xsl:variable>
			<xsl:value-of select="//VersionedFileCard[@CardID=$VersionedFileID]/MainInfo/@CurrentVersion"/>
		</td>
	</xsl:template>

	<xsl:template name="printfilelist">
		<xsl:param name = "filelist" select="."/>
		<xsl:for-each select="$filelist/FileReferences/FileReferencesRow">
			<xsl:if test="position()=1">
				<xsl:text disable-output-escaping="yes">
					&lt;span class="header2"&gt;Document files&lt;/span&gt;
					&lt;table border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="black" width="100%"&gt;
						&lt;tr&gt;
							&lt;th class="tableheader" align="left"&gt;File&lt;/th&gt;
							&lt;th class="tableheader" align="left"&gt;Version&lt;/th&gt;
						&lt;/tr&gt;
				</xsl:text>
			</xsl:if>
			<tr>
				<xsl:variable name="CardFileID">
					<xsl:value-of select="@CardFileID"/>
				</xsl:variable>
				<xsl:call-template name="printfile">
					<xsl:with-param name="file" select="//CardFile[@CardID=$CardFileID]"/>
				</xsl:call-template>
			</tr>
			<xsl:if test="position()=last()">
				<xsl:text disable-output-escaping="yes">
					&lt;/table&gt;
					&lt;br/&gt;
					&lt;br/&gt;
				</xsl:text>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="%ServerUrl%/StorageServer/File.axd?BaseName=%BaseName%&amp;TransformID=B5344DA1-D28F-4024-8798-3FC3992C94B7"/>
				<title><xsl:value-of select="//CardInc[1]/MainInfo/@Name"/></title>
			</head>
			<body>
				<span class="header">
					<xsl:value-of select="//CardInc[1]/MainInfo/@Name"/>
				</span>
				<br></br>
				
				<span class="header2">Registration</span>
				<table border="0" width="100%">
					<tr>
						<td class="fieldheader" width="25%">Name:</td>
						<td colspan="3"><xsl:value-of select="//CardInc[1]/MainInfo/@Name"/></td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Type:</td>
						<td width="25%"><xsl:value-of select="//CardInc[1]/MainInfo/@DocType_Name"/></td>
						<td class="fieldheader" width="25%">Number:</td>
						<td><xsl:value-of select="//CardInc[1]/MainInfo/@FullNumber"/></td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Creation date:</td>
						<td width="25%">
							<xsl:call-template name="convertdatetime">
								<xsl:with-param name="str" select="//CardInc[1]/MainInfo/@CreationDate"/>
							</xsl:call-template>
						</td>
						<td class="fieldheader" width="25%">Registration date:</td>
						<td width="25%">
							<xsl:call-template name="convertdatetime">
								<xsl:with-param name="str" select="//CardInc[1]/MainInfo/@RegistrationDate"/>
							</xsl:call-template>
						</td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Registered by:</td>
						<td colspan="3"><xsl:value-of select="//CardInc[1]/MainInfo/@Reg_LName"/><xsl:if test="string-length(//CardInc[1]/MainInfo/@Reg_LName)!=0"> </xsl:if><xsl:value-of select="//CardInc[1]/MainInfo/@Reg_FName"/><xsl:if test="string-length(//CardInc[1]/MainInfo/@Reg_FName)!=0"> </xsl:if><xsl:value-of select="//CardInc[1]/MainInfo/@Reg_MName"/></td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Recipients:</td>
						<td colspan="3">
						<xsl:for-each select="//CardInc[1]/Employees/EmployeesRow[@Type=1]">
							<xsl:if test="@IsResponsible=1"><xsl:text disable-output-escaping="yes">&lt;span class="fieldheader"&gt;</xsl:text></xsl:if>
							<xsl:value-of select="@LastName"/><xsl:if test="string-length(@LastName)!=0"> </xsl:if><xsl:value-of select="@FirstName"/><xsl:if test="string-length(@FirstName)!=0"> </xsl:if><xsl:value-of select="@MiddleName"/>
							<xsl:if test="@IsResponsible=1"><xsl:text disable-output-escaping="yes">&lt;/span class="fieldheader"&gt;</xsl:text></xsl:if>
							<xsl:if test="position()!=last()">, </xsl:if>
						</xsl:for-each>
						</td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Performers:</td>
						<td colspan="3">
						<xsl:for-each select="//CardInc[1]/Employees/EmployeesRow[@Type=0]">
							<xsl:if test="@IsResponsible=1"><xsl:text disable-output-escaping="yes">&lt;span class="fieldheader"&gt;</xsl:text></xsl:if>
							<xsl:value-of select="@LastName"/><xsl:if test="string-length(@LastName)!=0"> </xsl:if><xsl:value-of select="@FirstName"/><xsl:if test="string-length(@FirstName)!=0"> </xsl:if><xsl:value-of select="@MiddleName"/>
							<xsl:if test="@IsResponsible=1"><xsl:text disable-output-escaping="yes">&lt;/span class="fieldheader"&gt;</xsl:text></xsl:if>
							<xsl:if test="position()!=last()">, </xsl:if>
						</xsl:for-each>
						</td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Document state:</td>
						<td colspan="3"><xsl:value-of select="//CardInc[1]/MainInfo/@StateName"/></td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Categories:</td>
						<td colspan="3">
							<xsl:for-each select="//CardInc[1]/Categories/CategoriesRow">
								<xsl:value-of select="@Name"/>
								<xsl:if test="position()!=last()">, </xsl:if>
							</xsl:for-each>
						</td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Controller:</td>
						<td width="25%">
							<xsl:value-of select="//CardInc[1]/MainInfo/@Control_LName"/>
							<xsl:if test="string-length(//CardInc[1]/MainInfo/@Control_LName)!=0"> </xsl:if>
							<xsl:value-of select="//CardInc[1]/MainInfo/@Control_FName"/>
							<xsl:if test="string-length(//CardInc[1]/MainInfo/@Control_FName)!=0"> </xsl:if>
							<xsl:value-of select="//CardInc[1]/MainInfo/@Control_MName"/>
						</td>
						<td class="fieldheader" width="25%">Control date:</td>
						<td width="25%">
							<xsl:call-template name="convertdatetime">
								<xsl:with-param name="str" select="//CardInc[1]/MainInfo/@ControlDate"/>
							</xsl:call-template>
						</td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Document property:</td>
						<td width="25%"><xsl:value-of select="//CardInc[1]/MainInfo/@DocProperty"/></td>
						<td colspan="2"><xsl:if test="//CardInc[1]/MainInfo/@Confidential=1">Confidential</xsl:if></td>
					</tr>
					<tr>
						<td colspan="4" class="fieldheader">Content:</td>
					</tr>
					<tr>
						<td colspan="4">
							<xsl:call-template name="replace">
								<xsl:with-param name="str" select="//CardInc[1]/MainInfo/@Digest"/>
							</xsl:call-template>
						</td>
					</tr>
				</table>
				<br></br>
				
				<span class="header2">Outgoing document data</span>
				<table border="0" width="100%">
					<tr>
						<td class="fieldheader" width="25%">Outgoing number:</td>
						<td ><xsl:value-of select="//CardInc[1]/MainInfo/@OutgoingNumber"/></td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Outgoing date:</td>
						<td>
							<xsl:call-template name="convertdatetime">
								<xsl:with-param name="str" select="//CardInc[1]/MainInfo/@OutgoingDate"/>
							</xsl:call-template>
						</td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Sender:</td>
						<td >
							<xsl:choose>
								<xsl:when test="string-length(//CardInc[1]/MainInfo/@SenderName)!=0"><xsl:value-of select="//CardInc[1]/MainInfo/@SenderName"/></xsl:when>
								<xsl:otherwise><xsl:value-of select="//CardInc[1]/MainInfo/@Sender_LName"/><xsl:if test="string-length(//CardInc[1]/MainInfo/@Sender_LName)!=0"> </xsl:if><xsl:value-of select="//CardInc[1]/MainInfo/@Sender_FName"/><xsl:if test="string-length(//CardInc[1]/MainInfo/@Sender_FName)!=0"> </xsl:if><xsl:value-of select="//CardInc[1]/MainInfo/@Sender_MName"/></xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Contact person:</td>
						<td >
							<xsl:choose>
								<xsl:when test="string-length(//CardInc[1]/MainInfo/@ContactName)!=0"><xsl:value-of select="//CardInc[1]/MainInfo/@ContactName"/></xsl:when>
								<xsl:otherwise><xsl:value-of select="//CardInc[1]/MainInfo/@Contact_LName"/><xsl:if test="string-length(//CardInc[1]/MainInfo/@Contact_LName)!=0"> </xsl:if><xsl:value-of select="//CardInc[1]/MainInfo/@Contact_FName"/><xsl:if test="string-length(//CardInc[1]/MainInfo/@Contact_FName)!=0"> </xsl:if><xsl:value-of select="//CardInc[1]/MainInfo/@Contact_MName"/></xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Organization:</td>
						<td ><xsl:value-of select="//CardInc[1]/MainInfo/@SenderOrg"/></td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Department:</td>
						<td ><xsl:value-of select="//CardInc[1]/MainInfo/@SenderDep"/></td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Phone:</td>
						<td ><xsl:value-of select="//CardInc[1]/MainInfo/@SenderPhone"/></td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">E-mail:</td>
						<td ><xsl:value-of select="//CardInc[1]/MainInfo/@SenderEmail"/></td>
					</tr>
				</table>
				<br></br>
				
				<span class="header2">Storing</span>
				<table border="0" width="100%">
					<tr>
						<td class="fieldheader" width="25%">Pages count:</td>
						<td width="25%"><xsl:value-of select="//CardInc[1]/MainInfo/@PageCount"/></td>
						<td class="fieldheader" width="25%">Attachments pages:</td>
						<td width="30%"><xsl:value-of select="//CardInc[1]/MainInfo/@AttachmentPageCount"/></td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Delivery type:</td>
						<td colspan="3"><xsl:value-of select="//CardInc[1]/MainInfo/@DeliveryType_Name"/></td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Filed in folder:</td>
						<td colspan="3"><xsl:value-of select="//CardInc[1]/MainInfo/@Folder_Name"/></td>
					</tr>
					<tr>
						<td class="fieldheader" width="25%">Filed in case:</td>
						<td colspan="3"><xsl:value-of select="//CardInc[1]/MainInfo/@Case_Name"/></td>
					</tr>
				</table>
				<br></br>
								
				<xsl:for-each select="//CardInc[1]/CardReferences/CardReferencesRow">
					<xsl:if test="position()=1">
						<xsl:text disable-output-escaping="yes">
							&lt;span class="header2"&gt;Card references&lt;/span&gt;
							&lt;table border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="black" width="100%"&gt;
								&lt;tr&gt;
									&lt;th class="tableheader" align="left"&gt;Type&lt;/th&gt;
									&lt;th class="tableheader" align="left"&gt;Card&lt;/th&gt;
									&lt;th class="tableheader" align="left"&gt;Creation date&lt;/th&gt;
									&lt;th class="tableheader" align="left"&gt;Created by&lt;/th&gt;
									&lt;th class="tableheader" align="left"&gt;Comments&lt;/th&gt;
								&lt;/tr&gt;
						</xsl:text>
					</xsl:if>
					<tr>
						<td class="field" width="10%"><xsl:value-of select="@LinkName"/></td>
						<td class="field" width="15%"><xsl:value-of select="@Description"/></td>
						<td class="field" width="25%">
							<xsl:call-template name="convertdatetime">
								<xsl:with-param name="str" select="@CreationDate"/>
							</xsl:call-template>
						</td>
						<td class="field" width="20%"><xsl:value-of select="@Create_LName"/><xsl:if test="string-length(@Create_LName)!=0"> </xsl:if><xsl:value-of select="@Create_FName"/><xsl:if test="string-length(@Create_FName)!=0"> </xsl:if><xsl:value-of select="@Create_MName"/></td>
						<td class="field" width="30%"><xsl:value-of select="@Comments"/></td>
					</tr>
					<xsl:if test="position()=last()">
						<xsl:text disable-output-escaping="yes">
							&lt;/table&gt;
							&lt;br/&gt;
						</xsl:text>
					</xsl:if>
				</xsl:for-each>
				<xsl:variable name="FileListID">
					<xsl:value-of select="//CardInc[1]/MainInfo/@FilesID"/>
				</xsl:variable>
				<xsl:call-template name="printfilelist">
					<xsl:with-param name="filelist" select="//FileList[@CardID=$FileListID]"/>
				</xsl:call-template>
				<xsl:for-each select="//CardInc[1]/Properties/PropertiesRow[(@Hidden=0 or not(@Hidden)) and @ParamType!=19]">
					<xsl:if test="position()=1">
						<xsl:text disable-output-escaping="yes">
							&lt;span class="header2"&gt;Document properties&lt;/span&gt;
							&lt;table border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="black" width="100%"&gt;
								&lt;tr&gt;
									&lt;th class="tableheader" align="left"&gt;#&lt;/th&gt;
									&lt;th class="tableheader" align="left"&gt;Name&lt;/th&gt;
									&lt;th class="tableheader" align="left"&gt;Value&lt;/th&gt;
								&lt;/tr&gt;
						</xsl:text>
					</xsl:if>
					<tr>
						<td class="field" width="10%"><xsl:value-of select="@Order"/></td>
						<td class="field" width="30%"><xsl:value-of select="@Name"/></td>
						<td class="field" width="60%"><xsl:value-of select="@DisplayValue"/></td>
					</tr>
					<xsl:if test="position()=last()">
						<xsl:text disable-output-escaping="yes">
							&lt;/table&gt;
							&lt;br/&gt;
						</xsl:text>
					</xsl:if>
				</xsl:for-each>

				<xsl:for-each select="//CardInc[1]/TransferLog/TransferLogRow">
					<xsl:if test="position()=1">
						<xsl:text disable-output-escaping="yes">
							&lt;span class="header2"&gt;Document transfer log&lt;/span&gt;
							&lt;table border="0" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" bordercolor="black" width="100%"&gt;
								&lt;tr&gt;
									&lt;th class="tableheader" align="left"&gt;Date&lt;/th&gt;
									&lt;th class="tableheader" align="left"&gt;Transfer type&lt;/th&gt;
									&lt;th class="tableheader" align="left"&gt;Document location&lt;/th&gt;
									&lt;th class="tableheader" align="left"&gt;Document type&lt;/th&gt;
									&lt;th class="tableheader" align="left"&gt;Comment&lt;/th&gt;
								&lt;/tr&gt;
						</xsl:text>
					</xsl:if>
					<tr>
						<td class="field" width="15%">
							<xsl:call-template name="convertdatetime">
								<xsl:with-param name="str" select="@TransferDate"/>
							</xsl:call-template>
						</td>
						<td class="field" width="10%">
							<xsl:if test="@IsReceived=0 or not(@IsReceived)">Sent</xsl:if>
							<xsl:if test="@IsReceived=1">Received</xsl:if>
						</td>
						<td class="field" width="30%">
							<xsl:if test="@IsReceived=0 or not(@IsReceived)">
								<xsl:if test="@ToEmployee">
									<xsl:value-of select="@To_LName"/>
									<xsl:if test="string-length(@To_LName)!=0"> </xsl:if>
									<xsl:value-of select="@To_FName"/>
									<xsl:if test="string-length(@To_FName)!=0"> </xsl:if>
									<xsl:value-of select="@To_MName"/>
								</xsl:if>
								<xsl:if test="not(@ToEmployee)">
									<xsl:value-of select="@To_DepName"/>
								</xsl:if>
							</xsl:if>
							<xsl:if test="@IsReceived=1">
								<xsl:value-of select="@From_LName"/>
								<xsl:if test="string-length(@From_LName)!=0"> </xsl:if>
								<xsl:value-of select="@From_FName"/>
								<xsl:if test="string-length(@From_FName)!=0"> </xsl:if>
								<xsl:value-of select="@From_MName"/>
							</xsl:if>
						</td>
						<td class="field" width="10%">
							<xsl:if test="@IsCopy=0 or not(@IsCopy)">Original</xsl:if>
							<xsl:if test="@IsCopy=1">Copy</xsl:if>
						</td>
						<td class="field" width="35%">
							<xsl:value-of select="@Comments"/>
						</td>
					</tr>
					<xsl:if test="position()=last()">
						<xsl:text disable-output-escaping="yes">
							&lt;/table&gt;
							&lt;br/&gt;
						</xsl:text>
					</xsl:if>
				</xsl:for-each>

				<p class="smalltext">
				In order to change the printing template, edit Print Template for the Incoming Document card type or create a new one based on this template.
				<br>DocsVision © 2002-2010. All rights reserved.</br>
				</p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
