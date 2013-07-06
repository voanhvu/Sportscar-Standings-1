SET IDENTITY_INSERT [CMS_Class] ON
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1682, N'WebPartContainerSite', N'CMS.WebPartContainerSite', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WebPartContainerSite">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ContainerID" type="xs:int" />
              <xs:element name="SiteID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_WebPartContainerSite" />
      <xs:field xpath="ContainerID" />
      <xs:field xpath="SiteID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ContainerID" fieldcaption="ContainerID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="e975c62d-2b6d-4807-b726-a2ea8a7d68b1"><settings><controlname>labelcontrol</controlname></settings></field><field column="SiteID" fieldcaption="SiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="aec1fb18-2a3b-4efd-a060-01105aae6183"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_WebPartContainerSite', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:45', '188d31e3-cff5-42f9-9e6b-b01cd443d1be', 0, 0, 0, N'', 1, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1685, N'File', N'CMS.File', 0, 1, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CONTENT_File">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="FileID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="FileDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="500" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FileName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FileAttachment" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CONTENT_File" />
      <xs:field xpath="FileID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="FileID" fieldcaption="FileID" columntype="integer" fieldtype="CustomUserControl" isPK="true" minstringlength="0" maxstringlength="0" minnumericvalue="0" maxnumericvalue="0" publicfield="false" guid="ee63e3e8-0fce-4099-82bd-50df0c69b2fe"><settings><controlname>labelcontrol</controlname></settings></field><field column="FileName" fieldcaption="File name" visible="true" columntype="text" fieldtype="CustomUserControl" columnsize="100" publicfield="false" guid="f820a7ac-1c87-4709-bcf8-f16115a81a8e" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FileDescription" fieldcaption="Description" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" columnsize="500" publicfield="false" guid="e8fb4f99-2300-4f3f-9d7e-66e23f9f696c" visibility="none" translatefield="true"><settings><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field><field column="FileAttachment" fieldcaption="File" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" publicfield="false" guid="ce4c5d10-c143-4ada-9d8a-7e7481b167ef" visibility="none" translatefield="true"><settings><Extensions>inherit</Extensions><Autoresize_Hashtable>True</Autoresize_Hashtable><controlname>directuploadcontrol</controlname></settings></field></form>', N'', N'', N'FileName', N'CONTENT_File', N'~/CMSModules/Content/CMSDesk/View/ViewFile.aspx', N'', N'', N'~/CMSModules/Content/CMSDesk/New/NewFile.aspx', 0, 1, 0, N'', 1, N'', NULL, '20120615 13:06:02', '5b168902-89b2-448f-9357-277df7dc7291', 0, 0, 0, N'', 1, N'DocumentName', N'DocumentContent', N'FileAttachment', N'DocumentCreatedWhen', N'<search><item tokenized="False" name="FileID" content="False" searchable="True" id="4c84e843-0844-4e5f-8674-81a281ebf529" /><item tokenized="True" name="FileName" content="True" searchable="False" id="2af5049f-e9dc-4dc4-8455-f349fc2a7131" /><item tokenized="True" name="FileDescription" content="True" searchable="False" id="05c72433-2378-4111-a13a-56ccd4fedad7" /><item tokenized="False" name="FileAttachment" content="False" searchable="False" id="a2a5ef49-bf66-478f-8863-7a8dcd0ed3c1" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1719, N'Document alias', N'CMS.DocumentAlias', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_DocumentAlias">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="AliasID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="AliasNodeID" type="xs:int" />
              <xs:element name="AliasCulture" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="20" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AliasURLPath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AliasExtensions" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AliasCampaign" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AliasWildcardRule" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="440" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AliasPriority" type="xs:int" minOccurs="0" />
              <xs:element name="AliasGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="AliasLastModified" type="xs:dateTime" />
              <xs:element name="AliasSiteID" type="xs:int" />
              <xs:element name="AliasActionMode" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_DocumentAlias" />
      <xs:field xpath="AliasID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="AliasID" fieldcaption="AliasID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="87333b1f-9786-492b-97b7-508fdd54225e" translatefield="true"><settings><controlname>labelcontrol</controlname></settings></field><field column="AliasNodeID" fieldcaption="AliasNodeID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6574a743-2505-4cf6-9102-7a832a56cfad" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AliasCulture" fieldcaption="AliasCulture" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="542cc3b3-3857-4507-9cc4-5b33fe534073" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AliasURLPath" fieldcaption="AliasURLPath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="37700e05-b8d1-42a5-872a-d665eeb1aa99" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AliasExtensions" fieldcaption="AliasExtensions" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="91cfed84-abb6-462c-962c-c22bc966245c" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AliasCampaign" fieldcaption="AliasCampaign" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1710ce23-89d1-4443-ad27-087a0cf35477" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AliasWildcardRule" fieldcaption="AliasWildcardRule" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="440" publicfield="false" guid="f02f7c44-7571-45d3-b73c-2cfe2db20415" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AliasPriority" fieldcaption="AliasPriority" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c2134711-a476-45db-966d-aa0d6c082c28" translatefield="true"><settings><controlname>labelcontrol</controlname></settings></field><field column="AliasGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="db45b3f2-594b-4ae4-86ab-c9b081f34a0c" translatefield="true"><settings><controlname>labelcontrol</controlname></settings></field><field column="AliasLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5333de7f-c978-43e5-9998-2027e628d39f" translatefield="true"><settings><controlname>labelcontrol</controlname></settings></field><field column="AliasSiteID" fieldcaption="AliasSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ce9a7e6e-0bba-44e4-84c7-3c673c8a79b2" translatefield="true"><settings><controlname>labelcontrol</controlname></settings></field><field column="AliasActionMode" fieldcaption="Alia" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="d823583e-e18d-48c0-94b1-339c1dcfa796" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_DocumentAlias', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', '67726e7f-fd77-4d3f-94dd-a9a3bdaec696', 0, 0, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1720, N'Ecommerce - Department tax class', N'ecommerce.departmenttaxclass', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_DepartmentTaxClass">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="DepartmentID" type="xs:int" />
              <xs:element name="TaxClassID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_DepartmentTaxClass" />
      <xs:field xpath="DepartmentID" />
      <xs:field xpath="TaxClassID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="DepartmentID" fieldcaption="DepartmentID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="ceb1cdfa-285e-418d-b2d4-235f81506645"><settings><controlname>labelcontrol</controlname></settings></field><field column="TaxClassID" fieldcaption="TaxClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="1713a53c-6b68-4cca-8441-427e456ea5fe"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_DepartmentTaxClass', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', 'de031fe1-8424-43da-9a04-0635feb47484', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1721, N'Category', N'cms.category', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Category">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="CategoryID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="CategoryDisplayName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryDescription">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryCount" type="xs:int" />
              <xs:element name="CategoryEnabled" type="xs:boolean" />
              <xs:element name="CategoryUserID" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="CategoryLastModified" type="xs:dateTime" />
              <xs:element name="CategorySiteID" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryParentID" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryIDPath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryNamePath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1500" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryLevel" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryOrder" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Category" />
      <xs:field xpath="CategoryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="CategoryID" fieldcaption="CategoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="a7e6de80-6774-4fc9-8764-fde25832fce0"><settings><controlname>labelcontrol</controlname></settings></field><field column="CategoryDisplayName" fieldcaption="CategoryDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" guid="62f59aab-9b3e-4ddc-8f7a-fb97e039de40" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryName" fieldcaption="CategoryName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" guid="6ec936dc-3b0f-476c-8d07-9dbb7e5a19b9"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryDescription" fieldcaption="CategoryDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="21b4dc27-69d2-4ee5-ad21-31ce7362a169" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="CategoryCount" fieldcaption="CategoryCount" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d333614c-e26b-45fa-803f-2815644d9b6e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryEnabled" fieldcaption="CategoryEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="60a19437-daca-476d-a9c7-f771810012d2"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CategoryUserID" fieldcaption="CategoryUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="aebc6d41-6911-4955-8566-3e46053d2243"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryGUID" fieldcaption="CategoryGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="09d6706d-6145-400c-9e12-c47f14fdfa44"><settings><controlname>unknown</controlname></settings></field><field column="CategoryLastModified" fieldcaption="CategoryLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="67e9377c-c25a-4dd7-9ef8-9b9d97a408ce"><settings><controlname>calendarcontrol</controlname></settings></field><field column="CategorySiteID" fieldcaption="CategorySiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="55f19a7f-1e83-4f11-8dcd-b15e2c5e2638" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CategoryParentID" fieldcaption="CategoryParentID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="70e95a64-6c83-4dc3-a334-c8a7bf61ea39" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CategoryIDPath" fieldcaption="CategoryIDPath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="aac5e74e-aa14-43b5-b18c-fd329ba7974c" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CategoryNamePath" fieldcaption="CategoryNamePath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="1500" publicfield="false" guid="1591d49a-9209-4d55-851c-9fe1769e9def" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CategoryLevel" fieldcaption="CategoryLevel" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="359e5923-49da-4a39-9910-b9458d5a40a2" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CategoryOrder" fieldcaption="CategoryOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3b0a29ce-b93f-4ff8-a86b-5273a4ad1336" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'CMS_Category', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120525 10:47:09', 'f9bd0914-ee13-41f8-85a3-4f2b50875c99', 0, 0, 0, N'', 1, N'CategoryDisplayName', N'CategoryDescription', N'', N'CategoryLastModified', N'<search><item searchable="True" name="CategoryID" tokenized="False" content="False" id="2af92bba-4837-4ccc-86e0-3a82e7b7240c" /><item searchable="False" name="CategoryDisplayName" tokenized="True" content="True" id="1c19ca41-4592-48d9-b7a5-8f8d0ff62e59" /><item searchable="False" name="CategoryName" tokenized="True" content="True" id="13759ff7-992d-4451-9bdf-c3d8d85f4b68" /><item searchable="False" name="CategoryDescription" tokenized="True" content="True" id="8b185f3a-882a-44ec-b1fb-0fdc97b91285" /><item searchable="True" name="CategoryCount" tokenized="False" content="False" id="6e78d8e5-aa71-4988-9467-bc5a88bae712" /><item searchable="True" name="CategoryEnabled" tokenized="False" content="False" id="e4413b44-15e7-499d-9079-f413fb1d4f33" /><item searchable="True" name="CategoryUserID" tokenized="False" content="False" id="ccdaaf0b-da60-40f8-9cad-03e2e46f4aac" /><item searchable="False" name="CategoryGUID" tokenized="False" content="False" id="e79b5ce7-c9a9-4799-a428-0a8c5cee02d2" /><item searchable="True" name="CategoryLastModified" tokenized="False" content="False" id="8b0278c4-f5c6-4c6b-84c4-de7f404fe95e" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1726, N'Document category', N'cms.documentcategory', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_DocumentCategory">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="DocumentID" type="xs:int" />
              <xs:element name="CategoryID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_DocumentCategory" />
      <xs:field xpath="DocumentID" />
      <xs:field xpath="CategoryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="DocumentID" fieldcaption="DocumentID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="ace05777-73b8-4c94-862e-058c49920985"><settings><controlname>labelcontrol</controlname></settings></field><field column="CategoryID" fieldcaption="CategoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="18ad18e0-4e0f-4cd9-b4cc-2caa3ccb283f"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_DocumentCategory', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', '88416cd6-9aa6-4ccc-9f9c-434380b8cdc6', 0, 0, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1736, N'Tag group', N'CMS.TagGroup', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_TagGroup">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TagGroupID" type="xs:int" />
              <xs:element name="TagGroupDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TagGroupName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TagGroupDescription">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TagGroupSiteID" type="xs:int" />
              <xs:element name="TagGroupIsAdHoc" type="xs:boolean" />
              <xs:element name="TagGroupLastModified" type="xs:dateTime" />
              <xs:element name="TagGroupGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_TagGroup" />
      <xs:field xpath="TagGroupID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TagGroupID" fieldcaption="TagGroupID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="5e8edd4a-c7b0-48aa-8a15-0a9790b66d0e"><settings><controlname>labelcontrol</controlname></settings></field><field column="TagGroupDisplayName" fieldcaption="TagGroupDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7252c09e-85f7-47b9-911d-65b38b00b6bc" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TagGroupName" fieldcaption="TagGroupName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bff5999d-c415-4dd5-9c54-2c669d04cf59"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TagGroupDescription" fieldcaption="TagGroupDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="30c422da-9c71-4e22-925f-43242f7a7b26" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="TagGroupSiteID" fieldcaption="TagGroupSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="881da915-c269-4baa-a044-f0ffec268312"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TagGroupIsAdHoc" fieldcaption="TagGroupIsAdHoc" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2c34c408-d66e-4001-a812-631c75ca01e1"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TagGroupLastModified" fieldcaption="TagGroupLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5042f698-31d8-4e86-b003-6e50839158a1"><settings><controlname>calendarcontrol</controlname></settings></field><field column="TagGroupGUID" fieldcaption="TagGroupGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="23bea836-c7e5-46a6-af25-2add63da2e08"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_TagGroup', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:29', '2bf6dd1b-4ab4-4146-b7de-fd9cd86db7c2', 0, 0, 0, N'', 1, N'TagGroupDisplayName', N'TagGroupDescription', N'', N'TagGroupLastModified', N'<search><item searchable="True" name="TagGroupID" tokenized="False" content="False" id="f15b6ba9-026b-4537-b257-e2ead9f7e892" /><item searchable="False" name="TagGroupDisplayName" tokenized="True" content="True" id="832057fb-d290-40fe-810b-74b25f0ad6c0" /><item searchable="False" name="TagGroupName" tokenized="True" content="True" id="1498d1a6-e0ed-4b65-83f2-024108f9a8ec" /><item searchable="False" name="TagGroupDescription" tokenized="True" content="True" id="d13048d5-14e4-445e-8ca4-775793cc32bd" /><item searchable="True" name="TagGroupSiteID" tokenized="False" content="False" id="74a5b18a-98c7-4471-95a7-03ab14d37d56" /><item searchable="True" name="TagGroupIsAdHoc" tokenized="False" content="False" id="323ab1e1-ecf9-424c-ac01-6912ff619e90" /><item searchable="True" name="TagGroupLastModified" tokenized="False" content="False" id="5df08403-0612-4758-bd42-17b1c5dc7bff" /><item searchable="False" name="TagGroupGUID" tokenized="False" content="False" id="dbbc310a-2d6a-43d5-8f93-0b77a0a3aa72" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1737, N'Document tag', N'cms.documenttag', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_DocumentTag">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="DocumentID" type="xs:int" />
              <xs:element name="TagID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_DocumentTag" />
      <xs:field xpath="DocumentID" />
      <xs:field xpath="TagID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form></form>', N'', N'', N'', N'CMS_DocumentTag', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', 'ec4ce0c0-f7e9-43af-935e-c67f38bbfad5', 0, 0, 0, N'', 1, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1738, N'Tag', N'cms.tag', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Tag">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TagID" type="xs:int" />
              <xs:element name="TagName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TagCount" type="xs:int" />
              <xs:element name="TagGroupID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Tag" />
      <xs:field xpath="TagID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TagID" fieldcaption="TagID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="10afa018-8f08-43b9-b61d-2991f7a6ed7e"><settings><controlname>labelcontrol</controlname></settings></field><field column="TagName" fieldcaption="TagName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="41a12c14-98dc-453b-8559-17ffb6482399" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TagCount" fieldcaption="TagCount" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="abd76b88-a87c-42b1-b27e-6fdf27daf597"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TagGroupID" fieldcaption="TagGroupID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b1fccb81-7d06-4804-be58-db3784ee57a6"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_Tag', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:29', '335d8316-ecf9-46d6-b8a1-5f5c162becd1', 0, 0, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1740, N'Membership - Banned IP', N'cms.BannedIP', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_BannedIP">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="IPAddressID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="IPAddress">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="IPAddressRegular">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="IPAddressAllowed" type="xs:boolean" />
              <xs:element name="IPAddressAllowOverride" type="xs:boolean" />
              <xs:element name="IPAddressBanReason" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="IPAddressBanType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="IPAddressBanEnabled" type="xs:boolean" minOccurs="0" />
              <xs:element name="IPAddressSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="IPAddressGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="IPAddressLastModified" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_BannedIP" />
      <xs:field xpath="IPAddressID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="IPAddressID" fieldcaption="IPAddressID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="f17b1adf-5910-410e-a5ce-d368224d39c5" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="IPAddress" fieldcaption="{$banip.IPAddress$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="51d8bbe7-d868-4461-bf0f-63d985be58b6" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field><field column="IPAddressBanType" fieldcaption="{$banip.IPAddressBanType$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="059fbe9f-1eb4-41c9-b696-70fb34a5a593" visibility="none"><settings><controlname>dropdownlistcontrol</controlname><Options>&lt;item value="complete" text="{$banip.bantypecomplete$}" /&gt;&lt;item value="login" text="{$banip.bantypelogin$}" /&gt;&lt;item value="registration" text="{$banip.bantyperegistration$}" /&gt;&lt;item value="allnoncomplete" text="{$banip.bantypeallnoncomplete$}" /&gt;</Options></settings></field><field column="IPAddressBanEnabled" fieldcaption="{$general.enabled$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="38e3e820-f239-479d-aeea-b7bdc709743e" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="IPAddressBanReason" fieldcaption="{$banip.IPAddressBanReason$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" controlcssclass="TextAreaLarge" guid="a4fd328a-c60c-4d8e-80f6-a75efe0c01e1" visibility="none"><settings><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field><field column="IPAddressAllowed" fieldcaption="&amp;nbsp;" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="747a7ded-c824-4085-81e5-e69bb9055146" visibility="none"><settings><controlname>radiobuttonscontrol</controlname><RepeatDirection>vertical</RepeatDirection><Options>&lt;item value="0" text="{$banip.radBanIP$}" /&gt;&lt;item value="1" text="{$banip.radAllowIP$}" /&gt;</Options></settings></field><field column="IPAddressAllowOverride" fieldcaption="{$banip.IPAddressAllowOverride$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a1e5675e-7faa-4fcb-bb2d-d0fa54d809f1" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="IPAddressRegular" fieldcaption="IPAddressRegular" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="607e55d8-26b2-47bb-95d7-53ea227f8ce4" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="IPAddressSiteID" fieldcaption="IPAddressSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f1d44929-cacf-4971-ae2b-c9ad81713a51" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="IPAddressGUID" fieldcaption="IPAddressGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2f97a7b0-2fe3-40e0-9b1e-7eb435aed8ed" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="IPAddressLastModified" fieldcaption="IPAddressLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3c0734cf-b556-4747-bd97-a9780b7fbc8b" visibility="none"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_BannedIP', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:24', '0baf8283-cdd6-4b36-9630-42009ede46af', 0, 0, 0, N'', 0, N'IPAddress', N'IPAddressBanReason', N'', N'IPAddressLastModified', N'<search><item searchable="True" name="IPAddressID" tokenized="False" content="False" id="2a585c44-25b6-4591-b4ba-7ea0bf27209b" /><item searchable="False" name="IPAddress" tokenized="True" content="True" id="52f3216e-df34-4f8b-a3e3-2e04846fc5c8" /><item searchable="False" name="IPAddressBanType" tokenized="True" content="True" id="7ee4139a-7161-4867-b0e1-661a28baa43d" /><item searchable="True" name="IPAddressBanEnabled" tokenized="False" content="False" id="a85a6ae3-9f86-4365-bf8c-d5b77e5de81b" /><item searchable="False" name="IPAddressBanReason" tokenized="True" content="True" id="25e0ca48-ea6e-4303-80b2-b58cc4f41ca7" /><item searchable="True" name="IPAddressAllowed" tokenized="False" content="False" id="7a4263b5-00e1-4695-896b-83a92a8bbb3b" /><item searchable="True" name="IPAddressAllowOverride" tokenized="False" content="False" id="33bfacbb-aa55-43cc-b532-e93cedeb0c31" /><item searchable="False" name="IPAddressRegular" tokenized="True" content="True" id="f80689ef-bc8c-4514-8b6e-a528f977e856" /><item searchable="True" name="IPAddressSiteID" tokenized="False" content="False" id="f08dae54-b19b-483f-9c7a-11fde2d8244f" /><item searchable="False" name="IPAddressGUID" tokenized="False" content="False" id="34906dee-103e-4f71-8a5d-6b98ec359feb" /><item searchable="True" name="IPAddressLastModified" tokenized="False" content="False" id="53ceafe8-8383-4c63-a7ce-24d76d0f8180" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1745, N'Alternative forms', N'cms.AlternativeForm', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_AlternativeForm">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="FormID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="FormDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormClassID" type="xs:int" />
              <xs:element name="FormDefinition" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormLayout" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="FormLastModified" type="xs:dateTime" />
              <xs:element name="FormCoupledClassID" type="xs:int" minOccurs="0" />
              <xs:element name="FormHideNewParentFields" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_AlternativeForm" />
      <xs:field xpath="FormID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="FormID" fieldcaption="FormID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="d65b8a4f-95fb-4a35-9f98-04c2a746f6de"><settings><controlname>labelcontrol</controlname></settings></field><field column="FormDisplayName" fieldcaption="FormDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="0be5e0a7-1704-47dc-b063-5e6fb3e91c46" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="FormName" fieldcaption="FormName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="50" publicfield="false" guid="4c90ce6a-e202-4035-a51d-f27469743148" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="FormClassID" fieldcaption="FormClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5a4749e1-d4b8-4753-9b2e-298433d675c6"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormDefinition" fieldcaption="FormDefinition" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a1307cae-635b-48b5-a291-e992f746fc9e"><settings><controlname>textareacontrol</controlname></settings></field><field column="FormLayout" fieldcaption="FormLayout" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5c028970-d2db-40c6-9284-f01edf3395cf"><settings><controlname>textareacontrol</controlname></settings></field><field column="FormHideNewParentFields" fieldcaption="Hide new parent fields" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3e2d0dfd-7f60-4454-a871-6a3af6df4281" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="FormGUID" fieldcaption="FormGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b1ff5048-0f5d-462f-818a-b6c582e45db1"><settings><controlname>labelcontrol</controlname></settings></field><field column="FormLastModified" fieldcaption="FormLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="12a04abb-af1c-493c-9350-c8c08f5736ff"><settings><controlname>calendarcontrol</controlname></settings></field><field column="FormCoupledClassID" fieldcaption="Form Coupled Class ID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b9cb787e-87b6-4ebe-86ba-71470ae3e698"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_AlternativeForm', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:17', '7d7cbe11-e101-469f-a4a3-ee452f3982df', 0, 0, 0, N'', 1, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1747, N'Time zone', N'cms.timezone', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_TimeZone">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TimeZoneID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TimeZoneName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TimeZoneDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TimeZoneGMT" type="xs:double" />
              <xs:element name="TimeZoneDaylight" type="xs:boolean" minOccurs="0" />
              <xs:element name="TimeZoneRuleStartIn" type="xs:dateTime" />
              <xs:element name="TimeZoneRuleStartRule">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TimeZoneRuleEndIn" type="xs:dateTime" />
              <xs:element name="TimeZoneRuleEndRule">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TimeZoneGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="TimeZoneLastModified" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_TimeZone" />
      <xs:field xpath="TimeZoneID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TimeZoneID" fieldcaption="TimeZoneID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="16021269-14ff-482a-be81-8870b15426d9"><settings><controlname>labelcontrol</controlname></settings></field><field column="TimeZoneName" fieldcaption="TimeZoneName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a8cde1d0-13dd-424d-a309-d9a0dddd6e19"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TimeZoneDisplayName" fieldcaption="TimeZoneDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a75bc013-14be-45f5-9ee9-3e5d506f3b8b" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TimeZoneGMT" fieldcaption="TimeZoneGMT" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5a77cd69-6cde-47eb-be36-8e8b50a435a9"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TimeZoneDaylight" fieldcaption="TimeZoneDaylight" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9e95e18b-299e-4cdb-a6f7-0775003a7181"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TimeZoneRuleStartIn" fieldcaption="TimeZoneRuleStartIn" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8ea9e596-b370-4e8d-a96f-0ff73f839707"><settings><controlname>calendarcontrol</controlname></settings></field><field column="TimeZoneRuleStartRule" fieldcaption="TimeZoneRuleStartRule" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e4b0ed67-2e61-44bf-9218-97b965cf7281"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TimeZoneRuleEndIn" fieldcaption="TimeZoneRuleEndIn" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1271bb6b-16b2-4f16-b2e2-89978d9a60e9"><settings><controlname>calendarcontrol</controlname></settings></field><field column="TimeZoneRuleEndRule" fieldcaption="TimeZoneRuleEndRule" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9c233cde-ce0f-475e-bd45-4e1aa6976167"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_TimeZone', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:44', '01d6dfc3-0adc-444b-a86f-de19e72f76ff', 0, 0, 0, N'', 1, N'TimeZoneDisplayName', N'0', N'', N'0', N'<search><item searchable="True" name="TimeZoneID" tokenized="False" content="False" id="6698b050-78ca-446c-bf7d-bc408221e6b0" /><item searchable="False" name="TimeZoneName" tokenized="True" content="True" id="dea6156f-296d-4b59-88e1-e7bf53887bdf" /><item searchable="False" name="TimeZoneDisplayName" tokenized="True" content="True" id="b86120c5-57ab-43e3-b728-c162d26e6100" /><item searchable="True" name="TimeZoneGMT" tokenized="False" content="False" id="e3e19887-74a2-49d1-81b1-1f5e501a7e36" /><item searchable="True" name="TimeZoneDaylight" tokenized="False" content="False" id="83dbc72d-b41b-4fd8-9eb6-30b041e4d2c8" /><item searchable="True" name="TimeZoneRuleStartIn" tokenized="False" content="False" id="a7a17462-243d-4a9a-a496-8a9903d5ef01" /><item searchable="False" name="TimeZoneRuleStartRule" tokenized="True" content="True" id="8b871ba5-87a0-4723-9e9a-63afae47d925" /><item searchable="True" name="TimeZoneRuleEndIn" tokenized="False" content="False" id="e4ce22e7-1496-46a0-8155-998eacc18f04" /><item searchable="False" name="TimeZoneRuleEndRule" tokenized="True" content="True" id="a0db70a0-a1dd-425e-b604-b84ebe9d5a72" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1748, N'Group', N'Community.Group', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Community_Group">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="GroupID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="GroupGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="GroupLastModified" type="xs:dateTime" />
              <xs:element name="GroupSiteID" type="xs:int" />
              <xs:element name="GroupDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GroupName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GroupDescription">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GroupNodeGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="GroupApproveMembers" type="xs:int" />
              <xs:element name="GroupAccess" type="xs:int" />
              <xs:element name="GroupCreatedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="GroupApprovedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="GroupAvatarID" type="xs:int" minOccurs="0" />
              <xs:element name="GroupApproved" type="xs:boolean" minOccurs="0" />
              <xs:element name="GroupCreatedWhen" type="xs:dateTime" />
              <xs:element name="GroupSendJoinLeaveNotification" type="xs:boolean" minOccurs="0" />
              <xs:element name="GroupSendWaitingForApprovalNotification" type="xs:boolean" minOccurs="0" />
              <xs:element name="GroupSecurity" type="xs:int" minOccurs="0" />
              <xs:element name="GroupLogActivity" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Community_Group" />
      <xs:field xpath="GroupID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="GroupID" fieldcaption="GroupID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="d92a0eec-1867-4753-8afa-08f0af1fc023"><settings><controlname>labelcontrol</controlname></settings></field><field column="GroupGUID" fieldcaption="GroupGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8cf05f22-da47-4502-b676-a0411398bc5b"><settings><controlname>labelcontrol</controlname></settings></field><field column="GroupLastModified" fieldcaption="GroupLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c6035dfc-3b72-4a0f-b133-a92e3587cae8"><settings><controlname>calendarcontrol</controlname></settings></field><field column="GroupSiteID" fieldcaption="GroupSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0ead60a9-72c7-4534-8acc-24037b605e4e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupDisplayName" fieldcaption="GroupDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="7fd08d9d-dd31-491e-9c89-cf5b288e3337" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupName" fieldcaption="GroupName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="35fc6c9e-2c1c-4883-82ac-f095ed5b93b1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupDescription" fieldcaption="GroupDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3838358e-5e5b-4a0a-adb9-ac0769302f3d" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="GroupNodeGUID" fieldcaption="GroupNodeGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7b29ef51-8705-4845-a92f-eedf6ddfc49c"><settings><controlname>labelcontrol</controlname></settings></field><field column="GroupApproveMembers" fieldcaption="GroupApproveMembers" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a02c3e8f-c88c-4ec1-af62-1642c3a4cbfb"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupAccess" fieldcaption="GroupAccess" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a3a470bb-3bee-4b18-8916-529651e021ac"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupCreatedByUserID" fieldcaption="GroupCreatedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="17195728-441a-49da-8c51-24705c2c935a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupApprovedByUserID" fieldcaption="GroupApprovedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f467aa85-3f49-491e-9b0b-99159b8f0457"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupAvatarID" fieldcaption="GroupAvatarID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1f719675-4d6b-4e04-94c8-90c9fbafebfc"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupApproved" fieldcaption="GroupApproved" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d73d91c7-edcb-4c8a-bd1d-90f821f5a345"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GroupCreatedWhen" fieldcaption="GroupCreatedWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="216f55d8-156a-4c00-a3a0-a6d6738c907f"><settings><controlname>calendarcontrol</controlname></settings></field><field column="GroupSendJoinLeaveNotification" fieldcaption="GroupSendJoinLeaveNotification" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="24d6c3d4-8783-45ab-a805-d279c35ac029"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GroupSendWaitingForApprovalNotification" fieldcaption="GroupSendWaitingForApprovalNotification" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9a3d8f1a-d759-4dbc-9bd2-311649b795c0"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GroupSecurity" fieldcaption="GroupSecurity" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="071780b2-4735-46b4-9185-1a90738989f1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupLogActivity" fieldcaption="GroupLogActivity" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b661d19d-5974-49d2-b740-423577800060" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Community_Group', N'', N'', N'', N'', 1, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', '78a6ade6-ca83-400c-b537-d5213b7162e4', 0, 0, 0, N'', 2, N'GroupDisplayName', N'GroupDescription', N'', N'GroupCreatedWhen', N'<search><item searchable="True" name="GroupID" tokenized="False" content="False" id="5d27654f-0051-419f-b12f-512c46dd89af" /><item searchable="False" name="GroupGUID" tokenized="False" content="False" id="a8031669-320e-4a25-bcab-f345aa8b8e28" /><item searchable="True" name="GroupLastModified" tokenized="False" content="False" id="9a876c85-bb4d-4a73-8beb-a5d897ad0284" /><item searchable="True" name="GroupSiteID" tokenized="False" content="False" id="82145e35-a778-4a67-a2fe-ea5ba6c2be46" /><item searchable="False" name="GroupDisplayName" tokenized="True" content="True" id="a97de802-a9a4-4dc8-9f19-36667add5767" /><item searchable="False" name="GroupName" tokenized="True" content="True" id="5b8ea36d-f324-4af3-82db-41f97842fa2d" /><item searchable="False" name="GroupDescription" tokenized="True" content="True" id="e84e8781-d00f-4614-b319-58c238596fdf" /><item searchable="False" name="GroupNodeGUID" tokenized="False" content="False" id="17c92aa5-4344-4d87-8dc3-8f1db74966a6" /><item searchable="True" name="GroupApproveMembers" tokenized="False" content="False" id="bf0a5032-930f-4133-a55d-c62791e46852" /><item searchable="True" name="GroupAccess" tokenized="False" content="False" id="c31528fb-ba51-427e-9635-5afb3ba71e1e" /><item searchable="True" name="GroupCreatedByUserID" tokenized="False" content="False" id="c1ade4da-5e84-47ea-bc60-a3b3866a5f5f" /><item searchable="True" name="GroupApprovedByUserID" tokenized="False" content="False" id="adfbe820-971a-49ae-9f97-19df480a1f3d" /><item searchable="True" name="GroupAvatarID" tokenized="False" content="False" id="2d02ada0-644e-4186-a557-1a3f23eb13fe" /><item searchable="True" name="GroupApproved" tokenized="False" content="False" id="95510e41-ef1b-4948-a933-7005bff26908" /><item searchable="True" name="GroupCreatedWhen" tokenized="False" content="False" id="733510bb-cff9-4800-b3bd-5ee80418bc5c" /><item searchable="True" name="GroupSendJoinLeaveNotification" tokenized="False" content="False" id="618eb170-17f8-4b78-818e-6231245529e3" /><item searchable="True" name="GroupSendWaitingForApprovalNotification" tokenized="False" content="False" id="d7a821de-3a4a-47bd-951b-3f1fb992dbb6" /><item searchable="True" name="GroupSecurity" tokenized="False" content="False" id="3e4ecd6a-32bf-4a7d-b88b-a9794bffcf6f" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1749, N'Group member', N'Community.GroupMember', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Community_GroupMember">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="MemberID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="MemberGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="MemberUserID" type="xs:int" />
              <xs:element name="MemberGroupID" type="xs:int" />
              <xs:element name="MemberJoined" type="xs:dateTime" />
              <xs:element name="MemberApprovedWhen" type="xs:dateTime" minOccurs="0" />
              <xs:element name="MemberRejectedWhen" type="xs:dateTime" minOccurs="0" />
              <xs:element name="MemberApprovedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="MemberComment" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MemberInvitedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="MemberStatus" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Community_GroupMember" />
      <xs:field xpath="MemberID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="MemberID" fieldcaption="MemberID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="6fc6b001-4f9b-4c0e-af51-32a192f22acf"><settings><controlname>labelcontrol</controlname></settings></field><field column="MemberGUID" fieldcaption="MemberGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6ef2c92f-5917-4c95-b14d-41b544f2b244"><settings><controlname>labelcontrol</controlname></settings></field><field column="MemberUserID" fieldcaption="MemberUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="061e30be-08bf-48a0-844f-6325030adbca"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MemberGroupID" fieldcaption="MemberGroupID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4f5e1481-fdbb-4083-9c95-8fe2574612ff"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MemberJoined" fieldcaption="MemberJoined" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="72f36245-c011-4be6-8069-801f4b382700"><settings><controlname>calendarcontrol</controlname></settings></field><field column="MemberStatus" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d5bd6bf1-1751-4e8d-b0eb-86bb5d216f5e"><settings><controlname>labelcontrol</controlname></settings></field><field column="MemberApprovedWhen" fieldcaption="MemberApprovedWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1f51c903-8960-40d7-ae12-5e44eeaaf966"><settings><controlname>calendarcontrol</controlname></settings></field><field column="MemberRejectedWhen" fieldcaption="MemberRejectedWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fd7aabec-14e4-4614-84a4-ea1a8b802860"><settings><controlname>calendarcontrol</controlname></settings></field><field column="MemberApprovedByUserID" fieldcaption="MemberApprovedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c7ecf313-ac27-44f1-8375-cb2453df25f0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MemberComment" fieldcaption="MemberComment" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9008448d-cca2-4297-93f9-aa65a78110bc"><settings><controlname>textareacontrol</controlname></settings></field><field column="MemberInvitedByUserID" fieldcaption="MemberInvitedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="32410c3a-92ca-48aa-987c-b8a73a884961"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Community_GroupMember', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', 'e15cfc90-107f-4196-a39d-7f5ea7824b08', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1750, N'Avatar', N'cms.avatar', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Avatar">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="AvatarID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="AvatarName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AvatarFileName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AvatarFileExtension">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="10" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AvatarBinary" type="xs:base64Binary" minOccurs="0" />
              <xs:element name="AvatarType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AvatarIsCustom" type="xs:boolean" />
              <xs:element name="AvatarGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="AvatarLastModified" type="xs:dateTime" />
              <xs:element name="AvatarMimeType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AvatarFileSize" type="xs:int" />
              <xs:element name="AvatarImageHeight" type="xs:int" minOccurs="0" />
              <xs:element name="AvatarImageWidth" type="xs:int" minOccurs="0" />
              <xs:element name="DefaultMaleUserAvatar" type="xs:boolean" minOccurs="0" />
              <xs:element name="DefaultFemaleUserAvatar" type="xs:boolean" minOccurs="0" />
              <xs:element name="DefaultGroupAvatar" type="xs:boolean" minOccurs="0" />
              <xs:element name="DefaultUserAvatar" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Avatar" />
      <xs:field xpath="AvatarID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="AvatarID" fieldcaption="AvatarID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="070e07c2-613b-4ec3-b253-85490b5c2123"><settings><controlname>labelcontrol</controlname></settings></field><field column="AvatarName" fieldcaption="AvatarName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="fe64d27a-a61c-4f3f-af58-d61e35faa192" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AvatarFileName" fieldcaption="AvatarFileName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="c57fbf46-2904-4329-b081-7be3ff62e105"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AvatarFileExtension" fieldcaption="AvatarFileExtension" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="10" publicfield="false" guid="44852334-d234-4cb6-84db-d8f96b5a0411"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AvatarBinary" fieldcaption="AvatarBinary" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d1455dfc-5c3c-4e66-a012-b567b76d20b1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AvatarType" fieldcaption="AvatarType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="50" publicfield="false" guid="eb09494b-aa8f-455f-8282-0f305be2c4a0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AvatarIsCustom" fieldcaption="AvatarIsCustom" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="824bb523-a40b-4c36-9b61-55cbd38e1572"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="AvatarGUID" fieldcaption="AvatarGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="76a41f68-0412-46ef-9a71-f3b0b23f3c14"><settings><controlname>labelcontrol</controlname></settings></field><field column="AvatarLastModified" fieldcaption="AvatarLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a0df33d7-2ea5-4ab1-8204-0b97d6b4bd40"><settings><controlname>calendarcontrol</controlname></settings></field><field column="AvatarMimeType" fieldcaption="AvatarMimeType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="f54b64b6-e474-48f8-82bf-d774a84a0134"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AvatarFileSize" fieldcaption="AvatarFileSize" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="cc46dcfc-ffb2-4901-9d99-1a066d74113c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AvatarImageHeight" fieldcaption="AvatarImageHeight" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1c43a226-2790-4c55-9bd1-69a5d738f3fb"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AvatarImageWidth" fieldcaption="AvatarImageWidth" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6df10f1e-1218-4cda-a594-1f991be5806c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DefaultMaleUserAvatar" fieldcaption="DefaultMaleUserAvatar" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4904d149-1611-444c-8306-2f2d3dcecd7d"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="DefaultFemaleUserAvatar" fieldcaption="DefaultFemaleUserAvatar" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="70d2f645-011d-49d3-8740-bf9da38746bc"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="DefaultGroupAvatar" fieldcaption="DefaultGroupAvatar" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="673ae3c3-2bfd-41c8-9747-58da08d6ca7b"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="DefaultUserAvatar" fieldcaption="DefaultUserAvatar" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5462d085-166f-4a76-a5e7-c5f912bf7538" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_Avatar', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:18', 'ee73a58a-898b-4ca4-9abf-442380daae84', 0, 0, 0, N'', 0, N'AvatarName', N'0', N'', N'AvatarLastModified', N'<search><item searchable="True" name="AvatarID" tokenized="False" content="False" id="e4d9ee47-3941-4125-a088-65bfe6c914c7" /><item searchable="False" name="AvatarName" tokenized="True" content="True" id="98b2c1d6-d1db-48b3-bf13-ad62a58ea484" /><item searchable="False" name="AvatarFileName" tokenized="True" content="True" id="1dd2fa36-93fd-4bb3-8d67-ebae0adb1ddf" /><item searchable="False" name="AvatarFileExtension" tokenized="True" content="True" id="75406161-d4e8-4f22-b52b-0c43381ea982" /><item searchable="False" name="AvatarBinary" tokenized="True" content="True" id="2c38ea3c-c14e-40d2-8b25-a256ffcdc46f" /><item searchable="False" name="AvatarType" tokenized="True" content="True" id="7f545e1d-0ebb-4ee6-8ee0-72bda01a50a0" /><item searchable="True" name="AvatarIsCustom" tokenized="False" content="False" id="bdea6c2e-0643-4f3f-beb8-2fe2582351d0" /><item searchable="False" name="AvatarGUID" tokenized="False" content="False" id="12baac79-62ed-471e-ac7b-9a1fcfda5a36" /><item searchable="True" name="AvatarLastModified" tokenized="False" content="False" id="23e3bc97-0267-4695-a6e2-1d72a529d4eb" /><item searchable="False" name="AvatarMimeType" tokenized="True" content="True" id="e959dd00-8fb1-4573-b858-abe8aea435db" /><item searchable="True" name="AvatarFileSize" tokenized="False" content="False" id="d6594075-e5de-4c34-bedd-1a7810b3711c" /><item searchable="True" name="AvatarImageHeight" tokenized="False" content="False" id="b29c7a1f-8b4f-4032-8b5a-b1416561b5e3" /><item searchable="True" name="AvatarImageWidth" tokenized="False" content="False" id="de521b94-fa1b-44d8-b4e5-b73aca5db1fb" /><item searchable="True" name="DefaultMaleUserAvatar" tokenized="False" content="False" id="a605b413-1289-43ab-b119-27315b153300" /><item searchable="True" name="DefaultFemaleUserAvatar" tokenized="False" content="False" id="647ab8f6-a718-42ce-81fc-922ee2bd88ec" /><item searchable="True" name="DefaultGroupAvatar" tokenized="False" content="False" id="d9404fd1-8557-43c6-92b9-d098fffa2120" /><item searchable="True" name="DefaultUserAvatar" tokenized="False" content="False" id="ea7daa08-8916-448e-8dfe-94426638d4ce" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1768, N'User - Settings', N'cms.usersettings', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_UserSettings">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="UserSettingsID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="UserNickName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserPicture" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserSignature" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserURLReferrer" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserCampaign" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserMessagingNotificationEmail" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserCustomData" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserRegistrationInfo" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserPreferences" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserActivationDate" type="xs:dateTime" minOccurs="0" />
              <xs:element name="UserActivatedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="UserTimeZoneID" type="xs:int" minOccurs="0" />
              <xs:element name="UserAvatarID" type="xs:int" minOccurs="0" />
              <xs:element name="UserBadgeID" type="xs:int" minOccurs="0" />
              <xs:element name="UserShowSplashScreen" type="xs:boolean" minOccurs="0" />
              <xs:element name="UserActivityPoints" type="xs:int" minOccurs="0" />
              <xs:element name="UserForumPosts" type="xs:int" minOccurs="0" />
              <xs:element name="UserBlogComments" type="xs:int" minOccurs="0" />
              <xs:element name="UserGender" type="xs:int" minOccurs="0" />
              <xs:element name="UserDateOfBirth" type="xs:dateTime" minOccurs="0" />
              <xs:element name="UserMessageBoardPosts" type="xs:int" minOccurs="0" />
              <xs:element name="UserSettingsUserGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="UserSettingsUserID" type="xs:int" />
              <xs:element name="WindowsLiveID" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserBlogPosts" type="xs:int" minOccurs="0" />
              <xs:element name="UserWaitingForApproval" type="xs:boolean" minOccurs="0" />
              <xs:element name="UserDialogsConfiguration" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserUsedWebParts" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1000" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserUsedWidgets" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1000" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserFacebookID" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserAuthenticationGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="UserSkype" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserIM" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserPhone" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="26" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserPosition" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserBounces" type="xs:int" minOccurs="0" />
              <xs:element name="UserLinkedInID" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserLogActivities" type="xs:boolean" minOccurs="0" />
              <xs:element name="UserPasswordRequestHash" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserWebPartToolbarEnabled" type="xs:boolean" minOccurs="0" />
              <xs:element name="UserWebPartToolbarPosition" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="10" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserInvalidLogOnAttempts" type="xs:int" minOccurs="0" />
              <xs:element name="UserInvalidLogOnAttemptsHash" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserAvatarType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserAccountLockReason" type="xs:int" minOccurs="0" />
              <xs:element name="UserPasswordLastChanged" type="xs:dateTime" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_UserSettings" />
      <xs:field xpath="UserSettingsID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="UserSettingsID" fieldcaption="UserSettingsID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="f88177e0-3b3e-4f62-9ceb-1338a5a0722a" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserNickName" fieldcaption="UserNickName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="efb1a8cb-a54b-4362-ba8e-f759e1ee834f" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserPicture" fieldcaption="UserPicture" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="ea2ec595-2e19-441e-88cf-f7c1181867ff" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserSignature" fieldcaption="UserSignature" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="028e7124-d2eb-4ee9-becf-60b6a2281521" visibility="none" translatefield="true"><settings><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field><field column="UserURLReferrer" fieldcaption="UserURLReferrer" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="df3044e3-28fe-4b46-bb07-37428f5d833f" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserCampaign" fieldcaption="UserCampaign" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="c4e77a91-8804-4956-a27d-dd89ddf30b3c" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserMessagingNotificationEmail" fieldcaption="UserMessagingNotificationEmail" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="8968e8bd-9223-41dd-831f-586632285df1" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserCustomData" fieldcaption="UserCustomData" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="34e7ab20-5aab-4305-96da-ba828c4eafd0" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserRegistrationInfo" fieldcaption="UserRegistrationInfo" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b254202a-cd95-49cf-8002-422c37fbb311" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserPreferences" fieldcaption="UserPreferences" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8e07e797-b695-4ddf-86d1-bfff4e3028f8" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserActivationDate" fieldcaption="UserActivationDate" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4b9bf86d-4b85-4d32-9599-c49a3ca30687" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserActivatedByUserID" fieldcaption="UserActivatedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="02ee7d84-59b9-4c6d-9505-23ef5620f70e" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserTimeZoneID" fieldcaption="UserTimeZoneID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b6c65099-1e1d-4ad7-a540-d872aae4a3bf" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserAvatarID" fieldcaption="UserAvatarID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7df4af3f-bd8e-49d2-814c-0a00613120bb" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserAvatarType" fieldcaption="User avatar type" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="7c7b397a-d22b-4567-97c5-c657d276d4ee" visibility="none"><settings><controlname>avatartypeselector</controlname><EditText>False</EditText><Options>cms.avatar;CMS.Avatar  gravatar;Gravatar  userchoice;User can choose</Options></settings></field><field column="UserBadgeID" fieldcaption="UserBadgeID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cf437fae-27be-4b53-af62-55975f3b0785" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserShowSplashScreen" fieldcaption="UserShowSplashScreen" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="375bae6f-885c-455e-bd12-a254b525a48c" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserActivityPoints" fieldcaption="UserActivityPoints" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fc8a6be4-44ae-42a8-b6c0-be43147e2d33" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserForumPosts" fieldcaption="UserForumPosts" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="448e7d8f-a886-46a6-9be5-74b22fda0eb2" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserBlogComments" fieldcaption="UserBlogComments" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="69691713-f8ee-4104-a0d1-db52fddec111" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserGender" fieldcaption="UserGender" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="bb81189b-8090-4d61-8e71-bb2a40e97ef6" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserDateOfBirth" fieldcaption="UserDateOfBirth" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0000a8ba-40fb-4e91-8a1f-90e4913f0aec" visibility="none" translatefield="true"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="UserMessageBoardPosts" fieldcaption="UserMessageBoardPosts" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4107fe8b-72a5-43bb-91c2-c5850262c303" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserSettingsUserGUID" fieldcaption="UserSettingsUserGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ca94536c-9d77-4451-9cad-e0b13f672e09" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserSettingsUserID" fieldcaption="UserSettingsUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="821e0a34-28a4-4b59-8b3a-d3afcf53ed96" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WindowsLiveID" fieldcaption="WindowsLiveID" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="6cfd72b6-214c-4018-a970-284d411341ca" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserBlogPosts" fieldcaption="UserBlogPosts" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="bfb792b5-40a1-491b-9c83-255e04b31f68" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserWaitingForApproval" fieldcaption="UserWaitingForApproval" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ea1dde05-b660-4fee-bac7-3475cb559340" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserDialogsConfiguration" fieldcaption="UserDialogsConfiguration" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="11e15a34-e0de-43cd-9cbe-74e26a1bd367" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserDescription" fieldcaption="UserDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="01309c8c-b144-4662-8534-ca68fcdda40d" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserUsedWebParts" fieldcaption="UserUsedWebParts" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="1000" publicfield="false" guid="f1a33942-073f-4e54-bccc-2b13f05d1a80" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserUsedWidgets" fieldcaption="UserUsedWidgets" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="1000" publicfield="false" guid="9e0b3fb8-d9f1-40a3-adf9-460dd19ab044" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserFacebookID" fieldcaption="UserFacebookID" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="4971b905-286a-4e79-a1e8-454763b91a3d" visibility="none" translatefield="true"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserLinkedInID" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="72604a87-5d1d-4d70-a9c7-b16596f0416c" visibility="none" translatefield="true"><settings><controlname>checkboxlistcontrol</controlname></settings></field><field column="UserAuthenticationGUID" fieldcaption="UserAuthenticationGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="75360e04-4c1f-44e0-b8f4-bc154e395e3d" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserSkype" fieldcaption="UserSkype" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" spellcheck="false" guid="882a11c9-192a-4b38-81dd-3ee5b5e2477e" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserIM" fieldcaption="UserIM" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" spellcheck="false" guid="9634d746-a4db-44ce-930c-9c37ff5097a1" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserPhone" fieldcaption="UserPhone" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="26" publicfield="false" spellcheck="false" guid="f79c705a-da88-43d5-93a7-3d7d5ab0f281" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserPosition" fieldcaption="UserPosition" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" spellcheck="false" guid="dbf94b10-7262-4d2c-8f6d-887bd8e7e7bc" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserBounces" fieldcaption="UserBounces" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="3f06ef91-12eb-4d65-b25f-62d27b6bdd70" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field><field column="UserLogActivities" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="aa46b973-7036-4b71-aa50-b351a5658965" visibility="none" translatefield="true"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="UserPasswordRequestHash" fieldcaption="UserPasswordRequestHash" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="734de788-ae15-4c25-88c6-1ec0c8cbfa87" visibility="none" translatefield="true"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserWebPartToolbarEnabled" fieldcaption="UserSettingsID" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0c6de018-7f23-47a7-9540-ef4814c28acb" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserWebPartToolbarPosition" fieldcaption="UserSettingsID" defaultvalue="right" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="10" publicfield="false" guid="f30561e7-614e-4b42-ac66-b16d1ba8ba74" visibility="none" translatefield="true"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserInvalidLogOnAttempts" fieldcaption="UserSettingsID" defaultvalue="0" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6a65e39a-c6ec-484e-afec-a72c8bc212eb" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserInvalidLogOnAttemptsHash" fieldcaption="UserSettingsID" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="eb317070-1a19-4010-9df3-23379de984c0" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserPasswordLastChanged" fieldcaption="UserSettingsID" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7235a5d3-07c7-4b8f-a2c3-979e4dd5bb47" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserAccountLockReason" fieldcaption="UserSettingsID" defaultvalue="0" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6acefd4b-46f2-4c6d-974b-4deb35f2c139" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_UserSettings', N'', N'', N'', N'', 1, 0, 0, N'', 0, N'', NULL, '20120709 11:13:04', 'a8203aeb-7709-4079-ad7e-3f9fccadc929', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1771, N'Bad word', N'badwords.word', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="BadWords_Word">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="WordID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="WordGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="WordLastModified" type="xs:dateTime" />
              <xs:element name="WordExpression">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WordReplacement" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WordAction" type="xs:int" minOccurs="0" />
              <xs:element name="WordIsGlobal" type="xs:boolean" />
              <xs:element name="WordIsRegularExpression" type="xs:boolean" />
              <xs:element name="WordMatchWholeWord" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//BadWords_Word" />
      <xs:field xpath="WordID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="WordID" fieldcaption="WordID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="e55fab30-93b1-4726-ac24-70db1744bd52"><settings><controlname>labelcontrol</controlname></settings></field><field column="WordGUID" fieldcaption="WordGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bfab8943-80c4-4a8f-9edd-4058567f964f"><settings><controlname>labelcontrol</controlname></settings></field><field column="WordLastModified" fieldcaption="WordLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="66a1e9e5-27e1-4807-9138-edf7f19543f8"><settings><controlname>calendarcontrol</controlname></settings></field><field column="WordExpression" fieldcaption="WordExpression" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="06c844fc-a206-4ce9-8475-46235c72007b" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WordReplacement" fieldcaption="WordReplacement" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="43afe0be-68dd-4e9d-8b52-196416a9743f" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WordAction" fieldcaption="WordAction" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="362cfe9c-423a-40f0-8918-2529c1bc7d02"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WordIsGlobal" fieldcaption="WordIsGlobal" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4043c1a4-0979-4cb4-9956-3210e752b9f3"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="WordIsRegularExpression" fieldcaption="Word is regular expression" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9c891be9-e869-4041-8e50-fb10c51d25ce"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="WordMatchWholeWord" fieldcaption="WordMatchWholeWord" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="085a4c0c-7a6f-42f1-949e-7735f013eb95" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'BadWords_Word', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:18', '9ff65ce7-ed48-48ea-97d6-cf88e644a10e', 0, 0, 0, N'', 2, N'WordExpression', N'0', N'', N'WordLastModified', N'<search><item searchable="True" name="WordID" tokenized="False" content="False" id="699331a8-6ece-42a2-8e0f-5a9ceff6f0e8" /><item searchable="False" name="WordGUID" tokenized="False" content="False" id="0ed6f07d-c57d-4969-a963-0c8fd011e4f1" /><item searchable="True" name="WordLastModified" tokenized="False" content="False" id="72928fad-8dd8-4ae8-b629-ac662c2a93ef" /><item searchable="False" name="WordExpression" tokenized="True" content="True" id="cfb63391-a9cb-4355-9b41-4e85d37bea38" /><item searchable="False" name="WordReplacement" tokenized="True" content="True" id="c2c5c0ac-a8b8-444f-8932-a1d34950f0a1" /><item searchable="True" name="WordAction" tokenized="False" content="False" id="5f3a3e59-4d41-43eb-ab8e-9f0b23e5bba3" /><item searchable="True" name="WordIsGlobal" tokenized="False" content="False" id="0495906d-23b4-4c91-b14c-fde05fbfcafb" /><item searchable="True" name="WordIsRegularExpression" tokenized="False" content="False" id="57beaafb-b275-4f1b-884f-a91df7efd4c7" /><item searchable="True" name="WordMatchWholeWord" tokenized="False" content="False" id="7ca71a34-76a3-4615-a9c1-64df53c84056" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1787, N'Badge', N'CMS.Badge', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Badge">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="BadgeID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="BadgeName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="BadgeDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="BadgeImageURL" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="BadgeIsAutomatic" type="xs:boolean" />
              <xs:element name="BadgeTopLimit" type="xs:int" minOccurs="0" />
              <xs:element name="BadgeGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="BadgeLastModified" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Badge" />
      <xs:field xpath="BadgeID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="BadgeID" fieldcaption="BadgeID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="e6c959c1-3f56-4b98-9ba1-56df31742a3c" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="BadgeName" fieldcaption="BadgeName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="8f7f989e-3115-43d5-afce-2c382577893f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BadgeDisplayName" fieldcaption="BadgeDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="8b346663-f678-419d-9c5e-3de2bb247f33" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BadgeImageURL" fieldcaption="BadgeImageURL" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="be04c9a0-4afe-4ad6-8a71-d17ef454968b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BadgeIsAutomatic" fieldcaption="BadgeIsAutomatic" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3c65408f-702f-4556-badd-c2d0f813cf36"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="BadgeTopLimit" fieldcaption="BadgeTopLimit" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="962cbf48-513b-4990-a515-a8466fcfecfc"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BadgeGUID" fieldcaption="BadgeGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ee6c4e89-b05f-409d-a81e-b49a40e6710e"><settings><controlname>labelcontrol</controlname></settings></field><field column="BadgeLastModified" fieldcaption="BadgeLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1e4427e7-5438-4ba4-a757-41e2cc386a23"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_Badge', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:18', 'd2e16806-304a-45d1-8158-d444be21e3a8', 0, 0, 0, N'', 1, N'BadgeName', N'BadgeID', N'', N'BadgeLastModified', N'<search><item searchable="True" name="BadgeID" tokenized="False" content="True" fieldname="qqqw" id="8f752452-7d8d-4fae-ba78-10d1262c9e4e" /><item searchable="True" name="BadgeName" tokenized="True" content="True" id="07bb6afb-a692-4254-a408-2af69b0a4f3e" /><item searchable="True" name="BadgeDisplayName" tokenized="True" content="True" id="4eaf6d55-45d0-46d5-ac31-4391b377f000" /><item searchable="True" name="BadgeImageURL" tokenized="True" content="True" id="0631a1d9-7abf-4ff7-89b4-c172e6c0153d" /><item searchable="True" name="BadgeIsAutomatic" tokenized="True" content="True" id="69ef6851-eecd-4f05-b8d1-8362a839578b" /><item searchable="True" name="BadgeTopLimit" tokenized="True" content="True" id="c05f41e1-80b9-481e-b17f-569cff4edb80" /><item searchable="True" name="BadgeGUID" tokenized="True" content="False" id="48e3b8d8-f8a1-4d9c-acd4-1c6fc3074917" /><item searchable="True" name="BadgeLastModified" tokenized="False" content="False" id="08cf3ea7-8be6-4fa2-a670-7acc3d50d9c2" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
SET IDENTITY_INSERT [CMS_Class] OFF
