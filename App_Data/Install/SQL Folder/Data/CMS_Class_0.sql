SET IDENTITY_INSERT [CMS_Class] ON
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1, N'Culture', N'cms.culture', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Culture">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="CultureID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="CultureName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CultureCode">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CultureShortName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CultureGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="CultureLastModified" type="xs:dateTime" />
              <xs:element name="CultureAlias" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Culture" />
      <xs:field xpath="CultureID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="CultureID" fieldcaption="CultureID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="a7cdc074-6681-4037-9c7c-168f92de6ec0"><settings><controlname>labelcontrol</controlname></settings></field><field column="CultureName" fieldcaption="CultureName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5523daf0-292c-462e-9b45-a8aff0e555d6" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CultureCode" fieldcaption="CultureCode" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d9cfc140-95f9-4fc4-b123-0b4b5bdaf347"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CultureShortName" fieldcaption="CultureShortName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c5669759-7b7d-47ae-8aeb-4e1e33490105"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CultureGUID" fieldcaption="CultureGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="17a5237f-e3ca-4052-848d-cab4b5423494"><settings><controlname>unknown</controlname></settings></field><field column="CultureLastModified" fieldcaption="CultureLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="29623bff-09c2-4789-86c2-dd326b85ef20"><settings><controlname>calendarcontrol</controlname></settings></field><field column="CultureAlias" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="1651cf8a-4c78-4127-b925-1e082b4c4978" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_Culture', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', '21ea0bc0-a9b7-4888-8255-9bd5255e2ef0', 0, 1, 0, N'', 1, N'CultureName', N'0', N'', N'CultureLastModified', N'<search><item searchable="True" name="CultureID" tokenized="False" content="False" id="57080a99-a409-4b59-bbed-42f0aa2fd14a" /><item searchable="False" name="CultureName" tokenized="True" content="True" id="2e3906db-73cc-4009-9b6a-6bab52ccdb88" /><item searchable="False" name="CultureCode" tokenized="True" content="True" id="b9bac9ed-fb4f-4459-9a5a-5589a0540d94" /><item searchable="False" name="CultureShortName" tokenized="True" content="True" id="74078f24-ef01-40a2-8b85-278ad6ff0d82" /><item searchable="False" name="CultureGUID" tokenized="False" content="False" id="60df829a-fdb0-4e9e-951a-8976d2da034f" /><item searchable="True" name="CultureLastModified" tokenized="False" content="False" id="b01264eb-deba-4e77-9fad-2265784c0747" /><item searchable="False" name="CultureAlias" tokenized="True" content="True" id="564de803-d7d7-46e0-8cde-7b676d78dfa0" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (52, N'Site', N'cms.site', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Site">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SiteID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SiteName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SiteDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SiteDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SiteStatus">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="20" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SiteDomainName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SiteDefaultStylesheetID" type="xs:int" minOccurs="0" />
              <xs:element name="SiteDefaultVisitorCulture" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SiteDefaultEditorStylesheet" type="xs:int" minOccurs="0" />
              <xs:element name="SiteGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="SiteLastModified" type="xs:dateTime" />
              <xs:element name="SiteIsOffline" type="xs:boolean" minOccurs="0" />
              <xs:element name="SiteOfflineRedirectURL" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SiteOfflineMessage" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Site" />
      <xs:field xpath="SiteID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SiteID" fieldcaption="SiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="8f1d2a8a-6f44-41ef-899b-d0dd37b82cab" translatefield="true"><settings><controlname>labelcontrol</controlname></settings></field><field column="SiteName" fieldcaption="SiteName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="4f69f0f6-e786-435f-83f1-9f771fa2f726" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SiteDisplayName" fieldcaption="SiteDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="24ef1161-4c27-4bea-8b37-36acc59cff34" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SiteDescription" fieldcaption="SiteDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6c445911-e93e-4449-bb1f-9cc4048e788f" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SiteStatus" fieldcaption="SiteStatus" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="20" publicfield="false" guid="4683b075-8db9-4411-bf14-563e795cdd95" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SiteDomainName" fieldcaption="SiteDomainName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="400" publicfield="false" guid="4a553b11-0d6a-44c5-8e2c-7bef0ce6587d" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SiteDefaultStylesheetID" fieldcaption="SiteDefaultStylesheetID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3f4474c6-9673-4bbc-8782-d4d24a38826b" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SiteDefaultVisitorCulture" fieldcaption="SiteDefaultVisitorCulture" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="ddfbfe8d-3b87-4785-b147-24a28f107937" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SiteDefaultEditorStylesheet" fieldcaption="SiteDefaultEditorStylesheet" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0c91ee48-7b00-4ece-ab38-39e20fd64788" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SiteGUID" fieldcaption="SiteGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="de9b4fc5-3c93-4751-9b10-061edd14a3d8" visibility="none"><settings><controlname>directuploadcontrol</controlname><Autoresize_Hashtable>True</Autoresize_Hashtable><Extensions>inherit</Extensions></settings></field><field column="SiteLastModified" fieldcaption="SiteLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="90802d29-9156-46b9-891a-4612618d8ea5" translatefield="true"><settings><controlname>calendarcontrol</controlname></settings></field><field column="SiteIsOffline" fieldcaption="Site is offline" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="48a74857-910c-4422-b1e1-beeaf05bae51" visibility="none" translatefield="true"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="SiteOfflineRedirectURL" fieldcaption="Offline redirect URL" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="400" publicfield="false" spellcheck="false" guid="92291451-c76c-46ad-8e3a-7c6d4611d01a" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SiteOfflineMessage" fieldcaption="Offline message" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="e9dc8486-78b6-46a3-8ea8-635ea7a865d6" visibility="none" translatefield="true"><settings><ShowItalic>True</ShowItalic><ShowCode>True</ShowCode><ShowColor>True</ShowColor><DisplayEmailTabSetting>False</DisplayEmailTabSetting><MediaDialogConfiguration>True</MediaDialogConfiguration><ShowImage>True</ShowImage><ShowStrike>True</ShowStrike><ShowBold>True</ShowBold><ShowAdvancedUrl>False</ShowAdvancedUrl><ShowUrl>True</ShowUrl><UsePromptDialog>True</UsePromptDialog><ShowUnderline>True</ShowUnderline><ShowAdvancedImage>False</ShowAdvancedImage><Autoresize_Hashtable>True</Autoresize_Hashtable><Dialogs_Content_Hide>False</Dialogs_Content_Hide><DisplayAutoresize>True</DisplayAutoresize><controlname>bbeditorcontrol</controlname><ShowQuote>True</ShowQuote></settings></field></form>', N'', N'', N'', N'CMS_Site', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:29', '8f2f80f1-13cb-4050-bc10-14a45b09f4e0', 0, 1, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (56, N'Role', N'cms.Role', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Role">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="RoleID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="RoleDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="RoleName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="RoleDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SiteID" type="xs:int" minOccurs="0" />
              <xs:element name="RoleGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="RoleLastModified" type="xs:dateTime" />
              <xs:element name="RoleGroupID" type="xs:int" minOccurs="0" />
              <xs:element name="RoleIsGroupAdministrator" type="xs:boolean" minOccurs="0" />
              <xs:element name="RoleIsDomain" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Role" />
      <xs:field xpath="RoleID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="RoleID" fieldcaption="RoleID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="0c8cc1de-1c82-4596-b6d0-b2c60bcad3b7"><settings><controlname>labelcontrol</controlname></settings></field><field column="RoleDisplayName" fieldcaption="RoleDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="c5f83fe3-f362-431f-80be-2d40122e469e" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RoleName" fieldcaption="RoleName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="918120c1-6d6b-42f5-be30-37f91af11666"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RoleDescription" fieldcaption="RoleDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c465483d-4158-42e0-bb25-0c274769c74a" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="SiteID" fieldcaption="SiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7238f49e-49eb-46a7-9dc4-811c3ca7d524" visibility="none"><settings><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field><field column="RoleGUID" fieldcaption="RoleGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ad0f25d2-15b7-4eae-86bd-fc64538c45f9"><settings><controlname>labelcontrol</controlname></settings></field><field column="RoleLastModified" fieldcaption="RoleLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="11b1bf06-0088-48a8-87d6-cffafff290ca"><settings><controlname>calendarcontrol</controlname></settings></field><field column="RoleGroupID" fieldcaption="RoleGroupID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="bf9ad143-276c-4860-8005-adf080f77aac"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RoleIsGroupAdministrator" fieldcaption="RoleIsGroupAdministrator" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e4477aee-81e5-475f-90e2-7bb416b9f412" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="RoleIsDomain" fieldcaption="RoleIsDomain" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="aa3f60b2-8781-44d4-8705-d264d514883c"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_Role', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120511 15:15:03', '1dba5a45-954e-442c-8a00-41927c501f2b', 0, 1, 0, N'', 1, N'RoleName', N'RoleDisplayName', N'', N'0', N'<search><item searchable="True" name="RoleID" tokenized="False" content="False" id="fe7f1fac-37a8-4c3a-845e-c9df13507bee" /><item searchable="False" name="RoleDisplayName" tokenized="True" content="True" id="98796a0f-f95f-45e6-b261-6549bbb0be1c" /><item searchable="False" name="RoleName" tokenized="True" content="True" id="8201b0ee-6000-4002-a8b8-c59da6b2b2dc" /><item searchable="False" name="RoleDescription" tokenized="True" content="True" id="227ed53c-06eb-4b7f-bc93-407e5e44ef9d" /><item searchable="True" name="SiteID" tokenized="False" content="False" id="491c13dd-fdaa-414a-b89d-2dbb34e6f722" /><item searchable="False" name="RoleGUID" tokenized="False" content="False" id="44e0ac15-b8b5-4cd2-a001-01813d6d1978" /><item searchable="True" name="RoleLastModified" tokenized="False" content="False" id="7cbcbcee-db41-4163-9cdc-42d0df906939" /><item searchable="True" name="RoleGroupID" tokenized="False" content="False" id="c99c3303-ca48-43e8-b3fb-f5dd355a086a" /><item searchable="True" name="RoleIsGroupAdministrator" tokenized="False" content="True" id="5a051762-510e-4ac7-b1ce-91fd8ae4afac" /><item searchable="True" name="RoleIsDomain" tokenized="False" content="True" id="377d9990-4ad0-4458-af7a-dd65333f0b59" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (59, N'User', N'cms.user', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_User">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="UserID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="UserName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FirstName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MiddleName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LastName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FullName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="Email" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserPassword">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PreferredCultureCode" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="10" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PreferredUICultureCode" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="10" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserEnabled" type="xs:boolean" />
              <xs:element name="UserIsEditor" type="xs:boolean" />
              <xs:element name="UserIsGlobalAdministrator" type="xs:boolean" />
              <xs:element name="UserIsExternal" type="xs:boolean" minOccurs="0" />
              <xs:element name="UserPasswordFormat" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="10" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserCreated" type="xs:dateTime" minOccurs="0" />
              <xs:element name="LastLogon" type="xs:dateTime" minOccurs="0" />
              <xs:element name="UserStartingAliasPath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="UserLastModified" type="xs:dateTime" />
              <xs:element name="UserLastLogonInfo" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserIsHidden" type="xs:boolean" minOccurs="0" />
              <xs:element name="UserVisibility" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserIsDomain" type="xs:boolean" minOccurs="0" />
              <xs:element name="UserHasAllowedCultures" type="xs:boolean" minOccurs="0" />
              <xs:element name="UserSiteManagerDisabled" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_User" />
      <xs:field xpath="UserID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="UserID" fieldcaption="UserID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="153b1cec-1580-43ae-adf8-ca0e4879d168" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserName" fieldcaption="UserName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="aa4122b7-db14-48a5-885e-07a242f84702" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="FirstName" fieldcaption="FirstName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="60af25ea-ad95-49ba-a446-2ea754cd10be" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="MiddleName" fieldcaption="MiddleName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="bc86d726-a42d-4401-b92a-227e8e280293" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="LastName" fieldcaption="LastName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="67305fcf-928a-45ea-8e29-735f17da0972"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FullName" fieldcaption="FullName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="5c3003d6-de76-4e96-aca4-cf1efa86b3fa" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="Email" fieldcaption="Email" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" spellcheck="false" guid="fcef0fb3-6145-48ed-8f41-e28b71a665a8" visibility="none"><settings><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field><field column="UserPassword" fieldcaption="UserPassword" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="adaad374-af5a-4e1b-afc7-72b4fb798d19"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PreferredCultureCode" fieldcaption="PreferredCultureCode" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="10" publicfield="false" guid="03d85a82-c928-4967-b793-f33bedb426be"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PreferredUICultureCode" fieldcaption="PreferredUICultureCode" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="10" publicfield="false" guid="d0a047c0-ea96-4422-af97-fff6c35a80de"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserEnabled" fieldcaption="UserEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d5d58e7d-6b71-4a51-9226-d7ce166e8580"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserIsEditor" fieldcaption="UserIsEditor" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9804fc8b-7b25-4c23-b0f4-f6c57b7ae77f"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserIsGlobalAdministrator" fieldcaption="UserIsGlobalAdministrator" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4de4df49-2e8d-4bb5-9fb9-a3da2a9040ba"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserIsExternal" fieldcaption="UserIsExternal" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="def5feec-077b-4c26-8c4a-005a4a8d82d8"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserPasswordFormat" fieldcaption="UserPasswordFormat" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="10" publicfield="false" guid="d3f178a2-6df1-4651-bec5-864be986332a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserCreated" fieldcaption="UserCreated" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d75ebe3e-3d7d-44ab-af34-0ee947c3a3eb"><settings><controlname>calendarcontrol</controlname></settings></field><field column="LastLogon" fieldcaption="LastLogon" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8bb80186-0c9b-45cb-91d1-cbec14b8fdc7"><settings><controlname>calendarcontrol</controlname></settings></field><field column="UserStartingAliasPath" fieldcaption="UserStartingAliasPath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="e2152255-6ad0-4b88-8497-2b505c64d23c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserGUID" fieldcaption="UserGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="89fae932-ca98-420b-92a0-0fc146856ce3"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserLastModified" fieldcaption="UserLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e1f9c8fd-8c5d-415c-ad0e-935034d751de"><settings><controlname>calendarcontrol</controlname></settings></field><field column="UserLastLogonInfo" fieldcaption="UserLastLogonInfo" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c17d233f-cd61-42d7-9c98-f96267a12764"><settings><controlname>textareacontrol</controlname></settings></field><field column="UserIsHidden" fieldcaption="UserIsHidden" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="82febdf9-9057-4cea-bbba-de40b8cf653e"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserVisibility" fieldcaption="UserVisibility" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="150ce55f-7617-4fff-9d31-6f3792291b67"><settings><controlname>textareacontrol</controlname></settings></field><field column="UserIsDomain" fieldcaption="UserIsDomain" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6ca5c321-81dd-4fbf-8ccc-9df2675839f9"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserHasAllowedCultures" fieldcaption="UserHasAllowedCultures" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e7db3339-6c1c-413d-8fa3-fa85d99b8c80"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserSiteManagerDisabled" fieldcaption="UserSiteManagerDisabled" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="175707eb-d3ee-42b1-bd2b-7c2f67a70449" visibility="none"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_User', N'', N'', N'', N'', 1, 0, 0, N'', 0, N'', NULL, '20120910 08:45:23', '2e02c378-0f3d-45de-9b2d-b8cf2bd87b55', 0, 0, 0, N'', 0, N'UserNickName', N'UserDescription', N'', N'UserActivationDate', N'<search><item searchable="True" name="UserID" tokenized="False" content="False" id="d37f7df9-db53-40f5-9953-5bfbe1b6dc7c" /><item searchable="False" name="UserName" tokenized="True" content="True" id="93aa08f2-1bb0-4ccc-aa1b-9997ca4b63bc" /><item searchable="False" name="FirstName" tokenized="True" content="True" id="a37ed449-31ce-4502-8d0c-0a9bf92710b0" /><item searchable="False" name="MiddleName" tokenized="True" content="True" id="a705ee27-cd52-4221-b282-bca3cc1569d6" /><item searchable="False" name="LastName" tokenized="True" content="True" id="7934d49f-7eac-4b0f-8390-fe1da08a31ad" /><item searchable="False" name="FullName" tokenized="True" content="True" id="f373a664-0812-4b1d-bd81-582f1008f461" /><item searchable="True" name="Email" tokenized="False" content="False" id="91af616c-b3f9-4f21-a71a-e91262743adb" /><item searchable="False" name="UserPassword" tokenized="False" content="False" id="950910db-dc64-4d35-a318-049d9c70feb6" /><item searchable="False" name="PreferredCultureCode" tokenized="False" content="False" id="c331028e-7ef5-492e-af87-ad4d38a7e1f8" /><item searchable="False" name="PreferredUICultureCode" tokenized="False" content="False" id="c3eda89e-a7e4-46b3-ae60-55b49ef5c91f" /><item searchable="False" name="UserEnabled" tokenized="False" content="False" id="aeae9967-39c0-40a1-9723-e099f40bad88" /><item searchable="False" name="UserIsEditor" tokenized="False" content="False" id="2d48dfeb-f42f-4d18-b26c-8c7e4c7e9812" /><item searchable="False" name="UserIsGlobalAdministrator" tokenized="False" content="False" id="53d9a776-aaaa-472e-b801-068d3a1c213a" /><item searchable="False" name="UserIsExternal" tokenized="False" content="False" id="628939ee-8499-4c50-b317-130d679c369a" /><item searchable="False" name="UserPasswordFormat" tokenized="False" content="False" id="e6a16803-f9ee-4f22-b6f8-16255acd1290" /><item searchable="True" name="UserCreated" tokenized="False" content="False" id="6c4928e2-3510-479d-a09a-ef60108cb514" /><item searchable="True" name="LastLogon" tokenized="False" content="False" id="cbda4fc0-ed72-49b7-ac0d-d9c40698dab0" /><item searchable="False" name="UserStartingAliasPath" tokenized="False" content="False" id="394af93a-da91-487c-b74a-f3b4ba00e84b" /><item searchable="False" name="UserGUID" tokenized="False" content="False" id="2bbb97d5-827f-4fd8-83bf-607a9781d0ef" /><item searchable="False" name="UserLastModified" tokenized="False" content="False" id="6cfb2b9d-866e-4e46-88ac-50eafbbbacfa" /><item searchable="False" name="UserLastLogonInfo" tokenized="False" content="False" id="18f59ba1-8e9c-490c-a0ce-e6413ad79927" /><item searchable="False" name="UserIsHidden" tokenized="False" content="False" id="9e85cbc8-560f-425e-b393-999adf37eed1" /><item searchable="False" name="UserVisibility" tokenized="False" content="False" id="ee6f9643-da07-4dda-91f7-b69000c9974c" /><item searchable="False" name="UserIsDomain" tokenized="False" content="False" id="c43fcb42-b044-43ac-bad6-22dad29e54bf" /><item searchable="False" name="UserHasAllowedCultures" tokenized="False" content="False" id="90c77732-be84-4e2b-9f78-863da9bc29ef" /><item searchable="False" name="UserSiteManagerDisabled" tokenized="False" content="False" id="c6cba3b7-4b25-4eef-af36-ec25c8adc4c0" /><item searchable="False" name="UserSettingsID" tokenized="False" content="False" id="b5c96be6-cde9-40eb-bd15-78976f800e1d" /><item searchable="False" name="UserNickName" tokenized="True" content="True" id="6db444b9-fbf4-4592-9029-9052123c336d" /><item searchable="False" name="UserPicture" tokenized="False" content="False" id="8341a302-1201-4d32-9ca2-1089a016cf68" /><item searchable="False" name="UserSignature" tokenized="True" content="True" id="d3b01883-2856-42e2-a82d-fc680b38418f" /><item searchable="False" name="UserURLReferrer" tokenized="False" content="False" id="6dd1c1f4-5947-4894-b0e0-32cadb90ef30" /><item searchable="True" name="UserCampaign" tokenized="False" content="False" id="00e19cb7-c2b0-4001-a087-814035e671c6" /><item searchable="False" name="UserMessagingNotificationEmail" tokenized="False" content="False" id="1f69e23f-dc85-437d-a7c8-118a01fe475e" /><item searchable="False" name="UserCustomData" tokenized="False" content="False" id="579b3472-52fa-468a-b85c-18e841a009df" /><item searchable="False" name="UserRegistrationInfo" tokenized="False" content="False" id="bf4afb2f-cbb2-4a78-bf00-ee045a7d5c3d" /><item searchable="False" name="UserPreferences" tokenized="False" content="False" id="e28cdf0d-ef4b-4263-a890-088bfb6effe6" /><item searchable="False" name="UserActivationDate" tokenized="False" content="False" id="33ebafe9-71e5-4af4-b6cb-556019b85b81" /><item searchable="False" name="UserActivatedByUserID" tokenized="False" content="False" id="7f9bd08a-421d-47eb-9eed-a23d10dfef0b" /><item searchable="False" name="UserTimeZoneID" tokenized="False" content="False" id="d80ef6a3-e816-45be-b514-3838f4177b9b" /><item searchable="False" name="UserAvatarID" tokenized="False" content="False" id="d118c5ae-3bcf-4de3-9146-d2eec6a7b638" /><item searchable="False" name="UserAvatarType" tokenized="False" content="False" id="8138fbe1-561b-408f-b26b-dd313cf95bf4" /><item searchable="False" name="UserBadgeID" tokenized="False" content="False" id="3ad28105-ac28-4641-aca7-dd567527b968" /><item searchable="False" name="UserShowSplashScreen" tokenized="False" content="False" id="3c3c5545-050f-4d6d-9730-a533b287c5f5" /><item searchable="False" name="UserActivityPoints" tokenized="False" content="False" id="f4c3c22e-be59-443c-b481-3e30e167d31e" /><item searchable="False" name="UserForumPosts" tokenized="False" content="False" id="a69c6470-8cf9-45cf-9f08-1dc60aed83ab" /><item searchable="False" name="UserBlogComments" tokenized="False" content="False" id="00dc8a87-7ed6-4b9c-b851-067fb436437e" /><item searchable="False" name="UserGender" tokenized="False" content="False" id="9c7c4cba-27b3-40b6-a57a-f529d70cee42" /><item searchable="False" name="UserDateOfBirth" tokenized="False" content="False" id="ff0f4720-30a4-4014-8153-9979d898c787" /><item searchable="False" name="UserMessageBoardPosts" tokenized="False" content="False" id="27dc0628-4556-44ba-ba52-40cced0f26a8" /><item searchable="False" name="UserSettingsUserGUID" tokenized="False" content="False" id="7c481463-4664-45a7-a78a-7093368481a8" /><item searchable="False" name="UserSettingsUserID" tokenized="False" content="False" id="03473e18-7b24-4ac1-9fc5-a0e27d2b66f9" /><item searchable="False" name="WindowsLiveID" tokenized="False" content="False" id="608eb682-db50-4f3a-8bbd-cd7923a098ee" /><item searchable="False" name="UserBlogPosts" tokenized="False" content="False" id="d088b4bd-e4b8-4fac-8b09-6d7b632f0a80" /><item searchable="False" name="UserWaitingForApproval" tokenized="False" content="False" id="fca53d1e-0ab2-4ee4-a778-fcf524a53608" /><item searchable="False" name="UserDialogsConfiguration" tokenized="False" content="False" id="ea196930-44a5-4963-b839-bcb2173235fe" /><item searchable="False" name="UserDescription" tokenized="True" content="True" id="fe90d09c-5425-4816-9f5b-346a042ab318" /><item searchable="False" name="UserUsedWebParts" tokenized="False" content="False" id="126680fb-7d2a-4374-9159-023e911943f9" /><item searchable="False" name="UserUsedWidgets" tokenized="False" content="False" id="53c63510-0443-415f-ae2c-331bfbb14aba" /><item searchable="False" name="UserFacebookID" tokenized="False" content="False" id="acfbd3b3-b4f5-45a3-9c6e-904e4595816f" /><item searchable="False" name="UserLinkedInID" tokenized="False" content="False" id="e50da6a4-3b80-40f6-817c-63ba5a071fcd" /><item searchable="False" name="UserAuthenticationGUID" tokenized="False" content="False" id="a1edc53b-9eeb-42e0-935d-e947eee8e02a" /><item searchable="False" name="UserSkype" tokenized="False" content="False" id="2887a250-16d3-4d1d-823c-25664d695790" /><item searchable="False" name="UserIM" tokenized="False" content="False" id="423e9034-8790-4390-b1fa-5057ced6ed07" /><item searchable="False" name="UserPhone" tokenized="False" content="False" id="32aee381-5103-44ef-a4ba-6ddbf9f8a79e" /><item searchable="False" name="UserPosition" tokenized="False" content="False" id="bdebcd8a-eff1-4b00-a617-08b27adda15b" /><item searchable="False" name="UserBounces" tokenized="False" content="False" id="9fe12abc-a353-415e-9997-bfb92f77a65d" /><item searchable="False" name="UserLogActivities" tokenized="False" content="False" id="07c340e2-b729-4d35-bcf1-77262d5f217e" /><item searchable="False" name="UserPasswordRequestHash" tokenized="False" content="False" id="2fb67820-ee89-4937-8a04-d70354733c0e" /><item searchable="False" name="UserWebPartToolbarEnabled" tokenized="False" content="False" id="f7ff2a9d-8838-4191-94ff-611e5561b640" /><item searchable="False" name="UserWebPartToolbarPosition" tokenized="False" content="False" id="cea09884-aae2-40b7-a4e7-c160924578f5" /><item searchable="False" name="UserInvalidLogOnAttempts" tokenized="False" content="False" id="deae2a1c-102a-4bde-8842-2174762fc56d" /><item searchable="False" name="UserInvalidLogOnAttemptsHash" tokenized="False" content="False" id="00147599-2ae9-4737-86d8-88d4f9cbe4ad" /><item searchable="False" name="UserPasswordLastChanged" tokenized="False" content="False" id="c70768cb-e272-469d-91ce-69db2b574983" /><item searchable="False" name="UserAccountLockReason" tokenized="False" content="False" id="4bea593c-be8c-47b0-86c1-4b4b6df69ed9" /></search>', NULL, 1, N'', NULL, N'<form><field column="ContactBirthday" mappedtofield="UserDateOfBirth" /><field column="ContactEmail" mappedtofield="Email" /><field column="ContactFirstName" mappedtofield="FirstName" /><field column="ContactGender" mappedtofield="UserGender" /><field column="ContactLastName" mappedtofield="LastName" /><field column="ContactMiddleName" mappedtofield="MiddleName" /><field column="ContactMobilePhone" mappedtofield="UserPhone" /></form>', 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (109, N'UserRole', N'cms.userrole', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>  
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata"> 
   <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">      <xs:complexType>      
     <xs:choice minOccurs="0" maxOccurs="unbounded">          <xs:element name="CMS_UserRole">            <xs:complexType>   
                <xs:sequence>               
                   <xs:element name="UserRoleID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />  
                   <xs:element name="UserID" type="xs:int" />               
                   <xs:element name="RoleID" type="xs:int" />            
                   <xs:element name="ValidTo" type="xs:dateTime" minOccurs="0" />        
                 </xs:sequence>                            
               </xs:complexType>          
              </xs:element>        
             </xs:choice>   
            </xs:complexType>      
           <xs:unique name="Constraint1" msdata:PrimaryKey="true">   
                                           <xs:selector xpath=".//CMS_UserRole" />        <xs:field xpath="UserRoleID" />    
                                             </xs:unique>    </xs:element>  </xs:schema>', N'<form><field column="UserRoleID" fieldcaption="UserRoleID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="a6ca4467-2aca-4cdb-b8e6-218521075d5a" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserID" fieldcaption="UserID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fade36d8-d004-4e7e-a354-614332e49bc9"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RoleID" fieldcaption="RoleID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="61c16b7f-a96a-454e-aa67-9159e1e1d2d2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ValidTo" fieldcaption="ValidTo" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c2c09583-b8b4-4726-80c3-d1c782a936c9"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_UserRole', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:45', '7664a5c5-128c-4546-a7f9-c6d3e694c28a', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (129, N'Email template', N'cms.emailtemplate', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_EmailTemplate">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="EmailTemplateID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="EmailTemplateName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailTemplateDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailTemplateText">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailTemplateSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="EmailTemplateGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="EmailTemplateLastModified" type="xs:dateTime" />
              <xs:element name="EmailTemplatePlainText" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailTemplateSubject" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailTemplateFrom" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailTemplateCc" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailTemplateBcc" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailTemplateType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_EmailTemplate" />
      <xs:field xpath="EmailTemplateID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="EmailTemplateID" fieldcaption="EmailTemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="ada65d2f-9f6f-4cac-b7b4-380a13ba6a53"><settings><controlname>labelcontrol</controlname></settings></field><field column="EmailTemplateName" fieldcaption="EmailTemplateName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="db77f0cf-12cf-43e6-be0a-28c1c97fb026"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailTemplateDisplayName" fieldcaption="EmailTemplateDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4c80ea4a-4e2f-4f4e-b524-9ec6acb2290b" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailTemplateType" fieldcaption="EmailTemplateType" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="3c94ab49-0c7e-4546-9528-a2ded8babc29" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="EmailTemplateText" fieldcaption="EmailTemplateText" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7cb8a717-2b0c-4b92-9e38-2530185dcafb"><settings><controlname>textareacontrol</controlname></settings></field><field column="EmailTemplateSiteID" fieldcaption="EmailTemplateSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="152ad89f-51ae-42f3-a7cd-b28794ebbb73"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailTemplateGUID" fieldcaption="EmailTemplateGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="42373ea6-c944-44c2-9a3f-95c5bdc78012"><settings><controlname>labelcontrol</controlname></settings></field><field column="EmailTemplateLastModified" fieldcaption="EmailTemplateLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="513a454c-2061-4083-88bb-12b92bdf2a5e"><settings><controlname>calendarcontrol</controlname></settings></field><field column="EmailTemplatePlainText" fieldcaption="EmailTemplatePlainText" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6c25debb-1332-41eb-a77c-a69f93b3111c"><settings><controlname>textareacontrol</controlname></settings></field><field column="EmailTemplateSubject" fieldcaption="EmailTemplateSubject" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" guid="31f6996b-5f0e-4350-bfb7-4857e4b89bb0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailTemplateFrom" fieldcaption="EmailTemplateFrom" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" guid="515d919e-b186-4bc4-9064-c086fd34715c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailTemplateCc" fieldcaption="EmailTemplateCc" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="43b52be1-a0d2-4af5-9ae4-5e80ca589396"><settings><controlname>textareacontrol</controlname></settings></field><field column="EmailTemplateBcc" fieldcaption="EmailTemplateBcc" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f0fafbef-3dd5-40d8-923c-091f692e7664"><settings><controlname>textareacontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_EmailTemplate', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', 'f54a32bf-6218-46cc-802c-89efad7a5740', 0, 1, 0, N'', 1, N'EmailTemplateDisplayName', N'EmailTemplateText', N'', N'EmailTemplateLastModified', N'<search><item searchable="True" name="EmailTemplateID" tokenized="False" content="False" id="331544d4-253f-46cb-86d0-70e533097950" /><item searchable="False" name="EmailTemplateName" tokenized="True" content="True" id="8913291b-5a63-490e-8e49-eee2bd1aae8b" /><item searchable="False" name="EmailTemplateDisplayName" tokenized="True" content="True" id="8a635d8b-f9cc-45f0-8fcf-bcc596d42aa9" /><item searchable="False" name="EmailTemplateText" tokenized="True" content="True" id="928dccdc-014c-41c7-846b-a1ebc26f6bca" /><item searchable="True" name="EmailTemplateSiteID" tokenized="False" content="False" id="4600d382-b9ba-4411-bfb9-c0ad5085853c" /><item searchable="False" name="EmailTemplateGUID" tokenized="False" content="False" id="2c76041b-5e91-4448-903a-f55c8ae61331" /><item searchable="True" name="EmailTemplateLastModified" tokenized="False" content="False" id="7b088452-797d-4e8b-93ae-16bea28891b9" /><item searchable="False" name="EmailTemplatePlainText" tokenized="True" content="True" id="98bc077f-c21c-4e09-b8f4-fe1771ebbf4c" /><item searchable="False" name="EmailTemplateSubject" tokenized="True" content="True" id="ef3f97b2-f6cc-4bf4-8288-1a25d70269f1" /><item searchable="False" name="EmailTemplateFrom" tokenized="True" content="True" id="60af94e7-e451-4549-a0f8-f4f1562d91b3" /><item searchable="False" name="EmailTemplateCc" tokenized="True" content="True" id="a1cf4a97-d5c3-4d97-8974-aa89fd47fad8" /><item searchable="False" name="EmailTemplateBcc" tokenized="True" content="True" id="7fedb62e-d9e9-4f53-b45c-10cb82e0f9d4" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (131, N'Permission', N'cms.permission', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Permission">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="PermissionID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="PermissionDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PermissionName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassID" type="xs:int" minOccurs="0" />
              <xs:element name="ResourceID" type="xs:int" minOccurs="0" />
              <xs:element name="PermissionGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="PermissionLastModified" type="xs:dateTime" />
              <xs:element name="PermissionDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PermissionDisplayInMatrix" type="xs:boolean" minOccurs="0" />
              <xs:element name="PermissionOrder" type="xs:int" minOccurs="0" />
              <xs:element name="PermissionEditableByGlobalAdmin" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Permission" />
      <xs:field xpath="PermissionID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="PermissionID" fieldcaption="PermissionID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="f61417a5-d60b-4c3e-a8f4-6b5d08407b2e"><settings><controlname>labelcontrol</controlname></settings></field><field column="PermissionOrder" fieldcaption="PermissionOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="89564152-f380-49b4-8250-70fbd52ac9eb" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PermissionDisplayName" fieldcaption="PermissionDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="216fca18-3ef5-4346-a067-df2600e48af2" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PermissionName" fieldcaption="PermissionName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="81099da7-b5b3-4e0c-af3d-9dc48b3b3238"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ClassID" fieldcaption="ClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0c800bfe-2dc6-4053-85cb-5d7fcce37ced"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ResourceID" fieldcaption="ResourceID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8b3c89b8-6134-4450-b1db-e20cb98a157b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PermissionGUID" fieldcaption="PermissionGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="72fec8a3-7ead-451f-8356-f34dc56df28d"><settings><controlname>labelcontrol</controlname></settings></field><field column="PermissionLastModified" fieldcaption="PermissionLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="01413912-03a0-436b-a91f-21cc1d3fe749"><settings><controlname>calendarcontrol</controlname></settings></field><field column="PermissionDescription" fieldcaption="PermissionDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2720ebba-d118-42f8-b4e3-e3b864deddfb" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="PermissionDisplayInMatrix" fieldcaption="PermissionDisplayInMatrix" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ad45cd7d-f305-42d0-ac09-3aab213c2371"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="PermissionEditableByGlobalAdmin" fieldcaption="PermissionEditableByGlobalAdmin" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8b4f42ff-affb-4dd2-af44-7a8f40ede73c" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_Permission', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:26', '83a574c4-dffd-45f1-bd21-c78f18dcaa72', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (134, N'Resource', N'cms.resource', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Resource">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ResourceID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ResourceDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ResourceName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ResourceDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ShowInDevelopment" type="xs:boolean" minOccurs="0" />
              <xs:element name="ResourceURL" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1000" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ResourceGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ResourceLastModified" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Resource" />
      <xs:field xpath="ResourceID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ResourceID" fieldcaption="ResourceID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="870bc6d4-f89a-4116-80b3-45a32604b394"><settings><controlname>labelcontrol</controlname></settings></field><field column="ResourceDisplayName" fieldcaption="ResourceDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="e4714769-8c09-4488-82ee-69f0c7aeccac" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ResourceName" fieldcaption="ResourceName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="69930d99-46c8-4be2-b19c-5a9edb05fb79"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ResourceDescription" fieldcaption="ResourceDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="27828b12-d1fb-4cb1-866d-a15f683bb674" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="ShowInDevelopment" fieldcaption="ShowInDevelopment" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b8fdc63e-35c2-400f-af7f-9b04b39c4b2f"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ResourceURL" fieldcaption="ResourceURL" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="1000" publicfield="false" guid="5585f8e7-88f5-4b0e-88ec-3c695822530c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ResourceGUID" fieldcaption="ResourceGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2389fed5-9c07-45e7-88db-4e56ec0c2889"><settings><controlname>labelcontrol</controlname></settings></field><field column="ResourceLastModified" fieldcaption="ResourceLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a43d2cef-9fdc-43a8-8cd8-37b161ef4582"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_Resource', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:28', '93746c62-21e4-4fda-bcbd-61c5fcee9945', 0, 1, 0, N'', 1, N'ResourceDisplayName', N'ResourceDescription', N'', N'ResourceLastModified', N'<search><item searchable="True" name="ResourceID" tokenized="False" content="False" id="8c81ce3e-d2ad-4047-a9de-5fa9ecb68f9c" /><item searchable="False" name="ResourceDisplayName" tokenized="True" content="True" id="4dcae158-1288-490f-95d4-db532558bb34" /><item searchable="False" name="ResourceName" tokenized="True" content="True" id="25ffd74c-ae3d-4ea5-b91a-0665b186dcd8" /><item searchable="False" name="ResourceDescription" tokenized="True" content="True" id="c139de5a-615f-4806-b2f7-162daf3d1e18" /><item searchable="True" name="ShowInDevelopment" tokenized="False" content="False" id="6428f209-375b-429c-b205-37362ae56d96" /><item searchable="False" name="ResourceURL" tokenized="True" content="True" id="2f274a66-9fbc-49c2-a137-b481edc7a656" /><item searchable="False" name="ResourceGUID" tokenized="False" content="False" id="828dfcfd-03d3-42c7-b761-71dbdbf197c3" /><item searchable="True" name="ResourceLastModified" tokenized="False" content="False" id="ac1a1a28-22b7-4a99-9c94-3cc7fd7ff012" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (140, N'Event log', N'CMS.EventLog', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_EventLog">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="EventID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="EventType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="5" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EventTime" type="xs:dateTime" />
              <xs:element name="Source">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EventCode">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserID" type="xs:int" minOccurs="0" />
              <xs:element name="UserName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="IPAddress" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NodeID" type="xs:int" minOccurs="0" />
              <xs:element name="DocumentName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EventDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SiteID" type="xs:int" minOccurs="0" />
              <xs:element name="EventUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2000" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EventMachineName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EventUserAgent" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EventUrlReferrer" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2000" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_EventLog" />
      <xs:field xpath="EventID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="EventID" fieldcaption="EventID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="26c35bd1-8066-4da8-a725-07ad0b2b2c6b"><settings><controlname>labelcontrol</controlname></settings></field><field column="EventType" fieldcaption="EventType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9faaf8cf-4252-49bf-bda1-9e196842868f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EventTime" fieldcaption="EventTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3e07f490-7533-444d-8f56-f524582462dc"><settings><controlname>calendarcontrol</controlname></settings></field><field column="Source" fieldcaption="Source" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2e2efa2a-56af-4977-b7c3-ad308f96aa41"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EventCode" fieldcaption="EventCode" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0c924b46-c45d-4b5b-b0e0-61e8ae0689bb"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserID" fieldcaption="UserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c093cdd5-eb7f-40ca-a750-f99fcee80d3b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserName" fieldcaption="UserName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" guid="216b36b3-7748-4782-89bd-1a2098ceda4a" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="IPAddress" fieldcaption="IPAddress" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ce09dd69-20b2-4d97-bbf3-7d19cd61904e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeID" fieldcaption="NodeID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d597f6eb-77be-4a4a-994d-b6b868ab6e4a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentName" fieldcaption="DocumentName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="52e8e3d1-efb4-4779-b906-a0e8bfb9c2b6"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EventDescription" fieldcaption="EventDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d5804fb1-6a0c-4cb0-988f-531f2c7c5ba2" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="SiteID" fieldcaption="SiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c5b5f876-db4c-47bc-8b45-d6c83d3c9da9"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EventUrl" fieldcaption="EventUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="76a68240-9806-48d0-9c4b-b17eed6f0fba"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EventMachineName" fieldcaption="EventMachineName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="aa1bad36-c476-43f0-8713-c61bdfcecfe5"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EventUserAgent" fieldcaption="EvetUserAgent" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="38bf0ded-0615-4469-beb6-b8770631b371" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="EventUrlReferrer" fieldcaption="EventUrlReferrer" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="2000" publicfield="false" guid="95f527b8-6fb0-4f4a-9afd-480f6a42841d" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_EventLog', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120911 07:59:37', 'e497827b-e411-4975-9277-b73235b21f87', 0, 1, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (143, N'Tree', N'cms.tree', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Tree">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="NodeID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="NodeAliasPath">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NodeName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NodeAlias">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NodeClassID" type="xs:int" />
              <xs:element name="NodeParentID" type="xs:int" />
              <xs:element name="NodeLevel" type="xs:int" />
              <xs:element name="NodeACLID" type="xs:int" minOccurs="0" />
              <xs:element name="NodeSiteID" type="xs:int" />
              <xs:element name="NodeGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="NodeOrder" type="xs:int" minOccurs="0" />
              <xs:element name="IsSecuredNode" type="xs:boolean" minOccurs="0" />
              <xs:element name="NodeCacheMinutes" type="xs:int" minOccurs="0" />
              <xs:element name="NodeSKUID" type="xs:int" minOccurs="0" />
              <xs:element name="NodeDocType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NodeHeadTags" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NodeBodyElementAttributes" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NodeInheritPageLevels" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NodeChildNodesCount" type="xs:int" minOccurs="0" />
              <xs:element name="RequiresSSL" type="xs:int" minOccurs="0" />
              <xs:element name="NodeLinkedNodeID" type="xs:int" minOccurs="0" />
              <xs:element name="NodeOwner" type="xs:int" minOccurs="0" />
              <xs:element name="NodeCustomData" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NodeGroupID" type="xs:int" minOccurs="0" />
              <xs:element name="NodeLinkedNodeSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="NodeTemplateID" type="xs:int" minOccurs="0" />
              <xs:element name="NodeWireframeTemplateID" type="xs:int" minOccurs="0" />
              <xs:element name="NodeWireframeComment" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NodeTemplateForAllCultures" type="xs:boolean" minOccurs="0" />
              <xs:element name="NodeInheritPageTemplate" type="xs:boolean" minOccurs="0" />
              <xs:element name="NodeWireframeInheritPageLevels" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NodeAllowCacheInFileSystem" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Tree" />
      <xs:field xpath="NodeID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="NodeID" fieldcaption="NodeID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="cdd9eb7c-0a26-4e56-8887-df984df6c02c"><settings><controlname>labelcontrol</controlname></settings></field><field column="NodeAliasPath" fieldcaption="NodeAliasPath" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="9674087b-5e2e-4ba1-a24c-416aa8c5dfe9"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeName" fieldcaption="NodeName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="94cc4d43-93e6-471e-b9f9-288f4f8822c6"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeAlias" fieldcaption="NodeAlias" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="50" publicfield="false" guid="7d6e0784-a48c-4dc1-96c3-7ba807a71af6"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeClassID" fieldcaption="NodeClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7905e92a-1e37-485d-b9c5-ceaaaa4bf160"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeParentID" fieldcaption="NodeParentID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0268faac-80dc-4329-a644-5b3b09381ec3"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeLevel" fieldcaption="NodeLevel" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1831820a-3173-495d-889b-782c3d53104d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeACLID" fieldcaption="NodeACLID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b5e5e982-82c3-42ef-a7ed-18426274bd99"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeSiteID" fieldcaption="NodeSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9689d3d6-7a26-46d5-84d1-539a332ebe65"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeGUID" fieldcaption="NodeGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="40512c1e-c190-421f-942b-48de69e28563"><settings><controlname>labelcontrol</controlname></settings></field><field column="NodeOrder" fieldcaption="NodeOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="95082034-c311-4d61-9ed9-943e62964fae"><settings><controlname>textboxcontrol</controlname></settings></field><field column="IsSecuredNode" fieldcaption="IsSecuredNode" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c51e1a5c-09dd-4a1b-b707-9a1bbb428108"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="NodeCacheMinutes" fieldcaption="NodeCacheMinutes" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c04273fe-4b9e-47aa-955f-d5488e35bf6a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeSKUID" fieldcaption="NodeSKUID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7225569d-1faa-4b4d-979d-5c78b6c81a5e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeDocType" fieldcaption="NodeDocType" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0b3512be-4396-43f1-94f8-8d0d3acf3331"><settings><controlname>textareacontrol</controlname></settings></field><field column="NodeHeadTags" fieldcaption="NodeHeadTags" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b90b0e0b-1f72-47d8-b41d-c60cc82733f7"><settings><controlname>textareacontrol</controlname></settings></field><field column="NodeBodyElementAttributes" fieldcaption="NodeBodyElementAttributes" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ae436b4c-3470-410e-947a-ce7da3456836"><settings><controlname>textareacontrol</controlname></settings></field><field column="NodeInheritPageLevels" fieldcaption="NodeInheritPageLevels" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="7d323260-53cc-433e-b303-1e9015f1dc69"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeChildNodesCount" fieldcaption="NodeChildNodesCount" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="26a2a352-f868-4722-afda-3b5aa2478511"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RequiresSSL" fieldcaption="RequiresSSL" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="adcfb45d-23a1-4ae8-9074-59be044a5e96"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeLinkedNodeID" fieldcaption="NodeLinkedNodeID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c740f968-4987-459b-b3fb-c746de86cc9b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeOwner" fieldcaption="NodeOwner" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5a08edce-a779-441c-9228-67361c219a92"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeCustomData" fieldcaption="NodeCustomData" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="618beea2-a4ea-4fbb-a19c-5793df9c8ad5"><settings><controlname>textareacontrol</controlname></settings></field><field column="NodeGroupID" fieldcaption="NodeGroupID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c6a73cd9-81d4-449d-ba26-21dca0e463e5"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeLinkedNodeSiteID" fieldcaption="NodeLinkedNodeSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c07462a8-3278-4f65-9307-0279d5b9211a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeTemplateID" fieldcaption="NodeTemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f9c9f1c8-68aa-48d3-b028-cf7f38ee0a33"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeWireframeTemplateID" fieldcaption="NodeWireframeTemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9687439e-3eb0-46ce-a1f7-4178600d96ff"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeWireframeComment" fieldcaption="NodeWireframeComment" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="901aeffb-d638-48a4-8ecd-29a16fe7e895"><settings><controlname>textareacontrol</controlname></settings></field><field column="NodeTemplateForAllCultures" fieldcaption="NodeTemplateForAllCultures" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="efc1a50d-79c7-42bd-ae14-7f210f2cff23"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="NodeInheritPageTemplate" fieldcaption="NodeInheritPageTemplate" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f693ccda-187e-424e-a026-30da6ce67017"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="NodeWireframeInheritPageLevels" fieldcaption="NodeWireframeInheritPageLevels" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="6f29f162-2a36-4c49-b62e-e212b01cd0da"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeAllowCacheInFileSystem" fieldcaption="NodeWireframeInheritPageLevels" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="de0e543e-2bc3-4507-895b-277480d8b79e" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_Tree', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120810 09:08:49', '6d418504-6c8b-44f5-853b-10759216a050', 0, 1, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (144, N'Document', N'cms.document', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Document">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="DocumentID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="DocumentName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentNamePath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1500" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentModifiedWhen" type="xs:dateTime" minOccurs="0" />
              <xs:element name="DocumentModifiedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="DocumentForeignKeyValue" type="xs:int" minOccurs="0" />
              <xs:element name="DocumentCreatedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="DocumentCreatedWhen" type="xs:dateTime" minOccurs="0" />
              <xs:element name="DocumentCheckedOutByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="DocumentCheckedOutWhen" type="xs:dateTime" minOccurs="0" />
              <xs:element name="DocumentCheckedOutVersionHistoryID" type="xs:int" minOccurs="0" />
              <xs:element name="DocumentPublishedVersionHistoryID" type="xs:int" minOccurs="0" />
              <xs:element name="DocumentWorkflowStepID" type="xs:int" minOccurs="0" />
              <xs:element name="DocumentPublishFrom" type="xs:dateTime" minOccurs="0" />
              <xs:element name="DocumentPublishTo" type="xs:dateTime" minOccurs="0" />
              <xs:element name="DocumentUrlPath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentCulture">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="10" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentNodeID" type="xs:int" />
              <xs:element name="DocumentPageTitle" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentPageKeyWords" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentPageDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentShowInSiteMap" type="xs:boolean" />
              <xs:element name="DocumentMenuItemHideInNavigation" type="xs:boolean" />
              <xs:element name="DocumentMenuCaption" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuStyle" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuItemImage" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuItemLeftImage" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuItemRightImage" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentPageTemplateID" type="xs:int" minOccurs="0" />
              <xs:element name="DocumentMenuJavascript" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuRedirectUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentUseNamePathForUrlPath" type="xs:boolean" minOccurs="0" />
              <xs:element name="DocumentStylesheetID" type="xs:int" minOccurs="0" />
              <xs:element name="DocumentContent" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuClass" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuStyleOver" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuClassOver" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuItemImageOver" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuItemLeftImageOver" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuItemRightImageOver" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuStyleHighlighted" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuClassHighlighted" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuItemImageHighlighted" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuItemLeftImageHighlighted" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuItemRightImageHighlighted" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentMenuItemInactive" type="xs:boolean" minOccurs="0" />
              <xs:element name="DocumentCustomData" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentExtensions" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentCampaign" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentTags" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentTagGroupID" type="xs:int" minOccurs="0" />
              <xs:element name="DocumentWildcardRule" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="440" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentWebParts" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentRatingValue" type="xs:double" minOccurs="0" />
              <xs:element name="DocumentRatings" type="xs:int" minOccurs="0" />
              <xs:element name="DocumentPriority" type="xs:int" minOccurs="0" />
              <xs:element name="DocumentType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentLastPublished" type="xs:dateTime" minOccurs="0" />
              <xs:element name="DocumentUseCustomExtensions" type="xs:boolean" minOccurs="0" />
              <xs:element name="DocumentGroupWebParts" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentCheckedOutAutomatically" type="xs:boolean" minOccurs="0" />
              <xs:element name="DocumentTrackConversionName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentConversionValue" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentSearchExcluded" type="xs:boolean" minOccurs="0" />
              <xs:element name="DocumentLastVersionName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentLastVersionNumber" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentIsArchived" type="xs:boolean" minOccurs="0" />
              <xs:element name="DocumentLastVersionType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentLastVersionMenuRedirectUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentHash" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="32" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentLogVisitActivity" type="xs:boolean" minOccurs="0" />
              <xs:element name="DocumentGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="DocumentWorkflowCycleGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="DocumentSitemapSettings" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentIsWaitingForTranslation" type="xs:boolean" minOccurs="0" />
              <xs:element name="DocumentSKUName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="440" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentSKUDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentSKUShortDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DocumentWorkflowActionStatus" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Document" />
      <xs:field xpath="DocumentID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="DocumentID" fieldcaption="DocumentID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="04c53ea8-89c6-45fe-b9f8-11c869742937" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="DocumentGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b0dc7e57-96dd-4e5b-829a-4ba9bd84ac0f" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="DocumentName" fieldcaption="DocumentName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="1e0f27f5-f59a-4fa1-871f-5c2d946453ca" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentNamePath" fieldcaption="DocumentNamePath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="1500" publicfield="false" guid="4afd853c-e3da-46dd-87c1-aa931e249b99"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentModifiedWhen" fieldcaption="DocumentModifiedWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d86fd91f-9650-459d-a6a9-f101ec936cdf"><settings><controlname>calendarcontrol</controlname></settings></field><field column="DocumentModifiedByUserID" fieldcaption="DocumentModifiedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3db3f1c9-02b4-4d37-abd5-1298a9068ac1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentForeignKeyValue" fieldcaption="DocumentForeignKeyValue" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1ab4dfd9-6e8c-4b4d-9526-528890bc9c47"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentCreatedByUserID" fieldcaption="DocumentCreatedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="89690d5f-2c54-4788-8926-b38692719e0e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentCreatedWhen" fieldcaption="DocumentCreatedWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="82f0e9c1-9dfa-42a1-9b4a-a0090bbfad73"><settings><controlname>calendarcontrol</controlname></settings></field><field column="DocumentCheckedOutByUserID" fieldcaption="DocumentCheckedOutByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d561f437-cf47-4681-a94e-085d9632b926"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentCheckedOutWhen" fieldcaption="DocumentCheckedOutWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="65160c58-f425-4370-baf6-b47dc987611d"><settings><controlname>calendarcontrol</controlname></settings></field><field column="DocumentCheckedOutVersionHistoryID" fieldcaption="DocumentCheckedOutVersionHistoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="31bf940c-d22c-4bf8-a430-776b6d4488c7"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentPublishedVersionHistoryID" fieldcaption="DocumentPublishedVersionHistoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8229ebd2-c4d2-43bd-82e9-ae9af6146c97"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentWorkflowStepID" fieldcaption="DocumentWorkflowStepID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b7238cf1-94ac-4c59-87f4-f472f78245b2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentPublishFrom" fieldcaption="DocumentPublishFrom" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5998e7fe-a503-4c5a-8711-9a4cbe77d8a3"><settings><controlname>calendarcontrol</controlname></settings></field><field column="DocumentPublishTo" fieldcaption="DocumentPublishTo" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="75b22166-d757-485f-901a-6636cabe930e"><settings><controlname>calendarcontrol</controlname></settings></field><field column="DocumentUrlPath" fieldcaption="DocumentUrlPath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="ce4e33fb-c401-409f-bd58-d43bf642b1af"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentCulture" fieldcaption="DocumentCulture" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="10" publicfield="false" guid="e123ee40-049c-48b6-9dd8-a51b1e7da6b1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentNodeID" fieldcaption="DocumentNodeID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3bc79b36-ba8f-4fea-85a4-c72fdbc315d2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentPageTitle" fieldcaption="DocumentPageTitle" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a2df3057-5b8d-481b-9247-88b970c57a0b"><settings><controlname>textareacontrol</controlname></settings></field><field column="DocumentPageKeyWords" fieldcaption="DocumentPageKeyWords" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e6a709b2-d460-4f13-9abf-c0f100e97033"><settings><controlname>textareacontrol</controlname></settings></field><field column="DocumentPageDescription" fieldcaption="DocumentPageDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4af8a60e-4d17-42c6-a830-1f6655aa807e" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="DocumentShowInSiteMap" fieldcaption="DocumentShowInSiteMap" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b82973af-c753-43c4-b98a-1e33382f381f"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="DocumentMenuItemHideInNavigation" fieldcaption="DocumentMenuItemHideInNavigation" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2551533d-3329-445f-a008-b2912c36b7d5"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="DocumentMenuCaption" fieldcaption="DocumentMenuCaption" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="b057698c-757f-478f-8e69-4218eff45127"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuStyle" fieldcaption="DocumentMenuStyle" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="35cafdb7-af8b-4243-bdce-babe46387a61"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuItemImage" fieldcaption="DocumentMenuItemImage" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="722c4b74-aa68-4ab9-8a34-7cbc711ee0be" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="DocumentMenuItemLeftImage" fieldcaption="DocumentMenuItemLeftImage" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="06f35e92-e38e-4af4-a7fd-db3a7e625310"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuItemRightImage" fieldcaption="DocumentMenuItemRightImage" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="8bf6ec0a-3fcc-4024-a9e4-ce022a762b02"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentPageTemplateID" fieldcaption="DocumentPageTemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0d26da2b-4ac7-489b-a91b-88034794f569"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuJavascript" fieldcaption="DocumentMenuJavascript" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="538ab879-552c-4d63-b4e0-f41307286544"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuRedirectUrl" fieldcaption="DocumentMenuRedirectUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="6df14253-cc1c-4ea7-8cd7-6c8375c3c44c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentUseNamePathForUrlPath" fieldcaption="DocumentUseNamePathForUrlPath" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3091667f-22b4-4a4e-96ba-709e31f17a8f"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="DocumentStylesheetID" fieldcaption="DocumentStylesheetID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1d74c412-a60d-4ff9-9966-549f3f9483fd"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentContent" fieldcaption="DocumentContent" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7cc90d0b-19c9-49fa-a7ce-14104dd32586"><settings><controlname>textareacontrol</controlname></settings></field><field column="DocumentMenuClass" fieldcaption="DocumentMenuClass" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="d47569fa-a1a5-476a-bb3f-25751812a790"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuStyleOver" fieldcaption="DocumentMenuStyleOver" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="ea47e74e-8ca9-4e31-99a1-650081889f1a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuClassOver" fieldcaption="DocumentMenuClassOver" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="a374c26a-6273-47b2-a4a6-d75efbaf6372"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuItemImageOver" fieldcaption="DocumentMenuItemImageOver" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="7237fca8-7f53-477a-b075-516bd38d592e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuItemLeftImageOver" fieldcaption="DocumentMenuItemLeftImageOver" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="1d2f3721-8d4d-4a08-89af-be5a14d1fe9e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuItemRightImageOver" fieldcaption="DocumentMenuItemRightImageOver" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="e4b0b6ce-a5f7-4b66-bf93-6acfdf437593"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuStyleHighlighted" fieldcaption="DocumentMenuStyleHighlighted" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="e53e6cda-97c2-4fe4-9d04-8a9e639c1ee8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuClassHighlighted" fieldcaption="DocumentMenuClassHighlighted" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="ddaaa43a-c322-4d5e-9cd5-d7139f679883"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuItemImageHighlighted" fieldcaption="DocumentMenuItemImageHighlighted" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="dd5a4cb8-0fc7-4759-b062-6088b67b04ee"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuItemLeftImageHighlighted" fieldcaption="DocumentMenuItemLeftImageHighlighted" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="240a6893-095d-44f0-aaa6-e32443d64f34"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuItemRightImageHighlighted" fieldcaption="DocumentMenuItemRightImageHighlighted" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="3eaff1dd-1492-42f8-8035-1214d1dc0a6f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentMenuItemInactive" fieldcaption="DocumentMenuItemInactive" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e0b5fe75-ad44-4221-a175-54706d85f2ae"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="DocumentCustomData" fieldcaption="DocumentCustomData" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8c76cc14-a486-44f9-a1f2-1947192ca6a2"><settings><controlname>textareacontrol</controlname></settings></field><field column="DocumentExtensions" fieldcaption="DocumentExtensions" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="1c1cbb47-7832-4158-9d56-fbb34d6ae87a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentCampaign" fieldcaption="DocumentCampaign" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="948c554d-da2a-4e1d-b7ba-9236ab980725"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentTags" fieldcaption="DocumentTags" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6a33a0ff-ffd9-4615-a1c8-5e1bba780964"><settings><controlname>textareacontrol</controlname></settings></field><field column="DocumentTagGroupID" fieldcaption="DocumentTagGroupID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="82d94a1c-a0e9-4496-bad0-6192217212bf"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentWildcardRule" fieldcaption="DocumentWildcardRule" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="440" publicfield="false" guid="c827cdfb-bd56-4fe3-a781-5b6b12a3e79f" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentWebParts" fieldcaption="DocumentWebParts" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="770989d4-ef83-48ac-b6a7-9800cedeb67a"><settings><controlname>textareacontrol</controlname></settings></field><field column="DocumentGroupWebParts" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="596af945-57d7-432f-a12a-7b16bf385504" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="DocumentRatingValue" fieldcaption="DocumentRatingValue" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="11320c2e-1c67-49e2-bd7a-7273e53f42db"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentRatings" fieldcaption="DocumentRatings" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="abd2bd0d-8911-4e29-abcb-896d7e8cb8bc"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentPriority" fieldcaption="DocumentPriority" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="97bfb6a2-ab54-416e-9578-a38844a4b48e" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentType" fieldcaption="DocumentType" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="bb21f9de-f10c-43e9-b200-cc4c25c97acf"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentLastPublished" fieldcaption="DocumentLastPublished" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="834785f6-f532-435f-b76f-c20dfd9399f6"><settings><controlname>calendarcontrol</controlname></settings></field><field column="DocumentUseCustomExtensions" fieldcaption="DocumentUseCustomExtensions" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="aeae798e-898e-428c-8468-eff4126e0299"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="DocumentCheckedOutAutomatically" fieldcaption="DocumentCheckedOutAutomatically" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" publicfield="false" spellcheck="false" guid="dbb95f9e-3efd-485d-a5a5-1a4ccb455fbc" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="DocumentTrackConversionName" fieldcaption="Track conversion name" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" columnsize="200" publicfield="false" spellcheck="false" guid="ee4ecdbc-988a-4b25-9a35-e048e0bc0dea" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="DocumentConversionValue" fieldcaption="Document conversion value" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" columnsize="100" publicfield="false" spellcheck="false" guid="84eb8c75-f049-475a-8eae-c69a962afda6" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentSearchExcluded" fieldcaption="Document search excluded" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="05110f5f-a8dd-4e30-828c-ef767cfdb1e4" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="DocumentLastVersionName" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" spellcheck="false" guid="8322bc41-81a7-4cad-950a-d6ec1a742c6a" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="DocumentLastVersionNumber" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" spellcheck="false" guid="88338d99-7f91-4c20-8c84-a3dd97cb53a1" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="DocumentIsArchived" fieldcaption="DocumentID" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="41cad1db-9aa7-4818-ae85-a9651578e554" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="DocumentLastVersionType" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" spellcheck="false" guid="86ff7a76-a265-4f78-8e2b-3788804d8bcc" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="DocumentLastVersionMenuRedirectUrl" fieldcaption="DocumentLastVersionMenuRedirectUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="3d1e8b7c-3c1d-4fd7-b9e3-0e3ca29d0f01" visibility="none"><settings><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field><field column="DocumentHash" fieldcaption="DocumentHash" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="32" publicfield="false" guid="7311e7a0-7113-4b2a-b136-39b13464eba0" visibility="none"><settings><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><FilterEnabled>False</FilterEnabled></settings></field><field column="DocumentLogVisitActivity" fieldcaption="DocumentLogVisitActivity" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4c1517e1-c1bc-4341-b879-a8e29349b23b" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="DocumentWorkflowCycleGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7a8dbf8e-a387-4068-b255-247eff08351a" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="DocumentSitemapSettings" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="c46a652c-9206-45c6-bb29-006ead6091c6" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="DocumentIsWaitingForTranslation" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ab09e46a-07b9-4bc2-be12-7c5c54840ba9" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="DocumentSKUName" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="440" publicfield="false" guid="32f0a3cf-cb9f-490e-a737-362123ec3cd4" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="DocumentSKUDescription" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1f04c541-6ebe-412f-94ee-ddd370c46044" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable><MediaDialogConfiguration>True</MediaDialogConfiguration></settings></field><field column="DocumentSKUShortDescription" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6a14a367-6f85-4da9-9430-5aa4a6f037c4" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="DocumentWorkflowActionStatus" fieldcaption="DocumentWorkflowActionStatus" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="11d7b5dd-fae8-4f61-af02-ca3a196abcb3" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'CMS_Document', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120911 14:34:00', '4d58a766-f13b-48fe-950b-63dbc2aeca69', 0, 1, 0, N'', 0, N'', N'', N'', N'', N'<search><item searchable="True" name="SKUID" tokenized="False" content="False" id="1b7195b5-c0fe-4f20-943c-4ee5f929bf47" /><item searchable="False" name="SKUGUID" tokenized="False" content="False" id="d0165454-2e34-482b-bc8b-0b58ace6227c" /><item searchable="True" name="SKUOptionCategoryID" tokenized="False" content="False" id="f86907a2-5493-4df2-8e64-57d45cb28272" /><item searchable="True" name="SKUOrder" tokenized="False" content="False" id="25d468d5-9a5e-445e-a630-3ec18d785ed2" /><item searchable="False" name="SKUSiteID" tokenized="False" content="False" id="36995793-a228-427d-a5ec-8643c6ccfec4" /><item searchable="True" name="SKUName" tokenized="False" content="True" id="5e7382e3-02be-491a-9cc0-589195572320" /><item searchable="True" name="SKUNumber" tokenized="False" content="False" id="115d7d36-ef1f-4755-bcdf-d48ca4ab5bba" /><item searchable="True" name="SKUPrice" tokenized="False" content="False" id="96afe4d8-a52f-4159-92ae-026447d6749f" /><item searchable="False" name="SKURetailPrice" tokenized="False" content="False" id="a65fe770-6216-49ad-a5d9-4737c51bba99" /><item searchable="True" name="SKUDepartmentID" tokenized="False" content="False" id="11ab37cc-fcde-4c83-8fe0-a8506739ee92" /><item searchable="True" name="SKUManufacturerID" tokenized="False" content="False" id="a9ad216a-b84e-4643-98ca-3c8dbb5c3075" /><item searchable="True" name="SKUSupplierID" tokenized="False" content="False" id="a206c14d-1702-4164-9dfd-5e2b5442dd0c" /><item searchable="False" name="SKUImagePath" tokenized="False" content="True" id="3bc18229-be2f-4bf1-bdde-e6ca84986823" /><item searchable="False" name="SKUShortDescription" tokenized="False" content="False" id="9eb8ef84-2f9f-469a-b12f-bfda43f41fa0" /><item searchable="False" name="SKUDescription" tokenized="False" content="True" id="81d1a2d5-9826-484d-901a-df3eb47fb032" /><item searchable="False" name="SKUProductType" tokenized="False" content="False" id="c0831853-5c69-47de-923f-a8e146b30f57" /><item searchable="True" name="SKUCustomData" tokenized="False" content="False" id="eded3218-d562-46fa-ba8f-51e9d4b4b90e" /><item searchable="True" name="SKUCreated" tokenized="False" content="False" id="cfd1b595-7a74-4860-b714-98599c38360b" /><item searchable="True" name="SKULastModified" tokenized="False" content="False" id="2421ff8f-f5ca-4a9f-8a76-26c44a7f1a1c" /><item searchable="False" name="SKUMembershipGUID" tokenized="False" content="False" id="51e97dc4-1516-466c-a82e-5836966ca85f" /><item searchable="False" name="SKUValidity" tokenized="False" content="False" id="c76d6ebb-d864-4ed4-a3c9-6c20b7a36d0a" /><item searchable="False" name="SKUValidFor" tokenized="False" content="False" id="d89673ad-7f8a-4372-abc6-b249758cbc84" /><item searchable="False" name="SKUValidUntil" tokenized="False" content="False" id="3a814f5c-55b9-44d6-a639-5817901bc376" /><item searchable="False" name="SKUMaxDownloads" tokenized="False" content="False" id="d66773d8-ae0e-4d62-826c-77c49c721fbc" /><item searchable="False" name="SKUEproductFilesCount" tokenized="False" content="False" id="584947ba-46c8-4d25-97f3-bf7059a5f694" /><item searchable="False" name="SKUMinPrice" tokenized="False" content="False" id="cbac7236-5d0f-409c-9d1c-5e3e3666b2a7" /><item searchable="False" name="SKUMaxPrice" tokenized="False" content="False" id="ecdc765d-2fa8-446d-b5d8-e781d66b413a" /><item searchable="False" name="SKUPrivateDonation" tokenized="False" content="False" id="2545403e-5b9e-4f94-b50c-7c0555b74302" /><item searchable="False" name="SKUBundleInventoryType" tokenized="False" content="False" id="32682499-d207-42a2-a64b-a1806202d3ac" /><item searchable="False" name="SKUBundleItemsCount" tokenized="False" content="False" id="7d465a7f-a270-4b62-8829-e6bf69e0c74a" /><item searchable="False" name="SKUInStoreFrom" tokenized="False" content="False" id="816fc1d2-dcee-4c81-b324-b083229d9ca8" /><item searchable="True" name="SKUPublicStatusID" tokenized="False" content="False" id="cfc486ad-7fc9-4e10-9a10-20ec8a58b827" /><item searchable="True" name="SKUInternalStatusID" tokenized="False" content="False" id="ad09ef7a-c33a-40e4-a4e9-e7323ee40738" /><item searchable="True" name="SKUEnabled" tokenized="False" content="False" id="cbaed5d5-e7b9-4fdc-9a7d-fbd60f437ebc" /><item searchable="False" name="SKUNeedsShipping" tokenized="False" content="False" id="77b49ab8-b7fa-450d-be16-eef87698ed3c" /><item searchable="True" name="SKUWeight" tokenized="False" content="False" id="58243010-4d99-4d2a-a7a4-afe158b40e67" /><item searchable="True" name="SKUHeight" tokenized="False" content="False" id="732c9486-1a73-4d41-a4a9-313ea748c473" /><item searchable="True" name="SKUWidth" tokenized="False" content="False" id="f9e7265c-1b69-4943-8794-4115f5df3f52" /><item searchable="True" name="SKUDepth" tokenized="False" content="False" id="4b2878e8-2b3d-44fb-a38a-71fd3ee1d3f4" /><item searchable="False" name="SKUTrackInventory" tokenized="False" content="False" id="fe07e9a7-b0fa-40a3-91ce-88421679c825" /><item searchable="False" name="SKUSellOnlyAvailable" tokenized="False" content="False" id="893ff70c-10f3-499f-9af5-e2ece1a37fb7" /><item searchable="True" name="SKUAvailableItems" tokenized="False" content="False" id="99d6e75c-f2db-4ce7-b9bb-d8617ec3252d" /><item searchable="False" name="SKUReorderAt" tokenized="False" content="False" id="d9337a6b-c6bc-4e4f-8062-c02f8b75be54" /><item searchable="True" name="SKUAvailableInDays" tokenized="False" content="False" id="d9b22fd5-ac33-4413-ad3b-5330b1c4fd14" /><item searchable="False" name="SKUMinItemsInOrder" tokenized="False" content="False" id="4bec93ba-4fc8-4b02-9224-31c7041d8e23" /><item searchable="False" name="SKUMaxItemsInOrder" tokenized="False" content="False" id="3fd7d418-1779-4c07-9a5d-375dc622e420" /><item searchable="False" name="SKUConversionName" tokenized="False" content="False" id="3b4f10fd-f3c8-4146-91cc-c323c2cf1be8" /><item searchable="False" name="SKUConversionValue" tokenized="False" content="False" id="b44d84d5-fa45-4dc7-b19b-e9361adbc57d" /><item searchable="False" name="SKUParentSKUID" tokenized="False" content="False" id="9523dd26-aa8b-49e9-a895-8d7e2de94069" /><item searchable="False" name="SKUAllowAllVariants" tokenized="False" content="False" id="e4a7c7e1-ce53-4c9a-b486-615c4ea3a0d3" /><item searchable="False" name="SKUInheritsDiscounts" tokenized="False" content="False" id="e3b839a7-2a8a-4585-b786-7028236be8a1" /><item searchable="False" name="SKUInheritsTaxClasses" tokenized="False" content="False" id="bfb16717-0ebe-4e22-bb13-790cf0f615d5" /><item searchable="True" name="DocumentID" tokenized="False" content="False" id="91ddae1b-d252-41f7-910d-5c2223784826" /><item searchable="False" name="DocumentGUID" tokenized="False" content="False" id="7423f40d-aa19-4063-93e2-36ba44ae7fac" /><item searchable="False" name="DocumentName" tokenized="True" content="True" id="3ac9da12-8129-47c0-bee2-7e790416654a" /><item searchable="False" name="DocumentNamePath" tokenized="True" content="True" id="02c3447c-e408-4d04-99b5-c5e0e33ea8d8" /><item searchable="True" name="DocumentModifiedWhen" tokenized="False" content="False" id="b68c24b1-d4be-4f11-9c8d-18231e786f5f" /><item searchable="True" name="DocumentModifiedByUserID" tokenized="False" content="False" id="5bd1719d-eae1-4d96-ab1d-d72b214c9f36" /><item searchable="True" name="DocumentForeignKeyValue" tokenized="False" content="False" id="1da7921d-88d7-47dd-8bc8-5167af5aff65" /><item searchable="True" name="DocumentCreatedByUserID" tokenized="False" content="False" id="cd789204-11f2-48f0-87ff-6ea3073f0b6d" /><item searchable="True" name="DocumentCreatedWhen" tokenized="False" content="False" id="93114dc4-4939-455b-a155-d808b7d9a620" /><item searchable="False" name="DocumentCheckedOutByUserID" tokenized="False" content="False" id="4866c4de-8ff1-4f79-94ae-77edeb16e5ec" /><item searchable="False" name="DocumentCheckedOutWhen" tokenized="False" content="False" id="9e0a5ab0-93f0-465a-bd19-51359435010a" /><item searchable="False" name="DocumentCheckedOutVersionHistoryID" tokenized="False" content="False" id="fdc51ad4-1816-4065-8787-d258a98dd5d4" /><item searchable="False" name="DocumentPublishedVersionHistoryID" tokenized="False" content="False" id="070c08ad-df06-4e9b-a919-ad033ecb35f4" /><item searchable="False" name="DocumentWorkflowStepID" tokenized="False" content="False" id="a348e4e7-e8e1-45f0-93ab-84586d16c47b" /><item searchable="True" name="DocumentPublishFrom" tokenized="False" content="False" id="ba520d3f-2aca-4fdf-8057-393728fb4eb0" /><item searchable="True" name="DocumentPublishTo" tokenized="False" content="False" id="108a8475-e984-48e6-bdc2-41814d67af21" /><item searchable="False" name="DocumentUrlPath" tokenized="True" content="True" id="a14d119f-a540-43c9-b298-9c49d0f124f6" /><item searchable="True" name="DocumentCulture" tokenized="True" content="False" id="0daa0219-62d7-4796-b38b-d64cc58696b6" /><item searchable="True" name="DocumentNodeID" tokenized="False" content="False" id="19cf27c2-96a3-45d6-9d95-2186d25430ec" /><item searchable="False" name="DocumentPageTitle" tokenized="True" content="True" id="7de26b8c-5ae9-4a37-a2ed-9d6ccce7909a" /><item searchable="False" name="DocumentPageKeyWords" tokenized="True" content="True" id="946880de-b90e-4291-a56b-e4f2784e96b1" /><item searchable="False" name="DocumentPageDescription" tokenized="True" content="True" id="49973891-2944-47b6-bb06-a0d6a31f8341" /><item searchable="True" name="DocumentShowInSiteMap" tokenized="False" content="False" id="1c0acb85-bc16-490e-9ee9-a8517db82206" /><item searchable="True" name="DocumentMenuItemHideInNavigation" tokenized="False" content="False" id="63cbc3a6-66c6-4c49-b671-5438620dfb28" /><item searchable="False" name="DocumentMenuCaption" tokenized="True" content="True" id="6abaa299-a7d4-4ad8-86c0-74cd101224dc" /><item searchable="False" name="DocumentMenuStyle" tokenized="False" content="False" id="2ae77f03-ef36-41a8-80a0-25a238193970" /><item searchable="False" name="DocumentMenuItemImage" tokenized="False" content="False" id="f665fa20-ee8a-495c-b568-735e8f19c0df" /><item searchable="False" name="DocumentMenuItemLeftImage" tokenized="False" content="False" id="d08c89e9-29e9-4d84-b594-127e87749672" /><item searchable="False" name="DocumentMenuItemRightImage" tokenized="False" content="False" id="8ef041bb-2ce8-4c60-9833-8bbc1ba21fab" /><item searchable="False" name="DocumentPageTemplateID" tokenized="False" content="False" id="abb0df3f-3719-4fb7-97ea-6af42c97ba3e" /><item searchable="False" name="DocumentMenuJavascript" tokenized="False" content="False" id="0a86cca9-0628-421b-937e-d764bbc87c5a" /><item searchable="False" name="DocumentMenuRedirectUrl" tokenized="False" content="False" id="36538dc5-376f-4d81-b8fc-659c93182f2c" /><item searchable="False" name="DocumentUseNamePathForUrlPath" tokenized="False" content="False" id="3150040e-8f1d-49eb-b882-8591ea8da6db" /><item searchable="False" name="DocumentStylesheetID" tokenized="False" content="False" id="d4d40ee4-f3ab-4132-8967-ae85eda5f313" /><item searchable="False" name="DocumentContent" tokenized="True" content="True" id="4cd4b881-0ee9-4afd-994b-c9907aeacdbe" /><item searchable="False" name="DocumentMenuClass" tokenized="False" content="False" id="571991bb-186d-4989-8b91-dddea6c86a6c" /><item searchable="False" name="DocumentMenuStyleOver" tokenized="False" content="False" id="44888d45-95ee-45b7-b607-0e2c3e955c58" /><item searchable="False" name="DocumentMenuClassOver" tokenized="False" content="False" id="cda9bcf3-ad32-4295-8c45-cd3e92bd7157" /><item searchable="False" name="DocumentMenuItemImageOver" tokenized="False" content="False" id="2f6d075f-5806-4147-af02-0e33f793b8c5" /><item searchable="False" name="DocumentMenuItemLeftImageOver" tokenized="False" content="False" id="a779cd45-3079-47f6-b6dc-9c13110c0813" /><item searchable="False" name="DocumentMenuItemRightImageOver" tokenized="False" content="False" id="2eefa367-4470-4fb9-986f-49683c1f512b" /><item searchable="False" name="DocumentMenuStyleHighlighted" tokenized="False" content="False" id="267862f2-067b-42f8-94b5-f38f8bd0c25f" /><item searchable="False" name="DocumentMenuClassHighlighted" tokenized="False" content="False" id="ec9184f8-eeab-4e60-98cd-0898c94ebe9a" /><item searchable="False" name="DocumentMenuItemImageHighlighted" tokenized="False" content="False" id="d67e6462-dbfd-4da3-bfdd-c3b229f86658" /><item searchable="False" name="DocumentMenuItemLeftImageHighlighted" tokenized="False" content="False" id="9ccc2aa6-3786-42e0-ac43-660484e85eb1" /><item searchable="False" name="DocumentMenuItemRightImageHighlighted" tokenized="False" content="False" id="4050cc96-7a89-4069-be0c-6cd82e8e0d68" /><item searchable="False" name="DocumentMenuItemInactive" tokenized="False" content="False" id="e0e1a5f1-ff58-40f6-adf7-3af4c7fe7b96" /><item searchable="False" name="DocumentCustomData" tokenized="False" content="False" id="d492b2ec-8221-4fea-8daf-59030d11d181" /><item searchable="False" name="DocumentExtensions" tokenized="False" content="False" id="fe9b9bbd-6e79-407e-b06c-cc2a5a2a8acf" /><item searchable="False" name="DocumentCampaign" tokenized="False" content="False" id="e9972514-82dd-4475-8068-ac69d18ad0a6" /><item searchable="True" name="DocumentTags" tokenized="True" content="True" id="466e647e-0426-4515-a10e-c30d95b20898" /><item searchable="True" name="DocumentTagGroupID" tokenized="False" content="False" id="253e948d-fa95-48c7-996f-c5681494e763" /><item searchable="False" name="DocumentWildcardRule" tokenized="False" content="False" id="e5b80f6a-ed4b-4d48-833f-40b4b6979b0c" /><item searchable="False" name="DocumentWebParts" tokenized="True" content="True" id="8518ea4e-87b0-4ac3-a980-ef99e889752a" /><item searchable="False" name="DocumentGroupWebParts" tokenized="False" content="False" id="5674a087-e18f-4591-8173-4f09a5ae24a7" /><item searchable="True" name="DocumentRatingValue" tokenized="False" content="False" id="db154ee8-f186-4b74-8a0a-40f150d8f5bf" /><item searchable="True" name="DocumentRatings" tokenized="False" content="False" id="8023ee9c-d00b-49bc-9a9d-d4f44218cde3" /><item searchable="True" name="DocumentPriority" tokenized="False" content="False" id="8adf77db-471a-4538-aa82-0177f4bcae36" /><item searchable="True" name="DocumentType" tokenized="False" content="False" id="24abc393-3827-4c04-9283-34f842aa0d0a" /><item searchable="True" name="DocumentLastPublished" tokenized="False" content="False" id="d90d6227-a88c-471c-af4c-b531a96861ad" /><item searchable="False" name="DocumentUseCustomExtensions" tokenized="False" content="False" id="81e93373-1225-4217-9ee7-d4c462385f7a" /><item searchable="False" name="DocumentCheckedOutAutomatically" tokenized="False" content="False" id="25bd57c6-65b7-4070-94fc-f20f1ce378f2" /><item searchable="False" name="DocumentTrackConversionName" tokenized="False" content="False" id="c3645d0e-7072-4e52-ae80-69f2f39ec8c0" /><item searchable="False" name="DocumentConversionValue" tokenized="False" content="False" id="370f94b4-7af8-4db7-a73d-c10fb2734633" /><item searchable="True" name="DocumentSearchExcluded" tokenized="False" content="False" id="ebf008eb-a3e0-4145-8e6c-83c7181b1aef" /><item searchable="False" name="DocumentLastVersionName" tokenized="False" content="False" id="75ffec81-3aaa-4ee9-933f-a0339582c14e" /><item searchable="False" name="DocumentLastVersionNumber" tokenized="False" content="False" id="6ca94c58-f6a1-4f52-bd1b-2ad47e48812f" /><item searchable="False" name="DocumentIsArchived" tokenized="False" content="False" id="f11f21a6-7732-4d5a-97ce-560534878b2a" /><item searchable="False" name="DocumentLastVersionType" tokenized="False" content="False" id="c9de136f-cff4-4aaf-b942-bcddf00dfc56" /><item searchable="False" name="DocumentLastVersionMenuRedirectUrl" tokenized="False" content="False" id="0c7ba7c6-b6a2-4568-a3b9-68cbf8282a20" /><item searchable="False" name="DocumentHash" tokenized="False" content="False" id="1d4a8f40-a713-4093-af1b-894519748b54" /><item searchable="False" name="DocumentLogVisitActivity" tokenized="False" content="False" id="1551118a-1f78-4100-94a8-e2cd1c7970cb" /><item searchable="False" name="DocumentWorkflowCycleGUID" tokenized="False" content="False" id="37a9a07e-c87e-4d76-9557-a1bd991ac573" /><item searchable="False" name="DocumentSitemapSettings" tokenized="False" content="False" id="35b29967-a427-4f9d-82b4-738498ce32da" /><item searchable="False" name="DocumentIsWaitingForTranslation" tokenized="False" content="False" id="ca43285d-253e-4a58-99f5-0c44c1a06e7b" /><item searchable="False" name="DocumentSKUName" tokenized="False" content="False" id="2b93b39d-9aff-44b2-a0d7-579647e6628a" /><item searchable="False" name="DocumentSKUDescription" tokenized="False" content="False" id="742071e9-107e-4a40-9892-0943e9258408" /><item searchable="False" name="DocumentSKUShortDescription" tokenized="False" content="False" id="7798343d-0a83-4019-b566-c7e8cb7685fa" /><item searchable="False" name="DocumentWorkflowActionStatus" tokenized="False" content="False" id="3d2725bd-9a37-46e1-a02b-768551b27742" /><item searchable="True" name="NodeID" tokenized="False" content="False" id="0100ac4e-0f52-4308-9262-3e805d5e2d18" /><item searchable="True" name="NodeAliasPath" tokenized="False" content="False" id="c2e73538-f93a-4b1f-a729-87147ec56eda" /><item searchable="False" name="NodeName" tokenized="True" content="True" id="49ff1159-d73f-403f-9bb9-66b2d1374b38" /><item searchable="False" name="NodeAlias" tokenized="True" content="True" id="3399f7dc-0a69-46df-935e-41687387d7ef" /><item searchable="True" name="NodeClassID" tokenized="False" content="False" id="a5c0cb7d-1c07-4565-ad26-ba3eb6e85277" /><item searchable="True" name="NodeParentID" tokenized="False" content="False" id="ba36b880-8fc7-4f25-ae97-d33351f74864" /><item searchable="True" name="NodeLevel" tokenized="False" content="False" id="b42e661b-7879-4ecc-84ad-aea791e3e5fa" /><item searchable="True" name="NodeACLID" tokenized="False" content="False" id="a7cd403f-a77c-4a11-ada4-efec5b2d8603" /><item searchable="True" name="NodeSiteID" tokenized="False" content="False" id="557a7503-965b-460b-8228-1fede03173e4" /><item searchable="True" name="NodeGUID" tokenized="False" content="False" id="aaa36049-ed4c-4ad9-aa15-e5d5a3b49990" /><item searchable="True" name="NodeOrder" tokenized="False" content="False" id="f7eaf600-d943-49f5-842c-a773f3730062" /><item searchable="True" name="IsSecuredNode" tokenized="False" content="False" id="fe26b4f2-ff48-4af3-aa2f-1ae1bd516de7" /><item searchable="False" name="NodeCacheMinutes" tokenized="False" content="False" id="0ec6bcf3-27c5-4686-85f4-ace5f515b913" /><item searchable="True" name="NodeSKUID" tokenized="False" content="False" id="32c4b290-c380-4dd8-a783-4532738d2e5d" /><item searchable="False" name="NodeDocType" tokenized="False" content="False" id="57b0bb86-44c0-4d6c-83bc-aa34b4f3c99b" /><item searchable="False" name="NodeHeadTags" tokenized="True" content="True" id="3d6d5bcc-9596-4a67-84dc-05dea588721b" /><item searchable="False" name="NodeBodyElementAttributes" tokenized="False" content="False" id="75570808-ee24-49d1-9330-180f759481ca" /><item searchable="False" name="NodeInheritPageLevels" tokenized="False" content="False" id="54f51637-68ad-40b8-a356-bff8768a3951" /><item searchable="True" name="NodeChildNodesCount" tokenized="False" content="False" id="0a723592-975f-40ab-b097-6c7ff93e4d66" /><item searchable="True" name="RequiresSSL" tokenized="False" content="False" id="273293c1-5eaa-4082-8e30-f237ecf55314" /><item searchable="True" name="NodeLinkedNodeID" tokenized="False" content="False" id="5d927785-523e-4002-927a-d096e14dc086" /><item searchable="True" name="NodeOwner" tokenized="False" content="False" id="cf645f18-d4f9-4bbd-89b7-562aeb226883" /><item searchable="False" name="NodeCustomData" tokenized="True" content="True" id="e7367b6f-9e6f-43c2-97a3-e8061fa4d5d2" /><item searchable="True" name="NodeGroupID" tokenized="False" content="False" id="adb37fd8-a178-401e-ae15-24f914aa37c5" /><item searchable="False" name="NodeLinkedNodeSiteID" tokenized="False" content="False" id="46a1cd18-461c-4042-a014-5fb67f701346" /><item searchable="False" name="NodeTemplateID" tokenized="False" content="False" id="9d07a336-6ad9-4e54-9eae-588e5cb75124" /><item searchable="False" name="NodeWireframeTemplateID" tokenized="False" content="False" id="3d2f6fe1-c11a-46ad-a44b-8cf91f4f8695" /><item searchable="False" name="NodeWireframeComment" tokenized="False" content="False" id="de1b5aa4-e057-4e11-a8e8-c43adc106b82" /><item searchable="False" name="NodeTemplateForAllCultures" tokenized="False" content="False" id="c5a50c3b-2667-4f53-a8fa-15487fd9431b" /><item searchable="False" name="NodeInheritPageTemplate" tokenized="False" content="False" id="c5c956f8-b6f8-4597-8025-83fad7f5f2a3" /><item searchable="False" name="NodeWireframeInheritPageLevels" tokenized="False" content="False" id="e5b0d003-c5cb-4f17-8a3a-9965e150757d" /><item searchable="False" name="NodeAllowCacheInFileSystem" tokenized="False" content="False" id="d7342c13-d155-4d7a-918f-671b25edf86e" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
SET IDENTITY_INSERT [CMS_Class] OFF
