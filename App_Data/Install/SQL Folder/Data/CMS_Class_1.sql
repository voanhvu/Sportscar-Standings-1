SET IDENTITY_INSERT [CMS_Class] ON
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (145, N'Class', N'cms.class', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Class">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ClassID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ClassDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassUsesVersioning" type="xs:boolean" />
              <xs:element name="ClassIsDocumentType" type="xs:boolean" />
              <xs:element name="ClassIsCoupledClass" type="xs:boolean" />
              <xs:element name="ClassXmlSchema">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassFormDefinition">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassEditingPageUrl">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassListPageUrl">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassNodeNameSource">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassTableName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassViewPageUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassPreviewPageUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassFormLayout" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassNewPageUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassShowAsSystemTable" type="xs:boolean" />
              <xs:element name="ClassUsePublishFromTo" type="xs:boolean" minOccurs="0" />
              <xs:element name="ClassShowTemplateSelection" type="xs:boolean" minOccurs="0" />
              <xs:element name="ClassSKUMappings" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassIsMenuItemType" type="xs:boolean" minOccurs="0" />
              <xs:element name="ClassNodeAliasSource" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassDefaultPageTemplateID" type="xs:int" minOccurs="0" />
              <xs:element name="ClassLastModified" type="xs:dateTime" />
              <xs:element name="ClassGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ClassCreateSKU" type="xs:boolean" minOccurs="0" />
              <xs:element name="ClassIsProduct" type="xs:boolean" minOccurs="0" />
              <xs:element name="ClassIsCustomTable" type="xs:boolean" />
              <xs:element name="ClassShowColumns" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1000" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassLoadGeneration" type="xs:int" />
              <xs:element name="ClassSearchTitleColumn" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassSearchContentColumn" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassSearchImageColumn" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassSearchCreationDateColumn" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassSearchSettings" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassInheritsFromClassID" type="xs:int" minOccurs="0" />
              <xs:element name="ClassSearchEnabled" type="xs:boolean" minOccurs="0" />
              <xs:element name="ClassSKUDefaultDepartmentName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassSKUDefaultDepartmentID" type="xs:int" minOccurs="0" />
              <xs:element name="ClassContactMapping" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassContactOverwriteEnabled" type="xs:boolean" minOccurs="0" />
              <xs:element name="ClassSKUDefaultProductType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassConnectionString" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ClassIsProductSection" type="xs:boolean" minOccurs="0" />
              <xs:element name="ClassPageTemplateCategoryID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Class" />
      <xs:field xpath="ClassID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ClassID" fieldcaption="ClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="0baf1038-97e3-4e65-880c-35da63fee40b" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ClassDisplayName" fieldcaption="ClassDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ff01ffa6-bc9a-4760-860e-90e2316256ca"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ClassName" fieldcaption="ClassName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7797c91f-73b9-4100-b490-34207538c356"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ClassUsesVersioning" fieldcaption="ClassUsesVersioning" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ba0272bd-4933-470d-880f-c3f7c6b98eb7"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ClassIsDocumentType" fieldcaption="ClassIsDocumentType" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5525a6c9-933d-4bc5-b659-070ecbd8bb9e"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ClassIsCoupledClass" fieldcaption="ClassIsCoupledClass" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6b5e4c5e-9d7c-44f4-a5d8-b22334cb9f95"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ClassXmlSchema" fieldcaption="ClassXmlSchema" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3db53773-1efb-444e-9a4f-7366788b5564"><settings><controlname>textareacontrol</controlname></settings></field><field column="ClassFormDefinition" fieldcaption="ClassFormDefinition" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8d9fbca4-3b93-4053-bae2-0cb2fa107e2b"><settings><controlname>textareacontrol</controlname></settings></field><field column="ClassEditingPageUrl" fieldcaption="ClassEditingPageUrl" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="d839ce92-981f-4ff3-86c7-f9018fa540a4" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ClassListPageUrl" fieldcaption="ClassListPageUrl" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="e07d265c-31fd-406f-9541-16cac0262eaf" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ClassNodeNameSource" fieldcaption="ClassNodeNameSource" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f629c749-07df-4771-86b1-c6cc01a5dd05"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ClassTableName" fieldcaption="ClassTableName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d760ba06-04f3-4e95-9b0b-28d4ce696946"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ClassViewPageUrl" fieldcaption="ClassViewPageUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="79a6670e-2b88-4bdb-9091-5a7a4f458a18" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ClassPreviewPageUrl" fieldcaption="ClassPreviewPageUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="6857dea5-dbef-4dd1-88d5-6ba7f22b06b9" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ClassFormLayout" fieldcaption="ClassFormLayout" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="eb01e0b3-1b93-4d91-93f8-54d8f6f91b15"><settings><controlname>textareacontrol</controlname></settings></field><field column="ClassNewPageUrl" fieldcaption="ClassNewPageUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="066a9293-b55f-47fc-9c7c-e7f7e8c27644" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field><field column="ClassShowAsSystemTable" fieldcaption="ClassShowAsSystemTable" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d87cfae9-2047-4017-a690-136fd115ace2"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ClassUsePublishFromTo" fieldcaption="ClassUsePublishFromTo" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4d010adc-2aef-457b-a562-bb5bb0321769"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ClassShowTemplateSelection" fieldcaption="ClassShowTemplateSelection" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="84b93b79-ce58-44de-8893-31e7eca71bc8"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ClassSKUMappings" fieldcaption="ClassSKUMappings" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="23b8b405-f437-437f-9c02-7dce6982c0b1"><settings><controlname>textareacontrol</controlname></settings></field><field column="ClassIsMenuItemType" fieldcaption="ClassIsMenuItemType" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3287da27-313b-49a1-ac44-ec688c65e0ed"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ClassNodeAliasSource" fieldcaption="ClassNodeAliasSource" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="63944d9a-287a-46f5-8386-1976159b07da"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ClassDefaultPageTemplateID" fieldcaption="ClassDefaultPageTemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b1532089-6b7c-4367-9e09-3e7c5911af56"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ClassSKUDefaultDepartmentID" fieldcaption="ClassSKUDefaultDepartmentID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="12639c69-eedf-4384-aac9-13a735cd9b8b" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ClassSKUDefaultDepartmentName" fieldcaption="ClassSKUDefaultDepartmentName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="10215ba1-1259-43be-9e88-5ec13e1347e5" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ClassLastModified" fieldcaption="ClassLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="77b800c3-26ee-48bb-9608-1054f69aa4b8"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ClassGUID" fieldcaption="ClassGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3d1a72e7-721a-40e2-97e6-d5fdf19507f2"><settings><controlname>unknown</controlname></settings></field><field column="ClassCreateSKU" fieldcaption="ClassCreateSKU" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1398a9ae-7b15-4f75-9eda-554897bdae77"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ClassIsProduct" fieldcaption="ClassIsProduct" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3f8608a0-bb65-435a-afc7-3731390f52d7"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ClassLoadGeneration" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="27012dbf-cb1d-48f5-b5a6-8ea49a1cb3ae"><settings><controlname>labelcontrol</controlname></settings></field><field column="ClassSearchTitleColumn" fieldcaption="ClassSearchTitleColumn" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="cac829b9-641f-48dd-bcac-5c6bbb1bb6a4" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ClassSearchContentColumn" fieldcaption="ClassSearchContentColumn" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="633d3e3a-f961-4959-89d2-b0a9ba6a6f76" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ClassSearchImageColumn" fieldcaption="ClassSearchImageColumn" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="c54398e5-ee11-4188-8b4b-5133bca4e00c" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ClassSearchCreationDateColumn" fieldcaption="ClassSearchCreationDateColumn" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="ee76b6d7-4341-4138-b54b-75f86f063233" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ClassSearchSettings" fieldcaption="ClassSearchSettings" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a2cb82b7-0186-400f-99c2-795dfbb5d871" visibility="none"><settings><controlname>textareacontrol</controlname></settings></field><field column="ClassInheritsFromClassID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="c08dc0f4-80db-48b1-97ba-696d2fd6206f" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ClassSearchEnabled" fieldcaption="ClassID" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="220bed13-39f7-4b8b-8cb4-40ae38b7e491" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ClassContactMapping" fieldcaption="ClassContactMapping" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cf4c46fd-97a6-4e0e-a0b4-2d077569aa06" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ClassContactOverwriteEnabled" fieldcaption="Allow overwrite contact information" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" fielddescription="This setting allows to overwrite existing contact information with submitted data. If the setting is false, only empty values of a contact can be filled." publicfield="false" guid="75dfeace-100a-4963-b1b0-05471f116c91" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ClassSKUDefaultProductType" fieldcaption="ClassSKUDefaultProductType" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="da3a6813-c7e3-4780-a297-5cf0b7f5a0c3" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ClassConnectionString" fieldcaption="{$connectionstring.title$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="44fc8a11-5f0c-4237-9401-b5aed4341579" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ClassIsProductSection" fieldcaption="ClassIsProductSection" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="55448646-1226-4a0d-b3db-0c14e087cf5d" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ClassPageTemplateCategoryID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3393dec4-ba7a-4981-97a5-d03fa2a7d2ba" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_Class', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120830 16:48:23', 'd7e91104-201b-4b11-9550-e93ad9a4d81f', 0, 1, 0, N'', 1, N'ClassDisplayName', N'0', N'', N'ClassLastModified', N'<search><item searchable="True" name="ClassID" tokenized="False" content="False" id="1c2051cd-c298-43ad-b099-fb8a31f4abdb" /><item searchable="False" name="ClassDisplayName" tokenized="True" content="True" id="cc3bfcc3-36a8-4b1e-8780-885212b7a129" /><item searchable="False" name="ClassName" tokenized="True" content="True" id="059bfd1f-4496-436e-bda6-31ae751d553c" /><item searchable="True" name="ClassUsesVersioning" tokenized="False" content="False" id="a53c3c63-1a5e-4d9e-9f72-fac632e4f59e" /><item searchable="True" name="ClassIsDocumentType" tokenized="False" content="False" id="e99b92f3-6125-4bc0-a042-8504bff95971" /><item searchable="True" name="ClassIsCoupledClass" tokenized="False" content="False" id="2768efbd-dc43-4520-a380-998c75204a53" /><item searchable="False" name="ClassXmlSchema" tokenized="True" content="True" id="5d60a128-33bc-4f66-a025-8bf6f5aef4c9" /><item searchable="False" name="ClassFormDefinition" tokenized="True" content="True" id="a57a6823-118e-4f6b-a45f-8cde928be41e" /><item searchable="False" name="ClassEditingPageUrl" tokenized="True" content="True" id="a98a90da-760b-42b2-8e6e-ca02aaa0dfe6" /><item searchable="False" name="ClassListPageUrl" tokenized="True" content="True" id="26a55a95-20a9-43b8-baa8-090a22a06c37" /><item searchable="False" name="ClassNodeNameSource" tokenized="True" content="True" id="1fda191e-e73c-4875-b513-9d3264fc5b67" /><item searchable="False" name="ClassTableName" tokenized="True" content="True" id="37e4a28a-e022-44ce-bc67-57510898df62" /><item searchable="False" name="ClassViewPageUrl" tokenized="True" content="True" id="29a4abe3-dc3b-4e55-a52b-efeda6e95563" /><item searchable="False" name="ClassPreviewPageUrl" tokenized="True" content="True" id="a10836a0-6ca9-4c11-ac9c-05a195a424b3" /><item searchable="False" name="ClassFormLayout" tokenized="True" content="True" id="2d0bcd70-506a-47e8-abf3-a9ab247ba35a" /><item searchable="False" name="ClassNewPageUrl" tokenized="True" content="True" id="6a947437-ed63-4848-8776-96fa18c2d066" /><item searchable="True" name="ClassShowAsSystemTable" tokenized="False" content="False" id="5d06611d-2b88-4214-bba0-4b2513935354" /><item searchable="True" name="ClassUsePublishFromTo" tokenized="False" content="False" id="730df344-6045-47d2-ba57-64cfdec02e6c" /><item searchable="True" name="ClassShowTemplateSelection" tokenized="False" content="False" id="831c6d6f-339c-44fc-addd-defc91777129" /><item searchable="False" name="ClassSKUMappings" tokenized="True" content="True" id="37b4d22a-472b-40e2-a4e6-2b226c0adf5d" /><item searchable="True" name="ClassIsMenuItemType" tokenized="False" content="False" id="ea9ac100-2357-4ed2-9e06-176e9e5ae08b" /><item searchable="False" name="ClassNodeAliasSource" tokenized="True" content="True" id="3d0f4ab7-4616-4dc3-9b55-9bc7a389e232" /><item searchable="True" name="ClassDefaultPageTemplateID" tokenized="False" content="False" id="7eb08a63-2da3-4dc6-933c-211d815fec7f" /><item searchable="True" name="ClassSKUDefaultDepartmentID" tokenized="False" content="False" id="5417800f-ae6b-4c3f-bfa4-e635b4d02b3a" /><item searchable="True" name="ClassLastModified" tokenized="False" content="False" id="7559bd37-f81c-40f3-a365-101d84c454bd" /><item searchable="False" name="ClassGUID" tokenized="False" content="False" id="e69c8e58-7e42-4327-b2b4-1a8274adf679" /><item searchable="True" name="ClassCreateSKU" tokenized="False" content="False" id="b625cdda-7351-4bdf-b158-5171ab7e6749" /><item searchable="True" name="ClassIsProduct" tokenized="False" content="False" id="50ab1fed-cbe2-4289-b344-293bfe0e200a" /><item searchable="True" name="ClassLoadGeneration" tokenized="False" content="False" id="15056457-0b99-46a6-8c90-f1e307921e40" /><item searchable="False" name="ClassSearchTitleColumn" tokenized="True" content="True" id="ade29f34-a771-403e-a3d8-56e83af38d44" /><item searchable="False" name="ClassSearchContentColumn" tokenized="True" content="True" id="03c36ead-5fba-4c45-9e59-1e32d38f0359" /><item searchable="False" name="ClassSearchImageColumn" tokenized="True" content="True" id="15770901-f850-4f1e-827e-d13747f7f225" /><item searchable="False" name="ClassSearchCreationDateColumn" tokenized="True" content="True" id="d2cc2153-0b80-4e46-84e2-7aef8ceb2d6b" /><item searchable="False" name="ClassSearchSettings" tokenized="True" content="True" id="981d1582-133c-4a8b-803c-010d65f559fc" /><item searchable="True" name="ClassInheritsFromClassID" tokenized="False" content="False" id="99a8d175-d880-4347-a9e0-0328df28c2c3" /><item searchable="True" name="ClassSearchEnabled" tokenized="False" content="False" id="a3720b7f-d6a5-48d5-b4af-1c60421418ed" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (157, N'Page template', N'cms.pagetemplate', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_PageTemplate">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="PageTemplateID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="PageTemplateDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageTemplateCodeName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageTemplateDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageTemplateFile">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageTemplateIsPortal" type="xs:boolean" minOccurs="0" />
              <xs:element name="PageTemplateCategoryID" type="xs:int" minOccurs="0" />
              <xs:element name="PageTemplateLayoutID" type="xs:int" minOccurs="0" />
              <xs:element name="PageTemplateWebParts" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageTemplateIsReusable" type="xs:boolean" minOccurs="0" />
              <xs:element name="PageTemplateShowAsMasterTemplate" type="xs:boolean" minOccurs="0" />
              <xs:element name="PageTemplateInheritPageLevels" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageTemplateLayout" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageTemplateVersionGUID" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageTemplateHeader" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageTemplateGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="PageTemplateLastModified" type="xs:dateTime" />
              <xs:element name="PageTemplateSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="PageTemplateForAllPages" type="xs:boolean" minOccurs="0" />
              <xs:element name="PageTemplateType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="10" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageTemplateLayoutType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageTemplateCSS" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageTemplateIsAllowedForProductSection" type="xs:boolean" minOccurs="0" />
              <xs:element name="PageTemplateInheritParentHeader" type="xs:boolean" minOccurs="0" />
              <xs:element name="PageTemplateAllowInheritHeader" type="xs:boolean" minOccurs="0" />
              <xs:element name="PageTemplateThumbnailGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="PageTemplateCloneAsAdHoc" type="xs:boolean" minOccurs="0" />
              <xs:element name="PageTemplateDefaultController" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageTemplateDefaultAction" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageTemplateNodeGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="PageTemplateMasterPageTemplateID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_PageTemplate" />
      <xs:field xpath="PageTemplateID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="PageTemplateID" fieldcaption="PageTemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="1e965561-7a54-4269-bbd3-4784c10e33b8"><settings><controlname>labelcontrol</controlname></settings></field><field column="PageTemplateDisplayName" fieldcaption="PageTemplateDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="62991232-e9a8-494d-b31e-6be68f6610b0" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PageTemplateCodeName" fieldcaption="PageTemplateCodeName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="a0e4fcc6-0885-4d0c-a311-679a0b2bd0bb" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="PageTemplateDescription" fieldcaption="PageTemplateDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0a71b845-085d-4b4b-a736-242db5a8d7bc" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="PageTemplateFile" defaultvalue="a" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="400" publicfield="false" guid="98909a70-0f54-49d6-957a-fed89cd4db44" visibility="none"><settings><controlname>checkboxlistcontrol</controlname></settings></field><field column="PageTemplateIsPortal" fieldcaption="PageTemplateIsPortal" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="59ed01c6-4b29-439e-8519-593f886be9bb"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="PageTemplateCSS" fieldcaption="PageTemplateCSS" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="581d351f-202e-46a8-81c6-1da5163afeb5" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="PageTemplateCategoryID" fieldcaption="PageTemplateCategoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="60d03ec1-54ec-4531-a401-d8cf50ffd962"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PageTemplateLayoutID" fieldcaption="PageTemplateLayoutID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="07361311-11ba-43e0-aff0-5c7bc261967b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PageTemplateWebParts" fieldcaption="PageTemplateWebParts" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9ac0e7d2-2166-440d-b7db-2c93b6671d46"><settings><controlname>textareacontrol</controlname></settings></field><field column="PageTemplateIsReusable" fieldcaption="PageTemplateIsReusable" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="69c10c7c-0ec3-48ba-9237-78f4fb1e36d9"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="PageTemplateShowAsMasterTemplate" fieldcaption="PageTemplateShowAsMasterTemplate" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c38d560c-db21-4758-b025-04ddfb1d4c7e"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="PageTemplateInheritPageLevels" fieldcaption="PageTemplateInheritPageLevels" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="db56a561-db7e-4fc7-899e-82fe7a079ad5"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PageTemplateLayoutType" columntype="text" fieldtype="CustomUserControl" allowempty="true" columnsize="50" publicfield="false" guid="5d59dad1-4266-41e2-8cd9-72ac744a3a16" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="PageTemplateLayout" fieldcaption="PageTemplateLayout" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fef00776-f430-4164-9d1a-cf4bba1f3ecd"><settings><controlname>textareacontrol</controlname></settings></field><field column="PageTemplateVersionGUID" fieldcaption="PageTemplateVersionGUID" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b42bc101-e5a5-4293-9e1e-ecdbd7159c44"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PageTemplateHeader" fieldcaption="PageTemplateHeader" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="44e13d8a-452b-4e4b-b535-5573a07876c9"><settings><controlname>textareacontrol</controlname></settings></field><field column="PageTemplateGUID" fieldcaption="PageTemplateGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="46bb92aa-a912-46b3-a858-b35b05e4fd9b"><settings><controlname>unknown</controlname></settings></field><field column="PageTemplateLastModified" fieldcaption="PageTemplateLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="343c268d-28f9-428f-88fb-38f1f8d0ed39"><settings><controlname>calendarcontrol</controlname></settings></field><field column="PageTemplateSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="352a6057-db2b-463f-82b6-fe29c94e3dde"><settings><controlname>labelcontrol</controlname></settings></field><field column="PageTemplateForAllPages" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="69097c75-42f7-43ba-b841-df725d5b2035" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="PageTemplateType" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="10" publicfield="false" guid="f14378b4-e243-43d1-b6be-b7a5aa0ee58d" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="PageTemplateIsAllowedForProductSection" fieldcaption="PageTemplateIsAllowedForProductSection" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="61e641da-8c97-434a-8be2-fcd5ef11e0ef" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="PageTemplateInheritParentHeader" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d33bd14c-e56e-4e2f-b9af-72c76d868f9a" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="PageTemplateAllowInheritHeader" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8e9e96b8-40c9-47a8-b1c2-688550220232" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="PageTemplateThumbnailGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e2e780ea-a632-49c3-99f5-afb998604b9f" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="PageTemplateCloneAsAdHoc" fieldcaption="Clone as ad-hoc for new documents" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8206a2cd-bd1a-4e73-895f-7dabcb0dd71c" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="PageTemplateDefaultController" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="a584430a-b804-4e62-8552-d9df83cbb942" visibility="none"><settings><controlname>allowedextensionsselector</controlname></settings></field><field column="PageTemplateDefaultAction" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="10e9b2c7-4b74-4e41-b6d0-eabb09187bf0" visibility="none"><settings><controlname>allowedextensionsselector</controlname></settings></field><field column="PageTemplateNodeGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e33e8665-7b38-4166-bd80-7f607f0b75b9" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="PageTemplateMasterPageTemplateID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6debbdd6-733f-48e5-9b6b-ac6b94e8ebbf" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'~/CMSModules/PortalEngine/UI/PageTemplates/PageTemplate_Edit.aspx?templateid={%EditedObject.ID%}&aliaspath=/&dialog=1&editonlycode=1', N'', N'', N'CMS_PageTemplate', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120810 09:51:13', '8bb71cc8-1fcb-4073-b127-0e3574ecc207', 0, 1, 0, N'', 0, N'PageTemplateDisplayName', N'PageTemplateDescription', N'', N'PageTemplateLastModified', N'<search><item searchable="True" name="PageTemplateID" tokenized="False" content="False" id="a1b6f140-ef4c-4ca0-a367-f3f41ff729d5" /><item searchable="False" name="PageTemplateDisplayName" tokenized="True" content="True" id="2e225143-d0aa-46b6-81e7-d01704a796cc" /><item searchable="False" name="PageTemplateCodeName" tokenized="True" content="True" id="909c5d79-9a64-44aa-b180-4327d6b554a0" /><item searchable="False" name="PageTemplateDescription" tokenized="True" content="True" id="fb0cdb9e-246c-4e34-8d1a-cc061fe8420d" /><item searchable="False" name="PageTemplateFile" tokenized="True" content="True" id="e32a7294-e500-467a-8017-67e3f2706a10" /><item searchable="True" name="PageTemplateIsPortal" tokenized="False" content="False" id="416eeb4c-7a99-4975-a8ae-dae278789837" /><item searchable="True" name="PageTemplateCategoryID" tokenized="False" content="False" id="192829eb-1ad1-4d6e-a990-a10f606d1e14" /><item searchable="True" name="PageTemplateLayoutID" tokenized="False" content="False" id="0f265a20-d746-4a82-863c-d433534a273f" /><item searchable="False" name="PageTemplateWebParts" tokenized="True" content="True" id="ad073ac9-5126-4aed-b561-e6d81bed0e4a" /><item searchable="True" name="PageTemplateIsReusable" tokenized="False" content="False" id="b78c44f4-9b8f-4f26-a30a-00005d2968ba" /><item searchable="True" name="PageTemplateShowAsMasterTemplate" tokenized="False" content="False" id="e965f620-dd3e-4737-b5c9-f3ead6ec8cbe" /><item searchable="False" name="PageTemplateInheritPageLevels" tokenized="True" content="True" id="d25508e0-325a-429b-a697-542d19fdaef7" /><item searchable="False" name="PageTemplateLayoutType" tokenized="True" content="True" id="2b440e5a-06f1-41ab-acc1-39aa164f78be" /><item searchable="False" name="PageTemplateLayout" tokenized="True" content="True" id="d59ac986-9b30-4839-8701-c136bbd23719" /><item searchable="False" name="PageTemplateLayoutCheckedOutFileName" tokenized="True" content="True" id="ff651ce4-b258-4ad9-bd3e-e8951baadf94" /><item searchable="True" name="PageTemplateLayoutCheckedOutByUserID" tokenized="False" content="False" id="21b93660-1f64-412d-993a-f33ada3218da" /><item searchable="False" name="PageTemplateLayoutCheckedOutMachineName" tokenized="True" content="True" id="ff86a5a2-f52e-4baf-8056-4acf5733c48f" /><item searchable="False" name="PageTemplateVersionGUID" tokenized="True" content="True" id="bb9895d1-93dc-4ed6-a8f6-0be2dbcdcb11" /><item searchable="False" name="PageTemplateHeader" tokenized="True" content="True" id="e9d3ab52-ac73-4287-8bef-25a03f3b52db" /><item searchable="False" name="PageTemplateGUID" tokenized="False" content="False" id="0e524b98-c5b5-4a97-9f11-a90049de4799" /><item searchable="True" name="PageTemplateLastModified" tokenized="False" content="False" id="5207daac-53f4-41eb-8572-d2d5bbd8d347" /><item searchable="True" name="PageTemplateSiteID" tokenized="False" content="False" id="ab4b957a-08da-44c5-bb9a-bcc86dd4fc21" /><item searchable="True" name="PageTemplateForAllPages" tokenized="False" content="False" id="ad5127d1-5324-44f3-8d98-b426693d95e7" /><item searchable="False" name="PageTemplateType" tokenized="True" content="True" id="80045e5c-1e3f-47f6-9bd7-a61dffc3d0e0" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (161, N'Query', N'cms.query', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Query">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="QueryID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="QueryName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="QueryTypeID" type="xs:int" />
              <xs:element name="QueryText">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="QueryRequiresTransaction" type="xs:boolean" />
              <xs:element name="ClassID" type="xs:int" minOccurs="0" />
              <xs:element name="QueryIsLocked" type="xs:boolean" />
              <xs:element name="QueryLastModified" type="xs:dateTime" />
              <xs:element name="QueryGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="QueryLoadGeneration" type="xs:int" />
              <xs:element name="QueryIsCustom" type="xs:boolean" minOccurs="0" />
              <xs:element name="QueryConnectionString" minOccurs="0">
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
      <xs:selector xpath=".//CMS_Query" />
      <xs:field xpath="QueryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="QueryID" fieldcaption="QueryID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="5c3db3dc-6a01-4d2a-9b74-24b79704a82b"><settings><controlname>labelcontrol</controlname></settings></field><field column="QueryName" fieldcaption="QueryName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ad1056d3-34b8-41b3-b31d-bdf116f010ec" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="QueryTypeID" fieldcaption="QueryTypeID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b96bf312-8b7c-42d2-b0b2-a395e10ccfd4"><settings><controlname>textboxcontrol</controlname></settings></field><field column="QueryText" fieldcaption="QueryText" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bcfc8502-008d-4d21-aac1-63810e7d563c"><settings><controlname>textareacontrol</controlname></settings></field><field column="QueryRequiresTransaction" fieldcaption="QueryRequiresTransaction" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5cc03d8e-017e-4a5c-bb1e-5f7c42290ab7"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ClassID" fieldcaption="ClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="34bfc28c-0e6a-497b-a761-eb00dd435ae3" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field><field column="QueryIsLocked" fieldcaption="QueryIsLocked" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="154d5cd0-615c-4f4f-b158-434357d93a8f"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="QueryLastModified" fieldcaption="QueryLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8763542e-3500-4ae8-8fc7-07cd5a116f06"><settings><controlname>calendarcontrol</controlname></settings></field><field column="QueryGUID" fieldcaption="QueryGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6f3b0835-98e0-49f8-a972-74e39d7d91d8"><settings><controlname>unknown</controlname></settings></field><field column="QueryLoadGeneration" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3505f469-2896-4606-903e-b7bdc7766a89"><settings><controlname>labelcontrol</controlname></settings></field><field column="QueryIsCustom" fieldcaption="QueryIsCustom" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="be70ac52-0624-49e5-ae56-d9f95f3ddf56"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="QueryConnectionString" fieldcaption="{$connectionstring.title$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="3669287b-157c-4369-87a0-9dbf8da052ec" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'CMS_Query', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120622 15:15:58', '821c115d-0b5b-4d8a-b5f9-7d2e0f97e0bd', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (162, N'Transformation', N'cms.transformation', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Transformation">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TransformationID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TransformationName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TransformationCode">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TransformationType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TransformationClassID" type="xs:int" />
              <xs:element name="TransformationVersionGUID" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TransformationGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="TransformationLastModified" type="xs:dateTime" />
              <xs:element name="TransformationIsHierarchical" type="xs:boolean" minOccurs="0" />
              <xs:element name="TransformationHierarchicalXML" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TransformationCSS" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TransformationPreferredDocument" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="700" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Transformation" />
      <xs:field xpath="TransformationID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TransformationID" fieldcaption="TransformationID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="15f5489f-158e-434c-b8a8-3b246917aa3a" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TransformationName" fieldcaption="TransformationName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" regularexpression="^(?:[A-Za-z0-9_\\-]+)(?:\\.[A-Za-z0-9_\\-]+)*$" validationerrormessage="{$documenttype_edit.transformationnameformat$}" publicfield="false" guid="8f32aaee-ed30-464d-b321-d5b1f8779039" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TransformationCode" fieldcaption="TransformationCode" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="87c280d1-e998-451b-9dfb-8cbbd2891b0a" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TransformationType" fieldcaption="TransformationType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="50" publicfield="false" guid="12c4729c-16f6-4565-8509-2db6af52df99" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TransformationClassID" fieldcaption="TransformationClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="72b254ff-a179-46f9-851e-c968e8324328" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TransformationCSS" fieldcaption="TransformationCSS" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="38e823cd-030a-41b2-b64a-8e680d40c6b7" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TransformationVersionGUID" fieldcaption="TransformationVersionGUID" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="e269354c-1f6e-4e55-8158-73d059b01941" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TransformationGUID" fieldcaption="TransformationGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6a375a9a-04d7-4592-8df8-acc1f5127249" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TransformationLastModified" fieldcaption="TransformationLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c19c9cd6-60e5-40de-b547-dd045a32c3de" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TransformationIsHierarchical" fieldcaption="TransformationIsHierarchical" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" publicfield="false" guid="a6087c19-3262-4b37-9fd2-f3d2c135f260" visibility="none" translatefield="true"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TransformationHierarchicalXML" fieldcaption="TransformationHierarchicalXML" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" publicfield="false" guid="4099b257-bafc-402f-8096-71930c3453df" visibility="none" translatefield="true"><settings><controlname>labelcontrol</controlname></settings></field><field column="TransformationPreferredDocument" fieldcaption="TransformationID" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="700" publicfield="false" guid="70e34180-8d0d-43c2-8c09-11d6d1e75af3" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'~/CMSModules/DocumentTypes/Pages/Development/DocumentType_Edit_Transformation_Frameset.aspx?transformationid={%EditedObject.ID%}&classid={%EditedObject.ParentID%}&editonlycode=1', N'', N'', N'CMS_Transformation', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120810 09:50:49', '719c71f8-4dcd-4ab5-8d4e-84e6a60fe7be', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (171, N'Workflow', N'cms.workflow', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Workflow">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="WorkflowID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="WorkflowDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WorkflowName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WorkflowGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="WorkflowLastModified" type="xs:dateTime" />
              <xs:element name="WorkflowAutoPublishChanges" type="xs:boolean" minOccurs="0" />
              <xs:element name="WorkflowUseCheckinCheckout" type="xs:boolean" minOccurs="0" />
              <xs:element name="WorkflowType" type="xs:int" minOccurs="0" />
              <xs:element name="WorkflowSendEmails" type="xs:boolean" minOccurs="0" />
              <xs:element name="WorkflowSendApproveEmails" type="xs:boolean" minOccurs="0" />
              <xs:element name="WorkflowSendRejectEmails" type="xs:boolean" minOccurs="0" />
              <xs:element name="WorkflowSendPublishEmails" type="xs:boolean" minOccurs="0" />
              <xs:element name="WorkflowSendArchiveEmails" type="xs:boolean" minOccurs="0" />
              <xs:element name="WorkflowApprovedTemplateName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WorkflowRejectedTemplateName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WorkflowPublishedTemplateName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WorkflowArchivedTemplateName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WorkflowSendReadyForApprovalEmails" type="xs:boolean" minOccurs="0" />
              <xs:element name="WorkflowReadyForApprovalTemplateName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WorkflowNotificationTemplateName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WorkflowAllowedObjects" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WorkflowRecurrenceType" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Workflow" />
      <xs:field xpath="WorkflowID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="WorkflowID" fieldcaption="WorkflowID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="bf3f5149-ebe0-4c41-8cde-79a0e63bdb66" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="WorkflowDisplayName" fieldcaption="WorkflowDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="1493eba2-b913-4a2f-af71-9df4ebcb6f51" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="WorkflowName" fieldcaption="WorkflowName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="c0821ace-fa5b-4e08-b9eb-32783abd66c9" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="WorkflowGUID" fieldcaption="WorkflowGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a7be7df7-232f-4cf4-8446-09df882727bc"><settings><controlname>unknown</controlname></settings></field><field column="WorkflowLastModified" fieldcaption="WorkflowLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="83b95ad1-000c-4e16-9177-71b438a75d3c"><settings><controlname>calendarcontrol</controlname></settings></field><field column="WorkflowAutoPublishChanges" fieldcaption="WorkflowAutoPublishChanges" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="947759f0-e4ee-4286-8ed3-4a33506ee50e" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="WorkflowUseCheckinCheckout" fieldcaption="WorkflowUseCheckinCheckout" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="64518cad-820b-425a-9553-3a11fe06a609" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="WorkflowType" fieldcaption="WorkflowType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="23dba236-db4e-4549-8dd9-bb15ae665296" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="WorkflowSendEmails" fieldcaption="WorkflowSendEmails" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="772b67c7-150b-48a0-856e-22ca96d9f747" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="WorkflowSendApproveEmails" fieldcaption="WorkflowSendApproveEmails" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b1241a2a-d1b7-4fee-a4cf-9a851a768887" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="WorkflowApprovedTemplateName" fieldcaption="WorkflowApprovedTemplateName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="b12d21d4-a5b9-407d-815f-a7340247efeb" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="WorkflowSendRejectEmails" fieldcaption="WorkflowSendRejectEmails" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0d4d8bad-2cdd-4fbb-a128-4cc3f77b9b1f" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="WorkflowRejectedTemplateName" fieldcaption="WorkflowRejectedTemplateName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="0dd2bd6e-2f9e-49dc-9d00-1d7aed9062b5" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="WorkflowSendPublishEmails" fieldcaption="WorkflowSendPublishEmails" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="73960e86-97a9-4e64-8cbe-f678f72e2698" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="WorkflowPublishedTemplateName" fieldcaption="WorkflowPublishedTemplateName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="c93eb40e-cdbb-4b73-9564-59a8923f80ec" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="WorkflowSendArchiveEmails" fieldcaption="WorkflowSendArchiveEmails" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8b05ab93-3365-4a76-beb8-d02d126e681b" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="WorkflowArchivedTemplateName" fieldcaption="WorkflowArchivedTemplateName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="5cadd028-def3-4a36-97e8-53075839241c" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="WorkflowSendReadyForApprovalEmails" fieldcaption="WorkflowSendReadyForApprovalEmails" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a3f5583f-eaed-4189-9f26-ebd08b763cb8" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="WorkflowReadyForApprovalTemplateName" fieldcaption="WorkflowReadyForApprovalTemplateName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="e1fcdf91-da81-40c3-85f1-222ac1580baf" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="WorkflowNotificationTemplateName" fieldcaption="WorkflowNotificationTemplateName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="2633af02-6838-4651-872f-ca07c95c3ec1" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="WorkflowAllowedObjects" fieldcaption="Workflow allowed objects" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e4a38770-488d-4b0f-8367-1b0fb3aaa18d" visibility="none"><settings><controlname>object_type_selector</controlname><AllowAll>False</AllowAll></settings></field><field column="WorkflowRecurrenceType" fieldcaption="WorkflowRecurrenceType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c4da319f-62aa-46d7-8132-ba1ea48d1253" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'CMS_Workflow', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120723 07:47:34', 'a80047fb-e386-48ea-b433-bcdd92d131e4', 0, 1, 0, N'', 1, N'WorkflowDisplayName', N'0', N'', N'WorkflowLastModified', N'<search><item searchable="True" name="WorkflowID" tokenized="False" content="False" id="e0278c57-1956-4017-8fcc-b00c05e3c351" /><item searchable="False" name="WorkflowDisplayName" tokenized="True" content="True" id="d6d7c536-2469-4a12-b20d-3978ff14e7c2" /><item searchable="False" name="WorkflowName" tokenized="True" content="True" id="c84f56c2-6381-4de9-a0a4-23364863ad50" /><item searchable="False" name="WorkflowGUID" tokenized="False" content="False" id="8d65e12e-beb6-44c2-84dc-e914c0fbed2d" /><item searchable="True" name="WorkflowLastModified" tokenized="False" content="False" id="56cb66ec-4f6a-4ed2-ad94-32fcbe88385c" /><item searchable="True" name="WorkflowAutoPublishChanges" tokenized="False" content="False" id="fa9d7121-6d35-43ed-b55a-7f4d0ab8e373" /><item searchable="True" name="WorkflowUseCheckinCheckout" tokenized="False" content="False" id="9a90c5ca-53ce-4a84-a9ba-60eb4dce5b03" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (172, N'Workflow step', N'cms.workflowstep', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WorkflowStep">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="StepID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="StepDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StepName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="440" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StepOrder" type="xs:int" minOccurs="0" />
              <xs:element name="StepWorkflowID" type="xs:int" />
              <xs:element name="StepGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="StepLastModified" type="xs:dateTime" />
              <xs:element name="StepType" type="xs:int" minOccurs="0" />
              <xs:element name="StepAllowReject" type="xs:boolean" minOccurs="0" />
              <xs:element name="StepDefinition" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StepRolesSecurity" type="xs:int" minOccurs="0" />
              <xs:element name="StepUsersSecurity" type="xs:int" minOccurs="0" />
              <xs:element name="StepApprovedTemplateName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StepRejectedTemplateName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StepReadyforApprovalTemplateName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StepSendApproveEmails" type="xs:boolean" minOccurs="0" />
              <xs:element name="StepSendRejectEmails" type="xs:boolean" minOccurs="0" />
              <xs:element name="StepSendReadyForApprovalEmails" type="xs:boolean" minOccurs="0" />
              <xs:element name="StepSendEmails" type="xs:boolean" minOccurs="0" />
              <xs:element name="StepAllowPublish" type="xs:boolean" minOccurs="0" />
              <xs:element name="StepActionID" type="xs:int" minOccurs="0" />
              <xs:element name="StepActionParameters" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StepWorkflowType" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_WorkflowStep" />
      <xs:field xpath="StepID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="StepID" fieldcaption="StepID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="dfd2799a-66de-4a1f-ba2a-f53ba992521f"><settings><controlname>labelcontrol</controlname></settings></field><field column="StepDisplayName" fieldcaption="StepDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="9a698a96-f6c6-4814-bf15-d1f010a30df4"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StepName" fieldcaption="StepName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="440" publicfield="false" guid="aec2d92f-840a-42c1-a7fa-c5e9ff31df60"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StepOrder" fieldcaption="StepOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6e5445e6-c8f9-40ad-bd9d-5200229ed50a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StepWorkflowID" fieldcaption="StepWorkflowID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="049b5d7d-4e7b-457e-8cf7-330a5aeffb9f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StepGUID" fieldcaption="StepGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4ec30499-ea5f-4999-9789-100a7ca8e59f"><settings><controlname>labelcontrol</controlname></settings></field><field column="StepLastModified" fieldcaption="StepLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="507a485e-ab44-41f6-8c22-9c29771f2832"><settings><controlname>calendarcontrol</controlname></settings></field><field column="StepType" fieldcaption="StepType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="00492fa3-f303-4d73-b232-06002242544e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StepAllowReject" fieldcaption="StepAllowReject" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7ed14742-d6ad-4b42-872e-5c62268eac2d"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="StepDefinition" fieldcaption="StepDefinition" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="37e735b7-45a1-4ce8-a941-c5b60a2134a1"><settings><controlname>textareacontrol</controlname></settings></field><field column="StepActionParameters" fieldcaption="StepActionParameters" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2b4a4191-32ce-4894-9119-e41e389882e0" visibility="none"><settings><controlname>largetextarea</controlname></settings></field><field column="StepRolesSecurity" fieldcaption="StepRolesSecurity" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a1afef11-fe1e-4956-ad86-cc70e94ba99f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StepUsersSecurity" fieldcaption="StepUsersSecurity" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="889d4850-245f-4927-bd9a-3592612afbb8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StepApprovedTemplateName" fieldcaption="StepApprovedTemplateName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="019fd464-e1f3-4eae-9031-b0b484aa4db3"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StepRejectedTemplateName" fieldcaption="StepRejectedTemplateName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="13785671-e66e-40c9-9de1-ba84e3b37f7f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StepReadyforApprovalTemplateName" fieldcaption="StepReadyforApprovalTemplateName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="e0ac8026-9995-4427-a613-cfbad4c9c7b8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StepSendApproveEmails" fieldcaption="StepSendApproveEmails" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7d8bddd3-8f5d-4bfe-994c-16d40f69be03"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="StepSendRejectEmails" fieldcaption="StepSendRejectEmails" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f479ab44-f3eb-4d34-9776-503aba1390a3"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="StepSendReadyForApprovalEmails" fieldcaption="StepSendReadyForApprovalEmails" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b7620869-ebe1-49a2-b56d-627047441bcf"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="StepSendEmails" fieldcaption="StepSendEmails" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4108270f-1cbf-4911-9513-e07079791310"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="StepAllowPublish" fieldcaption="StepAllowPublish" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c25d48eb-2d42-4ccd-a3a8-16599234c964"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="StepActionID" fieldcaption="StepActionID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f4972d47-1bcf-49a1-ae31-6d6f39349c1e" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="StepWorkflowType" fieldcaption="StepWorkflowType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="70ccbc86-b560-47ab-be83-dbb7d2a23a06" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_WorkflowStep', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120829 10:28:19', '6fc9d49b-83c2-4a7e-9a33-037883a76a26', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (175, N'Workflow scope', N'cms.workflowscope', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WorkflowScope">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ScopeID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ScopeStartingPath">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ScopeWorkflowID" type="xs:int" />
              <xs:element name="ScopeClassID" type="xs:int" minOccurs="0" />
              <xs:element name="ScopeSiteID" type="xs:int" />
              <xs:element name="ScopeGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ScopeLastModified" type="xs:dateTime" />
              <xs:element name="ScopeCultureID" type="xs:int" minOccurs="0" />
              <xs:element name="ScopeExcludeChildren" type="xs:boolean" minOccurs="0" />
              <xs:element name="ScopeExcluded" type="xs:boolean" minOccurs="0" />
              <xs:element name="ScopeMacroCondition" minOccurs="0">
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
      <xs:selector xpath=".//CMS_WorkflowScope" />
      <xs:field xpath="ScopeID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ScopeID" fieldcaption="ScopeID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="80348be1-c666-4a97-9d48-1d46bb49d061"><settings><controlname>labelcontrol</controlname></settings></field><field column="ScopeStartingPath" fieldcaption="ScopeStartingPath" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="e1bfc63e-7081-4b80-acc6-993bcc17becb" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ScopeWorkflowID" fieldcaption="ScopeWorkflowID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d53bd2fe-2023-4098-9527-fd6d13fc8cff"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ScopeClassID" fieldcaption="ScopeClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="86559d2f-0ac6-4714-adb6-e1b2ce4cae90"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ScopeSiteID" fieldcaption="ScopeSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="314be952-3e36-4868-b10b-b1026cb021cc"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ScopeGUID" fieldcaption="ScopeGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2b198dac-7fd9-46b5-bfff-e8c087bbbec2"><settings><controlname>labelcontrol</controlname></settings></field><field column="ScopeLastModified" fieldcaption="ScopeLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="42da4cc7-0319-486d-84ab-0cc0aecab0ad"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ScopeCultureID" fieldcaption="ScopeCultureID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3fd1415f-d6c5-4305-8c67-5c2cc778768a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ScopeExcludeChildren" fieldcaption="ScopeExcludeChildren" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c734ddc0-cdcd-45a2-b72e-fa37f123a004" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ScopeExcluded" fieldcaption="ScopeExcluded" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0f75405b-7625-4186-bd37-5064636d7780" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ScopeMacroCondition" fieldcaption="Starting condition" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="62c7aa61-76b5-402c-bb4e-f47775a58b86" visibility="none"><settings><controlname>macrosyntaxhighlighter</controlname><ShowAutoCompletionAbove>False</ShowAutoCompletionAbove></settings></field></form>', N'', N'', N'', N'CMS_WorkflowScope', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120717 17:34:44', '8cba8304-c75f-45ce-8f39-7f363cf5892a', 0, 1, 0, N'', 1, N'ScopeStartingPath', N'0', N'', N'ScopeLastModified', N'<search><item searchable="True" name="ScopeID" tokenized="False" content="False" id="10e3f770-b6ae-415e-b997-e386858265ff" /><item searchable="False" name="ScopeStartingPath" tokenized="True" content="True" id="fc697fc4-9f43-4fff-9c7d-6670e403c1c1" /><item searchable="True" name="ScopeWorkflowID" tokenized="False" content="False" id="c3bc06a7-86e3-4a71-ad72-e52df1a1643f" /><item searchable="True" name="ScopeClassID" tokenized="False" content="False" id="f7b938fd-f791-460d-98a1-17291995129b" /><item searchable="True" name="ScopeSiteID" tokenized="False" content="False" id="301e0569-9057-4c76-ab1d-40f8386cfbc4" /><item searchable="False" name="ScopeGUID" tokenized="False" content="False" id="6d647006-b642-4947-aea9-b30e93b048e2" /><item searchable="True" name="ScopeLastModified" tokenized="False" content="False" id="b0f0ddc1-202c-4bd7-879a-996c6ce84962" /><item searchable="True" name="ScopeCultureID" tokenized="False" content="False" id="8768d1a8-dfed-4571-98e3-b1dc28151ff2" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (214, N'Version history', N'cms.versionhistory', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_VersionHistory">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="VersionHistoryID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="NodeSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="DocumentID" type="xs:int" minOccurs="0" />
              <xs:element name="DocumentNamePath">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NodeXML">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ModifiedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="ModifiedWhen" type="xs:dateTime" />
              <xs:element name="VersionNumber" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="VersionComment" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ToBePublished" type="xs:boolean" />
              <xs:element name="PublishFrom" type="xs:dateTime" minOccurs="0" />
              <xs:element name="PublishTo" type="xs:dateTime" minOccurs="0" />
              <xs:element name="WasPublishedFrom" type="xs:dateTime" minOccurs="0" />
              <xs:element name="WasPublishedTo" type="xs:dateTime" minOccurs="0" />
              <xs:element name="VersionDocumentName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="VersionDocumentType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="VersionClassID" type="xs:int" minOccurs="0" />
              <xs:element name="VersionMenuRedirectUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="VersionWorkflowID" type="xs:int" minOccurs="0" />
              <xs:element name="VersionWorkflowStepID" type="xs:int" minOccurs="0" />
              <xs:element name="VersionNodeAliasPath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="VersionDeletedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="VersionDeletedWhen" type="xs:dateTime" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_VersionHistory" />
      <xs:field xpath="VersionHistoryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="VersionHistoryID" fieldcaption="VersionHistoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="032b5d2d-3e97-44da-a573-109f8a26c440"><settings><controlname>labelcontrol</controlname></settings></field><field column="NodeSiteID" fieldcaption="NodeSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="29aee6c7-b6a2-42d8-8180-d9947a54e404"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentID" fieldcaption="DocumentID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="90d894a9-003b-440a-9b99-96d3727a0fed"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DocumentNamePath" fieldcaption="DocumentNamePath" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d4324f6f-cb8c-4d4e-8f7d-aebc5b0e355c" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NodeXML" fieldcaption="NodeXML" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e2f43580-d08f-41ca-8ed5-2f13eba66a8a"><settings><controlname>textareacontrol</controlname></settings></field><field column="ModifiedByUserID" fieldcaption="ModifiedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a343763c-16aa-4384-bec9-2cea568b40a7"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ModifiedWhen" fieldcaption="ModifiedWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f42040c2-ecb6-444d-962b-37bf6f5353f8"><settings><controlname>calendarcontrol</controlname></settings></field><field column="VersionNumber" fieldcaption="VersionNumber" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="00fa9c9f-a418-4c97-be43-281dd1ad2d12" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="VersionComment" fieldcaption="VersionComment" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d8ebc7c7-7d2a-4a52-8fff-168c1ac1922e"><settings><controlname>textareacontrol</controlname></settings></field><field column="ToBePublished" fieldcaption="ToBePublished" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="49ac547e-9ac5-4122-afc4-446dfdea5005"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="PublishFrom" fieldcaption="PublishFrom" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6e4ae6e1-7e3d-43ce-9087-37737207429d"><settings><controlname>calendarcontrol</controlname></settings></field><field column="PublishTo" fieldcaption="PublishTo" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2c7714af-1a7e-4e94-9c1e-164579ae7921"><settings><controlname>calendarcontrol</controlname></settings></field><field column="WasPublishedFrom" fieldcaption="WasPublishedFrom" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cf5302b2-d7c4-4597-a79a-f383b16615d5"><settings><controlname>calendarcontrol</controlname></settings></field><field column="WasPublishedTo" fieldcaption="WasPublishedTo" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0cfbd232-721f-47b6-b9ce-64d7dda4c8b6"><settings><controlname>calendarcontrol</controlname></settings></field><field column="VersionDocumentName" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" spellcheck="false" guid="1f031481-47cc-4a0d-b11d-4ee356c98dab" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="VersionDocumentType" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" spellcheck="false" guid="e04be7e5-7ace-4321-a6e7-4c7bda8866eb" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="VersionClassID" fieldcaption="VersionClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fbff29c3-e335-480c-93f9-2aa8efc4124d" visibility="none"><settings><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field><field column="VersionMenuRedirectUrl" fieldcaption="VersionMenuRedirectUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="5ed177b4-6133-498a-9fda-96d89bd0545c" visibility="none"><settings><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field><field column="VersionWorkflowID" fieldcaption="VersionWorkflowID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="07148cc2-90bb-4a02-b942-315530e672f9" visibility="none"><settings><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field><field column="VersionWorkflowStepID" fieldcaption="VersionWorkflowStepID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="016a5914-2922-4a05-beb5-d22ed92e1be8" visibility="none"><settings><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field><field column="VersionNodeAliasPath" fieldcaption="VersionNodeAliasPath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="bf4bee9d-d5a0-4b4b-8b7c-4d6ce9f667d4" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="VersionDeletedByUserID" fieldcaption="VersionDeletedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ca451b08-8cc4-4f92-b1ce-cf667ed30fd0" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="VersionDeletedWhen" fieldcaption="VersionDeletedWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="70838fe4-bff3-423b-aaf6-f93be6bc248a" visibility="none"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field></form>', N'', N'', N'', N'CMS_VersionHistory', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:45', '41fd4469-5173-4b22-b89d-5fb5d2e1c5fb', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
SET IDENTITY_INSERT [CMS_Class] OFF
