SET IDENTITY_INSERT [CMS_Class] ON
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1788, N'Message board', N'board.board', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Board_Board">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="BoardID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="BoardName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="BoardDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="BoardDescription">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="BoardOpened" type="xs:boolean" />
              <xs:element name="BoardOpenedFrom" type="xs:dateTime" minOccurs="0" />
              <xs:element name="BoardOpenedTo" type="xs:dateTime" minOccurs="0" />
              <xs:element name="BoardEnabled" type="xs:boolean" />
              <xs:element name="BoardAccess" type="xs:int" />
              <xs:element name="BoardModerated" type="xs:boolean" />
              <xs:element name="BoardUseCaptcha" type="xs:boolean" />
              <xs:element name="BoardMessages" type="xs:int" />
              <xs:element name="BoardLastModified" type="xs:dateTime" />
              <xs:element name="BoardGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="BoardDocumentID" type="xs:int" />
              <xs:element name="BoardUserID" type="xs:int" minOccurs="0" />
              <xs:element name="BoardGroupID" type="xs:int" minOccurs="0" />
              <xs:element name="BoardLastMessageTime" type="xs:dateTime" minOccurs="0" />
              <xs:element name="BoardLastMessageUserName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="BoardUnsubscriptionURL" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="BoardRequireEmails" type="xs:boolean" minOccurs="0" />
              <xs:element name="BoardSiteID" type="xs:int" />
              <xs:element name="BoardEnableSubscriptions" type="xs:boolean" />
              <xs:element name="BoardBaseURL" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="BoardLogActivity" type="xs:boolean" minOccurs="0" />
              <xs:element name="BoardEnableOptIn" type="xs:boolean" minOccurs="0" />
              <xs:element name="BoardSendOptInConfirmation" type="xs:boolean" minOccurs="0" />
              <xs:element name="BoardOptInApprovalURL" minOccurs="0">
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
      <xs:selector xpath=".//Board_Board" />
      <xs:field xpath="BoardID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="BoardID" fieldcaption="BoardID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="3f5d2bb9-22a8-45ce-ba68-cfada44d509d"><settings><controlname>labelcontrol</controlname></settings></field><field column="BoardName" fieldcaption="BoardName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="250" publicfield="false" guid="6860b999-d9dd-4a80-ad42-370742f6f1a7" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="BoardDisplayName" fieldcaption="BoardDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="250" publicfield="false" guid="e54226a6-bda3-4877-b57e-8c377fbd3df4" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BoardDescription" fieldcaption="BoardDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3366b9f9-096e-4ef5-97be-628a1bd069a0" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="BoardOpened" fieldcaption="BoardOpened" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="33127b8a-43bc-46a4-bf30-7e7629e5e9e4"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="BoardOpenedFrom" fieldcaption="BoardOpenedFrom" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ce56e685-96cf-41f0-9ea6-7c2befbf63d2"><settings><controlname>calendarcontrol</controlname></settings></field><field column="BoardOpenedTo" fieldcaption="BoardOpenedTo" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="102e25e0-f65c-42e5-bce1-e039f2488ca8"><settings><controlname>calendarcontrol</controlname></settings></field><field column="BoardEnabled" fieldcaption="BoardEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1b810c74-531d-4257-861d-4fd0841dd252"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="BoardAccess" fieldcaption="BoardAccess" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="45cb27c6-e488-43db-abcb-66cb73d94dd7"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BoardModerated" fieldcaption="BoardModerated" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9249e285-e812-4470-86f9-c7513c2c87a0"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="BoardUseCaptcha" fieldcaption="BoardUseCaptcha" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7a75986f-b121-4d04-83d5-16aeb5ec9948"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="BoardMessages" fieldcaption="BoardMessages" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6277f200-4dfe-4a38-92cb-70ed978fb6b1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BoardLastModified" fieldcaption="BoardLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="891b7bee-2381-41e4-b295-34313a492acf"><settings><controlname>calendarcontrol</controlname></settings></field><field column="BoardGUID" fieldcaption="BoardGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b872e82a-7bc3-4ccb-83e6-6956c039e3af"><settings><controlname>labelcontrol</controlname></settings></field><field column="BoardDocumentID" fieldcaption="BoardDocumentID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="28a925ed-948f-4b54-b340-1703631f8a0c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BoardUserID" fieldcaption="BoardUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="50008c74-73f4-4392-82b5-fb56fab1adae"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BoardGroupID" fieldcaption="BoardGroupID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5b3db77c-1bef-48da-9cd3-f0b003d24c37"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BoardLastMessageTime" fieldcaption="BoardLastMessageTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="02e56770-7ff1-47a2-b6d1-85336ac0d1f0"><settings><controlname>calendarcontrol</controlname></settings></field><field column="BoardLastMessageUserName" fieldcaption="BoardLastMessageUserName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" guid="14f779a7-3cf2-4c6f-a47a-bfa569d90771"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BoardUnsubscriptionURL" fieldcaption="BoardUnsubscriptionURL" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="e2d08e2a-e814-4172-a186-8dd588299594"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BoardRequireEmails" fieldcaption="BoardRequireEmails" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="58aa827f-bb57-41df-bd0f-8cf3d205c83a"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="BoardSiteID" fieldcaption="BoardSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="14756c64-a27b-4722-b2f9-172fe6fe8628"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BoardEnableSubscriptions" fieldcaption="BoardEnableSubscriptions" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d3612c9c-913e-4e8e-a2e7-4d7785768062"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="BoardBaseURL" fieldcaption="BoardBaseURL" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="f46ac2d6-2a75-4463-9298-88ed457b0983"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BoardLogActivity" fieldcaption="Log on-line marketing activity" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8dd91102-c09d-4aff-bd3a-147affa60ab6" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="BoardEnableOptIn" fieldcaption="BoardEnableOptIn" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cf483f93-af3f-4c80-a550-975379bc27b9" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="BoardSendOptInConfirmation" fieldcaption="BoardSendOptInConfirmation" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5b9b213c-d391-4c8b-ad23-4819577f3f7a" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="BoardOptInApprovalURL" fieldcaption="BoardOptInApprovalURL" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="9e3b0711-59ce-4e24-935d-f2166bbc7213" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'Board_Board', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:24', 'c30cef2f-0eb5-4568-a8ab-93bfe91066e8', 0, 0, 0, N'', 2, N'BoardDisplayName', N'BoardDescription', N'', N'BoardLastMessageTime', N'<search><item searchable="True" name="BoardID" tokenized="False" content="False" id="a57f6616-5473-4183-924f-e087f494e2c8" /><item searchable="False" name="BoardName" tokenized="True" content="True" id="f7cfa9c7-99ff-45e5-a959-90ebf671e0ea" /><item searchable="False" name="BoardDisplayName" tokenized="True" content="True" id="703b4c38-ec42-46f5-8bb2-eabc83588c23" /><item searchable="False" name="BoardDescription" tokenized="True" content="True" id="4beadbd6-19b2-4cc7-8608-1eb4ba2a8ea6" /><item searchable="True" name="BoardOpened" tokenized="False" content="False" id="fa251afc-4700-443c-bfbc-72867d5546cd" /><item searchable="True" name="BoardOpenedFrom" tokenized="False" content="False" id="9201a0a6-6229-4a15-8de2-9d92ab7fd1f0" /><item searchable="True" name="BoardOpenedTo" tokenized="False" content="False" id="af916196-ae2c-41c2-8def-c8741ed2c90d" /><item searchable="True" name="BoardEnabled" tokenized="False" content="False" id="daac534a-6aac-44cc-8977-9741b97271f8" /><item searchable="True" name="BoardAccess" tokenized="False" content="False" id="fabd9380-ce93-4068-a422-37c8b3977438" /><item searchable="True" name="BoardModerated" tokenized="False" content="False" id="cb7550b0-796d-4e9c-a01c-bf88b6901837" /><item searchable="True" name="BoardUseCaptcha" tokenized="False" content="False" id="38104b9c-dbe3-45e0-b5d1-a1ce625287ae" /><item searchable="True" name="BoardMessages" tokenized="False" content="False" id="b349859b-1d40-4215-96fc-34a7629b788d" /><item searchable="True" name="BoardLastModified" tokenized="False" content="False" id="e3faae7b-0f89-4cf1-866f-8a3839ca7ab2" /><item searchable="False" name="BoardGUID" tokenized="False" content="False" id="c3522b0d-5ef3-4765-8ef6-158aedc50342" /><item searchable="True" name="BoardDocumentID" tokenized="False" content="False" id="d42230ea-c053-48fa-93d7-4a821523faab" /><item searchable="True" name="BoardUserID" tokenized="False" content="False" id="e1118abd-7aad-44e7-bfb7-74555615fbb0" /><item searchable="True" name="BoardGroupID" tokenized="False" content="False" id="88408e1f-0d33-46d0-a90e-3de2ac27d399" /><item searchable="True" name="BoardLastMessageTime" tokenized="False" content="False" id="159b84b0-5c5c-4e36-b9e3-96afb5135e52" /><item searchable="False" name="BoardLastMessageUserName" tokenized="True" content="True" id="478e5913-1e7f-42fa-b0bd-f95298524bb3" /><item searchable="False" name="BoardUnsubscriptionURL" tokenized="True" content="True" id="06c4cf5c-d366-4de8-a8d4-20e8e906ca31" /><item searchable="True" name="BoardRequireEmails" tokenized="False" content="False" id="3386e0e3-b1d3-4127-ba41-269808763672" /><item searchable="True" name="BoardSiteID" tokenized="False" content="False" id="b7b8a3f8-8070-44b7-b2b7-5d6378956ed2" /><item searchable="True" name="BoardEnableSubscriptions" tokenized="False" content="False" id="621a2340-803c-43f8-b5a5-137f478bd73d" /><item searchable="False" name="BoardBaseURL" tokenized="True" content="True" id="18b96423-147d-4276-8329-60014fc264b4" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1790, N'E-mail attachment', N'cms.EmailAttachment', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_EmailAttachment">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="AttachmentID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="AttachmentName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="255" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttachmentExtension">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttachmentSize" type="xs:int" />
              <xs:element name="AttachmentMimeType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttachmentBinary" type="xs:base64Binary" />
              <xs:element name="AttachmentGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="AttachmentLastModified" type="xs:dateTime" />
              <xs:element name="AttachmentContentID" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="255" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttachmentSiteID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_EmailAttachment" />
      <xs:field xpath="AttachmentID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="AttachmentID" fieldcaption="AttachmentID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="ebf34bd7-e1d2-4488-85a3-9e3127f6a69b"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentName" fieldcaption="AttachmentName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="255" publicfield="false" guid="5340fb1e-0d50-4f87-aa6a-8029f188e64b" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentExtension" fieldcaption="AttachmentExtension" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="50" publicfield="false" guid="4511305d-5456-4bbc-b99c-7eba264d379c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentSize" fieldcaption="AttachmentSize" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3a4cffe6-51a8-41d6-946c-b35ee0846c9a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentMimeType" fieldcaption="AttachmentMimeType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="8c49f5fb-e8a0-4c7e-bcde-447e370cbb7f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentBinary" fieldcaption="AttachmentBinary" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="43c6ec9d-8c01-4b7c-9178-1cea0d2fda61"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentGUID" fieldcaption="AttachmentGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="096f5598-6e57-446f-918d-168beb17e67c"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentLastModified" fieldcaption="AttachmentLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9a39bd85-4847-41ee-a7e1-3fb867eb5964" visibility="none"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="AttachmentContentID" fieldcaption="AttachmentContentID" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="255" publicfield="false" guid="0a09be9c-cc0c-4342-9549-af1dec53a02d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentSiteID" fieldcaption="Site ID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="701e96b9-634a-4c43-8e95-af75300b2262" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_EmailAttachment', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', '3a6a10ed-8426-4240-9f0f-ae054f612c61', 0, 0, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1791, N'Message', N'board.message', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Board_Message">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="MessageID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="MessageUserName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MessageText">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MessageEmail">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MessageURL">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MessageIsSpam" type="xs:boolean" />
              <xs:element name="MessageBoardID" type="xs:int" />
              <xs:element name="MessageApproved" type="xs:boolean" />
              <xs:element name="MessageApprovedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="MessageUserID" type="xs:int" minOccurs="0" />
              <xs:element name="MessageUserInfo">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MessageAvatarGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="MessageInserted" type="xs:dateTime" />
              <xs:element name="MessageLastModified" type="xs:dateTime" />
              <xs:element name="MessageGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="MessageRatingValue" type="xs:double" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Board_Message" />
      <xs:field xpath="MessageID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="MessageID" fieldcaption="MessageID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="213451af-1a3a-4540-847a-7c91c1c8185d"><settings><controlname>labelcontrol</controlname></settings></field><field column="MessageUserName" fieldcaption="User name:" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="250" publicfield="false" guid="c3a2f1d2-c50e-4626-9196-b92374ae982c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MessageText" fieldcaption="Text" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="da3e536f-16ff-4ca5-b70a-6d0ddc016b76"><settings><controlname>textareacontrol</controlname></settings></field><field column="MessageEmail" fieldcaption="Email" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="250" publicfield="false" guid="1ac6e606-13e7-439e-b51f-8c09fa79984c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MessageURL" fieldcaption="URL" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="67503096-e57d-4278-ac92-e6561419c214"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MessageIsSpam" fieldcaption="Is SPAM" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2f20a317-502b-41df-90e9-023866b017fe"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="MessageBoardID" fieldcaption="Message Board ID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="966041a1-ce21-4cb6-a41f-4141637e5a58"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MessageApproved" fieldcaption="Approved" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="50d16031-33c1-4ac9-b5e8-f1a7ce0847e0"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="MessageApprovedByUserID" fieldcaption="Approved By User ID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="11bfc429-bab9-4b26-91d9-b4e064b3829b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MessageUserID" fieldcaption="User ID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="93218b64-ec61-4b99-89b3-6a576a219fbe"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MessageUserInfo" fieldcaption="User Info" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="463acf35-fe22-4b96-9a0f-42b6de4c34b9"><settings><controlname>textareacontrol</controlname></settings></field><field column="MessageAvatarGUID" fieldcaption="Avatar GUID" visible="true" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0bac580c-b976-4c63-8cf1-2fbefbaaa148"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MessageInserted" fieldcaption="Inserted" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7282dfef-a951-44f4-a460-f472c2936692"><settings><controlname>calendarcontrol</controlname><editTime>true</editTime></settings></field><field column="MessageLastModified" fieldcaption="Last Modified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c8354000-5a97-4932-899a-caba73315eff"><settings><controlname>calendarcontrol</controlname><editTime>true</editTime></settings></field><field column="MessageGUID" fieldcaption="GUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4f7a909f-3352-47d0-9b55-ed6c9822fcd1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MessageRatingValue" fieldcaption="MessageRatingValue" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="67f5c140-09e6-42e6-adf9-ca9a2fdf5b84"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'Board_Message', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:24', 'a6fc171e-86df-4222-a5cf-c95259deaeb9', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'<search><item tokenized="True" name="MessageUserInfo" content="True" searchable="True" id="94207591-fd30-4260-bda3-2ef62f743c6d"></item><item tokenized="True" name="MessageUserName" content="True" searchable="True" id="f7fbc73c-44d0-4bcf-ad7f-e7f80a056e3f"></item><item tokenized="False" name="MessageLastModified" content="False" searchable="True" id="58405079-5d4f-46ac-baea-b967f02309c1"></item><item tokenized="False" name="MessageID" content="False" searchable="True" id="1ca1c720-4aa6-4a0e-ac6b-ff4c75364044"></item><item tokenized="True" name="MessageEmail" content="True" searchable="True" id="ce3feadb-628b-4014-9854-dc7a306c26e6"></item><item tokenized="False" name="MessageApproved" content="False" searchable="True" id="68f414d2-5d2d-4419-a3ba-5915dad2b9d5"></item><item tokenized="False" name="MessageApprovedByUserID" content="False" searchable="True" id="d3afa628-28cb-4565-ba7f-3d00d3bbb677"></item><item tokenized="False" name="MessageGUID" content="False" searchable="False" id="0fafc405-de48-4170-946f-246a1045907b"></item><item tokenized="False" name="MessageAvatarGUID" content="False" searchable="False" id="86964a7d-983b-44de-8718-0f82607b7682"></item><item tokenized="True" name="MessageText" content="True" searchable="True" id="a6ab08ea-5c71-42ed-8710-12034db98163"></item><item tokenized="False" name="MessageBoardID" content="False" searchable="True" id="e61ca7f3-7965-490f-ae61-1f19b8779c83"></item><item tokenized="False" name="MessageInserted" content="False" searchable="True" id="adbb6d16-049e-455d-9a1a-64a9362c12ac"></item><item tokenized="False" name="MessageRatingValue" content="False" searchable="True" id="7c9b2cf2-7e7f-4d95-b7a2-364e5f9df123"></item><item tokenized="False" name="MessageIsSpam" content="False" searchable="True" id="750551f6-ad21-4cc2-b536-94a9beb00e41"></item><item tokenized="False" name="MessageUserID" content="False" searchable="True" id="90dbeb9e-0091-4d52-97c7-4902c3e3dfcf"></item><item tokenized="True" name="MessageURL" content="True" searchable="True" id="3285dbb0-c1e2-4b39-81bc-27bcb50dd850"></item></search>', NULL, 1, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1797, N'Message board role', N'board.boardrole', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Board_Role">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="BoardID" type="xs:int" />
              <xs:element name="RoleID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Board_Role" />
      <xs:field xpath="BoardID" />
      <xs:field xpath="RoleID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="BoardID" fieldcaption="BoardID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="4e0e8f36-218d-4b3b-b133-d45c55bbe586"><settings><controlname>labelcontrol</controlname></settings></field><field column="RoleID" fieldcaption="RoleID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="33dfe7c5-a602-4f9b-bb20-4d3f922eea79"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Board_Role', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:24', '7ae09413-b447-4b1f-93e0-58421ca1f6ba', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1803, N'Bad word culture', N'badwords.wordculture', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="BadWords_WordCulture">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="WordID" type="xs:int" />
              <xs:element name="CultureID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//BadWords_WordCulture" />
      <xs:field xpath="WordID" />
      <xs:field xpath="CultureID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="WordID" fieldcaption="WordID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="53b7d596-5a05-4d30-88fa-fdd58c7733d8"><settings><controlname>labelcontrol</controlname></settings></field><field column="CultureID" fieldcaption="CultureID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="851d3cb2-dd4d-44c2-8834-36b5091128b4"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'BadWords_WordCulture', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:18', 'ec176759-6109-4794-9de9-372f91efb878', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1804, N'Message board moderator', N'board.moderator', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Board_Moderator">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="BoardID" type="xs:int" />
              <xs:element name="UserID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Board_Moderator" />
      <xs:field xpath="BoardID" />
      <xs:field xpath="UserID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="BoardID" fieldcaption="BoardID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="18895a79-d9a6-4118-b059-55271cff6483"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserID" fieldcaption="UserID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9451413d-6868-4575-9a2a-697220bf8385"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Board_Moderator', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:24', '4df3a8d5-672c-4ada-b4e4-e5731c2ec5de', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1808, N'Notification gateway', N'notification.gateway', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Notification_Gateway">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="GatewayID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="GatewayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GatewayDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GatewayAssemblyName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GatewayClassName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GatewayDescription">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GatewaySupportsEmail" type="xs:boolean" />
              <xs:element name="GatewaySupportsPlainText" type="xs:boolean" />
              <xs:element name="GatewaySupportsHTMLText" type="xs:boolean" />
              <xs:element name="GatewayLastModified" type="xs:dateTime" />
              <xs:element name="GatewayGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="GatewayEnabled" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Notification_Gateway" />
      <xs:field xpath="GatewayID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="GatewayID" fieldcaption="GatewayID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="998f29e3-f8ff-4cad-848f-7fe56c334eb1"><settings><controlname>labelcontrol</controlname></settings></field><field column="GatewayName" fieldcaption="GatewayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="265a729c-4602-4156-a570-dc67c728b9db"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GatewayDisplayName" fieldcaption="GatewayDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bf9a20e7-1c94-4ce6-aef5-288be9896f8c" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GatewayAssemblyName" fieldcaption="GatewayAssemblyName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="97622571-8bf3-42b0-be8e-2d04ee6d3305"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GatewayClassName" fieldcaption="GatewayClassName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="78ed2261-6c6e-4f36-815f-f39c1068dc7d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GatewayDescription" fieldcaption="GatewayDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2cc80b89-ef7d-4b6d-908f-4a84ff9c8cd5" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="GatewayEnabled" fieldcaption="Gatewau enabled" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6bb28929-60ca-48c9-bdab-20155e52ddc4"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GatewaySupportsEmail" fieldcaption="GatewaySupportsEmail" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8961441a-d70a-476b-8686-ac71a619dc6d"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GatewaySupportsPlainText" fieldcaption="GatewaySupportsPlainText" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="01b61ce6-f5ad-41de-b5a7-9343c6c88ed1"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GatewaySupportsHTMLText" fieldcaption="GatewaySupportsHTMLText" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="394f1ae9-7967-4a9c-a804-0d156a9e7ad6"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GatewayLastModified" fieldcaption="GatewayLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c320ffe6-2936-4899-ba3c-52e8151313d7"><settings><controlname>calendarcontrol</controlname></settings></field><field column="GatewayGUID" fieldcaption="GatewayGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0a91dd34-e8fd-46f9-aae5-795d6d7e8d45"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'Notification_Gateway', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:25', '3d77378a-a021-4b11-bdce-c8043d45ce4a', 0, 0, 0, N'', 2, N'GatewayDisplayName', N'GatewayDescription', N'', N'GatewayLastModified', N'<search><item searchable="True" name="GatewayID" tokenized="False" content="False" id="15ac0e3d-9af8-4d52-9327-ef36ed527df7" /><item searchable="False" name="GatewayName" tokenized="True" content="True" id="2bd268ab-325b-4cc8-a2d1-3165aa34c419" /><item searchable="False" name="GatewayDisplayName" tokenized="True" content="True" id="f1249902-a8a1-41e3-ac3b-713899884aac" /><item searchable="False" name="GatewayAssemblyName" tokenized="True" content="True" id="665c818d-b9f7-456f-91df-bb42f944fbb0" /><item searchable="False" name="GatewayClassName" tokenized="True" content="True" id="84409909-c34b-42d3-b131-1bb1ddee39cc" /><item searchable="False" name="GatewayDescription" tokenized="True" content="True" id="df7790a3-9bc7-48fc-9608-293fe73fb32e" /><item searchable="True" name="GatewayEnabled" tokenized="False" content="False" id="7d58217a-c0da-4eeb-90db-d2f3bec2c355" /><item searchable="True" name="GatewaySupportsEmail" tokenized="False" content="False" id="8438fee3-03f0-445f-83fa-a9e9886b85d4" /><item searchable="True" name="GatewaySupportsPlainText" tokenized="False" content="False" id="9e408672-a67d-4a40-a6c8-5d703dfd6330" /><item searchable="True" name="GatewaySupportsHTMLText" tokenized="False" content="False" id="a06d27fd-ae56-4738-952c-2f2de538f7af" /><item searchable="True" name="GatewayLastModified" tokenized="False" content="False" id="4fc6a4ef-0ed7-4a2e-91d2-9e59dcdc2f15" /><item searchable="False" name="GatewayGUID" tokenized="False" content="False" id="e6228d0b-1f79-447c-82be-72dcfd109c30" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1809, N'Email', N'cms.email', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Email">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="EmailID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="EmailFrom">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailTo" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailCc" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailBcc" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailSubject">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailBody" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailPlainTextBody" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailFormat" type="xs:int" />
              <xs:element name="EmailPriority" type="xs:int" />
              <xs:element name="EmailSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="EmailLastSendResult" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailLastSendAttempt" type="xs:dateTime" minOccurs="0" />
              <xs:element name="EmailGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="EmailLastModified" type="xs:dateTime" />
              <xs:element name="EmailStatus" type="xs:int" minOccurs="0" />
              <xs:element name="EmailIsMass" type="xs:boolean" minOccurs="0" />
              <xs:element name="EmailSetName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailSetRelatedID" type="xs:int" minOccurs="0" />
              <xs:element name="EmailReplyTo" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EmailHeaders" minOccurs="0">
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
      <xs:selector xpath=".//CMS_Email" />
      <xs:field xpath="EmailID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="EmailID" fieldcaption="EmailID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="521d5e92-1ffd-4b57-8efe-de86ea04e86b" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="EmailFrom" fieldcaption="EmailFrom" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="250" publicfield="false" guid="c2397191-6419-4c90-8602-438740d5de70"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailTo" fieldcaption="EmailTo" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f47a699d-f3d6-4da7-84e8-a7a54e7de8a9"><settings><controlname>textareacontrol</controlname></settings></field><field column="EmailReplyTo" fieldcaption="EmailReplyTo" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" guid="7faf43c9-3882-43fb-9004-520b188a8b5a" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailCc" fieldcaption="EmailCc" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="10e8d6ce-d8b9-4bf8-a84d-8f9688e29981"><settings><controlname>textareacontrol</controlname></settings></field><field column="EmailBcc" fieldcaption="EmailBcc" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cedfd4fc-8e1b-4156-960e-552fc1246aeb"><settings><controlname>textareacontrol</controlname></settings></field><field column="EmailSubject" fieldcaption="EmailSubject" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="601fdfbe-281e-458d-8cc0-a29306087c87" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailBody" fieldcaption="EmailBody" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ad000851-1cdf-41c8-95ee-eff669981220"><settings><controlname>textareacontrol</controlname></settings></field><field column="EmailPlainTextBody" fieldcaption="EmailPlainTextBody" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c96fa853-4a36-4f3d-b661-fcdb58434d1c"><settings><controlname>textareacontrol</controlname></settings></field><field column="EmailFormat" fieldcaption="EmailFormat" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="dcfbdec6-2369-4292-b406-9995bb2889bf"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailPriority" fieldcaption="EmailPriority" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b7feb9c1-7f2e-42e1-9be6-8e7100f9c669"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailSiteID" fieldcaption="EmailSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2aa51d80-c928-42d7-90a7-735dc9ddbc80"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailLastSendResult" fieldcaption="EmailLastSendResult" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="40755371-af41-4836-9e1c-6e512a280e66"><settings><controlname>textareacontrol</controlname></settings></field><field column="EmailLastSendAttempt" fieldcaption="EmailLastSendAttempt" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b5be875d-5220-454c-a099-6b936c3485c0"><settings><controlname>calendarcontrol</controlname></settings></field><field column="EmailGUID" fieldcaption="EmailGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c78068ea-bd20-4004-b3d4-25028ffd07e8"><settings><controlname>labelcontrol</controlname></settings></field><field column="EmailLastModified" fieldcaption="EmailLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e94a0a0b-86c9-4207-8710-e86533e755bc"><settings><controlname>calendarcontrol</controlname></settings></field><field column="EmailStatus" fieldcaption="EmailStatus" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="227556a7-9cc7-4f9b-96ad-2ccd667605b1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailIsMass" fieldcaption="EmailIsMass" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0a21ac5d-68a2-4306-af4e-7ab7b2aa1693"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="EmailSetName" fieldcaption="EmailSetName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" guid="c3b5fdf7-ed07-4ebf-97fd-9e4a21967507"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailSetRelatedID" fieldcaption="EmailSetRelatedID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="814ac56f-1b7c-4593-b5d4-26e39c3624da"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EmailHeaders" fieldcaption="EmailHeaders" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="df673a9f-31e4-40c5-9f13-3a5af25dd895" visibility="none"><settings><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field></form>', N'', N'', N'', N'CMS_Email', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', '488f275e-7311-4136-a127-4c970cd4060f', 0, 0, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1811, N'Attachment for email', N'cms.attachmentforemail', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_AttachmentForEmail">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="EmailID" type="xs:int" />
              <xs:element name="AttachmentID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_AttachmentForEmail" />
      <xs:field xpath="EmailID" />
      <xs:field xpath="AttachmentID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="EmailID" fieldcaption="EmailID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="3a1b56eb-fa26-4225-9342-d8b34d9dbe0f"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentID" fieldcaption="AttachmentID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="53e20c89-9e25-4528-a839-1f2cf10db117"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_AttachmentForEmail', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:18', '9a4da0dc-ef38-4485-9d15-65f0c4e629d8', 0, 0, 0, N'', 1, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1813, N'Notification template', N'notification.template', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Notification_Template">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TemplateID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TemplateName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TemplateDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TemplateSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="TemplateLastModified" type="xs:dateTime" />
              <xs:element name="TemplateGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Notification_Template" />
      <xs:field xpath="TemplateID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TemplateID" fieldcaption="TemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="649871d8-bbcf-4c0d-9746-388e24871918"><settings><controlname>labelcontrol</controlname></settings></field><field column="TemplateName" fieldcaption="TemplateName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6f6f10e9-87e0-4dcc-92ec-bfb547d950d8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TemplateDisplayName" fieldcaption="TemplateDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3d31111f-005d-48cb-88f7-e77d0a5fd573" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TemplateSiteID" fieldcaption="TemplateSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a5f24501-47b5-4328-9210-7c646eb7fb71"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TemplateCategoryID" fieldcaption="TemplateCategoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fcbbc7ea-61bb-44ae-946b-ff56f0a8e1d1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TemplateLastModified" fieldcaption="TemplateLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c00d4d42-ec45-41ff-baa0-dd81fea1dcef"><settings><controlname>calendarcontrol</controlname></settings></field><field column="TemplateGUID" fieldcaption="TemplateGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="44d412a0-7ee3-435f-9b96-6b9736325f7f"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'Notification_Template', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:25', '91058913-11dd-42fa-a9c6-bd00c1b16382', 0, 0, 0, N'', 2, N'TemplateDisplayName', N'0', N'', N'TemplateLastModified', N'<search><item searchable="True" name="TemplateID" tokenized="False" content="False" id="8b947284-db31-422d-811d-ad43976e810b" /><item searchable="False" name="TemplateName" tokenized="True" content="True" id="d6200c44-422f-4025-8e89-7349a90df302" /><item searchable="False" name="TemplateDisplayName" tokenized="True" content="True" id="ee051b8f-e236-4911-9914-107b94edbef2" /><item searchable="True" name="TemplateSiteID" tokenized="False" content="False" id="064df312-2141-44f2-b925-41eeb805058e" /><item searchable="True" name="TemplateCategoryID" tokenized="False" content="False" id="bc1bd276-e4f9-4bca-b332-99b2b104a49b" /><item searchable="True" name="TemplateLastModified" tokenized="False" content="False" id="3afc4ad3-6139-4955-92fd-edf61119afef" /><item searchable="False" name="TemplateGUID" tokenized="False" content="False" id="581cb59d-8c9e-43cb-b2b1-a0bed68e331e" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1814, N'Notification template text', N'notification.templatetext', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Notification_TemplateText">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TemplateTextID" type="xs:int" />
              <xs:element name="TemplateID" type="xs:int" />
              <xs:element name="GatewayID" type="xs:int" />
              <xs:element name="TemplateSubject">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TemplateHTMLText">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TemplatePlainText">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TemplateTextGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="TemplateTextLastModified" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Notification_TemplateText" />
      <xs:field xpath="TemplateTextID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TemplateTextID" fieldcaption="TemplateTextID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="0fe06997-dfa0-4b7f-96df-cf2b5dba92db"><settings><controlname>labelcontrol</controlname></settings></field><field column="TemplateID" fieldcaption="TemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9664235f-533b-40df-9e11-440b7bb620f9"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GatewayID" fieldcaption="GatewayID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="29dd7102-0ca4-4859-a0b6-3585065ac029"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TemplateSubject" fieldcaption="TemplateSubject" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="250" publicfield="false" guid="8e0bdef7-be8f-4332-aa84-c344a5f57bf8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TemplateHTMLText" fieldcaption="TemplateHTMLText" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c11474b9-3241-4b64-ac57-0a5f0791bde5"><settings><controlname>textareacontrol</controlname></settings></field><field column="TemplatePlainText" fieldcaption="TemplatePlainText" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e90f8207-0398-4c60-8287-25f28f1766e1"><settings><controlname>textareacontrol</controlname></settings></field><field column="TemplateTextGUID" fieldcaption="TemplateTextGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3a1a1c8c-e009-487a-b610-db0d7deaf57b"><settings><controlname>labelcontrol</controlname></settings></field><field column="TemplateTextLastModified" fieldcaption="TemplateTextLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3e883605-907d-46dc-bc7f-8789db61755c"><settings><controlname>calendarcontrol</controlname><editTime>false</editTime></settings></field></form>', N'', N'', N'', N'Notification_TemplateText', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:25', 'e0b0a19f-68db-4784-8134-104a1f574ef8', 0, 0, 0, N'', 2, N'', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1815, N'Notification subscription', N'notification.subscription', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Notification_Subscription">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SubscriptionID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SubscriptionGatewayID" type="xs:int" />
              <xs:element name="SubscriptionTemplateID" type="xs:int" />
              <xs:element name="SubscriptionEventSource" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubscriptionEventCode" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubscriptionEventDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubscriptionEventObjectID" type="xs:int" minOccurs="0" />
              <xs:element name="SubscriptionTime" type="xs:dateTime" />
              <xs:element name="SubscriptionUserID" type="xs:int" />
              <xs:element name="SubscriptionTarget">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubscriptionLastModified" type="xs:dateTime" />
              <xs:element name="SubscriptionGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="SubscriptionEventData1" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubscriptionEventData2" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubscriptionUseHTML" type="xs:boolean" minOccurs="0" />
              <xs:element name="SubscriptionSiteID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Notification_Subscription" />
      <xs:field xpath="SubscriptionID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SubscriptionID" fieldcaption="SubscriptionID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="ed6ab9e8-4d20-4f5c-9844-b20618195aa1"><settings><controlname>labelcontrol</controlname></settings></field><field column="SubscriptionGatewayID" fieldcaption="SubscriptionGatewayID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="adc281f6-26da-4323-b23c-d7857a6c959e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionTemplateID" fieldcaption="SubscriptionTemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c062c3e5-9ffa-4068-a022-ea1fb70ab26d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionEventSource" fieldcaption="SubscriptionEventSource" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b27f6ab9-280e-4c6c-b336-d573e7b37916"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionEventCode" fieldcaption="SubscriptionEventCode" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="de9775c1-737b-47bc-bc95-412b64e7c1a4"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionEventDisplayName" fieldcaption="SubscriptionEventDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c6b3dd2f-b815-48d7-a16a-1f4be2735694"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionEventObjectID" fieldcaption="SubscriptionEventObjectID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="58a66744-4360-4ac8-bc3a-34f835403b12"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionEventData1" fieldcaption="Subscription event data 1" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="17b88874-a1f4-4a9c-94c0-742ac3884f11"><settings><controlname>textareacontrol</controlname></settings></field><field column="SubscriptionEventData2" fieldcaption="Subscription event data 2" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c26ff987-a95e-4cba-9f6f-65b51c0b9cb0"><settings><controlname>textareacontrol</controlname></settings></field><field column="SubscriptionUseHTML" fieldcaption="SubscriptionUseHTML" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4b506366-c76a-4e38-ae0e-3610c0c6b387"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="SubscriptionTime" fieldcaption="SubscriptionTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="24332b9b-9cb0-499b-8cf2-e147f681f1a1"><settings><controlname>calendarcontrol</controlname></settings></field><field column="SubscriptionUserID" fieldcaption="SubscriptionUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9f9b4aa4-19f2-4879-93ab-4675f16704da"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionTarget" fieldcaption="SubscriptionTarget" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="98654069-4985-40fc-bedd-0a0630b81399"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionSiteID" fieldcaption="SubscriptionSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2227c603-af2e-4417-be3d-bf9c07dc856f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionLastModified" fieldcaption="SubscriptionLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d2f9415b-6a51-4a69-af0e-c24152d77d13"><settings><controlname>calendarcontrol</controlname></settings></field><field column="SubscriptionGUID" fieldcaption="SubscriptionGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0e034e8a-7d78-4618-b64f-33e978dc94ea"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'Notification_Subscription', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:25', 'e9e38a33-6bd0-4265-aba3-1babb390b000', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1841, N'Personalization', N'cms.personalization', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Personalization">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="PersonalizationID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="PersonalizationGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="PersonalizationLastModified" type="xs:dateTime" />
              <xs:element name="PersonalizationUserID" type="xs:int" minOccurs="0" />
              <xs:element name="PersonalizationDocumentID" type="xs:int" minOccurs="0" />
              <xs:element name="PersonalizationWebParts" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PersonalizationDashboardName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PersonalizationSiteID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Personalization" />
      <xs:field xpath="PersonalizationID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="PersonalizationID" fieldcaption="PersonalizationID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" spellcheck="false" guid="3988441a-55dc-49e7-a66c-e7358beb375b" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PersonalizationGUID" fieldcaption="PersonalizationGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" spellcheck="false" guid="e306eeb6-d3c8-4070-820d-140205886fcf"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PersonalizationLastModified" fieldcaption="PersonalizationLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" spellcheck="false" guid="f91bbd1f-9447-4cff-aa85-9f9410c33b01"><settings><controlname>calendarcontrol</controlname><editTime>true</editTime></settings></field><field column="PersonalizationUserID" fieldcaption="PersonalizationUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="5ba5b18b-42c2-4971-a249-8bbc000befd8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PersonalizationDocumentID" fieldcaption="PersonalizationDocumentID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="cb5b6418-3eaf-4647-9711-967ad0583179" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PersonalizationWebParts" fieldcaption="PersonalizationWebParts" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="51172fcd-2c07-420d-a30f-42e9e91f4884"><settings><controlname>labelcontrol</controlname></settings></field><field column="PersonalizationDashboardName" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" spellcheck="false" guid="8b67ad74-9e2c-4a14-959f-2b1f8b7a7b73" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="PersonalizationSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="ee05090a-777c-4563-9725-692df5734adf" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_Personalization', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:26', '385d6f75-3d20-42d7-ba0d-6ac36201a4b1', 0, 0, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1887, N'Messaging - Contact list', N'messaging.contactlist', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Messaging_ContactList">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ContactListUserID" type="xs:int" />
              <xs:element name="ContactListContactUserID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Messaging_ContactList" />
      <xs:field xpath="ContactListUserID" />
      <xs:field xpath="ContactListContactUserID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ContactListUserID" fieldcaption="ContactListUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="c23c4f2b-7c56-447b-a5db-de8062e7596c"><settings><controlname>labelcontrol</controlname></settings></field><field column="ContactListContactUserID" fieldcaption="ContactListContactUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fd3b6f9d-4f9e-4725-835f-47f7cdb0f412"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Messaging_ContactList', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:24', 'c7118d45-532c-4c43-aa2c-7b1c1d94bf24', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1888, N'Messaging - Ignore list', N'messaging.ignorelist', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Messaging_IgnoreList">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="IgnoreListUserID" type="xs:int" />
              <xs:element name="IgnoreListIgnoredUserID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Messaging_IgnoreList" />
      <xs:field xpath="IgnoreListUserID" />
      <xs:field xpath="IgnoreListIgnoredUserID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form></form>', N'', N'', N'', N'Messaging_IgnoreList', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:24', '8da9ee4e-4f7b-48f0-8384-1d9636707338', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1895, N'Message board subscription', N'board.subscription', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Board_Subscription">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SubscriptionID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SubscriptionBoardID" type="xs:int" />
              <xs:element name="SubscriptionUserID" type="xs:int" minOccurs="0" />
              <xs:element name="SubscriptionEmail">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubscriptionLastModified" type="xs:dateTime" />
              <xs:element name="SubscriptionGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="SubscriptionApproved" type="xs:boolean" minOccurs="0" />
              <xs:element name="SubscriptionApprovalHash" minOccurs="0">
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
      <xs:selector xpath=".//Board_Subscription" />
      <xs:field xpath="SubscriptionID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SubscriptionID" fieldcaption="SubscriptionID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="434e2549-3146-4267-b6df-6649b01881b3"><settings><controlname>labelcontrol</controlname></settings></field><field column="SubscriptionBoardID" fieldcaption="SubscriptionBoardID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="baef33f3-c2b1-43b7-8b8f-30f3fc74924d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionUserID" fieldcaption="SubscriptionUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5dbcd520-8f23-40de-8cdb-af13dd26fc5d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionEmail" fieldcaption="SubscriptionEmail" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c5abf6e8-65a7-4caa-9c7d-bf10c756604a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionLastModified" fieldcaption="SubscriptionLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="28cb6883-250f-47a2-bb4c-29dd2cfe98e0"><settings><controlname>calendarcontrol</controlname></settings></field><field column="SubscriptionGUID" fieldcaption="SubscriptionGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="aff7604e-2934-4ea4-97a8-982cda84f5fd"><settings><controlname>labelcontrol</controlname></settings></field><field column="SubscriptionApproved" fieldcaption="SubscriptionApproved" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9b0b4651-b45e-4753-bb29-554e03144403" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="SubscriptionApprovalHash" fieldcaption="SubscriptionApprovalHash" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="a966f9a3-044b-43ec-8a67-949e8289df14" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'Board_Subscription', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120801 12:06:05', 'ffbbfc2a-fe68-4f1f-8ad7-ee8115499f77', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1896, N'Abuse report', N'CMS.AbuseReport', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_AbuseReport">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ReportID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ReportGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ReportTitle" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ReportURL">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1000" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ReportCulture">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ReportObjectID" type="xs:int" minOccurs="0" />
              <xs:element name="ReportObjectType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ReportComment">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ReportUserID" type="xs:int" minOccurs="0" />
              <xs:element name="ReportWhen" type="xs:dateTime" />
              <xs:element name="ReportStatus" type="xs:int" />
              <xs:element name="ReportSiteID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_AbuseReport" />
      <xs:field xpath="ReportID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ReportID" fieldcaption="ReportID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="892db787-1eca-47ae-b962-5d43f284dfe2"><settings><controlname>labelcontrol</controlname></settings></field><field column="ReportGUID" fieldcaption="ReportGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5025a50d-7931-4b7f-a575-75b48a32851a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ReportTitle" fieldcaption="ReportTitle" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="32e9eb2a-1c55-44e5-a0fd-28001a43211b" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ReportURL" fieldcaption="ReportURL" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="1000" publicfield="false" guid="b37f7666-cd87-4b00-ba9d-e4df36997db0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ReportCulture" fieldcaption="ReportCulture" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="50" publicfield="false" guid="bc3f0126-2000-4e7e-9415-d714619a49aa"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ReportObjectID" fieldcaption="ReportObjectID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6d3e7b93-a903-4a97-9479-460c3d511b5e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ReportObjectType" fieldcaption="ReportObjectType" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="70fb19e9-e74e-46b9-a06a-6728c540430b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ReportComment" fieldcaption="ReportComment" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7ea88b2b-b2d9-4391-8943-588604c80f2b" visibility="none"><settings><controlname>textareacontrol</controlname></settings></field><field column="ReportUserID" fieldcaption="ReportUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9641ceb0-b300-414e-9c2e-3f0a9be6ab54"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ReportWhen" fieldcaption="ReportWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="26defb36-5475-4da5-ba6f-7018757cbf3f"><settings><controlname>calendarcontrol</controlname><editTime>true</editTime></settings></field><field column="ReportStatus" fieldcaption="ReportStatus" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="75b84fd4-16c4-45b8-952b-a22c55b50dae"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ReportSiteID" fieldcaption="ReportSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1ac21a9b-7391-4a2f-9c84-20992ac78861"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_AbuseReport', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:17', 'd4b445f8-6f93-412a-8ef2-429ee991473c', 0, 0, 0, N'', 1, N'ReportTitle', N'ReportComment', N'', N'ReportWhen', N'<search><item searchable="True" name="ReportID" tokenized="False" content="False" id="a378e571-c7d9-4412-a345-c6b273e821a4" /><item searchable="False" name="ReportGUID" tokenized="False" content="False" id="b70da8b2-98fb-4f23-85a8-db3830d89beb" /><item searchable="False" name="ReportTitle" tokenized="True" content="True" id="0e8ce569-0dd4-4078-bd00-34941ac49fd5" /><item searchable="False" name="ReportURL" tokenized="True" content="True" id="dd6b3a57-fabf-436e-85bf-9ac599d24047" /><item searchable="False" name="ReportCulture" tokenized="True" content="True" id="d7a12b8d-f3e6-4476-842d-ec6f1877fd76" /><item searchable="True" name="ReportObjectID" tokenized="False" content="False" id="cf1f1bb8-4f6c-4356-a4f4-6cbc248a0d3a" /><item searchable="False" name="ReportObjectType" tokenized="True" content="True" id="117f7e19-94f7-44fa-9990-0fad86e52b6e" /><item searchable="False" name="ReportComment" tokenized="True" content="True" id="84cba4af-0f06-4012-ae23-25e920cd2ded" /><item searchable="True" name="ReportUserID" tokenized="False" content="False" id="2f29a3c9-8696-4a3c-948f-d936adac921d" /><item searchable="True" name="ReportWhen" tokenized="False" content="False" id="cb69db28-143f-4fcc-8a53-bd2396a91a08" /><item searchable="True" name="ReportStatus" tokenized="False" content="False" id="df0fe402-3d4c-4417-8ee5-58d78c7e4147" /><item searchable="True" name="ReportSiteID" tokenized="False" content="False" id="95e82b2f-b930-48ae-b00d-c348f3d21e1b" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1898, N'Friends', N'community.friend', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Community_Friend">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="FriendID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="FriendRequestedUserID" type="xs:int" />
              <xs:element name="FriendUserID" type="xs:int" />
              <xs:element name="FriendRequestedWhen" type="xs:dateTime" />
              <xs:element name="FriendComment" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FriendApprovedBy" type="xs:int" minOccurs="0" />
              <xs:element name="FriendApprovedWhen" type="xs:dateTime" minOccurs="0" />
              <xs:element name="FriendRejectedBy" type="xs:int" minOccurs="0" />
              <xs:element name="FriendRejectedWhen" type="xs:dateTime" minOccurs="0" />
              <xs:element name="FriendGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="FriendStatus" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Community_Friend" />
      <xs:field xpath="FriendID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="FriendID" fieldcaption="FriendID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="c594ffa1-6187-4a76-ad68-4d9f1d4f70c2" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="FriendRequestedUserID" fieldcaption="FriendRequestedUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="048307ca-6750-4859-8f54-92f9199da826"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FriendUserID" fieldcaption="FriendUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bfb8e040-35f7-4260-99cd-6a1967e7fbdd"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FriendRequestedWhen" fieldcaption="FriendRequestedWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f04975c1-fd57-4bd2-8d62-f04a3171781c"><settings><controlname>calendarcontrol</controlname></settings></field><field column="FriendComment" fieldcaption="FriendComment" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="526e3ab2-8d68-42b0-aaeb-5a2ed922e23f"><settings><controlname>textareacontrol</controlname></settings></field><field column="FriendApprovedBy" fieldcaption="FriendApprovedBy" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="617b041c-4a9b-4f59-bd19-1b52638969a2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FriendApprovedWhen" fieldcaption="FriendApprovedWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f2b2dfaa-687d-48b3-b4dc-0d0079290f87"><settings><controlname>calendarcontrol</controlname></settings></field><field column="FriendRejectedBy" fieldcaption="FriendRejectedBy" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="77d78f42-9506-4eb3-8297-25966319cba2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FriendRejectedWhen" fieldcaption="FriendRejectedWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9b1e26fe-1fb2-47cc-85c0-d7432734ab82"><settings><controlname>calendarcontrol</controlname></settings></field><field column="FriendGUID" fieldcaption="FriendGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0999b481-bbfc-43de-9ba8-4b3fcaf32a1f"><settings><controlname>labelcontrol</controlname></settings></field><field column="FriendStatus" fieldcaption="FriendStatus" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="18565d9f-12e6-40b1-9097-8e1ef9866c29"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Community_Friend', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', '82c1f83e-19ca-4567-8d02-3d8c271e91bd', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1912, N'ForumAttachment', N'Forums.ForumAttachment', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Forums_Attachment">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="AttachmentID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="AttachmentFileName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttachmentFileExtension">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="10" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttachmentBinary" type="xs:base64Binary" minOccurs="0" />
              <xs:element name="AttachmentGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="AttachmentLastModified" type="xs:dateTime" />
              <xs:element name="AttachmentMimeType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttachmentFileSize" type="xs:int" />
              <xs:element name="AttachmentImageHeight" type="xs:int" minOccurs="0" />
              <xs:element name="AttachmentImageWidth" type="xs:int" minOccurs="0" />
              <xs:element name="AttachmentPostID" type="xs:int" />
              <xs:element name="AttachmentSiteID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Forums_Attachment" />
      <xs:field xpath="AttachmentID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="AttachmentID" fieldcaption="AttachmentID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="8f5d85ba-6df6-4eb4-8974-17543631936a"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentFileName" fieldcaption="AttachmentFileName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="52e2442a-8e21-448a-ba9f-870a254b50af"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentFileExtension" fieldcaption="AttachmentFileExtension" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="10" publicfield="false" guid="7fadf09b-8dee-489b-8d9b-7d25c6187aae"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentBinary" fieldcaption="AttachmentBinary" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3c04aa2f-f86a-458b-8aea-a75676cf565c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentGUID" fieldcaption="AttachmentGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ee2d7dc9-b1b8-495c-b5d1-72e41529c19b"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentLastModified" fieldcaption="AttachmentLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e44931f3-dfaa-46d2-9fbc-b2a1384a1d8a" visibility="none"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="AttachmentMimeType" fieldcaption="AttachmentMimeType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="934b7a20-9e7b-472c-80f6-55f06355c1db"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentFileSize" fieldcaption="AttachmentFileSize" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b1cef1bb-75f4-4d55-b915-9b56d3c44547"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentImageHeight" fieldcaption="AttachmentImageHeight" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ed9f7f94-7442-4008-a13d-454059b5792c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentImageWidth" fieldcaption="AttachmentImageWidth" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0dfa0f44-f8d3-4bf7-aa5e-75c02e22fd9f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentPostID" fieldcaption="AttachmentPostID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bcda16be-c192-41d3-8c5f-5711e9a812e6"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="50fec5e1-a402-475a-a5e9-bdcd6cd24180"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'Forums_Attachment', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', '604d3bca-4ff8-47d7-9c18-c7637675ee04', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1913, N'ForumUserFavorites', N'Forums.ForumUserFavorites', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Forums_UserFavorites">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="FavoriteID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="UserID" type="xs:int" />
              <xs:element name="PostID" type="xs:int" minOccurs="0" />
              <xs:element name="ForumID" type="xs:int" minOccurs="0" />
              <xs:element name="FavoriteName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SiteID" type="xs:int" />
              <xs:element name="FavoriteGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="FavoriteLastModified" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Forums_UserFavorites" />
      <xs:field xpath="FavoriteID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="FavoriteID" fieldcaption="FavoriteID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="b024900c-68e3-4fd8-a6e2-294e6b5aa3a5"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserID" fieldcaption="UserID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="13a08f04-c86f-4cc2-99b5-71ce271ceb0d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostID" fieldcaption="PostID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c88f5e6d-9851-479d-affd-f025eb91b53f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumID" fieldcaption="ForumID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fb3ded78-3c7f-40fa-9633-4b091dab8f1a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FavoriteName" fieldcaption="FavoriteName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="5a832edd-f529-4f92-bcb7-445372cc0cf7" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SiteID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e2fc938c-660a-4c63-9200-dfe67bc5103e"><settings><controlname>labelcontrol</controlname></settings></field><field column="FavoriteGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="63923c0b-402a-4652-b2f6-094f6f03c1b5"><settings><controlname>labelcontrol</controlname></settings></field><field column="FavoriteLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="36de5980-e5cd-4961-9b68-c4088f97f84f"><settings><timezonetype>inherit</timezonetype><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'Forums_UserFavorites', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', '14c4b710-4504-4c22-83bc-d460e13a7fd0', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1926, N'Email user', N'CMS.EmailUser', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_EmailRole">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="EmailID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="UserID" type="xs:int" />
              <xs:element name="LastSendResult" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LastSendAttempt" type="xs:dateTime" minOccurs="0" />
              <xs:element name="Status" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_EmailRole" />
      <xs:field xpath="EmailID" />
      <xs:field xpath="UserID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="EmailID" fieldcaption="EmailID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="46ad051a-403a-4ae1-a5cc-97ce20bc3682"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserID" fieldcaption="UserID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bd8d5cc3-cbf2-46b1-b187-e2429f53a12c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="LastSendResult" fieldcaption="LastSendResult" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1b5c35bd-1482-4dbc-b03d-1e603acbd35e"><settings><controlname>textareacontrol</controlname></settings></field><field column="LastSendAttempt" fieldcaption="LastSendAttempt" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f484db51-d9f5-41da-b811-42dc6e2d7a6d"><settings><controlname>calendarcontrol</controlname></settings></field><field column="Status" fieldcaption="Status" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="883bbd0b-e27e-4d94-8e3f-92d2878a9af4"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_EmailUser', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', '047de70d-4d44-4530-9bcf-5baafad2d62d', 0, 0, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1934, N'Media library', N'media.library', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Media_Library">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="LibraryID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="LibraryName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LibraryDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LibraryDescription">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LibraryFolder">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LibraryAccess" type="xs:int" />
              <xs:element name="LibraryGroupID" type="xs:int" minOccurs="0" />
              <xs:element name="LibrarySiteID" type="xs:int" />
              <xs:element name="LibraryGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="LibraryLastModified" type="xs:dateTime" />
              <xs:element name="LibraryTeaserPath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LibraryTeaserGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Media_Library" />
      <xs:field xpath="LibraryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="LibraryID" fieldcaption="LibraryID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="00fdb6b0-5f2e-4ef9-8648-1d3c7af8b721"><settings><controlname>labelcontrol</controlname></settings></field><field column="LibraryName" fieldcaption="LibraryName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="250" publicfield="false" guid="e4081abf-652e-47bd-82d0-313752f01873"><settings><controlname>textboxcontrol</controlname></settings></field><field column="LibraryDisplayName" fieldcaption="LibraryDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="250" publicfield="false" guid="9b4aa82c-02df-4712-a5b9-3b9dee377b45" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="LibraryDescription" fieldcaption="LibraryDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ac965989-ec7a-446f-81bb-ccb5043abf0b" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="LibraryFolder" fieldcaption="LibraryFolder" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="250" publicfield="false" guid="06f6b6a9-08ca-4735-8732-20cc75d11802"><settings><controlname>textboxcontrol</controlname></settings></field><field column="LibraryAccess" fieldcaption="LibraryAccess" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="720d2865-0be4-43d3-8ed8-412b269b1d00"><settings><controlname>textboxcontrol</controlname></settings></field><field column="LibraryGroupID" fieldcaption="LibraryGroupID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="27889b22-33b2-48e6-b273-0d18c250676c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="LibrarySiteID" fieldcaption="LibrarySiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="99746a1e-3514-4c13-b878-7bb7b39ddb3d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="LibraryGUID" fieldcaption="LibraryGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="512c11dd-a325-4bf2-b1be-4f7c54397132"><settings><controlname>labelcontrol</controlname></settings></field><field column="LibraryLastModified" fieldcaption="LibraryLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="54f9c352-5ac2-4e4b-ab98-65d41240e9e4"><settings><controlname>calendarcontrol</controlname></settings></field><field column="LibraryTeaserPath" fieldcaption="LibraryTeaserPath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="5de9f8d9-3e2d-4d83-8a63-6c2bdfb76629"><settings><controlname>textboxcontrol</controlname></settings></field><field column="LibraryTeaserGUID" fieldcaption="LibraryTeaserGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1cf86270-1d15-4a07-a3fb-4d97ba972c46" visibility="none"><settings><controlname>metafileuploadercontrol</controlname></settings></field></form>', N'', N'', N'', N'Media_Library', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120612 18:21:18', 'dead7673-d566-4f83-87e3-e9a235b70e4f', 0, 0, 0, N'', 2, N'LibraryDisplayName', N'LibraryDescription', N'LibraryTeaserPath', N'LibraryLastModified', N'<search><item searchable="True" name="LibraryID" tokenized="False" content="False" id="62f643ab-fb54-47c8-bac6-c76b2c8fae4b" /><item searchable="False" name="LibraryName" tokenized="True" content="True" id="4a9038c6-c30d-411d-85a2-82e44861aa09" /><item searchable="False" name="LibraryDisplayName" tokenized="True" content="True" id="61fc89d0-264b-4b13-b329-6c51a65f262c" /><item searchable="False" name="LibraryDescription" tokenized="True" content="True" id="ca0eceb9-3678-43bb-a372-e820e0aca68f" /><item searchable="False" name="LibraryFolder" tokenized="True" content="True" id="09c6435a-5dbb-458c-acea-60eb51e0fb64" /><item searchable="True" name="LibraryAccess" tokenized="False" content="False" id="248545b9-04ea-41dd-be81-0e67b356893b" /><item searchable="True" name="LibraryGroupID" tokenized="False" content="False" id="cf9a7075-d5bb-4649-92ac-efb845df37d7" /><item searchable="True" name="LibrarySiteID" tokenized="False" content="False" id="fa214b77-24ed-4e41-a32d-d879b02b5e0c" /><item searchable="False" name="LibraryGUID" tokenized="False" content="False" id="3164e87f-eb64-4b29-b1e8-1fdd451344be" /><item searchable="True" name="LibraryLastModified" tokenized="False" content="False" id="0cc88a04-062d-4d77-adde-c91e88f20565" /><item searchable="False" name="LibraryTeaserPath" tokenized="True" content="True" id="c671060b-3381-4023-bfbd-cc0702dadb5f" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
SET IDENTITY_INSERT [CMS_Class] OFF
