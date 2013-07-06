SET IDENTITY_INSERT [CMS_Class] ON
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2893, N'Conversion campaign', N'Analytics.ConversionCampaign', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Analytics_ConversionCampaign">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="CampaignID" type="xs:int" />
              <xs:element name="ConversionID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Analytics_ConversionCampaign" />
      <xs:field xpath="CampaignID" />
      <xs:field xpath="ConversionID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="CampaignID" fieldcaption="CampaignID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="bcd372bc-ee51-4e97-a77b-b52a7d2ef875"><settings><controlname>labelcontrol</controlname></settings></field><field column="ConversionID" fieldcaption="ConversionID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4fe9bbaa-16c4-4082-a2a6-baeca94e6ca1"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Analytics_ConversionCampaign', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:19', '43839eb0-71fa-47d9-b92d-03720de2dd86', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2910, N'Ecommerce - SKU file', N'ecommerce.skufile', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_SKUFile">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="FileID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="FileGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="FileSKUID" type="xs:int" />
              <xs:element name="FilePath">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FileType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FileLastModified" type="xs:dateTime" />
              <xs:element name="FileName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="FileMetaFileGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_SKUFile" />
      <xs:field xpath="FileID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="FileID" fieldcaption="FileID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="a7c4a5ef-a738-46ef-af06-50642221c4b3" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="FileGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="999bc154-6af2-4e6b-b2f0-632a1c276e0e" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="FileSKUID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="706b138b-c6ac-4be4-a123-cd4c5569f614" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="FileMetaFileGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="592325c7-cb76-41d4-b1de-18b866e1b47b" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="FileName" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="250" publicfield="false" guid="a14114bb-b38a-4975-81fd-69977d93b735" visibility="none"><settings><controlname>checkboxlistcontrol</controlname></settings></field><field column="FilePath" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="799c7912-7f67-48b8-a7af-0ba19b3b4b33" visibility="none"><settings><controlname>checkboxlistcontrol</controlname></settings></field><field column="FileType" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="50" publicfield="false" guid="953e1567-88ee-4673-b580-3a766524dcbc" visibility="none"><settings><controlname>checkboxlistcontrol</controlname></settings></field><field column="FileLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0095842d-bc83-41a6-8cfe-a8ba8e993743" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_SKUFile', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', 'f869846a-ff23-4e34-a1e3-dde94c42a447', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2911, N'Ecommerce - Order item SKU file', N'ecommerce.orderitemskufile', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_OrderItemSKUFile">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="OrderItemSKUFileID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="Token" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="OrderItemID" type="xs:int" />
              <xs:element name="FileID" type="xs:int" />
              <xs:element name="FileDownloads" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_OrderItemSKUFile" />
      <xs:field xpath="OrderItemSKUFileID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="OrderItemSKUFileID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="7e7c534c-930d-4b90-8be9-51ea6ddfbfc2" visibility="none" /><field column="Token" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="19b7eee7-2e0f-4756-948b-6b830ef51f32" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="OrderItemID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7b782643-9782-4efa-adcc-4fa41742f74e" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="FileID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f4ca528f-cdaa-4957-afe1-7ab4b54775d7" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="FileDownloads" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b154ac07-7ea4-4a51-8542-9daeddbb424b" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_OrderItemSKUFile', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', 'c2573c54-8d0d-4d88-a4a0-06c63cb3eb4c', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2912, N'Ecommerce - Bundle', N'ecommerce.bundle', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_Bundle">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="BundleID" type="xs:int" />
              <xs:element name="SKUID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_Bundle" />
      <xs:field xpath="BundleID" />
      <xs:field xpath="SKUID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="BundleID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="a81ad7c7-f05f-47c6-ac44-b9b0a4dd4371" visibility="none" /><field column="SKUID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="648513a9-a198-45bc-9d0f-f3b902e460a1" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_Bundle', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', '0e239c5c-b529-4f8a-9bcb-9915e488faf4', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2920, N'Scoring - Rule', N'OM.Rule', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_Rule">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="RuleID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="RuleScoreID" type="xs:int" />
              <xs:element name="RuleDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="RuleName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="RuleValue" type="xs:int" />
              <xs:element name="RuleIsRecurring" type="xs:boolean" minOccurs="0" />
              <xs:element name="RuleMaxPoints" type="xs:int" minOccurs="0" />
              <xs:element name="RuleValidUntil" type="xs:dateTime" minOccurs="0" />
              <xs:element name="RuleValidity" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="RuleValidFor" type="xs:int" minOccurs="0" />
              <xs:element name="RuleType" type="xs:int" />
              <xs:element name="RuleParameter">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="RuleCondition">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="RuleLastModified" type="xs:dateTime" />
              <xs:element name="RuleGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="RuleSiteID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//OM_Rule" />
      <xs:field xpath="RuleID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="RuleID" fieldcaption="RuleID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="b37e31c1-be2d-462c-9d73-04cda0d60b7e" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="RuleScoreID" fieldcaption="RuleScoreID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0e593954-64d1-4dd8-a992-132f8baaa08a" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="RuleDisplayName" fieldcaption="{$general.displayname$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="eeec77c5-4f3d-433c-b842-28ca4f6a0a19" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="RuleName" fieldcaption="{$general.codename$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="3c12c604-59ab-4966-bb15-985db40d5f0d" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="RuleValue" fieldcaption="{$General.Value$}" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="573d49df-2418-4137-b7ac-0dfa0899c042" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="RuleIsRecurring" fieldcaption="{$om.scoring.recurringrule$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fd1e37c0-d6fa-4c8f-a5bd-509b93013539" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="RuleMaxPoints" fieldcaption="{$om.scoring.maxpoints$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="195a701b-656f-4117-b7ec-7f57e9212b6a" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="RuleValidUntil" fieldcaption="RuleValidUntil" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8773004e-c8ed-47a1-b4fd-e5f80f92ed2b" visibility="none"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="RuleValidity" fieldcaption="RuleValidity" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" spellcheck="false" guid="15c836e4-82cc-426c-b228-1f8898833b97" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="RuleValidFor" fieldcaption="RuleValidFor" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="913ee1f2-73c6-46c3-a9a4-3b75fd2ffd27" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="RuleType" fieldcaption="{$om.scoring.ruletype$}" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9f552f8e-df8e-4ec2-a5ea-38f93a52862d" visibility="none"><settings><controlname>radiobuttonscontrol</controlname><RepeatDirection>horizontal</RepeatDirection><Options>&lt;item value="0" text="{$om.scoring.activity$}" /&gt;&lt;item value="1" text="{$om.scoring.attribute$}" /&gt;</Options></settings></field><field column="RuleParameter" fieldcaption="RuleParameter" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="250" publicfield="false" spellcheck="false" guid="14fe236f-0b60-4b37-884a-d1d8d87fbc14" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="RuleCondition" fieldcaption="RuleCondition" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" spellcheck="false" guid="044cb901-83ab-45b5-82be-7ee390ffdf19" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="RuleSiteID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="57852981-eb73-46df-95db-08c79636dc7d" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="RuleLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a35b9681-c68e-497f-8812-df9e8502c476" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="RuleGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c3c7b27d-8421-47e4-b2dd-754bce97ec00" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'OM_Rule', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120509 17:00:33', 'be7d8b1c-e4e5-4ee4-9bf9-dbd02cf13ff9', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'CMSOMConnectionString', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2921, N'Content personalization variant', N'OM.PersonalizationVariant', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_PersonalizationVariant">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="VariantID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="VariantEnabled" type="xs:boolean" />
              <xs:element name="VariantName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="VariantDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="VariantInstanceGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="VariantZoneID" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="VariantPageTemplateID" type="xs:int" />
              <xs:element name="VariantWebParts">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="VariantPosition" type="xs:int" minOccurs="0" />
              <xs:element name="VariantGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="VariantLastModified" type="xs:dateTime" />
              <xs:element name="VariantDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="VariantDocumentID" type="xs:int" minOccurs="0" />
              <xs:element name="VariantDisplayCondition">
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
      <xs:selector xpath=".//OM_PersonalizationVariant" />
      <xs:field xpath="VariantID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="VariantID" fieldcaption="VariantID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="e3ed8595-a544-4e3b-ac93-69539a3e38fd" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="VariantDisplayName" fieldcaption="{$general.displayname$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="eb2bfbd6-bd06-4472-8190-ac42e9e501e0" visibility="none" translatefield="true"><settings><controlname>localizabletextbox</controlname></settings></field><field column="VariantName" fieldcaption="{$general.codename$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="9b18df15-59d3-47fd-81a5-32e2a0b44063" visibility="none"><settings><controlname>codename</controlname></settings></field><field column="VariantDescription" fieldcaption="{$general.description$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b7d5a76f-12c4-40d9-b66a-3f20409cb163" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="VariantInstanceGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8e47550a-688b-46e0-acc2-b9339341a57b" visibility="none" /><field column="VariantZoneID" fieldcaption="Zone ID" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="e52cbe69-1294-466a-b9a1-d63a7f46f3e4" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="VariantPageTemplateID" fieldcaption="Zone ID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1d01676e-eead-42ed-a017-2190a5498ff9" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="VariantEnabled" fieldcaption="{$general.enabled$}" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fb57678c-f7a7-4634-95f3-9d4c496beaad" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="VariantWebParts" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="10f16789-4799-4490-b515-e785d2e6de63" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="VariantPosition" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9dfe063c-ff0a-44ad-be5b-afde03eee733" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="VariantGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7ebf8f6e-5a9e-411b-9d57-1698530887e7" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="VariantLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ae850eba-36c1-45d8-b8e8-e3458a6fc935" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="VariantDocumentID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7cf1f579-6a90-4c24-807d-f7d12eb709bb" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="VariantDisplayCondition" fieldcaption="{$contentpersonalizationvariant.displaycondition$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" spellcheck="false" guid="91fb1ae3-990e-46ec-b669-1d0b918527c9" visibility="none"><settings><controlname>conditionbuilder</controlname><RuleCategoryNames>cms.onlinemarketing</RuleCategoryNames><DisplayRuleType>0</DisplayRuleType><ShowAutoCompletionAbove>True</ShowAutoCompletionAbove></settings></field></form>', N'', N'', N'', N'OM_PersonalizationVariant', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120626 09:45:30', 'ff0718a4-7077-4020-8a3a-77ec97468ebe', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2940, N'Scoring - Score', N'OM.Score', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_Score">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ScoreID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ScoreName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ScoreDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ScoreDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ScoreSiteID" type="xs:int" />
              <xs:element name="ScoreEnabled" type="xs:boolean" />
              <xs:element name="ScoreEmailAtScore" type="xs:int" minOccurs="0" />
              <xs:element name="ScoreNotificationEmail" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ScoreLastModified" type="xs:dateTime" />
              <xs:element name="ScoreGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ScoreStatus" type="xs:int" minOccurs="0" />
              <xs:element name="ScoreScheduledTaskID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//OM_Score" />
      <xs:field xpath="ScoreID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ScoreID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="822ec626-c2ba-45b0-b4d3-6bfe8de1029a" visibility="none" /><field column="ScoreName" fieldcaption="ScoreName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" spellcheck="false" guid="c02f1724-eff4-4182-a761-49ecd785a440" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ScoreDisplayName" fieldcaption="ScoreDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="b53df3ab-71a7-418f-bb3b-ce7827a9efe5" visibility="none" translatefield="true"><settings><controlname>localizabletextbox</controlname></settings></field><field column="ScoreDescription" fieldcaption="ScoreDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3d3d14e4-0b34-4dc7-931e-eda7f761ee60" visibility="none" translatefield="true"><settings><controlname>localizabletextbox</controlname></settings></field><field column="ScoreSiteID" fieldcaption="ScoreSiteID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="63b1e63f-a9a9-479c-a361-a9c050b4223c" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ScoreEnabled" fieldcaption="ScoreEnabled" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ec541c15-02ab-466f-a710-008d60644a9a" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ScoreEmailAtScore" fieldcaption="ScoreEmailAtScore" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3742201b-3175-4573-8a4a-8892fedd07c1" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ScoreNotificationEmail" fieldcaption="ScoreNotificationEmail" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" spellcheck="false" guid="6711db13-f203-4e08-a843-8e20ed0bdc4d" visibility="none"><settings><controlname>emailinput</controlname></settings></field><field column="ScoreLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="216a3e10-be11-41a9-841c-5507917eedae" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ScoreGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5d8dae04-737d-4165-bc9b-4d35b8fd284a" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ScoreStatus" fieldcaption="ScoreStatus" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="804872dc-f7bf-4578-b581-924a5c8ca611" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ScoreScheduledTaskID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3c46dbae-8f12-454a-8b7d-3e28669d7440" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'OM_Score', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:28', '63a09dc5-3aac-4d13-a94b-020de7a882ef', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'CMSOMConnectionString', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3019, N'Workflow transition', N'CMS.WorkflowTransition', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WorkflowTransition">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TransitionID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TransitionStartStepID" type="xs:int" />
              <xs:element name="TransitionEndStepID" type="xs:int" />
              <xs:element name="TransitionType" type="xs:int" />
              <xs:element name="TransitionLastModified" type="xs:dateTime" />
              <xs:element name="TransitionSourcePointGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="TransitionWorkflowID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_WorkflowTransition" />
      <xs:field xpath="TransitionID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TransitionID" fieldcaption="TransitionID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="e08738df-7283-4770-9401-0c36bd71759d"><settings><controlname>labelcontrol</controlname></settings></field><field column="TransitionStartStepID" fieldcaption="TransitionStartStepID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a297e61d-5456-4a1c-924a-fde3fac30033"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TransitionEndStepID" fieldcaption="TransitionEndStepID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="442ddaa1-f363-4109-b064-a7348d6074f5"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TransitionType" fieldcaption="TransitionType" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="dfff9402-3d87-4f54-8234-29ed27c7ee80"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TransitionLastModified" fieldcaption="TransitionLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="08df817b-6426-464e-82c6-661c2a867c34" visibility="none"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="TransitionSourcePointGUID" fieldcaption="TransitionSourcePointGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="63385196-26bc-44f0-a4ad-d0403d52334f" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TransitionWorkflowID" fieldcaption="TransitionWorkflowID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c258666d-75e3-4a70-abb8-74db88cad3c8" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'CMS_WorkflowTransition', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:45', 'd83351f9-37ee-4708-962c-97d217f79f91', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3026, N'Newsletter - EmailTemplateNewsletter', N'Newsletter.EmailTemplateNewsletter', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Newsletter_EmailTemplateNewsletter">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TemplateID" type="xs:int" />
              <xs:element name="NewsletterID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Newsletter_EmailTemplateNewsletter" />
      <xs:field xpath="TemplateID" />
      <xs:field xpath="NewsletterID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TemplateID" fieldcaption="TemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="ee4c96af-2954-40bc-8d90-a948b06ff6ab"><settings><controlname>labelcontrol</controlname></settings></field><field column="NewsletterID" fieldcaption="NewsletterID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2bd6b631-1e47-40a2-b609-298cc58c1445" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'Newsletter_EmailTemplateNewsletter', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:24', '635ca3eb-bdc7-445f-a2d0-86220c682e30', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3027, N'Macro rule', N'CMS.MacroRule', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_MacroRule">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="MacroRuleID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="MacroRuleName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MacroRuleText">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1000" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MacroRuleParameters" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MacroRuleResourceName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MacroRuleLastModified" type="xs:dateTime" />
              <xs:element name="MacroRuleGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="MacroRuleCondition">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MacroRuleDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="500" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MacroRuleIsCustom" type="xs:boolean" minOccurs="0" />
              <xs:element name="MacroRuleRequiresContext" type="xs:boolean" />
              <xs:element name="MacroRuleDescription" minOccurs="0">
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
      <xs:selector xpath=".//CMS_MacroRule" />
      <xs:field xpath="MacroRuleID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="MacroRuleID" fieldcaption="MacroRuleID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="9c84abda-f7a5-4acb-b3b2-f53125e089dd" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><category name="general.general" caption="{$general.general$}" visible="True" /><field column="MacroRuleDisplayName" fieldcaption="{$general.displayname$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="500" publicfield="false" guid="47507682-a9b6-46f9-9873-bfcaaff3ab99" visibility="none" translatefield="true"><settings><controlname>localizabletextbox</controlname></settings></field><field column="MacroRuleName" fieldcaption="{$macros.macrorule.name$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="1dbfae33-b237-4ef9-bfc2-c7ccbf3a85f0" visibility="none"><settings><controlname>codename</controlname></settings></field><field column="MacroRuleDescription" fieldcaption="{$general.description$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="f5100e73-9900-4788-9827-4c9fe54f56ab" visibility="none"><settings><TextMode>MultiLine</TextMode><controlname>localizabletextarea</controlname><MaxLength>450</MaxLength></settings></field><category name="Rule_data" caption="Rule data" visible="True" /><field column="MacroRuleText" fieldcaption="{$macros.macrorule.text$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="1000" publicfield="false" guid="89a3fd80-b6a8-42bb-9634-f2d2dae25367" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="MacroRuleCondition" fieldcaption="{$macros.macrorule.condition$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8303608d-c1b0-4157-a719-79419d73cb02" visibility="none"><settings><controlname>macrosyntaxhighlighter</controlname><ShowAutoCompletionAbove>False</ShowAutoCompletionAbove></settings></field><field column="MacroRuleRequiresContext" fieldcaption="Requires context" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="65a9edb3-5cda-47b6-b464-caab233b6be1" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="MacroRuleParameters" fieldcaption="MacroRuleParameters" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="121f077f-1d84-4988-931f-0ab8647cc34c" visibility="none"><settings><controlname>textareacontrol</controlname><IsTextArea>True</IsTextArea></settings></field><field column="MacroRuleResourceName" fieldcaption="Rule category" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="3fac3f63-d64e-410a-9943-0726e5dbb036" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field><field column="MacroRuleIsCustom" fieldcaption="Macro rule is custom" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c95f8b92-72f1-40c6-af9c-56eb32201f23" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="MacroRuleLastModified" fieldcaption="MacroRuleText" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9cc32607-8d18-4275-802f-9c3c4c8b8f60" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MacroRuleGUID" fieldcaption="MacroRuleID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d23ff3a0-659e-4c3a-ab95-80c8345a003b" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_MacroRule', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120615 14:16:25', 'c59a88e0-c6e5-4537-b35d-0cc3d2b294c9', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3036, N'Newsletter - A/B test', N'newsletter.abtest', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Newsletter_ABTest">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TestID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TestIssueID" type="xs:int" />
              <xs:element name="TestWinnerOption" type="xs:int" />
              <xs:element name="TestSelectWinnerAfter" type="xs:int" minOccurs="0" />
              <xs:element name="TestWinnerIssueID" type="xs:int" minOccurs="0" />
              <xs:element name="TestWinnerSelected" type="xs:dateTime" minOccurs="0" />
              <xs:element name="TestLastModified" type="xs:dateTime" />
              <xs:element name="TestGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="TestWinnerScheduledTaskID" type="xs:int" minOccurs="0" />
              <xs:element name="TestSizePercentage" type="xs:int" />
              <xs:element name="TestNumberPerVariantEmails" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Newsletter_ABTest" />
      <xs:field xpath="TestID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TestID" fieldcaption="TestID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="b97c5937-55cb-48f5-87cf-7fca1179b9e1"><settings><controlname>labelcontrol</controlname></settings></field><field column="TestIssueID" fieldcaption="TestIssueID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="79af06d4-c156-460d-8437-3f5a5066fa9e" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TestSizePercentage" fieldcaption="TestSizePercentage" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="24202f40-1b07-4549-8bd0-27997ac711b6" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TestWinnerOption" fieldcaption="TestWinnerOption" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1dd586f9-c254-4d9a-a7e0-816fb0fef84d" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TestSelectWinnerAfter" fieldcaption="TestSelectWinnerAfter" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e2cb2f50-b3fb-4688-8de6-156d90a76bf9" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TestWinnerIssueID" fieldcaption="TestWinnerIssueID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9fbe382f-9cdf-4f65-a3a6-09946da381c9" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TestWinnerSelected" fieldcaption="TestWinnerSelected" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="65d3d4c9-b5b2-4b27-b13e-a0abdcfb330a" visibility="none"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="TestLastModified" fieldcaption="TestLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1748bba7-3d9d-4849-a684-484be306b485" visibility="none"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="TestGUID" fieldcaption="TestGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bbb82de3-7e85-42a8-a7c5-29351fe3e204" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TestWinnerScheduledTaskID" fieldcaption="TestWinnerScheduledTaskID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e4cce808-b8f9-4ee2-9b45-1907ed33e23c" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TestNumberPerVariantEmails" fieldcaption="TestNumberPerVariantEmails" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="99885c9f-f274-4995-9f93-30cc20e5dc7b" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'Newsletter_ABTest', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:24', '93a641e0-cb54-4770-9e3f-837a790c2114', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3037, N'WorkflowStepUser', N'CMS.WorkflowStepUser', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WorkflowStepUser">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="WorkflowStepUserID" type="xs:int" />
              <xs:element name="StepID" type="xs:int" />
              <xs:element name="UserID" type="xs:int" />
              <xs:element name="StepSourcePointGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_WorkflowStepUser" />
      <xs:field xpath="WorkflowStepUserID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="WorkflowStepUserID" fieldcaption="WorkflowStepUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="b1518dbe-a60e-4505-a102-0a0d94045a30"><settings><controlname>labelcontrol</controlname></settings></field><field column="StepID" fieldcaption="StepID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="24741863-2e89-43d3-abb8-170aeada4825" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="UserID" fieldcaption="UserID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8f9e7da4-3ea7-48e5-a636-d99c3f8298ce" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="StepSourcePointGUID" fieldcaption="StepSourcePointGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="68f3ac04-c9c0-4f8e-87e3-fe76427a7303" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'CMS_WorkflowStepUser', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:45', '127dfeba-3a19-41c6-ac05-56a428acc019', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3038, N'WorkflowUser', N'CMS.WorkflowUser', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WorkflowUser">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="WorkflowID" type="xs:int" />
              <xs:element name="UserID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_WorkflowUser" />
      <xs:field xpath="WorkflowID" />
      <xs:field xpath="UserID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="WorkflowID" fieldcaption="WorkflowID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="7e097927-11c6-4caa-bc6f-5411ff4c432c"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserID" fieldcaption="UserID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="75c6079e-c676-4679-996b-1b58898ab665"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_WorkflowUser', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:45', '62080e0d-0573-4b7e-8c4f-b2c71314237a', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3039, N'ACL item', N'cms.aclitem', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_ACLItem">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ACLItemID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ACLID" type="xs:int" />
              <xs:element name="UserID" type="xs:int" minOccurs="0" />
              <xs:element name="RoleID" type="xs:int" minOccurs="0" />
              <xs:element name="Allowed" type="xs:int" />
              <xs:element name="Denied" type="xs:int" />
              <xs:element name="LastModified" type="xs:dateTime" />
              <xs:element name="LastModifiedByUserID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_ACLItem" />
      <xs:field xpath="ACLItemID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ACLItemID" fieldcaption="ACLItemID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="fc46d68f-94de-4f63-bc5d-bee495e2afe9" translatefield="true"><settings><controlname>labelcontrol</controlname></settings></field><field column="ACLID" fieldcaption="ACLID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="368d7b03-c6a7-4684-8aa5-5e03aab24de9" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserID" fieldcaption="UserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3a51b2be-1ba4-42fd-b15d-70371c2cf9fb" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RoleID" fieldcaption="RoleID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9b98e19f-e935-438a-9269-47abb95830f5" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="Allowed" fieldcaption="Allowed" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ca5e7c3c-65f6-4e90-9b99-5bae5f769b16" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="Denied" fieldcaption="Denied" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="87100fd6-a32f-4097-b857-696e8d2ddc1b" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="LastModified" fieldcaption="LastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8247705e-9a5a-4aed-a914-61c662306a2b" translatefield="true"><settings><controlname>calendarcontrol</controlname></settings></field><field column="LastModifiedByUserID" fieldcaption="LastModifiedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2b3c3129-984b-4528-a639-f1703401961f" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'CMS_ACLItem', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:17', '83fdf79a-9d56-474f-b229-115fccabf042', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3043, N'Ecommerce - Variant option', N'ecommerce.variantoption', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_VariantOption">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="VariantSKUID" type="xs:int" />
              <xs:element name="OptionSKUID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_VariantOption" />
      <xs:field xpath="VariantSKUID" />
      <xs:field xpath="OptionSKUID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="VariantSKUID" fieldcaption="VariantSKUID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="4bfd91ec-ef17-46f4-a181-b82967a4b20e" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="OptionSKUID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="0147c17c-aea2-4e4c-975a-5129ccae2fe0" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_VariantOption', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', '8687e672-f075-4a1f-9e42-2f0384a10b71', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3044, N'Ecommerce - SKU option', N'Ecommerce.SKUOption', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_SKUOption">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="OptionSKUID" type="xs:int" />
              <xs:element name="SKUID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_SKUOption" />
      <xs:field xpath="OptionSKUID" />
      <xs:field xpath="SKUID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SKUID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="28350987-9146-4971-83d8-df3a10ae8bd4" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="OptionSKUID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="c19c6efe-662f-44e7-814a-e80b7bef8389" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_SKUOption', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', '8481a27c-bda5-4a7d-8c13-bcbdaaf4ed31', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3045, N'Translation Service', N'CMS.TranslationService', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_TranslationService">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TranslationServiceID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TranslationServiceAssemblyName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TranslationServiceClassName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TranslationServiceName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TranslationServiceDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TranslationServiceIsMachine" type="xs:boolean" />
              <xs:element name="TranslationServiceLastModified" type="xs:dateTime" />
              <xs:element name="TranslationServiceGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="TranslationServiceEnabled" type="xs:boolean" />
              <xs:element name="TranslationServiceSupportsInstructions" type="xs:boolean" minOccurs="0" />
              <xs:element name="TranslationServiceSupportsPriority" type="xs:boolean" minOccurs="0" />
              <xs:element name="TranslationServiceSupportsDeadline" type="xs:boolean" minOccurs="0" />
              <xs:element name="TranslationServiceGenerateTargetTag" type="xs:boolean" minOccurs="0" />
              <xs:element name="TranslationServiceParameter" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1000" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_TranslationService" />
      <xs:field xpath="TranslationServiceID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TranslationServiceID" fieldcaption="TranslationServiceID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="1ec95c9a-1232-4efc-b5bc-390eadefb681" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="TranslationServiceDisplayName" fieldcaption="{$general.displayname$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="7c4c2160-9898-4908-b369-7b78c696ea83" visibility="none" translatefield="true"><settings><controlname>localizabletextbox</controlname></settings></field><field column="TranslationServiceName" fieldcaption="{$general.codename$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="447229bd-d213-4e90-91f0-24aefa7302ab" visibility="none"><settings><controlname>codename</controlname></settings></field><field column="TranslationServiceAssemblyName" fieldcaption="{$translationservice.serviceassemblyname$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="0dcc775e-7639-4293-b3e1-7fb82e7e7b53" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TranslationServiceClassName" fieldcaption="{$translationservice.serviceclassname$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="c6907a2e-5746-4765-844b-179add973e8b" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TranslationServiceIsMachine" fieldcaption="{$translationservice.ismachineservice$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ca497936-55b2-4daf-8c47-7f64995f4bdd" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TranslationServiceEnabled" fieldcaption="{$translationservice.serviceisenabled$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b6d2d00f-1c86-4fed-bc23-c5df5426da1d" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TranslationServiceSupportsInstructions" fieldcaption="{$translationservice.servicesupportsinstructions$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="485abd83-ef10-4b3e-857f-631f14777bfe" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TranslationServiceSupportsPriority" fieldcaption="{$translationservice.servicesupportspriority$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9bdd2b0d-e1dc-470c-aeeb-94806944f112" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TranslationServiceSupportsDeadline" fieldcaption="{$translationservice.servicesupportsdeadline$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b4688023-52de-47a0-b5a6-e5cdc25e6887" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TranslationServiceParameter" fieldcaption="{% x = &quot;translationservice.&quot; + TranslationServiceClassName + &quot;Parameter&quot;; y = GetResourceString(x); if (x == y) { GetResourceString(&quot;translationservice.parameter&quot;) } else { y } |(user)administrator|(hash)b66a71f01036e54563f2e7d2b27b612944133af5dcfac0c99e42cababb93842e%}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="1000" publicfield="false" guid="e7a711a0-1935-4f15-8a2b-16876c1a4b66" visibility="none"><settings><Wrap>True</Wrap><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><IsTextArea>True</IsTextArea><controlname>textareacontrol</controlname></settings></field><field column="TranslationServiceGenerateTargetTag" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0146783a-bfd1-4a0a-b5b9-b0b5c9ae6667" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="TranslationServiceLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4443403b-a642-44c7-a8d3-f8a16fda153d" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="TranslationServiceGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4bfc0b38-8106-4d69-95f2-bb0a2fa11ba3" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_TranslationService', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120828 07:42:56', 'ef25943e-71f5-41bb-b279-91d7a1b8f82f', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3061, N'Translation Submission', N'CMS.TranslationSubmission', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_TranslationSubmission">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SubmissionID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SubmissionName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubmissionTicket" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubmissionStatus" type="xs:int" />
              <xs:element name="SubmissionServiceID" type="xs:int" />
              <xs:element name="SubmissionSourceCulture">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="10" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubmissionTargetCulture">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="10" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubmissionPriority" type="xs:int" />
              <xs:element name="SubmissionDeadline" type="xs:dateTime" minOccurs="0" />
              <xs:element name="SubmissionInstructions" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="500" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubmissionLastModified" type="xs:dateTime" />
              <xs:element name="SubmissionGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="SubmissionSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="SubmissionPrice" type="xs:double" minOccurs="0" />
              <xs:element name="SubmissionStatusMessage" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubmissionTranslateAttachments" type="xs:boolean" minOccurs="0" />
              <xs:element name="SubmissionItemCount" type="xs:int" />
              <xs:element name="SubmissionDate" type="xs:dateTime" />
              <xs:element name="SubmissionWordCount" type="xs:int" minOccurs="0" />
              <xs:element name="SubmissionCharCount" type="xs:int" minOccurs="0" />
              <xs:element name="SubmissionSubmittedByUserID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_TranslationSubmission" />
      <xs:field xpath="SubmissionID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><category name="_general.general_" caption="{$general.general$}" visible="True" /><field column="SubmissionName" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="fe85615d-a63c-4e0e-99dc-2d2521adac6a" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SubmissionServiceID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="192b13e4-686f-4421-ae61-e5ef16b2f925" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SubmissionTicket" fieldcaption="{$translationservice.submissionticket$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="91fa0942-967a-48b3-af3f-f691103db513" visibility="none" visiblemacro="{%SubmissionTicket.Value != &quot;&quot;|(user)administrator|(hash)5c0bbef5d4da775a12cbca218932165b23fb4ebb79ca51d4c7695f552d88f09a%}"><settings><controlname>labelcontrol</controlname></settings></field><field column="SubmissionSourceCulture" fieldcaption="{$translationservice.sourceculture$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="10" publicfield="false" guid="a56fc10f-cc17-4b16-a03d-9637ab50df42" visibility="none"><settings><controlname>labelcontrol</controlname><Transformation>#culturename</Transformation></settings></field><field column="SubmissionTargetCulture" fieldcaption="{$translationservice.targetculture$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="10" publicfield="false" guid="079a189f-abd7-4b1b-9ec4-2b986f65aac9" visibility="none"><settings><controlname>labelcontrol</controlname><Transformation>#culturename</Transformation></settings></field><field column="SubmissionDate" fieldcaption="{$translationservice.dateofsubmission$}" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8b63b528-b7ba-44f7-9e9b-4eb9d7fb2bc4" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="SubmissionSubmittedByUserID" fieldcaption="{$translationservice.submittedby$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9eeece45-5911-4e84-98e0-f3d2b10cb5b7" visibility="none"><settings><controlname>userselector</controlname><ShowSiteFilter>False</ShowSiteFilter></settings></field><field column="SubmissionStatus" fieldcaption="{$translationservice.status$}" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d963ef4c-e2b5-4963-9df0-0c67f9cb1b65" visibility="none"><settings><controlname>translationstatus</controlname></settings></field><field column="SubmissionStatusMessage" fieldcaption="{$translationservice.submissionstatusmessage$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6f30de61-8b5b-4c0d-9deb-bfb393e4f328" visibility="none" visiblemacro="{%SubmissionStatusMessage.Value != &quot;&quot;|(user)administrator|(hash)b0a7ea574cc388953773ef0ec950eeb13113e8e4c780eeefe02fafaddb6d742b%}"><settings><controlname>labelcontrol</controlname></settings></field><field column="SubmissionPrice" fieldcaption="{$translationservice.submissionprice$}" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0ac0f6a4-6045-4115-b549-e3e5dcb26d9b" visibility="none" visiblemacro="{%SubmissionPrice.Value != &quot;&quot;|(user)administrator|(hash)95e8eb8ff3744f8a6364e92183b524a5f61fabf36846ea0838f49e1db607d9a1%}"><settings><controlname>labelcontrol</controlname></settings></field><field column="SubmissionItemCount" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="de6bbf64-a345-4091-b238-294bbc159c59" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SubmissionWordCount" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ccd10f5c-13e1-4797-b622-5a29c6be1ee6" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SubmissionCharCount" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4a876a0b-7863-419d-9684-4707ef40b649" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><category name="_translationservice.submissionsettings_" caption="{$translationservice.submissionsettings$}" visible="True" /><field column="SubmissionPriority" fieldcaption="{$translationservice.priority$}" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4e18a131-06c6-4fe1-955d-a7a987ffa821" visibility="none"><settings><controlname>translationpriorityselector</controlname></settings></field><field column="SubmissionDeadline" fieldcaption="{$translationservice.submissiondeadline$}" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="747366c5-3360-4bbb-92ea-b6752adbe9b6" visibility="none"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="SubmissionTranslateAttachments" fieldcaption="{$translationservice.translateattachments$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5cfa0335-ce20-4de0-bde4-e601af6cc1b5" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="SubmissionInstructions" fieldcaption="{$translationservice.submissioninstructions$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="500" publicfield="false" guid="9ab5af56-449c-4a46-97c3-4b77694759b0" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SubmissionSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5b99c95b-6f89-4846-a54f-31d14dc86d5c" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SubmissionLastModified" fieldcaption="Date of submission" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c9056026-56a6-4325-913b-156ebde069ea" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="SubmissionGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5c79fa5f-59b8-406a-a01d-37b4ec5157d4" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><category name="_translationservice.submissiondocumentscategory_" caption="{$translationservice.submissiondocumentscategory$}" visible="True" /><field column="SubmissionID" fieldcaption="{$translationservice.sourcedocuments$}" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="8b8e6cce-351e-4a00-a613-d82d217a8c72" visibility="none"><settings><controlname>translationitemslist</controlname></settings></field></form>', N'', N'', N'', N'CMS_TranslationSubmission', N'', N'', NULL, N'', 0, 0, 0, N'', 0, N'', NULL, '20120613 08:30:23', '48326225-efd6-4b84-8cd6-b4ae68f3ce6b', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3063, N'Translation Submission Item', N'CMS.TranslationSubmissionItem', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_TranslationSubmissionItem">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SubmissionItemID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SubmissionItemSubmissionID" type="xs:int" />
              <xs:element name="SubmissionItemSourceXLIFF" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubmissionItemTargetXLIFF" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubmissionItemObjectType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubmissionItemObjectID" type="xs:int" />
              <xs:element name="SubmissionItemGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="SubmissionItemLastModified" type="xs:dateTime" />
              <xs:element name="SubmissionItemName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubmissionItemWordCount" type="xs:int" minOccurs="0" />
              <xs:element name="SubmissionItemCharCount" type="xs:int" minOccurs="0" />
              <xs:element name="SubmissionItemCustomData" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubmissionItemTargetObjectID" type="xs:int" />
              <xs:element name="SubmissionItemType" minOccurs="0">
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
      <xs:selector xpath=".//CMS_TranslationSubmissionItem" />
      <xs:field xpath="SubmissionItemID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SubmissionItemID" fieldcaption="SubmissionItemID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="2ff60579-c9bd-4b55-a6f3-32e47cf878d5"><settings><controlname>labelcontrol</controlname></settings></field><field column="SubmissionItemSubmissionID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ae547b12-40a7-4f1c-ae4f-59c2b2f03af7" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SubmissionItemObjectType" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="931e0666-b3dc-4675-bab9-be18749a8b8e" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SubmissionItemObjectID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="adaf33b7-8149-4b4d-b479-c9da108a16fc" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SubmissionItemTargetObjectID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3335bdd0-c697-43ff-8e42-f93eff596b31" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SubmissionItemName" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="52ef1e84-59cc-4693-bf58-c79b85e63ac5" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SubmissionItemSourceXLIFF" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b5edfa4e-7eb1-45ba-89b0-40060ff9b992" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="SubmissionItemTargetXLIFF" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1951c219-85a2-4a0f-bf99-3a96c3abcca1" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="SubmissionItemWordCount" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e17bf0be-652a-4dad-8548-23e144762b4e" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SubmissionItemCharCount" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ea5a4717-b5bc-412b-a2ac-46209c2321c2" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SubmissionItemCustomData" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="dce17972-a9f1-485f-89aa-42bf4ddc7081" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="SubmissionItemType" fieldcaption="{$translationservice.submissionitemfiletype$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="317d6741-af37-4fd9-9337-d6120f4c1be7" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="SubmissionItemGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="de0d6753-dcde-4ed3-8486-dadf583ebc26" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SubmissionItemLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0cc9b733-328d-491f-af28-83995a0f2f79" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_TranslationSubmissionItem', N'', N'', NULL, N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:44', 'c7946c97-21bb-4e20-bc90-975c902c29e3', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3074, N'Class mapping', N'CMS.ClassMapping', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_ClassMapping">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="MappingID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="MappingClassID" type="xs:int" />
              <xs:element name="MappingLastModified" type="xs:dateTime" />
              <xs:element name="MappingType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MappingData">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MappingSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="MappingName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MappingDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="MappingGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_ClassMapping" />
      <xs:field xpath="MappingID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="MappingID" fieldcaption="MappingID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="8b5ebf98-a795-4e64-8fc1-7c2f5bb9f494" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="MappingDisplayName" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="7a325d14-0090-4a71-b677-3a83f4a1e811" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="MappingName" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="ebd076e9-a39a-4737-860f-6584955563b9" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="MappingClassID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="15b87c8c-a505-47cd-814b-63014b6a54df" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="MappingSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="36363230-a7ff-4989-9455-ecb41c2c24f4" visibility="none" /><field column="MappingType" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="50" publicfield="false" guid="cfbe7779-3ec5-42dd-a7bb-e9ea66b8b139" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="MappingData" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2b69de80-4105-4bef-9a14-323988032c7e" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="MappingGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a4fe853f-6926-4e06-9e95-abebed6f5a39" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="MappingLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="343cf54b-3a92-4202-ae73-0f5313dd6ea2" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_ClassMapping', N'', N'', NULL, N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:19', '1fda25c8-c9b6-40ce-899a-53ca458712d2', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3077, N'Workflow action', N'cms.workflowaction', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WorkflowAction">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ActionID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ActionDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActionName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActionParameters" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActionDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActionAssemblyName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActionClass">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActionResourceID" type="xs:int" minOccurs="0" />
              <xs:element name="ActionThumbnailGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="ActionGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ActionLastModified" type="xs:dateTime" />
              <xs:element name="ActionEnabled" type="xs:boolean" />
              <xs:element name="ActionAllowedObjects" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActionIconGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="ActionWorkflowType" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_WorkflowAction" />
      <xs:field xpath="ActionID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ActionID" fieldcaption="ActionID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="94b6d141-6fbe-40f9-8047-018916e0f5d7" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ActionDisplayName" fieldcaption="ActionDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="cd2ba1dd-e906-45e5-b9e1-1b898ce889ca"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ActionName" fieldcaption="ActionName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="acc9addc-b246-44c7-aec3-2083e3e9b8d1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ActionParameters" fieldcaption="ActionParameters" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c58d2b08-cbc8-46f1-92e5-142c8b40132d" visibility="none"><settings><controlname>textareacontrol</controlname><IsTextArea>True</IsTextArea></settings></field><field column="ActionDescription" fieldcaption="ActionDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="66ff2236-1e8e-436e-b24e-344718a9a68c" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ActionAssemblyName" fieldcaption="ActionAssemblyName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="2364fdc8-9909-4388-a29a-5ee7e304ada2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ActionClass" fieldcaption="ActionClass" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="df941c32-c138-4419-94bf-d018f47eaff8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ActionResourceID" fieldcaption="ActionResourceID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c9fc7426-e682-4cf0-bd8e-0d13cc66ad6d" visibility="none"><settings><controlname>moduleselector</controlname><DisplayNone>True</DisplayNone><DisplayAllModules>True</DisplayAllModules></settings></field><field column="ActionThumbnailGUID" fieldcaption="ActionThumbnailGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9d1cc382-0149-460a-b3ad-d10f0948d258" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ActionIconGUID" fieldcaption="ActionIconGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="96628928-6402-40fb-b9b2-407b0fe537f9" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ActionGUID" fieldcaption="ActionGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6dd91d6e-ee97-4a82-9624-a7649b6c195d" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ActionLastModified" fieldcaption="ActionLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a699661a-1372-4535-b5dd-3add8c92d3c9" visibility="none"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ActionEnabled" fieldcaption="Enabled" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5bcd7c43-7a38-40bb-b996-e85195be2552" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ActionWorkflowType" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ed6b7241-0a4b-4ae0-a1ba-bdc07ce3756f" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field><field column="ActionAllowedObjects" fieldcaption="Action allowed objects" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="712791be-558b-4ddf-b9cb-d7c698ca8e20" visibility="none"><settings><controlname>objecttypeselector</controlname><AllowAll>True</AllowAll></settings></field></form>', N'', N'', N'', N'CMS_WorkflowAction', N'', N'', NULL, N'', 0, 0, 0, N'', 0, N'', NULL, '20120723 07:00:19', 'bc666071-3ba9-44ea-8470-1b75a9fe9f8a', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
SET IDENTITY_INSERT [CMS_Class] OFF
