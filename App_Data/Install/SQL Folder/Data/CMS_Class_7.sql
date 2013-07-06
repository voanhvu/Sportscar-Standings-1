SET IDENTITY_INSERT [CMS_Class] ON
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1527, N'MetaFile', N'cms.metafile', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_MetaFile">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="MetaFileID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="MetaFileObjectID" type="xs:int" />
              <xs:element name="MetaFileObjectType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MetaFileGroupName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MetaFileName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MetaFileExtension">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MetaFileSize" type="xs:int" />
              <xs:element name="MetaFileMimeType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MetaFileBinary" type="xs:base64Binary" minOccurs="0" />
              <xs:element name="MetaFileImageWidth" type="xs:int" minOccurs="0" />
              <xs:element name="MetaFileImageHeight" type="xs:int" minOccurs="0" />
              <xs:element name="MetaFileGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="MetaFileLastModified" type="xs:dateTime" />
              <xs:element name="MetaFileSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="MetaFileTitle" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MetaFileDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MetaFileCustomData" minOccurs="0">
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
      <xs:selector xpath=".//CMS_MetaFile" />
      <xs:field xpath="MetaFileID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="MetaFileID" fieldcaption="MetaFileID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="35d65b34-c36f-4378-baca-c732dc160c11" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="MetaFileObjectID" fieldcaption="MetaFileObjectID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="15e2572b-61cd-4cca-a8fa-f82c11c60272"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MetaFileObjectType" fieldcaption="MetaFileObjectType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c6880452-cf2a-4dc7-a35d-17842b554428"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MetaFileGroupName" fieldcaption="MetaFileGroupName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4ea15bca-6d35-40b5-b81d-b6fe1f7cb2ec"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MetaFileName" fieldcaption="MetaFileName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d80f5285-6c32-482e-b5c7-e83c60bdd66e" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MetaFileExtension" fieldcaption="MetaFileExtension" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7cc08f1f-f483-4fb3-84ef-4c0192c6dbe2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MetaFileSize" fieldcaption="MetaFileSize" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="825039bf-d2cc-41dc-b805-52a3935baee7"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MetaFileMimeType" fieldcaption="MetaFileMimeType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a2a2b992-e52f-4429-a0ab-948b69c2dc24"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MetaFileBinary" fieldcaption="MetaFileBinary" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1f0a6168-494b-4a70-b0c0-1903995e5a76"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MetaFileImageWidth" fieldcaption="MetaFileImageWidth" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ce204c6c-ffad-495b-a3f7-ac7252863b63"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MetaFileImageHeight" fieldcaption="MetaFileImageHeight" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="883493f1-5fbd-42d9-aed7-92438680c0b8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MetaFileGUID" fieldcaption="MetaFileGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="101bf156-b48c-4fa2-ad40-30daf0303393"><settings><controlname>unknown</controlname></settings></field><field column="MetaFileLastModified" fieldcaption="MetaFileLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c1745a03-c620-4ebc-80b2-21f5ce2a85c4"><settings><controlname>calendarcontrol</controlname></settings></field><field column="MetaFileSiteID" fieldcaption="MetaFileSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="63caffdb-de78-4f1a-aef2-fa565194f36d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MetaFileTitle" fieldcaption="MetaFileTitle" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" guid="2be079de-79c4-409c-a45d-c829f3ad4699" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MetaFileDescription" fieldcaption="MetaFileDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="eb1417e6-576a-4fdf-bd4c-27c48f76e7cf" visibility="none" translatefield="true"><settings><controlname>textareacontrol</controlname><IsTextArea>True</IsTextArea></settings></field><field column="MetaFileCustomData" fieldcaption="MetaFileCustomData" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="92251b55-a189-482d-886c-03613c3d086d" visibility="none"><settings><controlname>textareacontrol</controlname><IsTextArea>True</IsTextArea></settings></field></form>', N'', N'', N'', N'CMS_MetaFile', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:24', '4b42d5a7-a5c9-4804-a25a-0aaee71ba138', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1593, N'Messaging - Message', N'Messaging.Message', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Messaging_Message">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="MessageID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="MessageSenderUserID" type="xs:int" minOccurs="0" />
              <xs:element name="MessageSenderNickName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MessageRecipientUserID" type="xs:int" minOccurs="0" />
              <xs:element name="MessageRecipientNickName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MessageSent" type="xs:dateTime" />
              <xs:element name="MessageSubject" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MessageBody">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MessageRead" type="xs:dateTime" minOccurs="0" />
              <xs:element name="MessageSenderDeleted" type="xs:boolean" minOccurs="0" />
              <xs:element name="MessageRecipientDeleted" type="xs:boolean" minOccurs="0" />
              <xs:element name="MessageGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="MessageLastModified" type="xs:dateTime" />
              <xs:element name="MessageIsRead" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Messaging_Message" />
      <xs:field xpath="MessageID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="MessageID" fieldcaption="MessageID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="d10cab69-17aa-460a-9e46-55b1ecc29c63"><settings><controlname>labelcontrol</controlname></settings></field><field column="MessageSenderUserID" fieldcaption="MessageSenderUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="09e1e4d8-9f62-4178-8bd1-78499f7a6a1e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MessageSenderNickName" fieldcaption="MessageSenderNickName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="868f3d19-4631-46b6-85c9-cc2ab3a13e5d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MessageRecipientUserID" fieldcaption="MessageRecipientUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="713b6789-5e57-4603-9d09-faf5c138437a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MessageRecipientNickName" fieldcaption="MessageRecipientNickName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8a55702c-e2e2-4682-aa48-6bc39c3a55c5"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MessageSent" fieldcaption="MessageSent" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6921597c-e3f2-4120-880d-5e0f4d5035bf"><settings><controlname>calendarcontrol</controlname></settings></field><field column="MessageSubject" fieldcaption="MessageSubject" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="35ee1d32-ddc1-4e34-9d00-f5f564b01eec" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MessageBody" fieldcaption="MessageBody" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d74f1f55-8c02-40a9-9661-744de1dc64b0"><settings><controlname>textareacontrol</controlname></settings></field><field column="MessageRead" fieldcaption="MessageRead" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="30db0e2f-1ca1-4d33-a7fd-6bd61e8b42d4"><settings><controlname>calendarcontrol</controlname></settings></field><field column="MessageSenderDeleted" fieldcaption="MessageSenderDeleted" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3fee4bc2-4467-4951-a6c8-ec886766735d"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="MessageRecipientDeleted" fieldcaption="MessageRecipientDeleted" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="01b7b11d-d0d3-4fbe-8683-e710d22a4682"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="MessageGUID" fieldcaption="MessageGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5279f37b-0f30-435d-a1c7-2359dd4966eb"><settings><controlname>unknown</controlname></settings></field><field column="MessageLastModified" fieldcaption="MessageLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e9808b50-db94-45ce-a5dd-c0feeae50c38"><settings><controlname>calendarcontrol</controlname></settings></field><field column="MessageIsRead" fieldcaption="MessageIsRead" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="bbbcb0b7-171d-4be4-800a-e05200ca50dd" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Messaging_Message', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:24', '79e25187-258a-4c42-8849-da3dc3a03ccc', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1594, N'Object relationship', N'CMS.ObjectRelationship', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_ObjectRelationship">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="RelationshipLeftObjectID" type="xs:int" />
              <xs:element name="RelationshipLeftObjectType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="RelationshipNameID" type="xs:int" />
              <xs:element name="RelationshipRightObjectID" type="xs:int" />
              <xs:element name="RelationshipRightObjectType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="RelationshipCustomData" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_ObjectRelationship" />
      <xs:field xpath="RelationshipLeftObjectID" />
      <xs:field xpath="RelationshipLeftObjectType" />
      <xs:field xpath="RelationshipNameID" />
      <xs:field xpath="RelationshipRightObjectID" />
      <xs:field xpath="RelationshipRightObjectType" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="RelationshipLeftObjectID" fieldcaption="RelationshipLeftObjectID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="cd870be4-6274-4a42-9fa6-19a0a4cfef57"><settings><controlname>labelcontrol</controlname></settings></field><field column="RelationshipLeftObjectType" fieldcaption="RelationshipLeftObjectType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="71716bc9-57a9-4553-9ffd-51debb299ea2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RelationshipNameID" fieldcaption="RelationshipNameID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="696e81f8-3ed5-4ee5-ae5b-11e9d0d2d46c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RelationshipRightObjectID" fieldcaption="RelationshipRightObjectID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0e5b653d-88a9-41d1-8d3a-406a9b6ce23d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RelationshipRightObjectType" fieldcaption="RelationshipRightObjectType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6c11228f-45a6-4cde-8afe-7221a6da741f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RelationshipCustomData" fieldcaption="RelationshipCustomData" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="51d01890-8e3c-48c5-b9b0-aec0fe3c550e"><settings><controlname>textareacontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_ObjectRelationship', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:25', '6e6c9ed8-b600-48d7-8e71-88886c6a0470', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1596, N'Ecommerce - Option category', N'ecommerce.optioncategory', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_OptionCategory">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="CategoryID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="CategoryDisplayName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategorySelectionType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryDefaultOptions" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryDefaultRecord">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryEnabled" type="xs:boolean" />
              <xs:element name="CategoryGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="CategoryLastModified" type="xs:dateTime" />
              <xs:element name="CategoryDisplayPrice" type="xs:boolean" minOccurs="0" />
              <xs:element name="CategorySiteID" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryTextMaxLength" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryFormControlName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategorySKUID" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="20" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_OptionCategory" />
      <xs:field xpath="CategoryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><category name="General" visible="True" /><field column="CategoryID" fieldcaption="CategoryID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="2a21007d-55e7-447e-ac5b-891f3d50e815" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="CategoryDisplayName" fieldcaption="{$general.displayname$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="23e8b92a-f166-486a-b0df-67da57a305b2" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>True</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CategoryName" fieldcaption="{$general.codename$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="d02ea635-6450-4362-89a2-dac7d42da241" visibility="none"><settings><controlname>codename</controlname></settings></field><field column="CategoryDescription" fieldcaption="{$general.description$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b20c1bd6-4f86-458a-a3b6-8995aec34f53" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CategoryEnabled" fieldcaption="{$general.enabled$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a2d20f0e-7c4b-4ce1-bfbd-d8d0f36ebd86" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CategoryType" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="20" publicfield="false" guid="000015f0-0908-4c82-b191-0b8d0b3730cd" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CategorySelectionType" fieldcaption="CategorySelectionType" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="10aa4111-ca00-4787-8a56-e1723a49cb59" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategorySKUID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="62d18524-102b-4fad-b0fc-291f2a241d5d" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CategorySiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="13b5bdeb-e1ce-460c-81b7-625c1185f589" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CategoryGUID" fieldcaption="CategoryGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c942aa89-ccdf-4b24-bfc3-4c38ac651109" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="CategoryLastModified" fieldcaption="CategoryLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e68a0390-00d2-41e3-819a-eeb7b65d5f0f" visibility="none"><settings><controlname>calendarcontrol</controlname></settings></field><category name="Category_type" caption="Category type" visible="True" /><field column="CategoryFormControlName" fieldcaption="Form control" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="dc3280a1-05ff-4eea-92df-a80616a7edac" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CategoryDefaultOptions" fieldcaption="Default option(s)" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="357d2463-d90c-41d8-86fd-3c9528bb3117" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CategoryDefaultRecord" fieldcaption="Empty option text" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="b97ed292-d585-4d99-976c-67684a61fab7" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CategoryDisplayPrice" fieldcaption="Display price" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f968f678-e508-4770-ba35-9a57d7997a8d" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CategoryTextMaxLength" fieldcaption="CategoryID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="827cd36e-1b85-4251-be1c-ae47e5229e18" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_OptionCategory', N'', N'', N'', N'', 1, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', 'dda1df37-bc59-4541-a568-c69aec9d93fc', 0, 1, 0, N'', 2, N'CategoryDisplayName', N'CategoryDescription', N'', N'CategoryLastModified', N'<search><item searchable="True" name="CategoryID" tokenized="False" content="False" id="bd60c81f-35b0-44e5-ac8a-041f267bd52a" /><item searchable="False" name="CategoryDisplayName" tokenized="True" content="True" id="94efc589-fbb2-490d-8578-83f17228b408" /><item searchable="False" name="CategoryName" tokenized="True" content="True" id="626950b4-0844-408e-895c-3250786b7e3a" /><item searchable="False" name="CategorySelectionType" tokenized="True" content="True" id="751e5b6e-075c-4faf-b729-9d0be4afd723" /><item searchable="False" name="CategoryDefaultOptions" tokenized="True" content="True" id="26facdc5-a186-4972-8f46-1f65f12afc71" /><item searchable="False" name="CategoryDescription" tokenized="True" content="True" id="5a7fbe54-1db8-4eb8-b12f-9416cf73011e" /><item searchable="False" name="CategoryDefaultRecord" tokenized="True" content="True" id="0308d01e-ac0a-424e-940d-f8d9fd9940e9" /><item searchable="True" name="CategoryEnabled" tokenized="False" content="False" id="c19f1513-0a4f-480e-8044-aa0eea738473" /><item searchable="False" name="CategoryGUID" tokenized="False" content="False" id="0fd9a5e6-bc76-400c-a415-8e71474a48b5" /><item searchable="True" name="CategoryLastModified" tokenized="False" content="False" id="06f46719-aa44-459a-ba02-5daa37c1866f" /><item searchable="True" name="CategoryDisplayPrice" tokenized="False" content="False" id="1c18c570-0418-4fe4-880c-2b8574e11922" /><item searchable="True" name="CategorySiteID" tokenized="False" content="False" id="93941780-a8c4-44ab-9299-238010a733cd" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1606, N'Ecommerce - Shopping cart item', N'ecommerce.shoppingcartitem', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_ShoppingCartSKU">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="CartItemID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ShoppingCartID" type="xs:int" />
              <xs:element name="SKUID" type="xs:int" />
              <xs:element name="SKUUnits" type="xs:int" />
              <xs:element name="CartItemCustomData" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CartItemGuid" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="CartItemParentGuid" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="CartItemPrice" type="xs:double" minOccurs="0" />
              <xs:element name="CartItemIsPrivate" type="xs:boolean" minOccurs="0" />
              <xs:element name="CartItemValidTo" type="xs:dateTime" minOccurs="0" />
              <xs:element name="CartItemBundleGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="CartItemText" minOccurs="0">
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
      <xs:selector xpath=".//COM_ShoppingCartSKU" />
      <xs:field xpath="CartItemID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="CartItemID" fieldcaption="CartItemID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="ddd0b393-ea5e-46aa-89eb-16771b8249ed"><settings><controlname>labelcontrol</controlname></settings></field><field column="ShoppingCartID" fieldcaption="ShoppingCartID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="109dea76-7132-4052-8d95-8247d6dc94bc"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SKUID" fieldcaption="SKUID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8ccf5472-5f5c-4bab-bf88-9256e8dcd515"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SKUUnits" fieldcaption="SKUUnits" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="233f8ac2-2329-4188-8812-23aa0c4977f6"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CartItemCustomData" fieldcaption="CartItemCustomData" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c6af4828-879f-4203-8298-373e12011dca"><settings><controlname>textareacontrol</controlname></settings></field><field column="CartItemGuid" fieldcaption="CartItemGuid" visible="true" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ff1bdf4f-ec66-4d98-9e55-26a5608bcff0" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CartItemParentGuid" fieldcaption="CartItemParentGuid" visible="true" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ed4485db-5dcc-4deb-a1c6-f3749f10a89a" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CartItemBundleGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1e524cb7-2e01-47e0-9777-72b346b9096a" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CartItemPrice" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="59583ea0-5c1f-49b4-a91c-f45617cb7a84" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CartItemIsPrivate" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="517e0915-5d2a-4bd0-a521-5e888010c25c" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CartItemValidTo" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="660e66e6-bdef-4a26-b3bf-8273397d21a5" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CartItemText" fieldcaption="CartItemText" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="04f4bf42-57f4-43ae-ac44-27456e08a838" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_ShoppingCartSKU', N'', N'', N'', N'', 1, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', '936fda11-e521-4885-be89-a085f440ba4e', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1611, N'Settings key', N'CMS.SettingsKey', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_SettingsKey">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="KeyID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="KeyName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="KeyDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="KeyDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="KeyValue" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="KeyType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="KeyCategoryID" type="xs:int" minOccurs="0" />
              <xs:element name="SiteID" type="xs:int" minOccurs="0" />
              <xs:element name="KeyGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="KeyLastModified" type="xs:dateTime" />
              <xs:element name="KeyOrder" type="xs:int" minOccurs="0" />
              <xs:element name="KeyDefaultValue" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="KeyValidation" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="255" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="KeyEditingControlPath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="KeyLoadGeneration" type="xs:int" />
              <xs:element name="KeyIsGlobal" type="xs:boolean" minOccurs="0" />
              <xs:element name="KeyIsCustom" type="xs:boolean" minOccurs="0" />
              <xs:element name="KeyIsHidden" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_SettingsKey" />
      <xs:field xpath="KeyID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="KeyID" fieldcaption="KeyID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="ac7779ce-7c76-40ad-9c17-b489b895b4a9" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="KeyIsHidden" fieldcaption="KeyIsHidden" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0a45ca6a-d72e-4f9d-bc12-35cd935049d3" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="KeyIsCustom" fieldcaption="KeyIsCustom" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3332844e-553a-411f-9840-36533960080e" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="KeyName" fieldcaption="KeyName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="efbde045-fadd-4730-8fa6-162653f115ae"><settings><controlname>textboxcontrol</controlname></settings></field><field column="KeyDisplayName" fieldcaption="KeyDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="93a202e2-0a05-4cbc-bb24-4bb746e0161e" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="KeyDescription" fieldcaption="KeyDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="831a5e01-d23e-497f-a3b4-abb2716d084f" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="KeyValue" fieldcaption="KeyValue" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cd572f36-fab6-4ad3-8877-a34305ab3048"><settings><controlname>textareacontrol</controlname></settings></field><field column="KeyType" fieldcaption="KeyType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e32d876e-e786-482c-b263-d2a7dcd4215d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="KeyCategoryID" fieldcaption="KeyCategoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5bf162ea-b507-4da2-b6a3-bb47f825c2a5"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SiteID" fieldcaption="SiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="240d094e-b136-4330-a989-ed12135f49a2" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="KeyGUID" fieldcaption="KeyGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6a1e6aa0-7b6a-4c8e-9292-22d58c69f9c1"><settings><controlname>unknown</controlname></settings></field><field column="KeyLastModified" fieldcaption="KeyLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="713fe666-07c5-446b-b544-48a8205d8b31"><settings><controlname>calendarcontrol</controlname></settings></field><field column="KeyOrder" fieldcaption="KeyOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="85d56e5e-9514-448c-8a52-618368567044"><settings><controlname>textboxcontrol</controlname></settings></field><field column="KeyDefaultValue" fieldcaption="KeyDefaultValue" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8dbf84ce-f792-4223-a7b7-ca7ff1937384"><settings><controlname>textareacontrol</controlname></settings></field><field column="KeyValidation" fieldcaption="KeyValidation" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8e89cb6f-c568-4622-9d7b-2fd551d121d7"><settings><controlname>textboxcontrol</controlname></settings></field><field column="KeyLoadGeneration" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6b4d0589-810b-49d1-8cb1-912b27c85df1"><settings><controlname>labelcontrol</controlname></settings></field><field column="KeyIsGlobal" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8e638167-3952-467a-b074-3f97e18a6a77" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_SettingsKey', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:29', 'ec796166-5adf-43fa-9508-c9791db1b6dd', 0, 1, 0, N'', 1, N'KeyDisplayName', N'KeyDescription', N'', N'KeyLastModified', N'<search><item searchable="True" name="KeyID" tokenized="False" content="False" id="ef5d40ef-6c30-49f0-bec8-0838d434ddfa" /><item searchable="True" name="KeyIsHidden" tokenized="False" content="False" id="235a9a34-aedb-47f8-8908-401ac3bd83a8" /><item searchable="True" name="KeyIsCustom" tokenized="False" content="False" id="c53c7c59-bc80-49ee-ad36-a058c5d9c389" /><item searchable="False" name="KeyName" tokenized="True" content="True" id="e7d07185-3c93-49fc-b37d-be57ee9aa31f" /><item searchable="False" name="KeyDisplayName" tokenized="True" content="True" id="ee5906bb-d968-4236-805d-785ae19189c3" /><item searchable="False" name="KeyDescription" tokenized="True" content="True" id="0282aa5f-f2a9-4378-8188-bf543e02fbaf" /><item searchable="False" name="KeyValue" tokenized="True" content="True" id="d7580b81-3642-4f26-94ce-d7e0eb99c894" /><item searchable="False" name="KeyType" tokenized="True" content="True" id="cc0a89f7-3c30-47b9-ba3e-f40c28e9aac1" /><item searchable="True" name="KeyCategoryID" tokenized="False" content="False" id="bb0d854d-40c5-4ebc-a375-761e7ce155ba" /><item searchable="True" name="SiteID" tokenized="False" content="False" id="c614e4fa-0394-45fa-8b48-fe681adfa7d3" /><item searchable="False" name="KeyGUID" tokenized="False" content="False" id="76d1193f-e3ba-4255-a82b-4f5143864f8f" /><item searchable="True" name="KeyLastModified" tokenized="False" content="False" id="c52b93b9-1406-4381-ba08-4547d078bdc1" /><item searchable="True" name="KeyOrder" tokenized="False" content="False" id="b94c34f5-9a83-4a94-9bdc-082ae7edef2c" /><item searchable="False" name="KeyDefaultValue" tokenized="True" content="True" id="0121b5f4-25ed-4fea-af3d-4f7355e78dc3" /><item searchable="False" name="KeyValidation" tokenized="True" content="True" id="8c1fb729-a0a8-44a3-aec3-c72dad4e653d" /><item searchable="True" name="KeyLoadGeneration" tokenized="False" content="False" id="57625a97-8b27-4663-832a-568fcf1144cc" /><item searchable="True" name="KeyIsGlobal" tokenized="False" content="False" id="85d3e944-8bbf-4dec-83c6-f476dbe6b199" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1616, N'Export - history', N'export.history', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Export_History">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ExportID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ExportDateTime" type="xs:dateTime" />
              <xs:element name="ExportFileName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ExportSiteID" type="xs:int" />
              <xs:element name="ExportUserID" type="xs:int" />
              <xs:element name="ExportSettings" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Export_History" />
      <xs:field xpath="ExportID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ExportID" fieldcaption="ExportID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="149cdd85-2558-4c2a-9ffe-6801a4effe1c"><settings><controlname>labelcontrol</controlname></settings></field><field column="ExportDateTime" fieldcaption="ExportDateTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f558feb5-f0f3-4cae-8bca-e0f2af7099f6"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ExportFileName" fieldcaption="ExportFileName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0377b17d-6321-4169-a4b0-a34a4e683a6c" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ExportSiteID" fieldcaption="ExportSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="da436881-5b56-45a2-bea4-3e4a8bd2d36c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ExportUserID" fieldcaption="ExportUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b78c3e62-84bd-4068-b18c-6b79fdaba365"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ExportSettings" fieldcaption="ExportSettings" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="78ffe32e-8ea4-4cea-a3ef-e475a55dfc96"><settings><controlname>textareacontrol</controlname></settings></field></form>', N'', N'', N'', N'Export_History', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', 'ab5857eb-879b-422c-82ba-0acc49df79a2', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1617, N'Export - task', N'Export.Task', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Export_Task">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TaskID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TaskSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="TaskTitle">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskData">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskTime" type="xs:dateTime" />
              <xs:element name="TaskType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskObjectType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskObjectID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Export_Task" />
      <xs:field xpath="TaskID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TaskID" fieldcaption="TaskID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="63d312c3-c5a7-43ff-8574-84125264f844"><settings><controlname>labelcontrol</controlname></settings></field><field column="TaskSiteID" fieldcaption="TaskSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8c5930e5-9b1c-45f1-9ad9-c35581eed7c7"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskTitle" fieldcaption="TaskTitle" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="15588e8b-2e40-4481-a023-91d383fc7761"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskData" fieldcaption="TaskData" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fdc52e2c-fadd-4090-b576-5d22596feb75"><settings><controlname>textareacontrol</controlname></settings></field><field column="TaskTime" fieldcaption="TaskTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="928995c4-1a63-4615-95b8-18d7ef928ee6"><settings><controlname>calendarcontrol</controlname></settings></field><field column="TaskType" fieldcaption="TaskType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d533781a-cdde-43b8-aadb-058cf9d3d476"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskObjectType" fieldcaption="TaskObjectType" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9d58620e-cbc1-4db1-a17f-7c4920989286"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskObjectID" fieldcaption="TaskObjectID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e5f956e9-cfbe-4668-8143-afe634d44d76"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Export_Task', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', '5038ed34-d6c2-4598-b10b-d51cb6f8945b', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1629, N'CSS stylesheet site', N'CMS.CSSStylesheetSite', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_CssStylesheetSite">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="StylesheetID" type="xs:int" />
              <xs:element name="SiteID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_CssStylesheetSite" />
      <xs:field xpath="StylesheetID" />
      <xs:field xpath="SiteID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="StylesheetID" fieldcaption="StylesheetID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="fcd83ef9-440c-4e12-a296-e397203420e5"><settings><controlname>labelcontrol</controlname></settings></field><field column="SiteID" fieldcaption="SiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="67a1ad4c-a0be-4254-9bb9-ced08b9f7bfc"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_CssStylesheetSite', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', 'f5c63ca9-1ac4-4d41-8977-d129c00d9019', 0, 1, 0, N'', 1, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1630, N'InlineControlSite', N'CMS.InlineControlSite', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_InlineControlSite">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ControlID" type="xs:int" />
              <xs:element name="SiteID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_InlineControlSite" />
      <xs:field xpath="ControlID" />
      <xs:field xpath="SiteID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ControlID" fieldcaption="ControlID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="6bd20653-e9ac-448a-8dd8-16b0dd778ae0"><settings><controlname>labelcontrol</controlname></settings></field><field column="SiteID" fieldcaption="SiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f95ecd72-a16b-4293-adac-3972773154a9"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_InlineControlSite', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:23', 'abff72a6-3558-4bba-bb86-7117e9ca8525', 0, 1, 0, N'', 1, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1631, N'PageTemplateSite', N'CMS.PageTemplateSite', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_PageTemplateSite">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="PageTemplateID" type="xs:int" />
              <xs:element name="SiteID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_PageTemplateSite" />
      <xs:field xpath="PageTemplateID" />
      <xs:field xpath="SiteID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="PageTemplateID" fieldcaption="PageTemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="b03c6f39-3d55-477b-8b7e-dffd2f64fba3"><settings><controlname>labelcontrol</controlname></settings></field><field column="SiteID" fieldcaption="SiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9c557e72-06ed-423b-aa10-09a543d97976"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_PageTemplateSite', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:25', '64b959d5-ca01-4aab-a467-ad473346e040', 0, 1, 0, N'', 1, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1632, N'ResourceSite', N'CMS.ResourceSite', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_ResourceSite">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ResourceID" type="xs:int" />
              <xs:element name="SiteID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_ResourceSite" />
      <xs:field xpath="ResourceID" />
      <xs:field xpath="SiteID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ResourceID" fieldcaption="ResourceID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="e1cca274-6aa7-4034-86b9-5ee02af2952b"><settings><controlname>labelcontrol</controlname></settings></field><field column="SiteID" fieldcaption="SiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="436efd78-8b1d-49cd-b073-4024a9c69b0f"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_ResourceSite', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:28', 'b97b7997-ea51-4c6e-898a-3091106ba5ad', 0, 1, 0, N'', 1, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1633, N'Culture site', N'CMS.CultureSite', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_SiteCulture">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SiteID" type="xs:int" />
              <xs:element name="CultureID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_SiteCulture" />
      <xs:field xpath="SiteID" />
      <xs:field xpath="CultureID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SiteID" fieldcaption="SiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="759423f2-9e97-4a8d-b32b-657a669f1014"><settings><controlname>labelcontrol</controlname></settings></field><field column="CultureID" fieldcaption="CultureID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3e2f0e62-9076-4d68-be90-3898671e094c"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_SiteCulture', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', '2b81bbf8-bf34-465b-ae17-32089398d076', 0, 1, 0, N'', 1, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1634, N'UserSite', N'CMS.UserSite', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_UserSite">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="UserSiteID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="UserID" type="xs:int" />
              <xs:element name="SiteID" type="xs:int" />
              <xs:element name="UserPreferredCurrencyID" type="xs:int" minOccurs="0" />
              <xs:element name="UserPreferredShippingOptionID" type="xs:int" minOccurs="0" />
              <xs:element name="UserPreferredPaymentOptionID" type="xs:int" minOccurs="0" />
              <xs:element name="UserDiscountLevelID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_UserSite" />
      <xs:field xpath="UserSiteID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="UserSiteID" fieldcaption="UserSiteID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="82d6b7e6-fac7-4e43-9f7a-4cb8801d7190" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserID" fieldcaption="UserID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e470c61e-0451-4341-b811-6ef885da1b5a"><settings><controlname>labelcontrol</controlname></settings></field><field column="SiteID" fieldcaption="SiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c5e78e5d-f413-4b81-8d7b-d3e1c17125f2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserPreferredCurrencyID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2b2234be-3087-48cf-a4dd-e469d016d66b" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="UserPreferredShippingOptionID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a7b6b980-c163-49b6-9ea5-e84729a469ca" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="UserPreferredPaymentOptionID" fieldcaption="UserID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7f08afdf-a720-4aa8-a2af-69e947984738" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserDiscountLevelID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="677c6e9a-4fb2-4cda-bab4-fd1639e8a5e1" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_UserSite', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:45', 'f41cb287-9535-4707-a557-0e2806a9f682', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1635, N'WorkflowStepRole', N'CMS.WorkflowStepRole', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WorkflowStepRoles">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="WorkflowStepRoleID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="StepID" type="xs:int" />
              <xs:element name="RoleID" type="xs:int" />
              <xs:element name="StepSourcePointGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1">
      <xs:selector xpath=".//CMS_WorkflowStepRoles" />
      <xs:field xpath="StepID" />
      <xs:field xpath="RoleID" />
      <xs:field xpath="StepSourcePointGUID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="WorkflowStepRoleID" fieldcaption="WorkflowStepRoleID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="75246aae-feb6-4c07-9e71-5bc676f90564" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="StepID" fieldcaption="StepID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="88ca88d8-a3ed-42d6-ba9b-d673c482788f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RoleID" fieldcaption="RoleID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6beefbf6-f5fe-4e64-8265-99814d7695d1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StepSourcePointGUID" fieldcaption="StepSourcePointGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9ce9d4d2-eedc-43b2-ae18-d4665ff73162"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_WorkflowStepRoles', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:45', '6b32cc52-df22-44f5-a0e8-1a227f31689d', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1636, N'Ecommerce - Discount level department', N'Ecommerce.DiscountLevelDepartment', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_DiscountLevelDepartment">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="DiscountLevelID" type="xs:int" />
              <xs:element name="DepartmentID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_DiscountLevelDepartment" />
      <xs:field xpath="DiscountLevelID" />
      <xs:field xpath="DepartmentID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="DiscountLevelID" fieldcaption="DiscountLevelID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="c3d48dbf-6cfc-4108-8c2a-9b858772c219"><settings><controlname>labelcontrol</controlname></settings></field><field column="DepartmentID" fieldcaption="DepartmentID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="3366ade1-3d2b-45fb-abb8-f18ff869213a"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_DiscountLevelDepartment', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', '61481a6d-d6ee-4076-acee-a7dea19d36ce', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1637, N'Class site', N'CMS.ClassSite', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_ClassSite">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ClassID" type="xs:int" />
              <xs:element name="SiteID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_ClassSite" />
      <xs:field xpath="ClassID" />
      <xs:field xpath="SiteID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ClassID" fieldcaption="ClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="73477d3f-d6cf-4cb5-aba9-dc0b674c7c42"><settings><controlname>labelcontrol</controlname></settings></field><field column="SiteID" fieldcaption="SiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1129040b-8547-4e60-9b8c-f7c86ca21ec5"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_ClassSite', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:19', 'e00509ca-65d4-4429-a51b-2db9e8e477cb', 0, 1, 0, N'', 1, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1638, N'FormRole', N'cms.FormRole', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_FormRole">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="FormID" type="xs:int" />
              <xs:element name="RoleID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_FormRole" />
      <xs:field xpath="FormID" />
      <xs:field xpath="RoleID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="FormID" fieldcaption="FormID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="ab620239-2fc4-41e5-b46a-bb9737b59d15"><settings><controlname>labelcontrol</controlname></settings></field><field column="RoleID" fieldcaption="RoleID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="61315092-d101-4af5-8b07-c712828c49c4"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_FormRole', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', 'c6fdeded-624d-46a0-99a7-910cd0eba763', 0, 1, 0, N'', 1, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1639, N'Allowed child class', N'CMS.AllowedChildClass', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_AllowedChildClasses">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ParentClassID" type="xs:int" />
              <xs:element name="ChildClassID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_AllowedChildClasses" />
      <xs:field xpath="ParentClassID" />
      <xs:field xpath="ChildClassID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ParentClassID" fieldcaption="ParentClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="577c16d3-07c7-4612-8024-4fb1491ebebf"><settings><controlname>labelcontrol</controlname></settings></field><field column="ChildClassID" fieldcaption="ChildClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5fe152b9-2296-422d-a674-4ffb00156f1c"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_AllowedChildClasses', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:17', '8ddaca20-37ad-4b93-8230-e38fbde8d935', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1640, N'Ecommerce - SKU discount coupon', N'ecommerce.SKUDiscountCoupon', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_SKUDiscountCoupon">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SKUID" type="xs:int" />
              <xs:element name="DiscountCouponID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_SKUDiscountCoupon" />
      <xs:field xpath="SKUID" />
      <xs:field xpath="DiscountCouponID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SKUID" fieldcaption="SKUID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="bf9798d9-5cad-429f-823b-b4e7b3845cf0"><settings><controlname>labelcontrol</controlname></settings></field><field column="DiscountCouponID" fieldcaption="DiscountCouponID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="96c52230-0ef8-4c58-bffb-7ee46bc74eb8"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_SKUDiscountCoupon', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', 'fafd7adc-496f-4f3c-a4a3-b51e1fc9ab02', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1641, N'Ecommerce - SKU option category', N'Ecommerce.SKUOptionCategory', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_SKUOptionCategory">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SKUID" type="xs:int" />
              <xs:element name="CategoryID" type="xs:int" />
              <xs:element name="AllowAllOptions" type="xs:boolean" minOccurs="0" />
              <xs:element name="SKUCategoryID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_SKUOptionCategory" />
      <xs:field xpath="SKUCategoryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SKUCategoryID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" isPK="true" system="true" publicfield="false" guid="eac54350-c36e-4b55-9027-6bd2e8b24438" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SKUID" fieldcaption="SKUID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f7309204-9d30-4553-adfc-ae733d99bfd7" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="CategoryID" fieldcaption="CategoryID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="eecc79bf-88bb-41b0-a9b6-182a73f7b930" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AllowAllOptions" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="64c95698-f560-411f-aa68-02105784433e" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_SKUOptionCategory', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', '619ff287-c627-44dd-bf36-786d605e633b', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1642, N'Ecommerce - SKU tax class', N'Ecommerce.SKUTaxClass', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_SKUTaxClasses">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SKUID" type="xs:int" />
              <xs:element name="TaxClassID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_SKUTaxClasses" />
      <xs:field xpath="SKUID" />
      <xs:field xpath="TaxClassID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SKUID" fieldcaption="SKUID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="42f04d31-3a4d-46c5-9336-6b45abc2cd1a"><settings><controlname>labelcontrol</controlname></settings></field><field column="TaxClassID" fieldcaption="TaxClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="ad2e17d3-499c-4aca-82cc-1cd012e64dbc"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_SKUTaxClasses', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', '624d4c22-1961-44fc-b047-bab2073fa9dc', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1643, N'Ecommerce - User department', N'Ecommerce.UserDepartment', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_UserDepartment">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="UserID" type="xs:int" />
              <xs:element name="DepartmentID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_UserDepartment" />
      <xs:field xpath="UserID" />
      <xs:field xpath="DepartmentID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="UserID" fieldcaption="UserID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="f4b57774-7a85-4334-923c-afa249e390a2"><settings><controlname>labelcontrol</controlname></settings></field><field column="DepartmentID" fieldcaption="DepartmentID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="17c9e258-80cb-4dc7-a6ac-426246e3d688"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_UserDepartment', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', '0ab42b5c-3dd2-445d-9c2f-3b9cefcd5861', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1644, N'ForumRole', N'Forums.ForumRole', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Forums_ForumRoles">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ForumID" type="xs:int" />
              <xs:element name="RoleID" type="xs:int" />
              <xs:element name="PermissionID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Forums_ForumRoles" />
      <xs:field xpath="ForumID" />
      <xs:field xpath="RoleID" />
      <xs:field xpath="PermissionID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ForumID" fieldcaption="ForumID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="a483d3a7-c81f-4545-b730-414fb68c9368"><settings><controlname>labelcontrol</controlname></settings></field><field column="RoleID" fieldcaption="RoleID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c32d235b-e430-44dd-9329-b3f9e4a28cc0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PermissionID" fieldcaption="PermissionID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="cac9ea9d-b936-4c08-9c05-cc660db8d40f"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Forums_ForumRoles', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', '4d044efe-1c53-4e8d-a5d4-0377b1a1f695', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1645, N'PollRole', N'Polls.PollRole', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Polls_PollRoles">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="PollID" type="xs:int" />
              <xs:element name="RoleID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Polls_PollRoles" />
      <xs:field xpath="PollID" />
      <xs:field xpath="RoleID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="PollID" fieldcaption="PollID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="4a15bfe7-5aa7-4033-b700-64361a6713e0"><settings><controlname>labelcontrol</controlname></settings></field><field column="RoleID" fieldcaption="RoleID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9fdc6d4b-a537-471b-9111-224d87baae6d"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Polls_PollRoles', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:26', 'ec99216d-fb11-4812-b105-91d3cab05096', 0, 0, 0, N'', 2, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1646, N'PollSite', N'Polls.PollSite', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Polls_PollSite">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="PollID" type="xs:int" />
              <xs:element name="SiteID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Polls_PollSite" />
      <xs:field xpath="PollID" />
      <xs:field xpath="SiteID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="PollID" fieldcaption="PollID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="5925ebb0-bbf5-4c2b-b4dc-4dcec83911e7"><settings><controlname>labelcontrol</controlname></settings></field><field column="SiteID" fieldcaption="SiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c5c1b677-709a-41a4-83ae-54a21554028d"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Polls_PollSite', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:26', '39dc447c-b9a3-4da3-91dd-41a9206e7e3e', 0, 0, 0, N'', 2, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1648, N'RolePermission', N'cms.rolepermission', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_RolePermission">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="RoleID" type="xs:int" />
              <xs:element name="PermissionID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_RolePermission" />
      <xs:field xpath="RoleID" />
      <xs:field xpath="PermissionID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="RoleID" fieldcaption="RoleID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="7abf6c63-dfdd-4a52-a992-33f6a3af20c9"><settings><controlname>labelcontrol</controlname></settings></field><field column="PermissionID" fieldcaption="PermissionID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c68c2890-c2ee-4a9e-b92f-40accf2b8bc1"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_RolePermission', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:28', '30dbec02-7055-4f3c-8318-5bd96c63965d', 0, 0, 0, N'', 1, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1649, N'Settings category', N'cms.settingscategory', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_SettingsCategory">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="CategoryID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="CategoryDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryOrder" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryParentID" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryIDPath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryLevel" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryChildCount" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryIconPath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryIsGroup" type="xs:boolean" minOccurs="0" />
              <xs:element name="CategoryIsCustom" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_SettingsCategory" />
      <xs:field xpath="CategoryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="CategoryID" fieldcaption="CategoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="c91d8df8-c913-4a06-9605-900d9d1e6ddf" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="CategoryParentID" fieldcaption="CategoryParentID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7b67a457-09bf-4075-a07f-d9f6cd52e16f" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryIDPath" fieldcaption="CategoryIDPath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="53774e18-81e8-4e01-8e14-5fccccbe747b" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryLevel" fieldcaption="CategoryLevel" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a2978ca3-c075-47fd-b482-de8eec4c8321" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryChildCount" fieldcaption="CategoryChildCount" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5af06ddd-f3a6-47c1-ac42-551daaf4535d" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryIconPath" fieldcaption="CategoryIconPath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="2af723e2-e890-49a5-8f88-2c53e6cec49c" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryIsGroup" fieldcaption="CategoryIsGroup" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="42f525f5-1eac-4e92-aa73-16ea2419c863" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CategoryIsCustom" fieldcaption="CategoryIsCustom" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0825124a-b2cb-44d2-bcb8-1ed956c537f4" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CategoryDisplayName" fieldcaption="CategoryDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="eec20439-a956-4bbd-8f57-68550f811e89" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryOrder" fieldcaption="CategoryOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ea9b2037-0238-4303-80ed-181bb044f859"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryName" fieldcaption="CategoryName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="41261c56-9595-47e8-b89a-0a28de33f38b"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_SettingsCategory', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:29', 'e85e89d4-b387-48bc-b414-63ebbd2f6b40', 0, 0, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1650, N'Resource string', N'cms.resourcestring', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_ResourceString">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="StringID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="StringKey">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StringIsCustom" type="xs:boolean" />
              <xs:element name="StringLoadGeneration" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_ResourceString" />
      <xs:field xpath="StringID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="StringID" fieldcaption="StringID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="cf3d8cdb-d17e-43ac-8487-cd1560722f47"><settings><controlname>labelcontrol</controlname></settings></field><field column="StringKey" fieldcaption="StringKey" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="be08e8ec-c73f-47b8-95f3-6b03a09bdfd1" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StringIsCustom" fieldcaption="StringIsCustom" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="00f715ad-8e5b-4021-9c5a-2a7b9bce22ee"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="StringLoadGeneration" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d5600355-f601-4e45-b1d3-94cdc66ac93a"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_ResourceString', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:28', '77097669-a269-4702-af21-8896af411555', 0, 0, 0, N'', 1, N'StringKey', N'0', N'', N'0', N'<search><item searchable="True" name="StringID" tokenized="False" content="False" id="0845a732-4140-47f8-8594-234324a94fe5" /><item searchable="False" name="StringKey" tokenized="True" content="True" id="a35b3a90-fa73-4147-9804-c7368b48aad7" /><item searchable="True" name="StringIsCustom" tokenized="False" content="False" id="099678e2-bb6f-48d7-a46b-ea7031377836" /><item searchable="True" name="StringLoadGeneration" tokenized="False" content="False" id="3c446e10-467f-4305-8318-53340b34c442" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1651, N'Resource translation', N'cms.resourcetranslation', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_ResourceTranslation">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TranslationID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TranslationStringID" type="xs:int" />
              <xs:element name="TranslationUICultureID" type="xs:int" />
              <xs:element name="TranslationText" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_ResourceTranslation" />
      <xs:field xpath="TranslationID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TranslationID" fieldcaption="TranslationID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="15ab1b59-fa4b-4748-98d9-9dcf6003cb9c"><settings><controlname>labelcontrol</controlname></settings></field><field column="TranslationStringID" fieldcaption="TranslationStringID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e8c24c6e-12e2-449b-86e7-53482abd3107"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TranslationUICultureID" fieldcaption="TranslationUICultureID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7c617155-a9e3-4d14-ad88-d9792698ffb7"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TranslationText" fieldcaption="TranslationText" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cf409753-ee8f-46ff-82c1-bcaa8e98d6bc"><settings><controlname>textareacontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_ResourceTranslation', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:28', '38ab8c16-f476-4e9c-adbf-3957853aa8bf', 0, 0, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1658, N'VersionAttachment', N'CMS.VersionAttachment', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_VersionAttachment">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="VersionHistoryID" type="xs:int" />
              <xs:element name="AttachmentHistoryID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_VersionAttachment" />
      <xs:field xpath="VersionHistoryID" />
      <xs:field xpath="AttachmentHistoryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="VersionHistoryID" fieldcaption="VersionHistoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="8dbf917a-6893-468b-8fe1-645ad8c04525"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentHistoryID" fieldcaption="AttachmentHistoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4ec8bf47-4c6d-4c8b-bdb9-eca9a3cfb0fb"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_VersionAttachment', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:45', 'c7e663c8-d62f-4f1c-b1e5-6b53c9603222', 0, 0, 0, N'', 1, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1659, N'ForumModerator', N'Forums.ForumModerator', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Forums_ForumModerators">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="UserID" type="xs:int" />
              <xs:element name="ForumID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Forums_ForumModerators" />
      <xs:field xpath="UserID" />
      <xs:field xpath="ForumID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="UserID" fieldcaption="UserID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="4b7c458b-9fcb-476a-8a97-bd15150b9267"><settings><controlname>labelcontrol</controlname></settings></field><field column="ForumID" fieldcaption="ForumID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6d20cb97-7a62-4e23-805c-70354f716be8"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Forums_ForumModerators', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', '066eef63-d191-4c22-8496-6df89b336aef', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1661, N'Ecommerce - Payment shipping', N'Ecommerce.PaymentShipping', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_PaymentShipping">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="PaymentOptionID" type="xs:int" />
              <xs:element name="ShippingOptionID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_PaymentShipping" />
      <xs:field xpath="PaymentOptionID" />
      <xs:field xpath="ShippingOptionID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="PaymentOptionID" fieldcaption="PaymentOptionID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="272ec36e-522b-460a-a7b8-0eda8268fe3a"><settings><controlname>labelcontrol</controlname></settings></field><field column="ShippingOptionID" fieldcaption="ShippingOptionID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="40152345-957a-429f-83ec-63831f8d2acb"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_PaymentShipping', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', '6392c9c9-b737-4d54-9266-9a6f2bc33678', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
SET IDENTITY_INSERT [CMS_Class] OFF
