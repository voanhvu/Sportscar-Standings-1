SET IDENTITY_INSERT [CMS_Class] ON
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (880, N'Form', N'cms.form', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Form">
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
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormSendToEmail" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormSendFromEmail" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormEmailSubject" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormEmailTemplate" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormEmailAttachUploadedDocs" type="xs:boolean" minOccurs="0" />
              <xs:element name="FormClassID" type="xs:int" />
              <xs:element name="FormItems" type="xs:int" />
              <xs:element name="FormReportFields" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormRedirectToUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormDisplayText" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormClearAfterSave" type="xs:boolean" />
              <xs:element name="FormSubmitButtonText" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormSiteID" type="xs:int" />
              <xs:element name="FormConfirmationEmailField" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormConfirmationTemplate" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormConfirmationSendFromEmail" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormConfirmationEmailSubject" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormAccess" type="xs:int" minOccurs="0" />
              <xs:element name="FormSubmitButtonImage" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="255" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FormGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="FormLastModified" type="xs:dateTime" />
              <xs:element name="FormLogActivity" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Form" />
      <xs:field xpath="FormID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="FormID" fieldcaption="FormID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="7e4045d0-83fe-48e2-8dff-17ba63371c98"><settings><controlname>labelcontrol</controlname></settings></field><field column="FormDisplayName" fieldcaption="FormDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a2f80fe3-4db8-4108-a1ba-72d87b300acd" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormName" fieldcaption="FormName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9923899a-7913-4138-bc54-00b2d9d75826"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormSendToEmail" fieldcaption="FormSendToEmail" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e39d82b9-a055-4816-9a7d-ae091ad1b533"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormSendFromEmail" fieldcaption="FormSendFromEmail" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4233f725-e939-4a30-9f80-6f662b35c87a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormEmailSubject" fieldcaption="FormEmailSubject" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d5a09ea2-cd3f-43cd-9e16-34aae72e4693"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormEmailTemplate" fieldcaption="FormEmailTemplate" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="70361f86-4cfa-4728-aa67-c130eb29cc53"><settings><controlname>textareacontrol</controlname></settings></field><field column="FormEmailAttachUploadedDocs" fieldcaption="FormEmailAttachUploadedDocs" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ee271037-5c60-4196-8220-0bf7fd4f0b24"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="FormClassID" fieldcaption="FormClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4a6f6a49-d057-4c80-9b20-2b8e760c246f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormItems" fieldcaption="FormItems" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="72c682ed-264a-4bc2-9ce2-9aab8203dd61"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormReportFields" fieldcaption="FormReportFields" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f20ee9b5-041b-44fe-a2f9-c9723a959201"><settings><controlname>textareacontrol</controlname></settings></field><field column="FormRedirectToUrl" fieldcaption="FormRedirectToUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="15988158-84b2-4f52-8474-3b512d8c4e43"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormDisplayText" fieldcaption="FormDisplayText" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="97864ebf-e58c-4ccd-b1f7-c49801379509"><settings><controlname>textareacontrol</controlname></settings></field><field column="FormClearAfterSave" fieldcaption="FormClearAfterSave" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="414bfd02-1c2e-4a6c-80df-70158de74370"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="FormSubmitButtonText" fieldcaption="FormSubmitButtonText" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="db2765b7-a1b6-464d-924b-7b7f7231d4a3"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormSiteID" fieldcaption="FormSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a695a92d-3d29-4aaf-b326-20db0876d681"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormConfirmationEmailField" fieldcaption="FormConfirmationEmailField" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6b822565-28bf-4881-b75a-86565bd3f6a4"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormConfirmationTemplate" fieldcaption="FormConfirmationTemplate" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b305f971-5cde-4f05-bc7e-f5f122432c89"><settings><controlname>textareacontrol</controlname></settings></field><field column="FormConfirmationSendFromEmail" fieldcaption="FormConfirmationSendFromEmail" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="38dfb147-f65e-4e82-b098-4b3cc09e7c7a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormConfirmationEmailSubject" fieldcaption="FormConfirmationEmailSubject" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="47e8f8d3-c8ba-4060-9d3b-ac44883febd8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormAccess" fieldcaption="FormAccess" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6655864e-d1c5-44e7-bdb9-d115fd50309b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormSubmitButtonImage" fieldcaption="FormSubmitButtonImage" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="839193cc-6353-4cd8-9b70-2315dce1f7de"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FormGUID" fieldcaption="FormGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9e7c52e0-e181-4e28-a140-2c49aaf5640a"><settings><controlname>unknown</controlname></settings></field><field column="FormLastModified" fieldcaption="FormLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f50a1f91-63ea-4a7c-a69a-8fb4574a93ba"><settings><controlname>calendarcontrol</controlname></settings></field><field column="FormLogActivity" fieldcaption="Log on-line marketing activity" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6a4f0e2f-e7e7-49f1-b130-8da263c531cd" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_Form', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', 'be2a91e3-b191-4a74-8888-a212b9a88c6d', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (905, N'Newsletter - Email template', N'newsletter.emailtemplate', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Newsletter_EmailTemplate">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TemplateID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TemplateDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TemplateName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TemplateBody">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TemplateSiteID" type="xs:int" />
              <xs:element name="TemplateHeader">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TemplateFooter">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TemplateType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TemplateStylesheetText" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TemplateGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="TemplateLastModified" type="xs:dateTime" />
              <xs:element name="TemplateSubject" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TemplateThumbnailGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Newsletter_EmailTemplate" />
      <xs:field xpath="TemplateID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TemplateID" fieldcaption="TemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="1fc8d3e4-5b6f-4a8b-9266-42cfdd739d2d"><settings><controlname>labelcontrol</controlname></settings></field><field column="TemplateDisplayName" fieldcaption="TemplateDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d3505546-d312-4dda-aacc-cf1dfcb7bab3" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TemplateName" fieldcaption="TemplateName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d138a78c-5095-4778-a5a1-6c0e9d9c226e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TemplateBody" fieldcaption="TemplateBody" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b06319a3-ed5a-4e28-b0d0-76e8db86ea6c"><settings><controlname>textareacontrol</controlname></settings></field><field column="TemplateSiteID" fieldcaption="TemplateSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e8548e32-9ba1-4093-b00e-b6ab09d374e2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TemplateHeader" fieldcaption="TemplateHeader" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d5753a72-1424-4110-8557-1b54f68169c1"><settings><controlname>textareacontrol</controlname></settings></field><field column="TemplateFooter" fieldcaption="TemplateFooter" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e8476b60-2e2f-48b6-87f6-5b6fe3ef426e"><settings><controlname>textareacontrol</controlname></settings></field><field column="TemplateType" fieldcaption="TemplateType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="721c9b4a-60e2-4e9e-beef-8ca0e5612a89"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TemplateStylesheetText" fieldcaption="TemplateStylesheetText" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b9c74440-beca-4189-99a8-9bb431b3c20a"><settings><controlname>textareacontrol</controlname></settings></field><field column="TemplateGUID" fieldcaption="TemplateGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4bf16188-eaa3-4b2a-bc44-897706226bae"><settings><controlname>unknown</controlname></settings></field><field column="TemplateLastModified" fieldcaption="TemplateLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="951b6ddb-4c52-4d94-a7dd-601f67b3658c"><settings><controlname>calendarcontrol</controlname></settings></field><field column="TemplateSubject" fieldcaption="TemplateSubject" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="0eaddd8f-5a59-4873-afb1-80a7156918a6"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TemplateThumbnailGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0f72ba1b-8b84-44a8-85a6-27107135071d" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'Newsletter_EmailTemplate', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120516 15:30:21', '5c6c85d4-63bc-4ca6-8b93-160d574716e4', 0, 1, 0, N'', 2, N'TemplateDisplayName', N'TemplateBody', N'', N'TemplateLastModified', N'<search><item searchable="True" name="TemplateID" tokenized="False" content="False" id="f3278be6-944b-47b3-b919-09f3a8afcefa" /><item searchable="False" name="TemplateDisplayName" tokenized="True" content="True" id="3ea61a69-b0ad-48ef-866a-b30acea0458c" /><item searchable="False" name="TemplateName" tokenized="True" content="True" id="e11becb2-b767-4e9c-9a2c-c39c65eca5be" /><item searchable="False" name="TemplateBody" tokenized="True" content="True" id="460b40dd-9584-4567-b36c-59dfc1f82a4a" /><item searchable="True" name="TemplateSiteID" tokenized="False" content="False" id="272e12f1-f294-4d4f-a3b2-a237d5c54c71" /><item searchable="False" name="TemplateHeader" tokenized="True" content="True" id="d4d9f7e1-5aab-4943-b5a7-fc22c805c4ad" /><item searchable="False" name="TemplateFooter" tokenized="True" content="True" id="07ee285a-5283-41f9-a97d-827d837569c1" /><item searchable="False" name="TemplateType" tokenized="True" content="True" id="1f058dc2-5fc7-4681-b8de-64c260ef85a5" /><item searchable="False" name="TemplateStylesheetText" tokenized="True" content="True" id="8d6e32f6-1d01-454e-a19b-38aac4be2ade" /><item searchable="False" name="TemplateGUID" tokenized="False" content="False" id="8658df22-5ee9-4704-9840-a3a0fd6b0a7a" /><item searchable="True" name="TemplateLastModified" tokenized="False" content="False" id="6ad72bed-b56f-436d-bc63-91e351ed8b7f" /><item searchable="False" name="TemplateSubject" tokenized="True" content="True" id="cde0bcb7-eb12-40f1-8d41-8762b6d8bf5c" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (907, N'Newsletter - Issue', N'newsletter.issue', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Newsletter_NewsletterIssue">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="IssueID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="IssueSubject">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="IssueText">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="IssueUnsubscribed" type="xs:int" />
              <xs:element name="IssueNewsletterID" type="xs:int" />
              <xs:element name="IssueTemplateID" type="xs:int" minOccurs="0" />
              <xs:element name="IssueSentEmails" type="xs:int" />
              <xs:element name="IssueMailoutTime" type="xs:dateTime" minOccurs="0" />
              <xs:element name="IssueShowInNewsletterArchive" type="xs:boolean" minOccurs="0" />
              <xs:element name="IssueGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="IssueLastModified" type="xs:dateTime" />
              <xs:element name="IssueSiteID" type="xs:int" />
              <xs:element name="IssueOpenedEmails" type="xs:int" minOccurs="0" />
              <xs:element name="IssueBounces" type="xs:int" minOccurs="0" />
              <xs:element name="IssueStatus" type="xs:int" minOccurs="0" />
              <xs:element name="IssueIsABTest" type="xs:boolean" minOccurs="0" />
              <xs:element name="IssueVariantOfIssueID" type="xs:int" minOccurs="0" />
              <xs:element name="IssueVariantName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="IssueSenderName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="IssueSenderEmail" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="IssueScheduledTaskID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Newsletter_NewsletterIssue" />
      <xs:field xpath="IssueID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="IssueID" fieldcaption="IssueID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="15b88ba7-8d58-48c4-9292-ea5f7784fb04"><settings><controlname>labelcontrol</controlname></settings></field><field column="IssueSubject" fieldcaption="IssueSubject" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="00223c6b-e89b-4dcc-b489-5bbc48cd4a24" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="IssueText" fieldcaption="IssueText" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="afc050d5-1b24-411f-a3dc-24453f493022"><settings><controlname>textareacontrol</controlname></settings></field><field column="IssueUnsubscribed" fieldcaption="IssueUnsubscribed" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3f9a9455-3975-4ced-9400-13b2f8b0ef44"><settings><controlname>textboxcontrol</controlname></settings></field><field column="IssueNewsletterID" fieldcaption="IssueNewsletterID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="54d28cf3-3e2e-4b3b-a3f6-419cb217db55"><settings><controlname>textboxcontrol</controlname></settings></field><field column="IssueTemplateID" fieldcaption="IssueTemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f3101643-6599-4374-a7a6-c666834af21d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="IssueSentEmails" fieldcaption="IssueSentEmails" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4e86e99f-0715-4f0e-b6eb-d69f2f84363e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="IssueMailoutTime" fieldcaption="IssueMailoutTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6c176fdf-07c7-4dff-b21c-dfe85684160c"><settings><controlname>calendarcontrol</controlname></settings></field><field column="IssueShowInNewsletterArchive" fieldcaption="IssueShowInNewsletterArchive" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="39607d2e-7a55-4331-a9e8-68b83d320a44"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="IssueGUID" fieldcaption="IssueGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ea71f981-a9e2-4019-a97d-e65dac96c9a1"><settings><controlname>unknown</controlname></settings></field><field column="IssueLastModified" fieldcaption="IssueLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cfdcc588-60b7-4909-9f2e-46f62e7d7615"><settings><controlname>calendarcontrol</controlname></settings></field><field column="IssueSiteID" fieldcaption="IssueSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c3fd7ac6-621d-4e3d-b79d-4f493b053c21" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="IssueOpenedEmails" fieldcaption="IssueOpenedEmails" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cf8feffc-13e9-47e8-9c14-b07484e74b5d" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="IssueBounces" fieldcaption="IssueBounces" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="bdd9e7ab-1038-40f8-b72d-50d6c8e96be2" visibility="none"><settings><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field><field column="IssueStatus" fieldcaption="IssueStatus" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7666914d-380a-41a0-b1b0-586398c8fc18" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="IssueIsABTest" fieldcaption="IssueIsABTest" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4cca7d88-2c06-4f88-b7ef-c26c806903dc" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="IssueVariantOfIssueID" fieldcaption="IssueVariantOfIssueID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="eb46e7eb-fc98-49b8-af9b-b0141d91a34e" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="IssueVariantName" fieldcaption="IssueVariantName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="59805b64-27bd-46c3-8012-5f61ab91855d" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="IssueSenderName" fieldcaption="IssueSenderName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="067e5b7c-dede-4ce1-b112-777b5cb5cf70" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="IssueSenderEmail" fieldcaption="IssueSenderEmail" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="1a086951-eb99-4c52-a5eb-883201ed931f" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="IssueScheduledTaskID" fieldcaption="IssueScheduledTaskID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="821b031c-57eb-48cd-b5f3-d34b315e9c95" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'Newsletter_NewsletterIssue', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:24', '41f64b98-ae6d-4ba4-867a-0079ef839a1a', 0, 1, 0, N'', 2, N'IssueSubject', N'IssueText', N'', N'IssueLastModified', N'<search><item searchable="True" name="IssueID" tokenized="False" content="False" id="6aa3baf2-1a77-4e01-ab02-8e787c7fc748" /><item searchable="False" name="IssueSubject" tokenized="True" content="True" id="659771fd-4191-4547-9b09-95283884d14d" /><item searchable="False" name="IssueText" tokenized="True" content="True" id="eeb7da76-cfbe-458f-85bc-505688173678" /><item searchable="True" name="IssueUnsubscribed" tokenized="False" content="False" id="ef262da9-20f7-4b67-9d1f-f9ee7a53875d" /><item searchable="True" name="IssueNewsletterID" tokenized="False" content="False" id="f85d0360-a2e2-4f3c-a527-4c2bf724827d" /><item searchable="True" name="IssueTemplateID" tokenized="False" content="False" id="8d2fbe28-d331-48f7-9ea2-a4ac1075b9ac" /><item searchable="True" name="IssueSentEmails" tokenized="False" content="False" id="ef5cc431-7dea-4a30-af75-dc2f126ea344" /><item searchable="True" name="IssueMailoutTime" tokenized="False" content="False" id="dcab45aa-ee4c-4465-b6a9-4873b9b1250d" /><item searchable="True" name="IssueShowInNewsletterArchive" tokenized="False" content="False" id="a89a11a2-178f-45de-a8ec-298c6533ac1a" /><item searchable="False" name="IssueGUID" tokenized="False" content="False" id="568cfd91-bbf4-4ec5-ae80-1793c1c73b4b" /><item searchable="True" name="IssueLastModified" tokenized="False" content="False" id="b3c4c359-4f5c-44d3-9da6-a0d21856a628" /><item searchable="True" name="IssueSiteID" tokenized="False" content="False" id="882be111-d8fe-41c9-abdd-73e94c75b867" /><item searchable="True" name="IssueOpenedEmails" tokenized="False" content="False" id="c7d9ca7f-b4a8-407c-958d-254b30d0cb5c" /><item searchable="True" name="IssueBounces" tokenized="False" content="False" id="d375a286-b2bf-48a6-944d-4950531d18d5" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (908, N'Newsletter - Subscriber', N'newsletter.subscriber', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Newsletter_Subscriber">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SubscriberID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SubscriberEmail" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubscriberFirstName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubscriberLastName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubscriberSiteID" type="xs:int" />
              <xs:element name="SubscriberGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="SubscriberCustomData" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubscriberType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubscriberRelatedID" type="xs:int" minOccurs="0" />
              <xs:element name="SubscriberLastModified" type="xs:dateTime" />
              <xs:element name="SubscriberFullName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="440" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubscriberBounces" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Newsletter_Subscriber" />
      <xs:field xpath="SubscriberID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SubscriberID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="83c8689b-22e0-4b81-a1f0-ae6ff8808fba"><settings><controlname>labelcontrol</controlname></settings></field><field column="SubscriberEmail" fieldcaption="{$General.Email$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="400" regularexpression="^[a-zA-Z0-9_\-\+]+(\.[a-zA-Z0-9_\-\+]+)*@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$" validationerrormessage="{$NewsletterSubscription.ErrorInvalidEmail$}" publicfield="false" guid="c13eb8fa-f65d-4052-8f91-92fc00c53679" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriberFirstName" fieldcaption="{$SubscribeForm.FirstName$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="e02a73e0-3722-47ba-be59-aae58cae2c49"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriberLastName" fieldcaption="{$SubscribeForm.LastName$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="d3020a22-0412-443c-8925-0d0936813c55"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriberSiteID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2bfe7ce0-e15c-4cef-bc53-c0cecabbcf52"><settings><controlname>labelcontrol</controlname></settings></field><field column="SubscriberGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4e52e79d-6de4-4fda-86cd-e22150b496c0" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SubscriberCustomData" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b449eb70-bb0d-4585-9fa0-113e1df3f417" visible="false"></field><field column="SubscriberRelatedID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6a33bca3-a330-4bd4-8e35-bffa9a14d941"><settings><controlname>labelcontrol</controlname></settings></field><field column="SubscriberLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0b576d02-188a-4e93-8900-7197bf863eb5"><settings><controlname>calendarcontrol</controlname></settings></field><field column="SubscriberFullName" fieldcaption="SubscriberFullName" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="440" publicfield="false" guid="b64f5663-574a-4c30-a482-e445de451d59" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field><field column="SubscriberType" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="6d688ffb-acac-4b92-89f8-35689d3da781" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriberBounces" fieldcaption="SubscriberBounces" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="915657d3-4337-45ce-ba34-2ba0442f0a1b" visibility="none"><settings><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field></form>', N'', N'', N'', N'Newsletter_Subscriber', N'', N'', N'', N'', 1, 0, 0, N'', 0, N'', NULL, '20120821 10:09:32', '01c9a7a3-beb3-48ef-a2b2-2cd56a0f074f', 0, 1, 0, N'', 2, N'SubscriberEmail', N'0', N'', N'SubscriberLastModified', N'<search><item searchable="True" name="SubscriberID" tokenized="False" content="False" id="3123062f-7551-4c73-89e1-00f7312ce71c" /><item searchable="False" name="SubscriberEmail" tokenized="True" content="True" id="6d43d810-568c-49da-a03d-37cfd673f550" /><item searchable="False" name="SubscriberFirstName" tokenized="True" content="True" id="b6139f0d-4386-4718-83c6-2a3b9d8d9db3" /><item searchable="False" name="SubscriberLastName" tokenized="True" content="True" id="cd021fcf-0506-494c-b5a2-b88e49527120" /><item searchable="True" name="SubscriberSiteID" tokenized="False" content="False" id="c37df813-5eac-4fdb-a495-6bfac601cd4f" /><item searchable="False" name="SubscriberGUID" tokenized="False" content="False" id="a02ca0df-8c53-4946-99c7-fda955a05c9a" /><item searchable="True" name="SubscriberRelatedID" tokenized="False" content="False" id="4f88e23e-5d40-4139-916a-8d3f1e20a76d" /><item searchable="True" name="SubscriberLastModified" tokenized="False" content="False" id="b878f668-9590-492e-99ed-352e3cae4146" /><item searchable="False" name="SubscriberType" tokenized="True" content="True" id="a134b19f-dc92-40f6-a160-c9f031ad42ee" /><item searchable="True" name="SubscriberBounces" tokenized="False" content="False" id="ec5f815a-c130-4168-bce9-0bb8cc1d0765" /></search>', NULL, 1, N'', NULL, N'<form><field column="ContactEmail" mappedtofield="SubscriberEmail" /><field column="ContactFirstName" mappedtofield="SubscriberFirstName" /><field column="ContactLastName" mappedtofield="SubscriberLastName" /></form>', 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (909, N'Scheduled task', N'cms.ScheduledTask', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_ScheduledTask">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TaskID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TaskName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskAssemblyName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskClass" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskInterval">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1000" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskData">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskLastRunTime" type="xs:dateTime" minOccurs="0" />
              <xs:element name="TaskNextRunTime" type="xs:dateTime" minOccurs="0" />
              <xs:element name="TaskProgress" type="xs:int" minOccurs="0" />
              <xs:element name="TaskLastResult" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskEnabled" type="xs:boolean" />
              <xs:element name="TaskSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="TaskDeleteAfterLastRun" type="xs:boolean" minOccurs="0" />
              <xs:element name="TaskServerName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="TaskLastModified" type="xs:dateTime" />
              <xs:element name="TaskExecutions" type="xs:int" minOccurs="0" />
              <xs:element name="TaskResourceID" type="xs:int" minOccurs="0" />
              <xs:element name="TaskRunInSeparateThread" type="xs:boolean" minOccurs="0" />
              <xs:element name="TaskUseExternalService" type="xs:boolean" minOccurs="0" />
              <xs:element name="TaskAllowExternalService" type="xs:boolean" minOccurs="0" />
              <xs:element name="TaskLastExecutionReset" type="xs:dateTime" minOccurs="0" />
              <xs:element name="TaskCondition" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskRunIndividually" type="xs:boolean" minOccurs="0" />
              <xs:element name="TaskUserID" type="xs:int" minOccurs="0" />
              <xs:element name="TaskType" type="xs:int" minOccurs="0" />
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
      <xs:selector xpath=".//CMS_ScheduledTask" />
      <xs:field xpath="TaskID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TaskID" fieldcaption="TaskID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="4419f729-75ac-4eb7-a4d4-bdcdb8d03884" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="TaskName" fieldcaption="TaskName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e9eabd43-9133-4cd9-8012-aefa513e87b2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskDisplayName" fieldcaption="TaskDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a3f95b42-bd02-4db6-b1aa-0d340952a27e" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskAssemblyName" fieldcaption="TaskAssemblyName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4c567e00-bf7a-42e8-878b-a5befde1faed"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskClass" fieldcaption="TaskClass" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c7a260a0-d909-4e9e-b1d3-bcbda7eb9076"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskInterval" fieldcaption="TaskInterval" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="02900d9c-c032-4081-9532-a48c339dbbce"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskData" fieldcaption="TaskData" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a8fd0828-3456-483d-9845-f93c6d9fc9fd"><settings><controlname>textareacontrol</controlname></settings></field><field column="TaskLastRunTime" fieldcaption="TaskLastRunTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c1c5fbe3-cf9b-4055-b663-18898c5cae18"><settings><controlname>calendarcontrol</controlname></settings></field><field column="TaskNextRunTime" fieldcaption="TaskNextRunTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="72b48b10-53ca-4934-8be4-c3044af2be7d"><settings><controlname>calendarcontrol</controlname></settings></field><field column="TaskProgress" fieldcaption="TaskProgress" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b541b89c-ea55-4085-9a0d-9c9c33cf64e5"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskLastResult" fieldcaption="TaskLastResult" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="feb262dd-3a25-4301-8b31-6d068f0a75a1"><settings><controlname>textareacontrol</controlname></settings></field><field column="TaskEnabled" fieldcaption="TaskEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="dbd5d77f-f7f4-4da4-87f8-9027cbcca5e1"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TaskSiteID" fieldcaption="TaskSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e4bc2c60-9893-4c41-a3c9-45395365d776"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskDeleteAfterLastRun" fieldcaption="TaskDeleteAfterLastRun" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="564b2be3-fa3f-4517-8cf3-f36bff312e6b"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TaskServerName" fieldcaption="TaskServerName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a86cf79a-156b-4075-a378-58875eb715ef"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskGUID" fieldcaption="TaskGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6db955f1-124a-4a2b-ad66-596dd53936ea"><settings><controlname>unknown</controlname></settings></field><field column="TaskLastModified" fieldcaption="TaskLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5a02bac7-ee29-497a-a42d-22f1201e1b1c"><settings><controlname>calendarcontrol</controlname></settings></field><field column="TaskExecutions" fieldcaption="TaskExecutions" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5f1cbc53-2a56-415b-b194-fdf91a48a8ad"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskResourceID" fieldcaption="Task module ID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6f837b40-1492-4558-b16f-85622aa7d1ce" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskRunInSeparateThread" fieldcaption="Run in separate thread" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" publicfield="false" spellcheck="false" guid="56747e3e-3b17-459a-a828-353093ae98fb" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TaskAllowExternalService" fieldcaption="Allow external service" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" fielddescription="Indicates whether the task can be processed by an external service." publicfield="false" guid="9b235d42-586a-4509-a81d-258d40d62690" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TaskUseExternalService" fieldcaption="Use external service" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" fielddescription="Indicates whether the task is processed by an external service." publicfield="false" guid="464d4d85-2746-46f8-aa67-f8d936c0d25c" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TaskLastExecutionReset" fieldcaption="TaskID" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="36a365cb-fd5a-40a7-84a3-3dc124f073da" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="TaskCondition" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="400" publicfield="false" guid="191cdffc-6798-49c7-8b6b-50ce1932a042" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="TaskRunIndividually" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" publicfield="false" guid="e1d09c58-5192-4c7b-affd-c6819dddd08f" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="TaskUserID" fieldcaption="TaskUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c362f5fa-bc6d-47c9-b238-cf91083809b6" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TaskType" fieldcaption="TaskType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e714ac81-c2d4-4256-b11e-ab5bedad4f27" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TaskObjectType" fieldcaption="TaskObjectType" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="c0144c6b-2105-4543-9e41-6f017fb58a69" visibility="none"><settings><AllowDefault>False</AllowDefault><AllowAll>False</AllowAll><AddGlobalObjectSuffix>False</AddGlobalObjectSuffix><LocalizeItems>True</LocalizeItems><MaxDisplayedItems>25</MaxDisplayedItems><SelectionMode>0</SelectionMode><ValuesSeparator>;</ValuesSeparator><ObjectType>cms.class</ObjectType><AllowEditTextBox>False</AllowEditTextBox><ReturnColumnName>ClassName</ReturnColumnName><MaxDisplayedTotalItems>50</MaxDisplayedTotalItems><DialogWindowName>SelectionDialog</DialogWindowName><AllowEmpty>False</AllowEmpty><RemoveMultipleCommas>False</RemoveMultipleCommas><ItemsPerPage>25</ItemsPerPage><AddGlobalObjectNamePrefix>False</AddGlobalObjectNamePrefix><DialogWindowHeight>590</DialogWindowHeight><controlname>uni_selector</controlname><DialogWindowWidth>668</DialogWindowWidth><GlobalObjectSuffix>(global)</GlobalObjectSuffix></settings></field><field column="TaskObjectID" fieldcaption="TaskObjectID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="944b2dbf-fd97-41e3-8788-fc47d5158a30" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_ScheduledTask', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120801 16:36:17', '57b78754-4137-4220-b736-8c16cbbe6c87', 0, 1, 0, N'', 1, N'TaskDisplayName', N'TaskLastResult', N'', N'TaskLastModified', N'<search><item searchable="True" name="TaskID" tokenized="False" content="False" id="a0dd8f64-9aec-48c2-88db-5b1280e5df16" /><item searchable="False" name="TaskName" tokenized="True" content="True" id="c9fe6ee6-fb5d-4777-a51a-e6b2aa04fbca" /><item searchable="False" name="TaskDisplayName" tokenized="True" content="True" id="62617973-7fb4-4ab2-bddc-a6278bf9ec17" /><item searchable="False" name="TaskAssemblyName" tokenized="True" content="True" id="2a03db10-cf81-4a98-beed-09cfa7326f4a" /><item searchable="False" name="TaskClass" tokenized="True" content="True" id="b5add5c9-e188-4957-b02b-30f4cf526ad1" /><item searchable="False" name="TaskInterval" tokenized="True" content="True" id="c13b1a3b-d832-4f00-b2e0-47ce7b6e907f" /><item searchable="False" name="TaskData" tokenized="True" content="True" id="b5c34645-676b-468e-83bf-d388c7018c7d" /><item searchable="True" name="TaskLastRunTime" tokenized="False" content="False" id="76b69056-d0ef-4d75-9ff8-0c75f2750e31" /><item searchable="True" name="TaskNextRunTime" tokenized="False" content="False" id="2e454b83-3c7b-40f2-b45a-a2b25c1cc668" /><item searchable="True" name="TaskProgress" tokenized="False" content="False" id="24285fde-73b8-4dfd-9994-f1afb3abc4bd" /><item searchable="False" name="TaskLastResult" tokenized="True" content="True" id="d744b40d-ec9c-469b-b7e7-283155fa51a1" /><item searchable="True" name="TaskEnabled" tokenized="False" content="False" id="109e16b6-9526-4fc6-9ae4-583f31a17274" /><item searchable="True" name="TaskSiteID" tokenized="False" content="False" id="d856e820-b3dd-432c-94cd-47ff810670c5" /><item searchable="True" name="TaskDeleteAfterLastRun" tokenized="False" content="False" id="9a015d0a-6757-4929-97b9-e570caa80bf3" /><item searchable="False" name="TaskServerName" tokenized="True" content="True" id="5fc63baa-40a0-4002-9b7b-7904a46c2b45" /><item searchable="False" name="TaskGUID" tokenized="False" content="False" id="a6468b94-cd2f-4046-b5a0-36a9d69ea768" /><item searchable="True" name="TaskLastModified" tokenized="False" content="False" id="1946ce8b-0b08-462f-a862-4d199ea83c56" /><item searchable="True" name="TaskExecutions" tokenized="False" content="False" id="66084509-9776-4df6-8bf7-97eb148454d1" /><item searchable="True" name="TaskResourceID" tokenized="False" content="False" id="3c91f106-984c-40b9-bb4d-d475753b3035" /><item searchable="True" name="TaskRunInSeparateThread" tokenized="False" content="False" id="523a9bba-eade-4eaa-806c-68a8a2b73eae" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (912, N'Newsletter - SubscriberNewsletter', N'Newsletter.SubscriberNewsletter', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Newsletter_SubscriberNewsletter">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SubscriberID" type="xs:int" />
              <xs:element name="NewsletterID" type="xs:int" />
              <xs:element name="SubscribedWhen" type="xs:dateTime" />
              <xs:element name="SubscriptionApproved" type="xs:boolean" minOccurs="0" />
              <xs:element name="SubscriptionApprovedWhen" type="xs:dateTime" minOccurs="0" />
              <xs:element name="SubscriptionApprovalHash" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubscriptionEnabled" type="xs:boolean" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Newsletter_SubscriberNewsletter" />
      <xs:field xpath="SubscriberID" />
      <xs:field xpath="NewsletterID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SubscriberID" fieldcaption="SubscriberID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="812e73dc-fd64-4e4d-8edc-b83ee7991a33"><settings><controlname>labelcontrol</controlname></settings></field><field column="NewsletterID" fieldcaption="NewsletterID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b19b8699-2c2f-4001-b802-04cdaa87e01e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscribedWhen" fieldcaption="SubscribedWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="882d41c1-10a3-4c89-9b11-19cb98f88807"><settings><controlname>calendarcontrol</controlname></settings></field><field column="SubscriptionApproved" fieldcaption="SubscriptionApproved" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="23308913-8f3f-4d45-b5f9-63e5aa6bab32" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="SubscriptionApprovedWhen" fieldcaption="SubscriptionApprovedWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6e124236-cdb0-4b0f-8a06-3c1d1cb162cd" visibility="none"><settings><displayNow>true</displayNow><timezonetype>inherit</timezonetype><controlname>calendarcontrol</controlname><editTime>true</editTime></settings></field><field column="SubscriptionApprovalHash" fieldcaption="SubscriptionApprovalHash" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="77673da4-a9e1-4776-b77c-8cf72b8c8132" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SubscriptionEnabled" fieldcaption="SubscriptionEnabled" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f5f1cad3-bbdb-4036-9deb-34012d63dc82" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Newsletter_SubscriberNewsletter', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120807 16:18:01', 'e73eba16-4a8d-445d-a1f1-ac3d610b855e', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (913, N'Newsletter - Newsletter', N'newsletter.newsletter', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Newsletter_Newsletter">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="NewsletterID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="NewsletterDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NewsletterName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NewsletterType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="5" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NewsletterSubscriptionTemplateID" type="xs:int" />
              <xs:element name="NewsletterUnsubscriptionTemplateID" type="xs:int" />
              <xs:element name="NewsletterSenderName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NewsletterSenderEmail">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NewsletterDynamicSubject" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="500" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NewsletterDynamicURL" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="500" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NewsletterDynamicScheduledTaskID" type="xs:int" minOccurs="0" />
              <xs:element name="NewsletterTemplateID" type="xs:int" minOccurs="0" />
              <xs:element name="NewsletterSiteID" type="xs:int" />
              <xs:element name="NewsletterGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="NewsletterUnsubscribeUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1000" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NewsletterBaseUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="500" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NewsletterLastModified" type="xs:dateTime" />
              <xs:element name="NewsletterUseEmailQueue" type="xs:boolean" minOccurs="0" />
              <xs:element name="NewsletterEnableOptIn" type="xs:boolean" minOccurs="0" />
              <xs:element name="NewsletterOptInTemplateID" type="xs:int" minOccurs="0" />
              <xs:element name="NewsletterSendOptInConfirmation" type="xs:boolean" minOccurs="0" />
              <xs:element name="NewsletterOptInApprovalURL" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NewsletterTrackOpenEmails" type="xs:boolean" minOccurs="0" />
              <xs:element name="NewsletterTrackClickedLinks" type="xs:boolean" minOccurs="0" />
              <xs:element name="NewsletterDraftEmails" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="NewsletterLogActivity" type="xs:boolean" minOccurs="0" />
              <xs:element name="NewsletterEnableResending" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Newsletter_Newsletter" />
      <xs:field xpath="NewsletterID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="NewsletterID" fieldcaption="NewsletterID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="f015e086-c0c6-4c72-bbaa-7a7461f4e5ff"><settings><controlname>labelcontrol</controlname></settings></field><field column="NewsletterDisplayName" fieldcaption="NewsletterDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7af312ef-f89f-4480-bafd-22f924b7517f" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterName" fieldcaption="NewsletterName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ab201dec-dd17-45e1-8057-306ed113b8ed"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterType" fieldcaption="NewsletterType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5d898e33-0f0d-462e-b051-91228c9b4729"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterSubscriptionTemplateID" fieldcaption="NewsletterSubscriptionTemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="902c9fb3-08fd-453d-9cad-7f2b1ef40201"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterUnsubscriptionTemplateID" fieldcaption="NewsletterUnsubscriptionTemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0fceb734-921a-4434-bede-0aed0ed35823"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterSenderName" fieldcaption="NewsletterSenderName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2eaf8900-a508-4c38-a013-c8d243d2f96c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterSenderEmail" fieldcaption="NewsletterSenderEmail" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8499a3ed-40b3-4ea7-bbf7-4ac62e2a835c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterDynamicSubject" fieldcaption="NewsletterDynamicSubject" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b489b91a-31a1-4c1a-9208-255f78324403"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterDynamicURL" fieldcaption="NewsletterDynamicURL" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="58bc4a29-4c40-4b2d-acba-197115902e38"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterDynamicScheduledTaskID" fieldcaption="NewsletterDynamicScheduledTaskID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="21c10b0f-e449-4c7b-b5ad-7f9fba1c9705"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterTemplateID" fieldcaption="NewsletterTemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="95bd18af-6e22-4c94-baaa-7f20254b60c2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterSiteID" fieldcaption="NewsletterSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9048b776-a74a-4551-b7c5-cee34128b9ee"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterGUID" fieldcaption="NewsletterGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5c08f195-4b00-46b3-a733-a629c8206380"><settings><controlname>unknown</controlname></settings></field><field column="NewsletterUnsubscribeUrl" fieldcaption="NewsletterUnsubscribeUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4b99c0d8-704a-4d1f-ba23-9924ffdb0f3e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterBaseUrl" fieldcaption="NewsletterBaseUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2e08adfd-1256-4946-abb1-7bc104bf95c3"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterLastModified" fieldcaption="NewsletterLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2dd1c825-0c1c-4ea8-84d0-64a3bff43f32"><settings><controlname>calendarcontrol</controlname></settings></field><field column="NewsletterUseEmailQueue" fieldcaption="NewsletterUseEmailQueue" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1dfa055c-6214-44b1-ac7d-92ed36d0eb68"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="NewsletterEnableOptIn" fieldcaption="NewsletterEnableOptIn" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c7d18589-6ba9-48d1-976f-ab3d8fd2422d" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="NewsletterOptInTemplateID" fieldcaption="NewsletterOptInTemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="54459197-3e55-4346-a286-d6c65757f3a6" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterSendOptInConfirmation" fieldcaption="NewsletterSendOptInConfirmation" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="23c053fb-9c65-415f-8fc4-1972b54072f4" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="NewsletterOptInApprovalURL" fieldcaption="NewsletterOptInApprovalURL" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="6b65b50e-2e44-467a-9c69-d0a13e376a9e" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="NewsletterTrackOpenEmails" fieldcaption="NewsletterTrackOpenEmails" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b257aa96-f2d7-4e9f-80dd-5d8d60b1ba09" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="NewsletterTrackClickedLinks" fieldcaption="NewsletterTrackClickedLinks" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" fielddescription="Indicates if link tracking is enabled" publicfield="false" spellcheck="false" guid="d1ec21b6-7668-4b4d-855d-3b439dcdc173" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="NewsletterDraftEmails" fieldcaption="NewsletterDraftEmails" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" fielddescription="Contains testing e-mails" publicfield="false" spellcheck="false" guid="439d9668-e22c-4e40-baf8-f1cda5530254" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="NewsletterLogActivity" fieldcaption="NewsletterLogActivity" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" fielddescription="Indicates if on-line marketing activities are logged" publicfield="false" guid="988fb2d4-b2f9-4b0b-a03d-7a09886d5f0b" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="NewsletterEnableResending" fieldcaption="Enable resending" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" fielddescription="Indicates if newsletter issues may be resent." publicfield="false" guid="dd2364b7-71f0-4345-8639-e88a6fcd5530" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Newsletter_Newsletter', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120516 09:35:24', '22ecf2f7-865a-4a1e-bbaa-5da680489b39', 0, 1, 0, N'', 2, N'NewsletterDisplayName', N'0', N'', N'NewsletterLastModified', N'<search><item searchable="True" name="NewsletterID" tokenized="False" content="False" id="f40084cf-cb0a-4990-bfd0-6ea05f944c53" /><item searchable="False" name="NewsletterDisplayName" tokenized="True" content="True" id="65c8b3bb-b6be-441b-a264-7ad39149f8aa" /><item searchable="False" name="NewsletterName" tokenized="True" content="True" id="473003c0-fe02-4c64-b208-7e940c5fa32e" /><item searchable="False" name="NewsletterType" tokenized="True" content="True" id="8b43555c-7a6c-4a62-b71f-d5784d9cafe3" /><item searchable="True" name="NewsletterSubscriptionTemplateID" tokenized="False" content="False" id="05bb59cf-ced3-4f88-959a-3182a015048f" /><item searchable="True" name="NewsletterUnsubscriptionTemplateID" tokenized="False" content="False" id="01ce53d8-d0cd-4258-b536-86447f008b91" /><item searchable="False" name="NewsletterSenderName" tokenized="True" content="True" id="d2785e76-4b09-4bc3-a662-ac4f2e4998f0" /><item searchable="False" name="NewsletterSenderEmail" tokenized="True" content="True" id="41e477e4-0d62-44c6-884c-57f029d065dd" /><item searchable="False" name="NewsletterDynamicSubject" tokenized="True" content="True" id="0808f807-d088-4904-9855-0cdd2b07a997" /><item searchable="False" name="NewsletterDynamicURL" tokenized="True" content="True" id="acdee0aa-769c-43c4-9517-895328e4a1ec" /><item searchable="True" name="NewsletterDynamicScheduledTaskID" tokenized="False" content="False" id="9cf2fe80-52ea-4896-90a2-cae10d7e5336" /><item searchable="True" name="NewsletterTemplateID" tokenized="False" content="False" id="cc6e6c11-d324-4f14-8ca7-80d22fe874ec" /><item searchable="True" name="NewsletterSiteID" tokenized="False" content="False" id="ce878e5e-6697-43c9-87c4-648c83b28d3c" /><item searchable="False" name="NewsletterGUID" tokenized="False" content="False" id="b4a60c8d-b8bb-47fb-92b0-141aa8d4ceb6" /><item searchable="False" name="NewsletterUnsubscribeUrl" tokenized="True" content="True" id="65cd328d-9459-4ede-8e7e-cda5cf5401a5" /><item searchable="False" name="NewsletterBaseUrl" tokenized="True" content="True" id="859eb990-8bb8-48e6-a657-10e96bae4db4" /><item searchable="True" name="NewsletterLastModified" tokenized="False" content="False" id="abca14c9-c8c5-487a-b74b-648802694258" /><item searchable="True" name="NewsletterUseEmailQueue" tokenized="False" content="False" id="d9be6022-6f62-47ff-abdc-32587dc90117" /><item searchable="True" name="NewsletterEnableOptIn" tokenized="False" content="False" id="ca81ef34-addb-4de2-9033-4cbac9e724b2" /><item searchable="True" name="NewsletterOptInTemplateID" tokenized="False" content="False" id="277c5283-a19a-44d6-9005-d7a306ccc8af" /><item searchable="True" name="NewsletterSendOptInConfirmation" tokenized="False" content="False" id="82c1d248-105b-42f1-af50-ae2b7d3139c8" /><item searchable="False" name="NewsletterOptInApprovalURL" tokenized="True" content="True" id="4adfce04-80b7-45ac-8b86-c3bed345e9a1" /><item searchable="True" name="NewsletterTrackOpenEmails" tokenized="False" content="False" id="033802a3-b420-4dbc-a634-9dc7f85d5ccc" /><item searchable="True" name="NewsletterTrackClickedLinks" tokenized="False" content="False" id="3a07d96e-e2fa-44fd-ab6a-9c96a073a9ed" /><item searchable="False" name="NewsletterDraftEmails" tokenized="True" content="True" id="8467ff20-9bf0-4cbd-9681-cbe25447a3fa" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (919, N'Newsletter - Emails', N'newsletter.emails', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Newsletter_Emails">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="EmailID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="EmailNewsletterIssueID" type="xs:int" />
              <xs:element name="EmailSubscriberID" type="xs:int" />
              <xs:element name="EmailSiteID" type="xs:int" />
              <xs:element name="EmailLastSendResult" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailLastSendAttempt" type="xs:dateTime" minOccurs="0" />
              <xs:element name="EmailSending" type="xs:boolean" minOccurs="0" />
              <xs:element name="EmailGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="EmailUserID" type="xs:int" minOccurs="0" />
              <xs:element name="EmailContactID" type="xs:int" minOccurs="0" />
              <xs:element name="EmailAddress" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Newsletter_Emails" />
      <xs:field xpath="EmailID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="EmailID" fieldcaption="EmailID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="b7be2b12-61df-4797-a730-c367642666fc"><settings><controlname>labelcontrol</controlname></settings></field><field column="EmailNewsletterIssueID" fieldcaption="EmailNewsletterIssueID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bb8ed72a-5b07-4eee-9d4f-e4cfa8e276e6"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailSubscriberID" fieldcaption="EmailSubscriberID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="558d64e9-94ee-4256-9c77-79e4f1729dff"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailSiteID" fieldcaption="EmailSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="df00b7ed-73c7-465c-a5b8-0647f824ddd4"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailLastSendResult" fieldcaption="EmailLastSendResult" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="63118624-c884-415d-a355-2dae14e543d0"><settings><controlname>textareacontrol</controlname></settings></field><field column="EmailLastSendAttempt" fieldcaption="EmailLastSendAttempt" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ce1553fc-2de4-468d-9262-2334e3b88366"><settings><controlname>calendarcontrol</controlname></settings></field><field column="EmailSending" fieldcaption="EmailSending" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6e9ca4ef-3da5-4da7-947e-f42849e62ee0"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="EmailGUID" fieldcaption="EmailGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="23fd1e0c-74bd-4daa-9f2b-29d1f0ad033a"><settings><controlname>labelcontrol</controlname></settings></field><field column="EmailUserID" fieldcaption="EmailUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e01ca2c1-9ad7-4a5a-b177-b534a85d3721"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailContactID" fieldcaption="EmailContactID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="061625b0-d506-4e07-9bf9-c810a5babb80"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailAddress" fieldcaption="EmailAddress" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="be8e1d7c-31e4-4995-95f9-9a20f22bf00d"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Newsletter_Emails', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120622 10:39:43', '551d4df2-d429-4a32-906b-c5821a04f7da', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (929, N'Web part container', N'cms.WebPartContainer', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WebPartContainer">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ContainerID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ContainerDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContainerName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContainerTextBefore" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContainerTextAfter" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContainerGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ContainerLastModified" type="xs:dateTime" />
              <xs:element name="ContainerCSS" minOccurs="0">
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
      <xs:selector xpath=".//CMS_WebPartContainer" />
      <xs:field xpath="ContainerID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ContainerID" fieldcaption="ContainerID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="b2c2b404-fd6f-4fb1-bb93-4f6926ac3e37"><settings><controlname>labelcontrol</controlname></settings></field><field column="ContainerDisplayName" fieldcaption="ContainerDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="790388db-652f-4b65-9740-65ec50bb1f35" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContainerName" fieldcaption="ContainerName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="62939e60-f1b3-4164-b587-94aa5b9a1c5f" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field><field column="ContainerTextBefore" fieldcaption="ContainerTextBefore" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f2c087fc-b7ea-4513-a14e-89b5769d2b09"><settings><controlname>textareacontrol</controlname></settings></field><field column="ContainerTextAfter" fieldcaption="ContainerTextAfter" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b8c67f27-9765-4371-a48d-8281e220c530"><settings><controlname>textareacontrol</controlname></settings></field><field column="ContainerCSS" fieldcaption="Container CSS styles" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6f206cc4-d767-4c84-959a-8dfa5181608e" visibility="none"><settings><controlname>textareacontrol</controlname></settings></field><field column="ContainerGUID" fieldcaption="ContainerGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ba1c27b5-3f48-45d4-bdfc-62471238b7f7"><settings><controlname>unknown</controlname></settings></field><field column="ContainerLastModified" fieldcaption="ContainerLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c35ecd48-2d39-4daa-ba7e-5087dfee2c1f"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'~/CMSModules/PortalEngine/UI/WebContainers/Container_Edit_Frameset.aspx?containerid={%EditedObject.ID%}&editonlycode=1&tabmode=1', N'', N'', N'CMS_WebPartContainer', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120809 15:41:21', 'efe592b2-9b49-4997-8572-8419674cad0c', 0, 1, 0, N'', 1, N'ContainerDisplayName', N'0', N'', N'ContainerLastModified', N'<search><item searchable="True" name="ContainerID" tokenized="False" content="False" id="774b3e9b-ab15-44b9-b1c9-74919a6dce8a" /><item searchable="False" name="ContainerDisplayName" tokenized="True" content="True" id="835d1872-5e73-4b92-aa84-f5d4c57d2609" /><item searchable="False" name="ContainerName" tokenized="True" content="True" id="f8726091-5340-4167-8e71-87797b9bcd7c" /><item searchable="False" name="ContainerTextBefore" tokenized="True" content="True" id="7ac9b825-7506-40af-9579-a1f97017a1db" /><item searchable="False" name="ContainerTextAfter" tokenized="True" content="True" id="b0f394cf-5ce3-42a0-92ec-17ad2d72c8da" /><item searchable="False" name="ContainerCSS" tokenized="True" content="True" id="e4981ba1-68e6-48e6-8561-f50e1db4184e" /><item searchable="False" name="ContainerGUID" tokenized="False" content="False" id="2336e440-c38f-45b6-b0ad-487057b58348" /><item searchable="True" name="ContainerLastModified" tokenized="False" content="False" id="b76e558c-6e17-4503-8c39-d37cbff419cf" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (930, N'LicenseKey', N'cms.LicenseKey', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_LicenseKey">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="LicenseKeyID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="LicenseDomain">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LicenseKey">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LicenseEdition" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LicenseExpiration" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LicensePackages" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LicenseServers" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_LicenseKey" />
      <xs:field xpath="LicenseKeyID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="LicenseKeyID" fieldcaption="LicenseKeyID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="d2e30d80-9086-4d4b-a508-842eefa2aa1a"><settings><controlname>labelcontrol</controlname></settings></field><field column="LicenseDomain" fieldcaption="LicenseDomain" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="cc354cd7-2b35-4a58-9ab4-a7f4d4428881" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="LicenseKey" fieldcaption="LicenseKey" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="13e758e9-06e7-4074-8805-13aa3acd6d02"><settings><controlname>textareacontrol</controlname></settings></field><field column="LicenseEdition" fieldcaption="LicenseEdition" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d7884a96-2d2f-4e1b-9e06-2063cf08bff0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="LicenseExpiration" fieldcaption="LicenseExpiration" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b50fdb22-682e-4f36-abe6-2962376c45a0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="LicensePackages" fieldcaption="LicensePackages" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="993a19f5-15b7-4b89-8844-0b5520a1c57c" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="LicenseServers" fieldcaption="LicenseServers" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="135c8059-2619-431b-8fd1-682b5cf5c332" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_LicenseKey', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:23', '029aa7db-a6e2-4996-b1c7-38f7bbd838ee', 0, 1, 0, N'', 0, N'LicenseDomain', N'0', N'', N'LicenseExpiration', N'<search><item searchable="True" name="LicenseKeyID" tokenized="False" content="False" id="dedd1dbd-7e60-428e-976f-c927eafa3997" /><item searchable="False" name="LicenseDomain" tokenized="True" content="True" id="ac26eaaa-af54-4ce3-880e-f803face2389" /><item searchable="False" name="LicenseKey" tokenized="True" content="True" id="856168ab-c9f6-4bd4-9c53-13ca84e3e9e1" /><item searchable="False" name="LicenseEdition" tokenized="True" content="True" id="8240bc6f-cb81-4a4e-97b0-fa04f186c8ed" /><item searchable="False" name="LicenseExpiration" tokenized="True" content="True" id="7b49ff56-29b4-403e-b7b8-495f4dadf634" /><item searchable="False" name="LicensePackages" tokenized="True" content="True" id="884dc00d-a4bd-4b15-bd2b-8c36599785be" /><item searchable="True" name="LicenseServers" tokenized="False" content="False" id="8859afc0-c8d6-4a76-9971-f277001de398" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1093, N'Web farm server', N'cms.WebFarmServer', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WebFarmServer">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ServerID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ServerDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="300" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ServerName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="300" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ServerURL">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2000" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ServerGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ServerLastModified" type="xs:dateTime" />
              <xs:element name="ServerEnabled" type="xs:boolean" />
              <xs:element name="ServerLastUpdated" type="xs:dateTime" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_WebFarmServer" />
      <xs:field xpath="ServerID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ServerID" fieldcaption="ServerID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="aa45d15a-369b-4d52-b349-50a6dd88bf99"><settings><controlname>labelcontrol</controlname></settings></field><field column="ServerDisplayName" fieldcaption="ServerDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="300" publicfield="false" guid="0faeba3a-902c-498b-86f1-adc10aecc480" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ServerName" fieldcaption="ServerName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="300" publicfield="false" guid="2b918771-1f4f-4b7e-8079-a9bc77580211" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field><field column="ServerURL" fieldcaption="ServerURL" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="46b24382-3b88-46b8-b1f8-9a04ddbf09d3"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ServerGUID" fieldcaption="ServerGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4a6c0fb1-566d-4a9f-b780-a6777aab8ac5"><settings><controlname>unknown</controlname></settings></field><field column="ServerLastModified" fieldcaption="ServerLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="08311544-ceb1-4df6-b40a-c7c7eb4b8048"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ServerEnabled" fieldcaption="ServerEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a7318ab5-b31f-4c39-a7e5-6f3fe9dff9c1"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ServerLastUpdated" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="bb3c64d7-9e54-42b6-84ad-23d64182f136" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_WebFarmServer', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120823 16:35:52', 'bb652b81-0792-4191-9d32-e7b8f2bd6e4f', 0, 1, 0, N'', 1, N'ServerDisplayName', N'0', N'', N'ServerLastModified', N'<search><item searchable="True" name="ServerID" tokenized="False" content="False" id="71b26851-b68f-43b1-a327-252253c37fd0" /><item searchable="False" name="ServerDisplayName" tokenized="True" content="True" id="dbe591f8-e7ff-4df4-b838-c0b8bc332fd1" /><item searchable="False" name="ServerName" tokenized="True" content="True" id="001c185f-bd67-4114-b6d0-28cd04ae2fca" /><item searchable="False" name="ServerURL" tokenized="True" content="True" id="3ae8604d-4296-4e68-9f89-79b3c6e078c4" /><item searchable="False" name="ServerGUID" tokenized="False" content="False" id="dd0e9a1e-d279-4464-b614-fd678eb2cf67" /><item searchable="True" name="ServerLastModified" tokenized="False" content="False" id="d3495bd1-2ecc-4088-91fc-bc02b6d00956" /><item searchable="True" name="ServerEnabled" tokenized="False" content="False" id="fe4321ee-ad8b-420a-87a0-6d7285500dba" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1094, N'Web farm task', N'cms.WebFarmTask', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WebFarmTask">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TaskID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TaskType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskTextData" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskBinaryData" type="xs:base64Binary" minOccurs="0" />
              <xs:element name="TaskCreated" type="xs:dateTime" minOccurs="0" />
              <xs:element name="TaskEnabled" type="xs:boolean" minOccurs="0" />
              <xs:element name="TaskTarget" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskMachineName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="TaskIsAnonymous" type="xs:boolean" minOccurs="0" />
              <xs:element name="TaskErrorMessage" minOccurs="0">
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
      <xs:selector xpath=".//CMS_WebFarmTask" />
      <xs:field xpath="TaskID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TaskID" fieldcaption="TaskID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="5e8df106-ca79-494f-bcf1-d0b016afbad9"><settings><controlname>labelcontrol</controlname></settings></field><field column="TaskType" fieldcaption="TaskType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8f272cff-24c4-48d6-8199-d96f0b3a4c49"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskTextData" fieldcaption="TaskTextData" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="35ac3782-f563-4df0-af7e-989db67a7ec7"><settings><controlname>textareacontrol</controlname></settings></field><field column="TaskBinaryData" fieldcaption="TaskBinaryData" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="93186034-dfa3-49ac-8d6c-3c7c503e088c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskCreated" fieldcaption="TaskCreated" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2468f2df-6070-4941-82f0-04c1f9aa91d0"><settings><controlname>calendarcontrol</controlname></settings></field><field column="TaskEnabled" fieldcaption="TaskEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e53d2ff4-2a03-41d3-95b9-8808a4a4e4af"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TaskTarget" fieldcaption="TaskTarget" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="92590b46-2f18-4de4-8a83-3e670dc72cce"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskMachineName" fieldcaption="TaskMachineName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0febed42-1c4f-4abe-86f8-b2cb7cf9a25e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9783e58c-39eb-43c8-ae5a-90f11a6797e5"><settings><controlname>labelcontrol</controlname></settings></field><field column="TaskIsAnonymous" fieldcaption="TaskIsAnonymous" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b90733f1-350f-4c90-a7f9-6ff237618cc2" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TaskErrorMessage" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0ba49fe4-479a-4821-9785-dc1376e8a388" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field></form>', N'', N'', N'', N'CMS_WebFarmTask', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:45', '44576ef8-a9b8-44e6-ba9d-4643f7de17cf', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1095, N'Root', N'CMS.Root', 0, 1, 0, N'', N'<form></form>', N'', N'', N'', N'', N'', N'', N'', N'', 0, 0, 0, N'', 1, N'', NULL, '20120911 12:17:54', 'a585aea3-10b5-4b74-9aad-747fcce72493', 0, 0, 0, N'', 0, N'DocumentName', N'DocumentContent', N'', N'DocumentCreatedWhen', N'<search></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1121, N'ForumGroup', N'Forums.ForumGroup', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Forums_ForumGroup">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="GroupID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="GroupSiteID" type="xs:int" />
              <xs:element name="GroupName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GroupDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GroupOrder" type="xs:int" minOccurs="0" />
              <xs:element name="GroupDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GroupGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="GroupLastModified" type="xs:dateTime" />
              <xs:element name="GroupBaseUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GroupUnsubscriptionUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GroupGroupID" type="xs:int" minOccurs="0" />
              <xs:element name="GroupAuthorEdit" type="xs:boolean" minOccurs="0" />
              <xs:element name="GroupAuthorDelete" type="xs:boolean" minOccurs="0" />
              <xs:element name="GroupType" type="xs:int" minOccurs="0" />
              <xs:element name="GroupIsAnswerLimit" type="xs:int" minOccurs="0" />
              <xs:element name="GroupImageMaxSideSize" type="xs:int" minOccurs="0" />
              <xs:element name="GroupDisplayEmails" type="xs:boolean" minOccurs="0" />
              <xs:element name="GroupRequireEmail" type="xs:boolean" minOccurs="0" />
              <xs:element name="GroupHTMLEditor" type="xs:boolean" minOccurs="0" />
              <xs:element name="GroupUseCAPTCHA" type="xs:boolean" minOccurs="0" />
              <xs:element name="GroupAttachmentMaxFileSize" type="xs:int" minOccurs="0" />
              <xs:element name="GroupDiscussionActions" type="xs:int" minOccurs="0" />
              <xs:element name="GroupLogActivity" type="xs:boolean" minOccurs="0" />
              <xs:element name="GroupEnableOptIn" type="xs:boolean" minOccurs="0" />
              <xs:element name="GroupSendOptInConfirmation" type="xs:boolean" minOccurs="0" />
              <xs:element name="GroupOptInApprovalURL" minOccurs="0">
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
      <xs:selector xpath=".//Forums_ForumGroup" />
      <xs:field xpath="GroupID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="GroupID" fieldcaption="GroupID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="50672b5d-28e7-4921-bd0e-531d708afbaa"><settings><controlname>labelcontrol</controlname></settings></field><field column="GroupSiteID" fieldcaption="GroupSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="43e2efce-a5a9-4a0d-b6b4-64e44431bb89"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupName" fieldcaption="GroupName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="39177fe2-d6d5-47ef-80b4-f40c81543e7f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupDisplayName" fieldcaption="GroupDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="992f03b3-2866-48b1-ad27-7f4d60346a4c" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupOrder" fieldcaption="GroupOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c72aa204-d1e2-452f-b210-6b5abadbe7e0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupDescription" fieldcaption="GroupDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="eb32d397-4c3c-4dc6-a2a5-613980598049" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="GroupGUID" fieldcaption="GroupGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e752f0f3-3a4a-401a-b10f-077c2ae9baa8"><settings><controlname>labelcontrol</controlname></settings></field><field column="GroupLastModified" fieldcaption="GroupLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3fe0188c-52cc-44aa-8eee-a152d8ae2a0b"><settings><controlname>calendarcontrol</controlname></settings></field><field column="GroupBaseUrl" fieldcaption="GroupBaseUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="c244605b-0c2b-4c2e-b9dc-cd07122c911b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupUnsubscriptionUrl" fieldcaption="GroupUnsubscriptionUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="026dd06a-ec26-425d-be05-ec62ca2d63f3"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupGroupID" fieldcaption="GroupGroupID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ddb4b979-4274-4305-95b5-c2f17aff74a9"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupAuthorEdit" fieldcaption="GroupAuthorEdit" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="90fff474-5d5f-4c9b-a373-86aa3e3179c8"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GroupAuthorDelete" fieldcaption="GroupAuthorDelete" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="52355416-f982-40e5-b0df-d335d75527d0"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GroupType" fieldcaption="GroupType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e3ec2d3d-65f4-430a-8447-3503ce4a9423"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupIsAnswerLimit" fieldcaption="GroupIsAnswerLimit" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="16dd655d-8417-45fa-82d2-15ffc7166c73"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupImageMaxSideSize" fieldcaption="GroupImageMaxSideSize" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f8629a16-3009-4650-9a5a-3bcc3503f9cd"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupDisplayEmails" fieldcaption="GroupDisplayEmails" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="68f84af3-38cf-40e7-93a3-69d95945aafa"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GroupRequireEmail" fieldcaption="GroupRequireEmail" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="79eaf33a-37e4-498c-8691-b3af44f0d0dc"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GroupHTMLEditor" fieldcaption="GroupHTMLEditor" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9f4bddb6-ef29-4a93-b7c0-1e9e3b504245"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GroupUseCAPTCHA" fieldcaption="GroupUseCAPTCHA" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2300337e-0edc-4adf-94c7-5867e9b39c02"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GroupAttachmentMaxFileSize" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2e00eb00-2368-45ab-bd0e-e9af4652d095"><settings><controlname>labelcontrol</controlname></settings></field><field column="GroupDiscussionActions" fieldcaption="GroupDiscussionActions" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a156aa0a-4df4-4efb-b7c6-69e5307d9985"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GroupLogActivity" fieldcaption="GroupLogActivity" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="69823a96-a2f9-4882-bf65-17ec73836376" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GroupEnableOptIn" fieldcaption="GroupEnableOptIn" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6eab9b0c-2ed9-4cbd-a72a-701a3d58d902" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GroupSendOptInConfirmation" fieldcaption="GroupSendOptInConfirmation" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="baf176a3-7b1c-4e0d-9c9f-587c9e88cbf4" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GroupOptInApprovalURL" fieldcaption="GroupOptInApprovalURL" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="3417b2c9-5c4e-4d6d-b336-6e2e583897ec" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'Forums_ForumGroup', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', 'ae01ac82-45ae-441f-85e3-fda3e45ef85f', 0, 1, 0, N'', 2, N'GroupDisplayName', N'GroupDescription', N'', N'GroupLastModified', N'<search><item searchable="True" name="GroupID" tokenized="False" content="False" id="adb087db-a484-4eb0-afb6-96c2b5e2800d" /><item searchable="True" name="GroupSiteID" tokenized="False" content="False" id="6da975be-8426-46c2-a639-662fd1fcfac1" /><item searchable="False" name="GroupName" tokenized="True" content="True" id="2cde2415-8942-4857-911c-082188d300d1" /><item searchable="False" name="GroupDisplayName" tokenized="True" content="True" id="47b7b8fd-a647-4870-8371-4bcbc6d324ac" /><item searchable="True" name="GroupOrder" tokenized="False" content="False" id="41b4b806-5640-4cdc-8435-1902d104c3e4" /><item searchable="False" name="GroupDescription" tokenized="True" content="True" id="794311ad-4af9-4238-beda-7e63f29964ad" /><item searchable="False" name="GroupGUID" tokenized="False" content="False" id="175331c7-3250-4ae9-87b8-96f7009a419c" /><item searchable="True" name="GroupLastModified" tokenized="False" content="False" id="1f70d6fc-8a66-4267-98b4-da2940a18007" /><item searchable="False" name="GroupBaseUrl" tokenized="True" content="True" id="5c1a7151-58dd-4c8b-9dfa-fedb5cb12d57" /><item searchable="False" name="GroupUnsubscriptionUrl" tokenized="True" content="True" id="33569da7-af6a-474c-833c-f89b62b72308" /><item searchable="True" name="GroupGroupID" tokenized="False" content="False" id="a150cd73-13ac-4e37-b19e-5df198daa6d1" /><item searchable="True" name="GroupAuthorEdit" tokenized="False" content="False" id="50354451-7029-4df0-895f-80eaa5065e7e" /><item searchable="True" name="GroupAuthorDelete" tokenized="False" content="False" id="dc1316b7-48a3-444e-871b-df868b43ca88" /><item searchable="True" name="GroupType" tokenized="False" content="False" id="88f7d958-d7e6-4a87-8519-bdc1f63f7490" /><item searchable="True" name="GroupIsAnswerLimit" tokenized="False" content="False" id="259533ec-7b8d-4139-9b35-99a832d0f7aa" /><item searchable="True" name="GroupImageMaxSideSize" tokenized="False" content="False" id="2e1ea674-dfeb-42fc-88fb-4e21b0237385" /><item searchable="True" name="GroupDisplayEmails" tokenized="False" content="False" id="6379f97c-7003-4c22-b054-fca0aeebed34" /><item searchable="True" name="GroupRequireEmail" tokenized="False" content="False" id="b6991f63-7d91-484a-9e90-26bc5446c818" /><item searchable="True" name="GroupHTMLEditor" tokenized="False" content="False" id="a8df2d5b-3555-409a-b1bc-9fed8f1d3ef3" /><item searchable="True" name="GroupUseCAPTCHA" tokenized="False" content="False" id="594bd775-eb56-4f97-bdf8-cdb6918e5067" /><item searchable="True" name="GroupAttachmentMaxFileSize" tokenized="False" content="False" id="7c4132ee-9145-4ac8-a9d9-50d308c16b95" /><item searchable="True" name="GroupDiscussionActions" tokenized="False" content="False" id="aaab860f-f50c-4dcc-b548-6590effbd2c6" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
SET IDENTITY_INSERT [CMS_Class] OFF
