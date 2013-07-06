SET IDENTITY_INSERT [CMS_Class] ON
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1330, N'Polls - Poll', N'polls.poll', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Polls_Poll">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="PollID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="PollCodeName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PollDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PollTitle" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PollOpenFrom" type="xs:dateTime" minOccurs="0" />
              <xs:element name="PollOpenTo" type="xs:dateTime" minOccurs="0" />
              <xs:element name="PollAllowMultipleAnswers" type="xs:boolean" />
              <xs:element name="PollQuestion">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PollAccess" type="xs:int" />
              <xs:element name="PollResponseMessage" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PollGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="PollLastModified" type="xs:dateTime" />
              <xs:element name="PollGroupID" type="xs:int" minOccurs="0" />
              <xs:element name="PollSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="PollLogActivity" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Polls_Poll" />
      <xs:field xpath="PollID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="PollID" fieldcaption="PollID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="2017eced-1133-44d2-be9e-0271eaa136f0"><settings><controlname>labelcontrol</controlname></settings></field><field column="PollCodeName" fieldcaption="PollCodeName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="07bdbe7e-259c-4b7a-81ce-e215b3900278"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PollDisplayName" fieldcaption="PollDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4d725c85-2113-4963-a259-2f3f71cb929b" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PollTitle" fieldcaption="PollTitle" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="66317519-d26b-4dae-8c23-6a7e2a8ff1e7"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PollOpenFrom" fieldcaption="PollOpenFrom" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="70f42b69-fb44-4801-98af-4b9d7bfe4422"><settings><controlname>calendarcontrol</controlname></settings></field><field column="PollOpenTo" fieldcaption="PollOpenTo" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="136186d2-5e14-4878-bca1-a24d6e0b3659"><settings><controlname>calendarcontrol</controlname></settings></field><field column="PollAllowMultipleAnswers" fieldcaption="PollAllowMultipleAnswers" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ae1ce3ca-db21-493a-9180-12cf78b0b701"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="PollQuestion" fieldcaption="PollQuestion" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="972d4368-36b0-4fef-b44d-574f7cf18cec"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PollAccess" fieldcaption="PollAccess" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9b4f22c7-7702-40f7-a86e-219118b55527"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PollResponseMessage" fieldcaption="PollResponseMessage" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cd01bedf-1c05-42c4-9e3e-272e157c56ba"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PollGUID" fieldcaption="PollGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0cf99ca0-4a0a-4121-ab1c-4a083feb3b94"><settings><controlname>labelcontrol</controlname></settings></field><field column="PollLastModified" fieldcaption="PollLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="61add291-4cc4-43b8-b72e-eb9fa0a408ef"><settings><controlname>calendarcontrol</controlname></settings></field><field column="PollGroupID" fieldcaption="PollGroupID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="16f8e1a1-7af7-4c7e-bfcb-afb2ba399af4"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PollSiteID" fieldcaption="PollSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c6bf0202-7332-4176-8a24-efc1712f1e34"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PollLogActivity" fieldcaption="Log on-line marketing activity" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a9a31dc6-516f-442d-b75a-07b820128e29" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Polls_Poll', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:26', '35aefb4e-1944-48af-8725-0aedf4bb17be', 0, 1, 0, N'', 2, N'PollTitle', N'PollQuestion', N'', N'PollLastModified', N'<search><item searchable="True" name="PollID" tokenized="False" content="False" id="ff0639ab-5b37-4043-b9f5-2ac57c37b1fc" /><item searchable="False" name="PollCodeName" tokenized="True" content="True" id="0613dbac-1c14-4b79-9011-2fdb2b936907" /><item searchable="False" name="PollDisplayName" tokenized="True" content="True" id="2faf7297-72ba-4fe2-94a1-180f0bb18c29" /><item searchable="False" name="PollTitle" tokenized="True" content="True" id="77df3c20-e914-4c98-8eea-758ad5654617" /><item searchable="True" name="PollOpenFrom" tokenized="False" content="False" id="a525135d-dacf-4691-bcdb-dc1bba5721e3" /><item searchable="True" name="PollOpenTo" tokenized="False" content="False" id="0e2e0fb6-1616-4181-86f5-8c6618b50f5f" /><item searchable="True" name="PollAllowMultipleAnswers" tokenized="False" content="False" id="aa4e3aae-54ff-4051-be2d-ffe1b5bfdb17" /><item searchable="False" name="PollQuestion" tokenized="True" content="True" id="dd30deeb-aaac-46fa-bb48-2d0268dfbfb0" /><item searchable="True" name="PollAccess" tokenized="False" content="False" id="2a4d84aa-7631-419b-bf53-2c35c7ec9ee9" /><item searchable="False" name="PollResponseMessage" tokenized="True" content="True" id="950ab094-3989-4e4a-b474-9a9be28e9068" /><item searchable="False" name="PollGUID" tokenized="False" content="False" id="541c8c9e-fc0f-4ef7-98ce-ff18459c05d9" /><item searchable="True" name="PollLastModified" tokenized="False" content="False" id="788f10c4-a787-407e-aeda-f36f372d235d" /><item searchable="True" name="PollGroupID" tokenized="False" content="False" id="42db84c9-9d30-4494-b824-e4e98a4fe494" /><item searchable="True" name="PollSiteID" tokenized="False" content="False" id="e627d62d-f9fb-49c3-919c-8c9c99c8d998" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1331, N'Polls - Poll answer', N'polls.pollanswer', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Polls_PollAnswer">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="AnswerID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="AnswerText">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AnswerOrder" type="xs:int" minOccurs="0" />
              <xs:element name="AnswerCount" type="xs:int" minOccurs="0" />
              <xs:element name="AnswerEnabled" type="xs:boolean" minOccurs="0" />
              <xs:element name="AnswerPollID" type="xs:int" />
              <xs:element name="AnswerGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="AnswerLastModified" type="xs:dateTime" />
              <xs:element name="AnswerForm" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AnswerAlternativeForm" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AnswerHideForm" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Polls_PollAnswer" />
      <xs:field xpath="AnswerID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="AnswerID" fieldcaption="AnswerID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="85aa83fe-c59b-4848-808b-e4933cc873f0"><settings><controlname>labelcontrol</controlname></settings></field><field column="AnswerText" fieldcaption="AnswerText" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="462e0935-c9a8-42ef-a8b4-8c9de332491d" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AnswerOrder" fieldcaption="AnswerOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="641e9f4c-7afb-45e5-8e74-dbf316fa5fe2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AnswerCount" fieldcaption="AnswerCount" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ea95f511-6c0f-431c-a3ac-b6f7824bc5ab"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AnswerEnabled" fieldcaption="AnswerEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="75e6c0d8-b0ca-41d5-b960-a3c3d25ef4a7"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="AnswerPollID" fieldcaption="AnswerPollID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="18311baa-1a61-4aaf-9256-56d7b3be5afd"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AnswerGUID" fieldcaption="AnswerGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5a0d3438-6e13-4ebf-b306-fae1d444f5f3"><settings><controlname>unknown</controlname></settings></field><field column="AnswerLastModified" fieldcaption="AnswerLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8c7645ba-c9da-4440-af55-9765b8e8f056"><settings><controlname>calendarcontrol</controlname></settings></field><field column="AnswerForm" fieldcaption="AnswerForm" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="e0e959c3-ab2f-43e7-915a-2b65a2969a77" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="AnswerAlternativeForm" fieldcaption="AnswerAlternativeForm" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="40dda09e-d60e-410c-95fb-e52969cfb55a" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="AnswerHideForm" fieldcaption="AnswerHideForm" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="63cd0a2c-88cd-40c3-92aa-a0205cb6b80f" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Polls_PollAnswer', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120821 09:22:23', '6f77a516-ab75-412e-a75f-2602e0dcb293', 0, 1, 0, N'', 2, N'AnswerText', N'0', N'', N'AnswerLastModified', N'<search><item searchable="True" name="AnswerID" tokenized="False" content="False" id="372c8a91-54a3-442e-ba42-af17e4673177" /><item searchable="False" name="AnswerText" tokenized="True" content="True" id="c09abdc5-488d-4275-ad9f-03bbfffaea7d" /><item searchable="True" name="AnswerOrder" tokenized="False" content="False" id="78ab655c-19c5-4805-8768-1e9afebd10ee" /><item searchable="True" name="AnswerCount" tokenized="False" content="False" id="19ac3383-bb83-45ea-a004-7e73db6c81a3" /><item searchable="True" name="AnswerEnabled" tokenized="False" content="False" id="08d99bf8-d596-4780-b478-9a79502efa5c" /><item searchable="True" name="AnswerPollID" tokenized="False" content="False" id="2cd5c9bc-ba2d-47da-b17b-ae53b0cfe33e" /><item searchable="False" name="AnswerGUID" tokenized="False" content="False" id="ee8fb2fa-2914-4d48-ad58-394cd234a95e" /><item searchable="True" name="AnswerLastModified" tokenized="False" content="False" id="cd5ea8ee-2fc3-48fc-b9b5-95db432f7b00" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1338, N'Report', N'Reporting.Report', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Reporting_Report">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ReportID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ReportName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ReportDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="440" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ReportLayout">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ReportParameters">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ReportCategoryID" type="xs:int" />
              <xs:element name="ReportAccess" type="xs:int" />
              <xs:element name="ReportGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ReportLastModified" type="xs:dateTime" />
              <xs:element name="ReportEnableSubscription" type="xs:boolean" minOccurs="0" />
              <xs:element name="ReportConnectionString" minOccurs="0">
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
      <xs:selector xpath=".//Reporting_Report" />
      <xs:field xpath="ReportID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ReportID" fieldcaption="ReportID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="54774329-35c0-4d7e-8e70-107db2efcc01"><settings><controlname>labelcontrol</controlname></settings></field><field column="ReportName" fieldcaption="ReportName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fcb403e6-9944-4782-a409-d6b0e7845ce9"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ReportDisplayName" fieldcaption="ReportDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="440" publicfield="false" guid="9b994700-6a2d-451e-9ef8-8013fd3365ef" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ReportLayout" fieldcaption="ReportLayout" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fd743157-93fe-4dbc-8db1-6b0218205c2a"><settings><controlname>textareacontrol</controlname></settings></field><field column="ReportParameters" fieldcaption="ReportParameters" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1c648af7-cf8d-49ff-8d2d-d152aaff301e"><settings><controlname>textareacontrol</controlname></settings></field><field column="ReportCategoryID" fieldcaption="ReportCategoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8c8f484d-4f01-4359-8cb6-1a5ae63e1d78"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ReportAccess" fieldcaption="ReportAccess" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3b798284-728b-46da-a669-069988e7f440"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ReportConnectionString" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="fd9107d7-c9ae-4343-9447-1a4aa0e8c13a" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field><field column="ReportEnableSubscription" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d6d04f4f-65e0-474b-80a4-0b05212a6161" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ReportGUID" fieldcaption="ReportGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="bd7e8bd6-a0fe-4a0e-bce4-ab6d84aef49c"><settings><controlname>unknown</controlname></settings></field><field column="ReportLastModified" fieldcaption="ReportLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="639711b2-c908-449d-8946-ce9b2ef87ac8"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'Reporting_Report', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120731 13:15:04', '8e5b3d49-5cf9-487a-afc3-164d26fdaa2e', 0, 1, 0, N'', 2, N'ReportDisplayName', N'0', N'', N'ReportLastModified', N'<search><item searchable="True" name="ReportID" tokenized="False" content="False" id="168cada2-ebef-40b2-84fd-80b95c2dbe87" /><item searchable="False" name="ReportName" tokenized="True" content="True" id="06c43aca-7018-4c80-b711-c3475e180129" /><item searchable="False" name="ReportDisplayName" tokenized="True" content="True" id="bca6a536-52e5-4c4b-a05d-1a72e422ed09" /><item searchable="False" name="ReportLayout" tokenized="True" content="True" id="6c19874f-e58e-4e6c-91b9-12be269a2562" /><item searchable="False" name="ReportParameters" tokenized="True" content="True" id="2c8b6757-2c4c-4563-b126-f819d6d4ebfc" /><item searchable="True" name="ReportCategoryID" tokenized="False" content="False" id="5ebf65be-4e97-469f-83cf-dfffe6561dea" /><item searchable="True" name="ReportAccess" tokenized="False" content="False" id="8a5886c4-9d11-4da6-83e5-ea5ffe5e8991" /><item searchable="False" name="ReportGUID" tokenized="False" content="False" id="b97f59b9-9e97-44ae-b430-ea8f8c823d65" /><item searchable="True" name="ReportLastModified" tokenized="False" content="False" id="3a7dbdc6-ada3-4886-9204-7ce33c5453bd" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1339, N'Report graph', N'Reporting.ReportGraph', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Reporting_ReportGraph">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="GraphID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="GraphName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GraphDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GraphQuery">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GraphQueryIsStoredProcedure" type="xs:boolean" />
              <xs:element name="GraphType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GraphReportID" type="xs:int" />
              <xs:element name="GraphTitle" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GraphXAxisTitle" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GraphYAxisTitle" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GraphWidth" type="xs:int" minOccurs="0" />
              <xs:element name="GraphHeight" type="xs:int" minOccurs="0" />
              <xs:element name="GraphLegendPosition" type="xs:int" minOccurs="0" />
              <xs:element name="GraphSettings" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="GraphGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="GraphLastModified" type="xs:dateTime" />
              <xs:element name="GraphIsHtml" type="xs:boolean" minOccurs="0" />
              <xs:element name="GraphConnectionString" minOccurs="0">
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
      <xs:selector xpath=".//Reporting_ReportGraph" />
      <xs:field xpath="GraphID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="GraphID" fieldcaption="GraphID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="eed4199f-210d-4306-b919-28477fee1a6f"><settings><controlname>labelcontrol</controlname></settings></field><field column="GraphName" fieldcaption="GraphName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="cfdc850b-9ac0-4671-98e8-2bd0ebe42b5e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GraphDisplayName" fieldcaption="GraphDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="92eec597-ebd4-44c8-ab5a-39f72b089a2e" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GraphQuery" fieldcaption="GraphQuery" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e201f69e-2c44-457b-b944-21c4958d588a"><settings><controlname>textareacontrol</controlname></settings></field><field column="GraphQueryIsStoredProcedure" fieldcaption="GraphQueryIsStoredProcedure" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="95801c24-5c35-435d-889d-a39f003ebd1c"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="GraphType" fieldcaption="GraphType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="075c428a-5a6e-4922-a490-23c5d36e77c0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GraphReportID" fieldcaption="GraphReportID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ebb98f15-b8e5-49df-9730-d96f455ab409"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GraphTitle" fieldcaption="GraphTitle" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="60cc5183-b44c-44f2-9c65-83e667e4b0e3"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GraphXAxisTitle" fieldcaption="GraphXAxisTitle" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="dc023e32-ae9a-4564-9d1e-f04659ea61fa"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GraphYAxisTitle" fieldcaption="GraphYAxisTitle" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c0370641-69cb-43c0-ad3d-a5322d9791b7"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GraphWidth" fieldcaption="GraphWidth" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="938fbf3b-145e-4577-baca-146528b53315"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GraphHeight" fieldcaption="GraphHeight" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3f076698-3fa5-4b0e-aec0-5e27ec801ac7"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GraphLegendPosition" fieldcaption="GraphLegendPosition" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9b38f89d-4d0d-4dcc-ac84-e39d6e906e92"><settings><controlname>textboxcontrol</controlname></settings></field><field column="GraphConnectionString" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="e22cdf51-a2a2-4fea-8f9e-0ac4b80b4ec8" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field><field column="GraphSettings" fieldcaption="GraphSettings" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c8ddc397-c8bc-4909-b715-4db752b69d0c"><settings><controlname>textareacontrol</controlname></settings></field><field column="GraphGUID" fieldcaption="GraphGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6d952912-2be9-4b73-885b-53159198072d"><settings><controlname>unknown</controlname></settings></field><field column="GraphLastModified" fieldcaption="GraphLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4cd06d92-b729-47f2-8b52-4a034e80cedb"><settings><controlname>calendarcontrol</controlname></settings></field><field column="GraphIsHtml" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="951adf33-476b-45b1-b1b2-5ab37254104b" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Reporting_ReportGraph', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120703 14:22:05', 'f4e23a8d-9b99-4fdc-8e82-8ceb69fa5cd7', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1341, N'Report table', N'Reporting.ReportTable', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Reporting_ReportTable">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TableID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TableName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TableDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TableQuery">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TableQueryIsStoredProcedure" type="xs:boolean" />
              <xs:element name="TableReportID" type="xs:int" />
              <xs:element name="TableSettings" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TableGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="TableLastModified" type="xs:dateTime" />
              <xs:element name="TableConnectionString" minOccurs="0">
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
      <xs:selector xpath=".//Reporting_ReportTable" />
      <xs:field xpath="TableID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TableID" fieldcaption="TableID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="01ec14c3-a29d-4d45-8991-00c753d51f1b"><settings><controlname>labelcontrol</controlname></settings></field><field column="TableName" fieldcaption="TableName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b5bc8fb2-4fac-4de3-8417-893b1c570458"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TableDisplayName" fieldcaption="TableDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="db0bbc1e-9682-4ba2-b02e-cb94f28bcfe2" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TableQuery" fieldcaption="TableQuery" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5a207185-1804-4523-83f0-53e232b487fd"><settings><controlname>textareacontrol</controlname></settings></field><field column="TableQueryIsStoredProcedure" fieldcaption="TableQueryIsStoredProcedure" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="da5e0111-43ae-445e-89aa-5cef08f0da2e"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TableReportID" fieldcaption="TableReportID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e1b60a01-8bcc-4982-be5d-b0c36c91ef99"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TableSettings" fieldcaption="TableSettings" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4d6d2a3d-b807-4eeb-896d-137fde611c10"><settings><controlname>textareacontrol</controlname></settings></field><field column="TableConnectionString" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="0549a6c6-9d01-49e3-8c92-6cdd7c3e3169" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field><field column="TableGUID" fieldcaption="TableGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c25fbaa2-44aa-4d61-826f-33eb597ad524"><settings><controlname>unknown</controlname></settings></field><field column="TableLastModified" fieldcaption="TableLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5ab4d460-8534-41ab-a4da-79940336ee0c"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'Reporting_ReportTable', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120703 14:22:25', 'dc3c643e-3f7b-455a-88e5-4b95cf964756', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1342, N'Report value', N'Reporting.ReportValue', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Reporting_ReportValue">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ValueID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ValueName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ValueDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ValueQuery">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ValueQueryIsStoredProcedure" type="xs:boolean" />
              <xs:element name="ValueFormatString" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ValueReportID" type="xs:int" />
              <xs:element name="ValueGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ValueLastModified" type="xs:dateTime" />
              <xs:element name="ValueSettings" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ValueConnectionString" minOccurs="0">
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
      <xs:selector xpath=".//Reporting_ReportValue" />
      <xs:field xpath="ValueID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ValueID" fieldcaption="ValueID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="f1e02451-4522-48b3-9ae4-afdfd9b4ead8"><settings><controlname>labelcontrol</controlname></settings></field><field column="ValueName" fieldcaption="ValueName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d72af990-71b1-4cb4-a94c-f9285a75bd53"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ValueDisplayName" fieldcaption="ValueDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="641aeca8-f17c-4bd1-bbfe-ddb77396d1a9" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ValueQuery" fieldcaption="ValueQuery" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="82b749ae-b6c5-41ff-90fd-9f5965ab70f0"><settings><controlname>textareacontrol</controlname></settings></field><field column="ValueSettings" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4b17a42d-8571-45fc-8899-d783b25135da" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ValueQueryIsStoredProcedure" fieldcaption="ValueQueryIsStoredProcedure" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4709fd4f-4fda-4fb3-bd45-f08a3c6024d8"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ValueFormatString" fieldcaption="ValueFormatString" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3ba99cb4-40ae-4e91-947d-d280be7a825b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ValueReportID" fieldcaption="ValueReportID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="aabffc3a-2a0a-4321-9540-351f16510842"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ValueConnectionString" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="c70b1799-2854-4ac4-bd58-7b15c85b275b" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field><field column="ValueGUID" fieldcaption="ValueGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8601ebe4-5f0a-4e76-9b96-e2a9fe92a0c3"><settings><controlname>unknown</controlname></settings></field><field column="ValueLastModified" fieldcaption="ValueLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="933bc040-9b40-4524-91e2-9535d339d7e3"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'Reporting_ReportValue', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120703 14:22:44', 'a131b916-b2e3-4a9a-ae29-29d12bb6bbbf', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1349, N'Reporting saved graph', N'Reporting.SavedGraph', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Reporting_SavedGraph">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SavedGraphID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SavedGraphSavedReportID" type="xs:int" />
              <xs:element name="SavedGraphGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="SavedGraphBinary" type="xs:base64Binary" />
              <xs:element name="SavedGraphMimeType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SavedGraphLastModified" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Reporting_SavedGraph" />
      <xs:field xpath="SavedGraphID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SavedGraphID" fieldcaption="SavedGraphID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="efd03c4f-4299-4abb-b589-af20b0b74a9b"><settings><controlname>labelcontrol</controlname></settings></field><field column="SavedGraphSavedReportID" fieldcaption="SavedGraphSavedReportID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d2562dcd-50e6-4a23-aacc-c34c931d84ae"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SavedGraphGUID" fieldcaption="SavedGraphGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c453fcc2-d4b0-40c2-ba6c-071f1da64242"><settings><controlname>unknown</controlname></settings></field><field column="SavedGraphBinary" fieldcaption="SavedGraphBinary" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8d10643c-ed3d-4eea-8603-34b058fb0a87"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SavedGraphMimeType" fieldcaption="SavedGraphMimeType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7e1dcef8-bf43-4300-819b-cf4aca678884"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SavedGraphLastModified" fieldcaption="SavedGraphLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3b124fbb-878f-4586-8cdb-5adf09eb571d" visibility="none"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field></form>', N'', N'', N'', N'Reporting_SavedGraph', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:28', 'a9b8cccf-a725-4101-8ba3-41cada06c8d4', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1350, N'Reporting saved report', N'Reporting.SavedReport', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Reporting_SavedReport">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SavedReportID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SavedReportReportID" type="xs:int" />
              <xs:element name="SavedReportGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="SavedReportTitle" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SavedReportDate" type="xs:dateTime" />
              <xs:element name="SavedReportHTML">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SavedReportParameters">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1073741823" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SavedReportCreatedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="SavedReportLastModified" type="xs:dateTime" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Reporting_SavedReport" />
      <xs:field xpath="SavedReportID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SavedReportID" fieldcaption="SavedReportID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="0575d5aa-5090-47cd-ab7e-a09f906d11f4"><settings><controlname>labelcontrol</controlname></settings></field><field column="SavedReportReportID" fieldcaption="SavedReportReportID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="65296e8c-a796-475f-96c8-7e37d7ad4bf1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SavedReportGUID" fieldcaption="SavedReportGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1423e2f0-1274-40f7-ad2a-4599e0a8d6a1"><settings><controlname>unknown</controlname></settings></field><field column="SavedReportTitle" fieldcaption="SavedReportTitle" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="64328433-acbc-40de-a208-cadeb5a4d4ca" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SavedReportDate" fieldcaption="SavedReportDate" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="935d44a6-b553-4e7c-ab84-16db554c92a9"><settings><controlname>calendarcontrol</controlname></settings></field><field column="SavedReportHTML" fieldcaption="SavedReportHTML" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e9416b58-29ee-4fa4-9bf9-4cdc2adefa4a"><settings><controlname>textareacontrol</controlname></settings></field><field column="SavedReportParameters" fieldcaption="SavedReportParameters" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2acae724-da8e-42a9-84b1-7ec1e546ea61"><settings><controlname>textareacontrol</controlname></settings></field><field column="SavedReportCreatedByUserID" fieldcaption="SavedReportCreatedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c12cd366-c374-4538-9e2d-29d6b57b287d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SavedReportLastModified" fieldcaption="SavedReportLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="66f9efe1-0ac0-43bc-a6af-010b9d0e564b"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'Reporting_SavedReport', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120731 17:07:36', '0d57ce56-d0bf-49f3-8a94-240268deec66', 0, 1, 0, N'', 2, N'SavedReportTitle', N'0', N'', N'SavedReportDate', N'<search><item searchable="True" name="SavedReportID" tokenized="False" content="False" id="f7458b88-366e-4bca-92a0-3d57c1ee1451" /><item searchable="True" name="SavedReportReportID" tokenized="False" content="False" id="09e62568-1ee5-41e1-b156-0f167271afda" /><item searchable="False" name="SavedReportGUID" tokenized="False" content="False" id="4cee3552-b618-4c7f-aa6e-2e4ff124ae2b" /><item searchable="False" name="SavedReportTitle" tokenized="True" content="True" id="fc0a1143-6a9c-44e6-a29c-6bdab86c49d0" /><item searchable="True" name="SavedReportDate" tokenized="False" content="False" id="68344dc3-a019-4c4b-ae4a-61c27362846d" /><item searchable="False" name="SavedReportHTML" tokenized="True" content="True" id="a7bb6e4b-5a1a-4c39-acc5-3ee5d9219050" /><item searchable="False" name="SavedReportParameters" tokenized="True" content="True" id="15d63080-2df3-4106-9681-37e9c3fb703c" /><item searchable="True" name="SavedReportCreatedByUserID" tokenized="False" content="False" id="4a358047-e4af-4933-921c-31b386c34d84" /><item searchable="True" name="SavedReportLastModified" tokenized="False" content="False" id="50f87b34-d881-49d4-9bf7-345209d1c0ad" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1360, N'Blog comment', N'blog.comment', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Blog_Comment">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="CommentID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="CommentUserName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CommentUserID" type="xs:int" minOccurs="0" />
              <xs:element name="CommentUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CommentText">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CommentApprovedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="CommentPostDocumentID" type="xs:int" />
              <xs:element name="CommentDate" type="xs:dateTime" />
              <xs:element name="CommentIsSpam" type="xs:boolean" minOccurs="0" />
              <xs:element name="CommentApproved" type="xs:boolean" minOccurs="0" />
              <xs:element name="CommentIsTrackBack" type="xs:boolean" minOccurs="0" />
              <xs:element name="CommentEmail" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CommentInfo" minOccurs="0">
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
      <xs:selector xpath=".//Blog_Comment" />
      <xs:field xpath="CommentID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="CommentID" fieldcaption="CommentID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="8ab031c9-df3d-4c65-9016-289e5c8469e7"><settings><controlname>labelcontrol</controlname></settings></field><field column="CommentUserName" fieldcaption="CommentUserName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="6a4c697c-0881-4e38-a2e6-b1a619af658c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CommentUserID" fieldcaption="CommentUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c9d0fc02-d016-4f5a-870c-5a607c338a6b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CommentUrl" fieldcaption="CommentUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="d828d315-4a6d-4919-80ab-f080ac4507bb"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CommentText" fieldcaption="CommentText" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1189c1f2-8391-4dc0-8019-05cfa2bdd97e" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="CommentEmail" fieldcaption="E-mail" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" guid="973875a2-3429-4562-a631-eb41f6baa8d1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CommentApprovedByUserID" fieldcaption="CommentApprovedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f275bdd1-6b44-489e-87d8-f362f6fc9583"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CommentPostDocumentID" fieldcaption="CommentPostDocumentID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fac813e1-53c1-4ded-8f1e-11940b812653"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CommentDate" fieldcaption="CommentDate" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5b67362f-b86f-4f6e-bbdd-ad6d7b425600"><settings><controlname>calendarcontrol</controlname></settings></field><field column="CommentIsSpam" fieldcaption="CommentIsSpam" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b66f6add-2e5f-412c-b386-56b5f677b89b"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CommentApproved" fieldcaption="CommentApproved" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7f112078-00c8-4747-b218-ca779f0a3fb2"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CommentIsTrackBack" fieldcaption="CommentIsTrackBack" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2d213593-81e7-4d70-9fff-6623294b09d2"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CommentInfo" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="544546fa-d4a8-4745-8c58-e82b9575ca63" visibility="none"><settings><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><MediaDialogConfiguration>True</MediaDialogConfiguration><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><controlname>htmlareacontrol</controlname></settings></field></form>', N'', N'', N'', N'Blog_Comment', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120507 12:53:31', 'ff247c39-574a-4807-bbdb-e42b512f9898', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'<search><item tokenized="False" name="CommentApproved" content="False" searchable="True" id="dae64ba0-89b3-4cd9-a726-56cbc30f90e8"></item><item tokenized="True" name="CommentEmail" content="True" searchable="True" id="1075417d-2313-4cdd-a057-ccf33164a191"></item><item tokenized="False" name="CommentIsTrackBack" content="False" searchable="True" id="e4062876-5ca1-4c34-a6b7-ca3165464444"></item><item tokenized="False" name="CommentPostDocumentID" content="False" searchable="True" id="9d9ab8c6-5de6-4745-a1b1-f09d45c5c0ba"></item><item tokenized="False" name="CommentDate" content="False" searchable="True" id="50f07302-cf70-49eb-a07b-0d67d43231ad"></item><item tokenized="False" name="CommentApprovedByUserID" content="False" searchable="True" id="490785a7-7059-40ee-9903-5ffb6894f3b6"></item><item tokenized="True" name="CommentUrl" content="True" searchable="True" id="d60a2aeb-cb62-488a-b85e-3696d2818fba"></item><item tokenized="True" name="CommentText" content="True" searchable="True" id="21e30c19-dd1b-4ba8-8cc5-510fdc9f6dfc"></item><item tokenized="False" name="CommentIsSpam" content="False" searchable="True" id="96ff6705-0ea6-4dba-8ea8-d02d5713c489"></item><item tokenized="True" name="CommentUserName" content="True" searchable="True" id="7f2528b2-9109-4d45-9d89-e165edadb225"></item><item tokenized="False" name="CommentID" content="False" searchable="True" id="549a65eb-3852-4b89-b003-c3ad117187fa"></item><item tokenized="False" name="CommentUserID" content="False" searchable="True" id="30c8c336-1cd0-4454-8f4e-7389c71195b7"></item></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1366, N'Analytics statistics', N'analytics.statistics', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Analytics_Statistics">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="StatisticsID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="StatisticsSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="StatisticsCode">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StatisticsObjectName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StatisticsObjectID" type="xs:int" minOccurs="0" />
              <xs:element name="StatisticsObjectCulture" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="10" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Analytics_Statistics" />
      <xs:field xpath="StatisticsID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="StatisticsID" fieldcaption="StatisticsID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="304c2ad5-41fd-4954-920b-1b8d9876e48a"><settings><controlname>labelcontrol</controlname></settings></field><field column="StatisticsSiteID" fieldcaption="StatisticsSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="43c6424f-8930-4abb-82c7-139aff98871d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StatisticsCode" fieldcaption="StatisticsCode" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="400" publicfield="false" guid="b58d2acd-05c6-48d3-a19e-8b720bcf18b1" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StatisticsObjectName" fieldcaption="StatisticsObjectName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="03afa08a-bfdf-41de-ac95-03da490da18b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StatisticsObjectID" fieldcaption="StatisticsObjectID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="effde454-0f22-4a16-9a9c-4510b8c9fe16"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StatisticsObjectCulture" fieldcaption="StatisticsObjectCulture" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f9ab8359-7261-47c6-b368-21d3c3439b71"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Analytics_Statistics', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:17', '75b95c91-bc3e-45a7-b40d-27581d8b67bc', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1367, N'Analytics hour hits', N'analytics.hitshour', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Analytics_HourHits">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="HitsID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="HitsStatisticsID" type="xs:int" />
              <xs:element name="HitsStartTime" type="xs:dateTime" />
              <xs:element name="HitsEndTime" type="xs:dateTime" />
              <xs:element name="HitsCount" type="xs:int" />
              <xs:element name="HitsValue" type="xs:double" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Analytics_HourHits" />
      <xs:field xpath="HitsID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="HitsID" fieldcaption="HitsID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="2b4c7f1f-b65e-49e3-b9e3-1b5f6cec367a"><settings><controlname>labelcontrol</controlname></settings></field><field column="HitsStatisticsID" fieldcaption="HitsStatisticsID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="dab8b16a-40a5-46a1-b9b6-ef48a36b665f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HitsStartTime" fieldcaption="HitsStartTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="01b9f2d8-7c62-42e3-9137-4c65fc20dcf5"><settings><controlname>calendarcontrol</controlname></settings></field><field column="HitsEndTime" fieldcaption="HitsEndTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4767e166-32e9-4630-afcc-78711f95960a"><settings><controlname>calendarcontrol</controlname></settings></field><field column="HitsCount" fieldcaption="HitsCount" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7500e99c-be1c-4ef3-8626-4dd97c1f9c08"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HitsValue" fieldcaption="Hits value" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="84340044-f625-499b-91b1-4284cdf0cfd0" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'Analytics_HourHits', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:17', 'b97a7c1e-5193-4388-938b-a212e8f2c28a', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1368, N'Analytics day hits', N'analytics.hitsday', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Analytics_DayHits">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="HitsID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="HitsStatisticsID" type="xs:int" />
              <xs:element name="HitsStartTime" type="xs:dateTime" />
              <xs:element name="HitsEndTime" type="xs:dateTime" />
              <xs:element name="HitsCount" type="xs:int" />
              <xs:element name="HitsValue" type="xs:double" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Analytics_DayHits" />
      <xs:field xpath="HitsID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="HitsID" fieldcaption="HitsID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="2b1d184c-b95c-407e-b253-cd81d0a1a5a9"><settings><controlname>labelcontrol</controlname></settings></field><field column="HitsStatisticsID" fieldcaption="HitsStatisticsID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4301af00-35b2-4f73-90c2-dfc987809658"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HitsStartTime" fieldcaption="HitsStartTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="dc4a60fc-3b3c-44a5-b42e-50e14f3da88a"><settings><controlname>calendarcontrol</controlname></settings></field><field column="HitsEndTime" fieldcaption="HitsEndTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="89b49a8b-e2ff-4c3a-a1f4-eff3f623aaa7"><settings><controlname>calendarcontrol</controlname></settings></field><field column="HitsCount" fieldcaption="HitsCount" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="41d7b63a-80d2-45ff-b9bf-0fb3c173980e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HitsValue" fieldcaption="Hits value" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a692f94d-f623-40ec-9cd5-552e558995b2" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Analytics_DayHits', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:17', '97040785-3faf-4d17-9b77-7436f7b10844', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1369, N'Analytics month hits', N'analytics.hitsmonth', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Analytics_MonthHits">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="HitsID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="HitsStatisticsID" type="xs:int" />
              <xs:element name="HitsStartTime" type="xs:dateTime" />
              <xs:element name="HitsEndTime" type="xs:dateTime" />
              <xs:element name="HitsCount" type="xs:int" />
              <xs:element name="HitsValue" type="xs:double" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Analytics_MonthHits" />
      <xs:field xpath="HitsID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="HitsID" fieldcaption="HitsID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="d191d9b3-52ef-43c1-ae3d-7779125897a0"><settings><controlname>labelcontrol</controlname></settings></field><field column="HitsStatisticsID" fieldcaption="HitsStatisticsID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9ad191da-6058-4916-a7d4-1b70b0f6b66d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HitsStartTime" fieldcaption="HitsStartTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="290752d5-924a-441f-8450-f057d653ac70"><settings><controlname>calendarcontrol</controlname></settings></field><field column="HitsEndTime" fieldcaption="HitsEndTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6c89aad0-8284-4ec7-96e7-d4ee954a5de3"><settings><controlname>calendarcontrol</controlname></settings></field><field column="HitsCount" fieldcaption="HitsCount" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b28a32d6-ac63-4e3f-9747-1061714809ec"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HitsValue" fieldcaption="Hits value" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="00331abd-6a14-4178-9f25-d6b446578051" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'Analytics_MonthHits', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:17', '7528e30b-8884-4e8f-8a49-085f8069ffea', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1370, N'Analytics week hits', N'analytics.hitsweek', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Analytics_WeekHits">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="HitsID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="HitsStatisticsID" type="xs:int" />
              <xs:element name="HitsStartTime" type="xs:dateTime" />
              <xs:element name="HitsEndTime" type="xs:dateTime" />
              <xs:element name="HitsCount" type="xs:int" />
              <xs:element name="HitsValue" type="xs:double" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Analytics_WeekHits" />
      <xs:field xpath="HitsID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="HitsID" fieldcaption="HitsID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="a2831edb-3d81-4a7e-82ca-bcb63d676364"><settings><controlname>labelcontrol</controlname></settings></field><field column="HitsStatisticsID" fieldcaption="HitsStatisticsID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f10ff8a2-e7d7-4713-bfc4-bbb7459b89f0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HitsStartTime" fieldcaption="HitsStartTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="816e8b8b-f28e-4152-860f-2141cdf6a88b"><settings><controlname>calendarcontrol</controlname></settings></field><field column="HitsEndTime" fieldcaption="HitsEndTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="de5eb681-92ea-49cf-939a-615b856c7dae"><settings><controlname>calendarcontrol</controlname></settings></field><field column="HitsCount" fieldcaption="HitsCount" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="25dc690e-9106-44d5-b81b-bab6e271cf50"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HitsValue" fieldcaption="Hits value" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ecfaff0d-0c7f-4b68-b568-2b22209d0bf1" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Analytics_WeekHits', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:17', '32eb47b8-2e30-4094-8c20-be3b355b31d1', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1371, N'Analytics year hits', N'analytics.hitsyear', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Analytics_YearHits">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="HitsID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="HitsStatisticsID" type="xs:int" />
              <xs:element name="HitsStartTime" type="xs:dateTime" />
              <xs:element name="HitsEndTime" type="xs:dateTime" />
              <xs:element name="HitsCount" type="xs:int" />
              <xs:element name="HitsValue" type="xs:double" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Analytics_YearHits" />
      <xs:field xpath="HitsID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="HitsID" fieldcaption="HitsID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="e424b08c-9d5c-4fde-98f9-fa5df680ba40"><settings><controlname>labelcontrol</controlname></settings></field><field column="HitsStatisticsID" fieldcaption="HitsStatisticsID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="12a87691-0b02-4676-93c6-6949fbf5a7dd"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HitsStartTime" fieldcaption="HitsStartTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4360ade8-e25f-4466-91d5-5da81683e6e3"><settings><controlname>calendarcontrol</controlname></settings></field><field column="HitsEndTime" fieldcaption="HitsEndTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="69ebdbff-6467-465a-a329-5b1ee5ccdda4"><settings><controlname>calendarcontrol</controlname></settings></field><field column="HitsCount" fieldcaption="HitsCount" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1c3d328b-4ac0-41b5-968c-f54fa796cf5d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HitsValue" fieldcaption="Hits value" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6e5f74de-c9c2-453e-a0a7-64294340b059" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Analytics_YearHits', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:18', '3f74ab7f-4d2e-40cd-8a94-78ba0a84f366', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1424, N'Ecommerce - Volume discount', N'ecommerce.volumediscount', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_VolumeDiscount">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="VolumeDiscountID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="VolumeDiscountSKUID" type="xs:int" />
              <xs:element name="VolumeDiscountMinCount" type="xs:int" />
              <xs:element name="VolumeDiscountValue" type="xs:double" />
              <xs:element name="VolumeDiscountIsFlatValue" type="xs:boolean" />
              <xs:element name="VolumeDiscountGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="VolumeDiscountLastModified" type="xs:dateTime" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_VolumeDiscount" />
      <xs:field xpath="VolumeDiscountID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="VolumeDiscountID" fieldcaption="VolumeDiscountID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="0c00f4b8-c620-47c9-b210-560ccad5de07"><settings><controlname>labelcontrol</controlname></settings></field><field column="VolumeDiscountSKUID" fieldcaption="VolumeDiscountSKUID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="40cf73c1-36e7-4ba1-a430-99edc9882288"><settings><controlname>textboxcontrol</controlname></settings></field><field column="VolumeDiscountMinCount" fieldcaption="VolumeDiscountMinCount" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fec331ea-76d5-4b7b-9d07-712a73f010df"><settings><controlname>textboxcontrol</controlname></settings></field><field column="VolumeDiscountValue" fieldcaption="VolumeDiscountValue" visible="true" columntype="double" fieldtype="CustomUserControl" system="true" publicfield="false" guid="85872dc6-b413-4a5c-b534-193c93175e94"><settings><controlname>textboxcontrol</controlname></settings></field><field column="VolumeDiscountIsFlatValue" fieldcaption="VolumeDiscountIsFlatValue" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="87ded51f-d9b2-4650-88a4-53c3e09c4735"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="VolumeDiscountGUID" fieldcaption="VolumeDiscountGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="51cb9858-7105-4c5e-8f23-58b9299b37de"><settings><controlname>unknown</controlname></settings></field><field column="VolumeDiscountLastModified" fieldcaption="VolumeDiscountLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1709e8fd-993e-44a3-9e74-eab513d45a78"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_VolumeDiscount', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', 'c363a8ef-9b91-4e8b-860f-1e058dfc66ec', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1429, N'Ecommerce - Discount level', N'ecommerce.discountlevel', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_DiscountLevel">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="DiscountLevelID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="DiscountLevelDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DiscountLevelName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DiscountLevelValue" type="xs:double" />
              <xs:element name="DiscountLevelEnabled" type="xs:boolean" />
              <xs:element name="DiscountLevelValidFrom" type="xs:dateTime" minOccurs="0" />
              <xs:element name="DiscountLevelValidTo" type="xs:dateTime" minOccurs="0" />
              <xs:element name="DiscountLevelGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="DiscountLevelLastModified" type="xs:dateTime" />
              <xs:element name="DiscountLevelSiteID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_DiscountLevel" />
      <xs:field xpath="DiscountLevelID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="DiscountLevelID" fieldcaption="DiscountLevelID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="7ad32772-5c73-4ff7-ba95-1ffb0166a2d3"><settings><controlname>labelcontrol</controlname></settings></field><field column="DiscountLevelDisplayName" fieldcaption="DiscountLevelDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="83d2a289-1cf3-4d43-9b15-869f31f647f1" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DiscountLevelName" fieldcaption="DiscountLevelName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="564457b5-62b5-4e2d-a34f-3b3f96a2d601"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DiscountLevelValue" fieldcaption="DiscountLevelValue" visible="true" columntype="double" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a1882af8-6ca2-411e-b3f4-c0ed83448af8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DiscountLevelEnabled" fieldcaption="DiscountLevelEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7d41d785-b1b3-4faa-83b9-8d5be49569f1"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="DiscountLevelValidFrom" fieldcaption="DiscountLevelValidFrom" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="bc2fca5f-aa50-43be-8306-f172d826ad86"><settings><controlname>calendarcontrol</controlname></settings></field><field column="DiscountLevelValidTo" fieldcaption="DiscountLevelValidTo" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="69a5c64e-e5f1-4a2d-85da-58a83eaaa9b9"><settings><controlname>calendarcontrol</controlname></settings></field><field column="DiscountLevelGUID" fieldcaption="DiscountLevelGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d0e040df-1faa-4e45-b7dc-183b5f3e742a"><settings><controlname>unknown</controlname></settings></field><field column="DiscountLevelLastModified" fieldcaption="DiscountLevelLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a54ed583-3013-484d-b2c6-768c2d6f3ea0"><settings><controlname>calendarcontrol</controlname></settings></field><field column="DiscountLevelSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="0e5d9fc7-4197-416f-b487-9b435ce9ec5b" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_DiscountLevel', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', 'bffc1dfe-82c4-4612-a3dc-e7a40cb26985', 0, 1, 0, N'', 2, N'DiscountLevelDisplayName', N'0', N'', N'DiscountLevelLastModified', N'<search><item searchable="True" name="DiscountLevelID" tokenized="False" content="False" id="ffcad1ea-97b4-484f-a019-201d00f67dcd" /><item searchable="False" name="DiscountLevelDisplayName" tokenized="True" content="True" id="ec24b287-afb9-46fc-8310-13ac743e730e" /><item searchable="False" name="DiscountLevelName" tokenized="True" content="True" id="358658f4-6ae5-4456-b4a4-13d16d6c132a" /><item searchable="True" name="DiscountLevelValue" tokenized="False" content="False" id="8f16cfbb-ed78-46eb-9949-44f1287efa92" /><item searchable="True" name="DiscountLevelEnabled" tokenized="False" content="False" id="83e8e9f6-6797-4bfd-819f-bee6f8377774" /><item searchable="True" name="DiscountLevelValidFrom" tokenized="False" content="False" id="0f4bcf6c-671d-4a61-a12f-b439fd9e85a7" /><item searchable="True" name="DiscountLevelValidTo" tokenized="False" content="False" id="5a5ac991-18e2-489e-b27e-c786731d6aff" /><item searchable="False" name="DiscountLevelGUID" tokenized="False" content="False" id="cbbb25df-4aad-40f2-9aac-a65f4ab532c5" /><item searchable="True" name="DiscountLevelLastModified" tokenized="False" content="False" id="bad8f366-8ebc-4480-bc22-f073314c7393" /><item searchable="True" name="DiscountLevelSiteID" tokenized="False" content="False" id="c5e5d185-51df-4009-8a26-4b413f00676c" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1431, N'Report category', N'Reporting.ReportCategory', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Reporting_ReportCategory">
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
              <xs:element name="CategoryCodeName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="CategoryLastModified" type="xs:dateTime" />
              <xs:element name="CategoryParentID" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryImagePath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryPath">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryOrder" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryLevel" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryChildCount" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryReportChildCount" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Reporting_ReportCategory" />
      <xs:field xpath="CategoryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="CategoryID" fieldcaption="CategoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="2d4af13c-4087-468e-8971-5e63c038e867"><settings><controlname>labelcontrol</controlname></settings></field><field column="CategoryDisplayName" fieldcaption="CategoryDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e0fcb4bf-d573-4e0e-8eb5-9a47e810b13a" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryCodeName" fieldcaption="CategoryCodeName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="dc0ecf7d-0953-447f-a8eb-8876d759d0e5"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryGUID" fieldcaption="CategoryGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c843471e-1877-4fcb-ba2c-ee55c3413248"><settings><controlname>unknown</controlname></settings></field><field column="CategoryLastModified" fieldcaption="CategoryLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b917a7d8-8d58-4dbf-83f1-9f5e32eed1a2"><settings><controlname>calendarcontrol</controlname></settings></field><field column="CategoryParentID" fieldcaption="CategoryParentID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="af475f5f-6dd0-4800-bad6-cf0fa1d9f52f" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryImagePath" fieldcaption="CategoryImagePath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="821fec6d-6c4b-4840-b53c-95fc2108b721" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryPath" fieldcaption="CategoryPath" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="46928e89-1623-46f3-8b34-a349b01fde68" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryOrder" fieldcaption="CategoryOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4d861f94-1de7-44c6-a319-b103265d5685" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryLevel" fieldcaption="CategoryLevel" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d33fee17-cba7-4bd6-a0f7-35d607d17389" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryChildCount" fieldcaption="CategoryChildCount" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c50b873d-5585-434d-8ba1-7ae79273ef9d" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryReportChildCount" fieldcaption="CategoryReportChildCount" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4ba1c430-7d9a-4bc0-85e7-83991a760a64" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Reporting_ReportCategory', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120605 12:25:05', 'f2763c6c-d3d8-4e39-89f9-8f71c21f9368', 0, 1, 0, N'', 2, N'CategoryDisplayName', N'0', N'CategoryImagePath', N'CategoryLastModified', N'<search><item searchable="True" name="CategoryID" tokenized="False" content="False" id="3e5b7802-1ad2-4157-9723-34d022b4bce1" /><item searchable="False" name="CategoryDisplayName" tokenized="True" content="True" id="bbfb331e-5952-4111-9cfd-2acc4c679817" /><item searchable="False" name="CategoryCodeName" tokenized="True" content="True" id="df23e4aa-2980-4e7a-a33b-7e10bf698834" /><item searchable="False" name="CategoryGUID" tokenized="False" content="False" id="c009ddfb-a65f-4ed5-bd34-96e74e484f7a" /><item searchable="True" name="CategoryLastModified" tokenized="False" content="False" id="aa58f112-2d77-4e6c-acee-a8a2e981bb93" /><item searchable="True" name="CategoryParentID" tokenized="False" content="False" id="6827cd62-f0b9-4a8d-a69b-6df82f822285" /><item searchable="False" name="CategoryImagePath" tokenized="True" content="True" id="1f271a4e-62b7-400f-b1d5-10459e9ff419" /><item searchable="False" name="CategoryPath" tokenized="True" content="True" id="7c8fc550-e894-4a2a-b023-a3b2f8d3d2c4" /><item searchable="True" name="CategoryOrder" tokenized="False" content="False" id="c79f1147-e93f-4380-a5ea-aa4c53e772ac" /><item searchable="True" name="CategoryLevel" tokenized="False" content="False" id="d91d6684-2212-41e6-9b20-fb03eeb9c87a" /><item searchable="True" name="CategoryChildCount" tokenized="False" content="False" id="3d793cd7-6f3e-4642-97ba-05f952231a61" /><item searchable="True" name="CategoryReportChildCount" tokenized="False" content="False" id="c11df1de-43fe-45d2-8ed0-e3494dcb33d8" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1448, N'Ecommerce - Tax class state', N'ecommerce.taxclassstate', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_TaxClassState">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TaxClassStateID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TaxClassID" type="xs:int" />
              <xs:element name="StateID" type="xs:int" />
              <xs:element name="TaxValue" type="xs:double" />
              <xs:element name="IsFlatValue" type="xs:boolean" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_TaxClassState" />
      <xs:field xpath="TaxClassStateID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TaxClassStateID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="58115b3b-9197-4132-a412-c8410cb6d453" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="TaxClassID" fieldcaption="TaxClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c3503fa7-38e1-4450-b245-cece59d8b765"><settings><controlname>labelcontrol</controlname></settings></field><field column="StateID" fieldcaption="StateID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c3ac6edb-e895-4f76-8469-68a3b02d2e37"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaxValue" fieldcaption="TaxValue" visible="true" columntype="double" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3f9b4b7c-a74c-4a29-acff-f5e4359b5206"><settings><controlname>textboxcontrol</controlname></settings></field><field column="IsFlatValue" fieldcaption="IsFlatValue" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1318a545-531e-4d9a-b121-ca3f4867895f"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_TaxClassState', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', '25c47e7c-7eb0-4edb-8509-960cddbda2e1', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1511, N'Event attendee', N'cms.EventAttendee', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Events_Attendee">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="AttendeeID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="AttendeeEmail">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttendeeFirstName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttendeeLastName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttendeePhone" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttendeeEventNodeID" type="xs:int" />
              <xs:element name="AttendeeGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="AttendeeLastModified" type="xs:dateTime" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Events_Attendee" />
      <xs:field xpath="AttendeeID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="AttendeeID" fieldcaption="AttendeeID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="4078b055-4042-41d8-9286-fe954ca4783d"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttendeeEmail" fieldcaption="AttendeeEmail" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ca9064cb-7f30-43fd-9086-4bcf7452ef97" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttendeeFirstName" fieldcaption="AttendeeFirstName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8994e1ec-dc0c-43a2-b745-1e4b1a337681"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttendeeLastName" fieldcaption="AttendeeLastName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="62fd46e4-e6c0-4302-98c3-d8bc3f1b0ded"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttendeePhone" fieldcaption="AttendeePhone" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="49abfee2-d711-4f27-84e9-73265eeeb1e0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttendeeEventNodeID" fieldcaption="AttendeeEventNodeID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ff35fcf0-80d0-4347-9343-f9f957a9a971"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttendeeGUID" fieldcaption="AttendeeGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="839cd8b5-afa2-48d6-ac9a-cd8c2eb166d1"><settings><controlname>unknown</controlname></settings></field><field column="AttendeeLastModified" fieldcaption="AttendeeLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="42c38270-1b2f-4f8d-ac55-b31b776727a3"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'Events_Attendee', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', '3eb7dbd1-e72a-4381-817a-789413c477c6', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1514, N'Web part layout', N'cms.WebPartLayout', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WebPartLayout">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="WebPartLayoutID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="WebPartLayoutCodeName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebPartLayoutDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebPartLayoutDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebPartLayoutCode" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebPartLayoutVersionGUID" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebPartLayoutWebPartID" type="xs:int" />
              <xs:element name="WebPartLayoutGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="WebPartLayoutLastModified" type="xs:dateTime" />
              <xs:element name="WebPartLayoutCSS" minOccurs="0">
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
      <xs:selector xpath=".//CMS_WebPartLayout" />
      <xs:field xpath="WebPartLayoutID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="WebPartLayoutID" fieldcaption="WebPartLayoutID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="fb354b46-35b3-4cd9-bbf0-85117bc33359"><settings><controlname>labelcontrol</controlname></settings></field><field column="WebPartLayoutCodeName" fieldcaption="WebPartLayoutCodeName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="94d0fbe1-b684-4f7c-a501-0008a0a29e45" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="WebPartLayoutDisplayName" fieldcaption="WebPartLayoutDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="5a2407cc-9146-4950-90c4-78549ca7efaf" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="WebPartLayoutDescription" fieldcaption="WebPartLayoutDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3678f082-f1da-4f2b-bd29-3f3dac4e1273" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="WebPartLayoutCode" fieldcaption="WebPartLayoutCode" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e0430f63-4ce2-4527-81e0-1cdc94ee2e20"><settings><controlname>textareacontrol</controlname></settings></field><field column="WebPartLayoutCSS" fieldcaption="WebPartLayoutCSS" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="12930e48-c933-48de-b755-2f41b741da15" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="WebPartLayoutVersionGUID" fieldcaption="WebPartLayoutVersionGUID" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="eaf51ec6-ab5a-468c-a3c2-b81427650c82"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebPartLayoutWebPartID" fieldcaption="WebPartLayoutWebPartID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e38dfda5-7c17-42b4-bffb-8ddf13bb8680"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebPartLayoutGUID" fieldcaption="WebPartLayoutGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="43c97c99-eb8d-4ef3-b5d2-7805ba29df79"><settings><controlname>unknown</controlname></settings></field><field column="WebPartLayoutLastModified" fieldcaption="WebPartLayoutLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f40f5517-7586-425e-aaac-f014ed51ba53"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'~/CMSModules/PortalEngine/UI/WebParts/Development/WebPart_Edit_Layout_Frameset.aspx?layoutid={%EditedObject.ID%}&webpartid={%EditedObject.ParentID%}&editonlycode=1', N'', N'', N'CMS_WebPartLayout', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120810 09:50:28', '05f3851c-9830-4bb4-a717-601e585211d3', 0, 1, 0, N'', 0, N'WebPartLayoutDisplayName', N'WebPartLayoutDescription', N'', N'0', N'<search><item searchable="True" name="WebPartLayoutID" tokenized="False" content="False" id="f2a92617-f906-4fe1-8734-fbf058ac8f6b" /><item searchable="False" name="WebPartLayoutCodeName" tokenized="True" content="True" id="4c7253b9-1e4d-4c19-ba8a-08d106148476" /><item searchable="False" name="WebPartLayoutDisplayName" tokenized="True" content="True" id="44afb786-4aed-4a51-ae14-347dffa36c48" /><item searchable="False" name="WebPartLayoutDescription" tokenized="True" content="True" id="bfae613f-42df-4b90-9f2e-98e4712fee97" /><item searchable="False" name="WebPartLayoutCode" tokenized="True" content="True" id="c108fbce-54a9-4cfb-b7de-d58bac8c7001" /><item searchable="False" name="WebPartLayoutCheckedOutFilename" tokenized="True" content="True" id="b5905df8-7916-4f7f-8f31-be37cb5a4e67" /><item searchable="True" name="WebPartLayoutCheckedOutByUserID" tokenized="False" content="False" id="eddc596a-e465-4b65-9b87-35bb67706d56" /><item searchable="False" name="WebPartLayoutCheckedOutMachineName" tokenized="True" content="True" id="c9a12963-da24-42fe-8817-10ad43428242" /><item searchable="False" name="WebPartLayoutVersionGUID" tokenized="True" content="True" id="239d8670-bbd6-4a23-9fbb-ec2704096392" /><item searchable="True" name="WebPartLayoutWebPartID" tokenized="False" content="False" id="db45543d-e0ae-41a6-9bc0-e1bfda1c9339" /><item searchable="False" name="WebPartLayoutGUID" tokenized="False" content="False" id="82ec7b49-1532-4da5-a188-89e06594bd8e" /><item searchable="True" name="WebPartLayoutLastModified" tokenized="False" content="False" id="a0daf7dc-b5b6-4b50-be60-339fc9fd8741" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1518, N'Ecommerce - Credit event', N'Ecommerce.CreditEvent', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_CustomerCreditHistory">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="EventID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="EventName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EventCreditChange" type="xs:double" />
              <xs:element name="EventDate" type="xs:dateTime" />
              <xs:element name="EventDescription">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="EventCustomerID" type="xs:int" />
              <xs:element name="EventCreditGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="EventCreditLastModified" type="xs:dateTime" />
              <xs:element name="EventSiteID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_CustomerCreditHistory" />
      <xs:field xpath="EventID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="EventID" fieldcaption="EventID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="632bf090-0a62-4ab4-ad7a-bb5ade15d292" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EventName" fieldcaption="EventName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a24805b1-9e76-48e9-9dd7-f08a536ce86d" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EventCreditChange" fieldcaption="EventCreditChange" visible="true" columntype="double" fieldtype="CustomUserControl" system="true" publicfield="false" guid="38a6bf91-170b-46fe-b8ec-62cb3f682199"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EventDate" fieldcaption="EventDate" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e839a80a-98e9-4639-badd-24cc7da72eab"><settings><controlname>calendarcontrol</controlname></settings></field><field column="EventDescription" fieldcaption="EventDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2f7f0148-cf71-4cf0-baae-7d43a0a26f54" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="EventCustomerID" fieldcaption="EventCustomerID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fec1ab02-ae4e-40d3-8a6f-a6862a2e7e1a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EventCreditGUID" fieldcaption="EventCreditGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a62b7d78-29e6-4ae5-affc-a4b81512272e" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="EventCreditLastModified" fieldcaption="EventCreditLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="198520a6-2159-459b-88d8-6c02fc8e538e"><settings><controlname>calendarcontrol</controlname></settings></field><field column="EventSiteID" fieldcaption="EventSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b0d1e6bd-ab80-44ba-af2a-3dc6151f5d85" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_CustomerCreditHistory', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', 'b27d0a43-6e82-4dce-819e-940363aba30e', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
SET IDENTITY_INSERT [CMS_Class] OFF
