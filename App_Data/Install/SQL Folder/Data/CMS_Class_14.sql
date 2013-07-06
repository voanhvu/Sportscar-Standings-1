SET IDENTITY_INSERT [CMS_Class] ON
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3128, N'Banner', N'CMS.Banner', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Banner">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="BannerID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="BannerName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="256" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="BannerDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="256" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="BannerCategoryID" type="xs:int" />
              <xs:element name="BannerEnabled" type="xs:boolean" />
              <xs:element name="BannerFrom" type="xs:dateTime" minOccurs="0" />
              <xs:element name="BannerTo" type="xs:dateTime" minOccurs="0" />
              <xs:element name="BannerGuid" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="BannerLastModified" type="xs:dateTime" />
              <xs:element name="BannerType" type="xs:int" />
              <xs:element name="BannerURL">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2083" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="BannerBlank" type="xs:boolean" />
              <xs:element name="BannerWeight" type="xs:double" />
              <xs:element name="BannerHitsLeft" type="xs:int" minOccurs="0" />
              <xs:element name="BannerClicksLeft" type="xs:int" minOccurs="0" />
              <xs:element name="BannerSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="BannerContent">
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
      <xs:selector xpath=".//CMS_Banner" />
      <xs:field xpath="BannerID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="BannerID" fieldcaption="ID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="82b3cfad-a168-4caa-b672-9fd6d692c1ad" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="BannerWeight" fieldcaption="BannerWeight" visible="true" defaultvalue="5" columntype="double" fieldtype="CustomUserControl" system="true" minnumericvalue="1" maxnumericvalue="1000" publicfield="false" guid="58a2cf6e-7b64-4ad1-b3e4-7fdef033b8c5" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BannerName" fieldcaption="Name" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="256" publicfield="false" guid="c6ccb7b5-2504-426e-8b46-b49a4d500130" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="BannerDisplayName" fieldcaption="Display Name" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="256" publicfield="false" guid="73f9f89e-df64-4555-8e6d-af409b761468" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="BannerType" fieldcaption="BannerType" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="483c096f-f601-4a31-8c3a-29bcd8bfa3f2" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="BannerContent" fieldcaption="{$banner.bannernew.content$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" validationerrormessage="{$banner.contentvalidationerror$}" publicfield="false" guid="cd82e7c6-1450-41ba-9dd3-2664ef722cb3" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="BannerURL" fieldcaption="BannerUrl" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="2083" publicfield="false" guid="3797c311-4787-42be-b629-aeef291bb220" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="BannerBlank" fieldcaption="BannerBlank" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="505257e5-f47d-4206-b54b-89bc2b2daa90" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="BannerCategoryID" fieldcaption="Category ID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8c87b206-5653-48ea-a5b4-87da72082e1e" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="BannerSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a72c04fe-9f45-4017-8973-d4e2e7f20f6a" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="BannerEnabled" fieldcaption="Enabled" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ebe48f5b-8d92-45af-a954-73c67444dbd7" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="BannerFrom" fieldcaption="From" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e69cecae-c4b4-4485-87bd-bb33c61c6ca8" visibility="none"><settings><timezonetype>inherit</timezonetype><controlname>labelcontrol</controlname></settings></field><field column="BannerTo" fieldcaption="To" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2438899f-6f6d-4e3c-8c76-4c6900cad6ac" visibility="none"><settings><timezonetype>inherit</timezonetype><controlname>labelcontrol</controlname></settings></field><field column="BannerHitsLeft" fieldcaption="Banner hits left" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" publicfield="false" guid="1c408cc8-7a79-4558-a3f2-b4e9e066ddaa" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="BannerClicksLeft" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f80b98fb-e9cc-4f4c-8e20-a30a697e5c8e" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="BannerGuid" fieldcaption="GUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="78f8cf3c-a28a-4c8c-970c-ec7deb4737af" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="BannerLastModified" fieldcaption="Last Modified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="46bd3600-8659-472a-b746-7c6ae4c2bdc2" visibility="none"><settings><timezonetype>inherit</timezonetype><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_Banner', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120718 15:02:11', '015f038d-249a-4ba6-ac6f-35f2a367ed65', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3129, N'Banner category', N'CMS.BannerCategory', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_BannerCategory">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="BannerCategoryID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="BannerCategoryName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="BannerCategoryDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="BannerCategorySiteID" type="xs:int" minOccurs="0" />
              <xs:element name="BannerCategoryGuid" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="BannerCategoryLastModified" type="xs:dateTime" />
              <xs:element name="BannerCategoryEnabled" type="xs:boolean" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_BannerCategory" />
      <xs:field xpath="BannerCategoryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="BannerCategoryID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="fdd393f7-ad6a-4ee4-a36c-b41a738584e0" visibility="none" /><field column="BannerCategoryDisplayName" fieldcaption="{$general.displayname$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="f4372880-2683-4fc4-b750-8fb86df9457e" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="BannerCategoryName" fieldcaption="{$general.codename$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="0a7d06f1-ba2d-4f52-b487-4e8907969b6e" visibility="none"><settings><controlname>codename</controlname></settings></field><field column="BannerCategorySiteID" fieldcaption="Site ID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6302ba71-4dc8-47dd-9e06-49b43058b941" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="BannerCategoryEnabled" fieldcaption="{$general.enabled$}" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="06f9a00c-bc09-4384-83e7-6ba022d3ebc6" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="BannerCategoryGuid" fieldcaption="GUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c6b376d6-b908-4127-8e0c-b4cfeca6af3d" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="BannerCategoryLastModified" fieldcaption="Last Modified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3bed7f9a-41b9-47db-9a9d-8fd1f4b162e9" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_BannerCategory', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120710 13:44:28', '48180648-eb2f-436c-826d-aed3a296b99e', 0, 0, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 1, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3133, N'Report subscription', N'Reporting.ReportSubscription', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Reporting_ReportSubscription">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ReportSubscriptionID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ReportSubscriptionReportID" type="xs:int" />
              <xs:element name="ReportSubscriptionInterval">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="1000" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ReportSubscriptionCondition" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ReportSubscriptionEnabled" type="xs:boolean" />
              <xs:element name="ReportSubscriptionParameters" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ReportSubscriptionGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ReportSubscriptionLastModified" type="xs:dateTime" />
              <xs:element name="ReportSubscriptionSubject" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ReportSubscriptionGraphID" type="xs:int" minOccurs="0" />
              <xs:element name="ReportSubscriptionTableID" type="xs:int" minOccurs="0" />
              <xs:element name="ReportSubscriptionValueID" type="xs:int" minOccurs="0" />
              <xs:element name="ReportSubscriptionUserID" type="xs:int" />
              <xs:element name="ReportSubscriptionEmail">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ReportSubscriptionOnlyNonEmpty" type="xs:boolean" />
              <xs:element name="ReportSubscriptionLastPostDate" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ReportSubscriptionNextPostDate" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ReportSubscriptionSiteID" type="xs:int" />
              <xs:element name="ReportSubscriptionSettings" minOccurs="0">
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
      <xs:selector xpath=".//Reporting_ReportSubscription" />
      <xs:field xpath="ReportSubscriptionID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ReportSubscriptionID" fieldcaption="ReportSubscriptionID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="574705ec-03f4-43a3-8709-6d17f62bb3e7"><settings><controlname>labelcontrol</controlname></settings></field><field column="ReportSubscriptionReportID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="befd7ffb-9d0f-4f28-a2b9-0acb3aa266ee" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ReportSubscriptionGraphID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6698e2c5-2062-49ca-9e52-b308a21dd7a1" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ReportSubscriptionTableID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="14e25fe7-6af6-4394-85ab-c24523220188" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ReportSubscriptionValueID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="007a1369-0b9c-4c01-b5a4-0b6f0ff894ee" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ReportSubscriptionUserID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e75846f1-3c10-4e82-bd95-052546a3a818" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ReportSubscriptionEmail" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="400" publicfield="false" guid="e8bb5d01-4ab2-4ea1-8132-f703ba803015" visibility="none"><settings><controlname>allowedextensionsselector</controlname></settings></field><field column="ReportSubscriptionInterval" fieldcaption="ReportSubscriptionID" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="1000" publicfield="false" guid="25a67148-b2a1-47bf-a94d-30f16977b4a7" visibility="none"><settings><controlname>textareacontrol</controlname><IsTextArea>True</IsTextArea></settings></field><field column="ReportSubscriptionCondition" fieldcaption="ReportSubscriptionID" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="33c2eac8-93a3-4311-9f09-273c3f34e830" visibility="none"><settings><controlname>textareacontrol</controlname><IsTextArea>True</IsTextArea></settings></field><field column="ReportSubscriptionSubject" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="32a6a0a9-d050-40f3-8aa0-8b83b30728dc" visibility="none"><settings><controlname>allowedextensionsselector</controlname></settings></field><field column="ReportSubscriptionLastPostDate" fieldcaption="ReportSubscriptionID" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="17eb6e23-fc7c-4249-aad1-0bf75f26d8c7" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ReportSubscriptionNextPostDate" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7be53a97-19e9-4f34-941b-4247a1794a8c" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ReportSubscriptionOnlyNonEmpty" fieldcaption="ReportSubscriptionID" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="585c04c3-ebe9-451d-9abe-80fe03a73748" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ReportSubscriptionEnabled" fieldcaption="ReportSubscriptionID" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a59ca5c9-5c7d-4be3-b7a7-217a2feaa462" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ReportSubscriptionSiteID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e6c61e71-8d0c-480c-aabc-de8d303eb882" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ReportSubscriptionParameters" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a6632f48-9e90-4507-9633-c02aff816506" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="ReportSubscriptionGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8f598ee6-0904-4c89-b48f-5aad7e7bbfa7" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ReportSubscriptionLastModified" fieldcaption="ReportSubscriptionID" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="30952b48-2033-4cba-b717-83b2cace18d8" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ReportSubscriptionSettings" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="808ec2ad-5eb5-4cb3-b770-6e3084c974fc" visibility="none"><settings><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><MediaDialogConfiguration>True</MediaDialogConfiguration><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><controlname>htmlareacontrol</controlname></settings></field></form>', N'', N'', N'', N'Reporting_ReportSubscription', N'', N'', NULL, N'', 0, 0, 0, N'', 0, N'', NULL, '20120508 10:54:14', 'd3e82d36-6f27-41f7-abcf-1333c30cd8e1', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3140, N'Chat - Transformations', N'Chat.Transformations', 0, 1, 0, N'', N'<form></form>', N'', N'', N'', N'', N'', N'', N'', N'', 0, 1, 0, N'', 0, N'', NULL, '20120730 12:03:24', 'bf7ea731-502b-43b5-ac6f-153551edb84d', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3141, N'Chat message', N'Chat.Message', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Chat_Message">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ChatMessageID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ChatMessageCreatedWhen" type="xs:dateTime" />
              <xs:element name="ChatMessageIPAddress">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ChatMessageUserID" type="xs:int" minOccurs="0" />
              <xs:element name="ChatMessageRoomID" type="xs:int" />
              <xs:element name="ChatMessageRejected" type="xs:boolean" />
              <xs:element name="ChatMessageLastModified" type="xs:dateTime" />
              <xs:element name="ChatMessageText">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ChatMessageSystemMessageType" type="xs:int" />
              <xs:element name="ChatMessageRecipientID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Chat_Message" />
      <xs:field xpath="ChatMessageID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ChatMessageID" fieldcaption="ChatMessageID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="fdb12d90-5851-4f73-a888-de325bc99c4b" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ChatMessageText" fieldcaption="Message" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="31e66ad4-980f-444d-95dd-83517889e062" visibility="none"><settings><ShowItalic>True</ShowItalic><ShowColor>True</ShowColor><ShowQuote>True</ShowQuote><ShowImage>True</ShowImage><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><ShowUnderline>True</ShowUnderline><ShowCode>True</ShowCode><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><ShowUrl>True</ShowUrl><ShowBold>True</ShowBold><ShowStrike>True</ShowStrike><Autoresize_Hashtable>True</Autoresize_Hashtable><MediaDialogConfiguration>True</MediaDialogConfiguration><UsePromptDialog>True</UsePromptDialog></settings></field><field column="ChatMessageCreatedWhen" fieldcaption="ChatMessageID" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="46a06855-8f8f-4d09-821b-e8f4a74a58e8" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ChatMessageIPAddress" fieldcaption="Message" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e3b6f42a-da82-4f49-b7ad-6e2d2d4375a2" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="ChatMessageUserID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e6dd84b0-8d4c-4c92-85f1-9084f2e71f04" visibility="none" /><field column="ChatMessageRecipientID" fieldcaption="Recipient ID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="30c842c3-a708-4e41-95bb-1dab4fb67264" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatMessageRoomID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="42a7af0e-9519-443b-934a-eae051741d5f" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatMessageRejected" fieldcaption="Is rejected" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d4e326cc-7115-4e54-a4c9-3254703716e7" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ChatMessageLastModified" fieldcaption="Is rejected" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b76ca367-ad17-456e-ae22-815b40e6b319" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ChatMessageSystemMessageType" defaultvalue="0" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5035d38b-8661-4d13-acc3-f7dc76525e3d" visibility="none"><settings><controlname>documentstylesheetselector</controlname></settings></field></form>', N'', N'', N'', N'Chat_Message', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120725 18:11:55', 'd9d8ea84-9f83-4a32-9caf-9b5aa79fd887', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3142, N'Chat notification', N'Chat.Notification', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Chat_Notification">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ChatNotificationID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ChatNotificationSenderID" type="xs:int" />
              <xs:element name="ChatNotificationReceiverID" type="xs:int" />
              <xs:element name="ChatNotificationIsRead" type="xs:boolean" />
              <xs:element name="ChatNotificationType" type="xs:int" />
              <xs:element name="ChatNotificationRoomID" type="xs:int" minOccurs="0" />
              <xs:element name="ChatNotificationSendDateTime" type="xs:dateTime" />
              <xs:element name="ChatNotificationReadDateTime" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ChatNotificationSiteID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Chat_Notification" />
      <xs:field xpath="ChatNotificationID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ChatNotificationID" fieldcaption="ChatNotificationID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="190d47b5-a911-4085-b859-60174359c17b"><settings><controlname>labelcontrol</controlname></settings></field><field column="ChatNotificationSenderID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bbe7b805-0a44-4cb0-8af3-4fdec0101d9d" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatNotificationReceiverID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5645ecde-de38-4557-8371-c5ead4fd67ee" visibility="none"><settings><controlname>checkboxlistcontrol</controlname></settings></field><field column="ChatNotificationIsRead" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="96a8df64-6212-44f1-8013-5247adfc0f42" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ChatNotificationType" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3ddfd1db-7b30-492e-8b10-d22d6d212644" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatNotificationRoomID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3cb410db-7df6-42f8-a9bd-c6019e166609" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatNotificationSendDateTime" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="20fe9ac6-e7e8-4858-8aef-6b605a018068" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatNotificationReadDateTime" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="dae086d0-1de4-4d16-9964-d7cf795a4568" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatNotificationSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="20c273fd-898f-4518-a75b-9d09595c0c51" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Chat_Notification', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120731 11:50:43', 'bf8db5a0-b0f0-46b4-a942-b8be64449310', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3143, N'Chat online support', N'Chat.OnlineSupport', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Chat_OnlineSupport">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ChatOnlineSupportID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ChatOnlineSupportChatUserID" type="xs:int" />
              <xs:element name="ChatOnlineSupportLastChecking" type="xs:dateTime" />
              <xs:element name="ChatOnlineSupportToken" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ChatOnlineSupportSiteID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Chat_OnlineSupport" />
      <xs:field xpath="ChatOnlineSupportID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ChatOnlineSupportID" fieldcaption="ChatOnlineSupportID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="5bd5917e-c736-4512-90cc-8fd1d3a985a9" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ChatOnlineSupportChatUserID" fieldcaption="ChatOnlineSupportChatUserID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e72aa68e-3dd5-48ee-9433-7cfe5b54b744" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ChatOnlineSupportLastChecking" fieldcaption="ChatOnlineSupportLastChecking" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c55f0bfa-7fbc-4ebe-93be-96e998d44199" visibility="none"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ChatOnlineSupportSiteID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e0793af7-eb96-4288-bade-8fa54a5c41e3" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field><field column="ChatOnlineSupportToken" fieldcaption="ChatOnlineSupportID" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="63fd8d81-c3d9-4a9c-b64f-b6e946cf8564" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'Chat_OnlineSupport', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120604 15:47:06', '2331646a-0399-458e-82e9-09909030c9b2', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3144, N'Chat online user', N'Chat.OnlineUser', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Chat_OnlineUser">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ChatOnlineUserID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ChatOnlineUserSiteID" type="xs:int" />
              <xs:element name="ChatOnlineUserLastChecking" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ChatOnlineUserChatUserID" type="xs:int" />
              <xs:element name="ChatOnlineUserJoinTime" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ChatOnlineUserLeaveTime" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ChatOnlineUserToken" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ChatOnlineUserIsHidden" type="xs:boolean" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Chat_OnlineUser" />
      <xs:field xpath="ChatOnlineUserID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ChatOnlineUserID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="f84a6552-a774-4ebe-83cc-bbc8560da0a9" visibility="none" /><field column="ChatOnlineUserChatUserID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1ef50fb3-9681-4b54-88ca-5cfb789c4a1b" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatOnlineUserSiteID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="58b86894-5462-4b32-aae3-c244034eae2a" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatOnlineUserLastChecking" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="899128c8-e596-44ad-9877-0079e7ab1197" visibility="none" /><field column="ChatOnlineUserJoinTime" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3afdec74-469f-4467-998f-2f06463fc62b" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatOnlineUserLeaveTime" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1ee9332f-b775-4e30-be11-8d5faf233e61" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatOnlineUserToken" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="d7a61daf-9383-4948-8e1b-203db7f4924b" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatOnlineUserIsHidden" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a9c20358-c154-457e-af85-f65ebc1489a5" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Chat_OnlineUser', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:19', 'b4edb023-5f1a-4490-a93d-6756d14bf0f5', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3145, N'Chat popup window settings', N'Chat.PopupWindowSettings', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Chat_PopupWindowSettings">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ChatPopupWindowSettingsID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="MessageTransformationName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="255" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ErrorTransformationName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="255" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ErrorClearTransformationName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="255" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserTransformationName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="255" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ChatPopupWindowSettingsHashCode" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Chat_PopupWindowSettings" />
      <xs:field xpath="ChatPopupWindowSettingsID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ChatPopupWindowSettingsID" fieldcaption="ChatPopupWindowSettingsID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="c191a407-8b24-4199-bb53-feaddb46145f" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ChatPopupWindowSettingsHashCode" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c2bd15d2-2dfb-4772-bae9-bdff052e2f78" visibility="none" /><field column="MessageTransformationName" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="255" publicfield="false" guid="e501ab92-423c-4c51-b425-5aea16319c66" visibility="none"><settings><controlname>checkboxlistcontrol</controlname></settings></field><field column="ErrorTransformationName" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="255" publicfield="false" guid="53598069-f8f0-47bc-800f-5a8d6cc11228" visibility="none"><settings><controlname>checkboxlistcontrol</controlname></settings></field><field column="ErrorClearTransformationName" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="255" publicfield="false" guid="42f3cca9-6d31-406d-b798-f4daab8342e6" visibility="none"><settings><controlname>checkboxlistcontrol</controlname></settings></field><field column="UserTransformationName" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="255" publicfield="false" guid="8979ed5c-2b35-4ea0-9b0b-9ad76731d559" visibility="none"><settings><controlname>checkboxlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'Chat_PopupWindowSettings', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:19', '9a96d603-1afa-4796-8d14-10e3aa4bc7c8', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3146, N'Chat room', N'Chat.Room', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Chat_Room">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ChatRoomID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ChatRoomName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ChatRoomDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ChatRoomSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="ChatRoomEnabled" type="xs:boolean" />
              <xs:element name="ChatRoomPrivate" type="xs:boolean" />
              <xs:element name="ChatRoomAllowAnonym" type="xs:boolean" />
              <xs:element name="ChatRoomCreatedWhen" type="xs:dateTime" />
              <xs:element name="ChatRoomPassword" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ChatRoomCreatedByChatUserID" type="xs:int" minOccurs="0" />
              <xs:element name="ChatRoomIsSupport" type="xs:boolean" />
              <xs:element name="ChatRoomIsOneToOne" type="xs:boolean" />
              <xs:element name="ChatRoomDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="500" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ChatRoomLastModification" type="xs:dateTime" />
              <xs:element name="ChatRoomScheduledToDelete" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ChatRoomPrivateStateLastModification" type="xs:dateTime" />
              <xs:element name="ChatRoomGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Chat_Room" />
      <xs:field xpath="ChatRoomID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ChatRoomID" fieldcaption="ChatRoomID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="12f1a8d4-7878-44e4-bbc7-2664a954b9bc" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ChatRoomDisplayName" fieldcaption="{$chat.displayname$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="61c74e59-1dc6-4778-92b6-46381b069882" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>True</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ChatRoomName" fieldcaption="{$chat.name$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="bf7d7b22-f3e6-4a1a-9972-5afb2b6a1d75" visibility="none"><settings><controlname>codename</controlname></settings></field><field column="ChatRoomEnabled" fieldcaption="{$general.enabled$}" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="21643321-3dba-4ee8-8e62-05c8b32e13a9" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ChatRoomDescription" fieldcaption="{$chat.description$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" columnsize="500" fielddescription="Description of the chat room." publicfield="false" guid="c59456d6-b306-4a82-9589-196ab4a49c36" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ChatRoomCreatedByChatUserID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f3c91ab6-cc4f-4e51-a9d3-263d323537e6" visibility="none" /><field column="ChatRoomCreatedWhen" fieldcaption="Created" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d77f8421-f34f-4906-88d9-665ad06e4358" visibility="none"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="ChatRoomPrivate" fieldcaption="{$chat.private$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4a0130f2-8286-4a49-9bfd-32e0a8b3ff21" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ChatRoomSiteID" fieldcaption="Site" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f1539f5a-c214-407e-a19a-764ac516f30a" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ChatRoomPassword" fieldcaption="{$chat.password$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="f2965544-9a56-473f-8b0e-7d1780fbf5c1" visibility="none" visiblemacro="{%EditedObject == null%}"><settings><controlname>passwordconfirmator</controlname><showstrength>False</showstrength></settings></field><field column="ChatRoomAllowAnonym" fieldcaption="{$chat.allowanonym$}" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="45213582-8a65-48f2-a864-341760bd47f9" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ChatRoomIsSupport" fieldcaption="{$chat.issupported$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c97afc08-9122-4fa6-b0eb-816fa62902f5" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ChatRoomIsOneToOne" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8be6d31a-0fe8-4ace-951b-56dc505a5c67" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ChatRoomLastModification" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d5e2a759-7fc7-4ddb-a08e-11c58e57922d" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatRoomScheduledToDelete" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="828a1cb9-48cb-4a05-b02f-2d226105876c" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatRoomPrivateStateLastModification" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="88ba68d6-25aa-4965-9c27-e28ea2e424fb" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatRoomGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8477f881-c980-4c81-93bd-eead68b38c8e" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'Chat_Room', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120910 15:27:49', 'b9ea7973-e2ba-465e-a56e-15e9614b4251', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3148, N'Chat room user', N'Chat.RoomUser', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Chat_RoomUser">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ChatRoomUserID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ChatRoomUserRoomID" type="xs:int" />
              <xs:element name="ChatRoomUserChatUserID" type="xs:int" />
              <xs:element name="ChatRoomUserLastChecking" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ChatRoomUserKickExpiration" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ChatRoomUserJoinTime" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ChatRoomUserLeaveTime" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ChatRoomUserAdminLevel" type="xs:int" />
              <xs:element name="ChatRoomUserLastModification" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Chat_RoomUser" />
      <xs:field xpath="ChatRoomUserID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ChatRoomUserID" fieldcaption="ChatRoomUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="3c0146b5-ec7b-4f4b-8b4c-55ecaba1ba3f"><settings><controlname>labelcontrol</controlname></settings></field><field column="ChatRoomUserRoomID" fieldcaption="{$chat.room$}" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1219eacf-496a-419c-b4b0-cbf168fb8ec4" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ChatRoomUserChatUserID" fieldcaption="{$chat.chatuser$}" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="17392243-ade1-453c-b338-c327987b6d04" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ChatRoomUserLastChecking" fieldcaption="{$chat.lastchecking$}" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="23277efc-395a-48e9-a648-9b4222ef4565" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ChatRoomUserKickExpiration" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c12fa30d-d147-447a-8e30-ab44353b438c" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatRoomUserJoinTime" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="182c0887-9d43-43d1-b32c-64d58efd8b33" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatRoomUserLeaveTime" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="370afc20-084d-420a-9caa-df1a72463b5a" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatRoomUserAdminLevel" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e94faf0f-994f-46f0-842a-04e76adf2da3" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatRoomUserLastModification" fieldcaption="ChatRoomUserID" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="43320a18-cbe6-41ab-add0-e7f417d8c5f4" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'Chat_RoomUser', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120814 12:46:57', '3934275a-9e59-4d72-84c2-7206eeeee3dd', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3149, N'Chat support canned response', N'Chat.SupportCannedResponse', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Chat_SupportCannedResponse">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ChatSupportCannedResponseID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ChatSupportCannedResponseChatUserID" type="xs:int" minOccurs="0" />
              <xs:element name="ChatSupportCannedResponseText">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="500" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ChatSupportCannedResponseTagName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ChatSupportCannedResponseSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="ChatSupportCannedResponseName">
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
      <xs:selector xpath=".//Chat_SupportCannedResponse" />
      <xs:field xpath="ChatSupportCannedResponseID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ChatSupportCannedResponseID" fieldcaption="ChatSupportCannedResponseID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="00276265-8810-4094-83be-b3a877352cd3" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ChatSupportCannedResponseSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="beb34087-c44f-45e2-b424-ad0869156f4b" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ChatSupportCannedResponseChatUserID" fieldcaption="Canned response text" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="180d13ff-7a1c-45f7-8fa8-0e8e44c78816" visibility="none"><settings><controlname>textareacontrol</controlname><IsTextArea>True</IsTextArea></settings></field><field column="ChatSupportCannedResponseName" fieldcaption="{$general.codename$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="92e0a097-3a31-4ee9-a018-a9eab9623218" visibility="none"><settings><controlname>codename</controlname></settings></field><field column="ChatSupportCannedResponseTagName" fieldcaption="{$chat.cannedresponse.tagname$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="50" publicfield="false" guid="6a685628-71d0-4c54-a270-469263b99624" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ChatSupportCannedResponseText" fieldcaption="{$chat.cannedresponse.text$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="500" publicfield="false" guid="724e4a32-a472-433c-84ac-af025d0cf194" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'Chat_SupportCannedResponse', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120626 14:56:44', '9382769c-5c20-425b-b463-040832c88290', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3151, N'Chat support taken room', N'Chat.SupportTakenRoom', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Chat_SupportTakenRoom">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ChatSupportTakenRoomID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ChatSupportTakenRoomChatUserID" type="xs:int" minOccurs="0" />
              <xs:element name="ChatSupportTakenRoomRoomID" type="xs:int" />
              <xs:element name="ChatSupportTakenRoomResolvedDateTime" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ChatSupportTakenRoomLastModification" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Chat_SupportTakenRoom" />
      <xs:field xpath="ChatSupportTakenRoomID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ChatSupportTakenRoomID" fieldcaption="ChatSupportTakenRoomID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="ca3e3bb2-98cb-473c-957b-40ae9447390f" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ChatSupportTakenRoomRoomID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2cedcd2d-d20c-44e3-9afb-76d798d8e559" visibility="none" /><field column="ChatSupportTakenRoomChatUserID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e8a7517c-12f7-4cf1-8c67-df1f26dff3ec" visibility="none" /><field column="ChatSupportTakenRoomLastModification" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5638e4bb-c55d-413e-b455-971ec5b71e46" visibility="none"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ChatSupportTakenRoomResolvedDateTime" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f6533f9f-fa11-4a7c-8cf5-144a26bef5aa" visibility="none"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'Chat_SupportTakenRoom', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120816 15:49:37', 'd875f0a8-e3a4-4ae5-954d-d754c3e92524', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3152, N'Chat user', N'Chat.User', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Chat_User">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ChatUserID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ChatUserUserID" type="xs:int" minOccurs="0" />
              <xs:element name="ChatUserNickname">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ChatUserLastModification" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Chat_User" />
      <xs:field xpath="ChatUserID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ChatUserID" fieldcaption="ChatUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="ae19564e-f93f-4735-8593-e4a472c1cadf"><settings><controlname>labelcontrol</controlname></settings></field><field column="ChatUserUserID" fieldcaption="ChatUserID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f9d362cc-c691-455a-a3de-25cf47eb78bf" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ChatUserNickname" fieldcaption="Nickname" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="50" publicfield="false" guid="288370d5-402f-4162-a460-e4ef6d953dc7" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ChatUserLastModification" fieldcaption="ChatUserID" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bc85678f-95cc-4966-85ce-0586e10eac72" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'Chat_User', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120801 18:13:46', 'd81c1b7a-634a-4ba1-9708-c3aa204ab8c1', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3153, N'Device profile', N'CMS.DeviceProfile', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_DeviceProfile">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ProfileID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ProfileName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ProfileDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ProfileOrder" type="xs:int" minOccurs="0" />
              <xs:element name="ProfileMacro" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ProfileUserAgents" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ProfileDevices" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ProfileEnabled" type="xs:boolean" />
              <xs:element name="ProfilePreviewWidth" type="xs:int" minOccurs="0" />
              <xs:element name="ProfileIconGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="ProfilePreviewHeight" type="xs:int" minOccurs="0" />
              <xs:element name="ProfileGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="ProfileLastModified" type="xs:dateTime" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_DeviceProfile" />
      <xs:field xpath="ProfileID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ProfileID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="2974d45e-d5ca-4c86-ae55-2c3ef1f29bb9" visibility="none" /><field column="ProfileDisplayName" fieldcaption="Display name" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="370977a3-71ed-45bd-ab53-e5ac42148dc7" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ProfileName" fieldcaption="Name" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="12125419-dd8d-428e-a3ec-cf4a299c18fa" visibility="none"><settings><controlname>codename</controlname></settings></field><field column="ProfilePreviewWidth" fieldcaption="Preview width (in pixels)" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" minnumericvalue="0" publicfield="false" guid="ed424831-9743-474e-8bcd-859969e3a44f" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterType>0</FilterType><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><Trim>False</Trim></settings></field><field column="ProfilePreviewHeight" fieldcaption="Preview height (in pixels)" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" minnumericvalue="0" publicfield="false" guid="b9dc12b8-f562-4624-bc1c-04a4521da64c" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterType>0</FilterType><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><Trim>False</Trim></settings></field><field column="ProfileEnabled" fieldcaption="{$general.enabled$}" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1437e098-d7f7-4cda-8f50-2fa6cdba3de0" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ProfileIconGUID" fieldcaption="Icon" visible="true" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fc9a9059-84c2-461e-ad0c-4f478d50984d" visibility="none"><settings><controlname>metafileuploadercontrol</controlname></settings></field><field column="ProfileDevices" fieldcaption="Devices" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" inputcontrolstyle="margin-top: 25px;" publicfield="false" spellcheck="false" controlcssclass="AttachmentsList" guid="c2ade3d1-7779-4537-b808-f027fdf7e125" visibility="none"><settings><AddGlobalObjectNamePrefix>False</AddGlobalObjectNamePrefix><AllowAll>False</AllowAll><AddGlobalObjectSuffix>False</AddGlobalObjectSuffix><LocalizeItems>True</LocalizeItems><MaxDisplayedItems>25</MaxDisplayedItems><SelectionMode>2</SelectionMode><ValuesSeparator>;</ValuesSeparator><ObjectType>CMS.Device</ObjectType><AllowDefault>False</AllowDefault><AllowEditTextBox>False</AllowEditTextBox><ReturnColumnName>DeviceName</ReturnColumnName><MaxDisplayedTotalItems>50</MaxDisplayedTotalItems><DialogWindowName>SelectionDialog</DialogWindowName><AllowEmpty>True</AllowEmpty><RemoveMultipleCommas>False</RemoveMultipleCommas><ItemsPerPage>25</ItemsPerPage><DialogWindowHeight>590</DialogWindowHeight><controlname>uni_selector</controlname><DialogWindowWidth>668</DialogWindowWidth><GlobalObjectSuffix>(global)</GlobalObjectSuffix></settings></field><field column="ProfileUserAgents" fieldcaption="User agents" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" inputcontrolstyle="width: 636px;" publicfield="false" guid="2ffa161e-0d46-4222-9695-493713073629" visibility="none"><settings><Wrap>False</Wrap><WatermarkText>Enter one user agent per line. </WatermarkText><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><IsTextArea>True</IsTextArea><controlname>textareacontrol</controlname></settings></field><field column="ProfileMacro" fieldcaption="Macro" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8e0c55ef-cb5e-421b-93b0-3ba7f27448eb" visibility="none"><settings><DisplayRuleType>0</DisplayRuleType><controlname>conditionbuilder</controlname><ResolverName>DeviceProfilesResolver</ResolverName><MaxWidth>600</MaxWidth><ShowAutoCompletionAbove>False</ShowAutoCompletionAbove></settings></field><field column="ProfileOrder" fieldcaption="Name" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9d9e6cb4-33b2-4b98-988e-3fb3016bc3b9" visibility="none"><settings><controlname>codename</controlname></settings></field><field column="ProfileGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3d78a2d7-bfbf-4231-8e92-b98fda8be7aa" visibility="none" /><field column="ProfileLastModified" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d24b5469-fb63-4760-a012-660635198ff5" visibility="none" /></form>', N'', N'', N'', N'CMS_DeviceProfile', N'', N'', NULL, N'', 0, 0, 0, N'', 0, N'', NULL, '20120813 18:57:01', '93231cf4-db7f-4d8a-be89-8210d75ce52a', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3154, N'Object settings', N'CMS.ObjectSettings', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_ObjectSettings">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ObjectSettingsID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ObjectTags" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ObjectCheckedOutByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="ObjectCheckedOutWhen" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ObjectCheckedOutVersionHistoryID" type="xs:int" minOccurs="0" />
              <xs:element name="ObjectWorkflowStepID" type="xs:int" minOccurs="0" />
              <xs:element name="ObjectPublishedVersionHistoryID" type="xs:int" minOccurs="0" />
              <xs:element name="ObjectSettingsObjectID" type="xs:int" />
              <xs:element name="ObjectSettingsObjectType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ObjectComments" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ObjectWorkflowSendEmails" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_ObjectSettings" />
      <xs:field xpath="ObjectSettingsID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ObjectSettingsID" fieldcaption="ObjectSettingsID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="46490e57-a06e-4d20-b99d-4ae71867d26a"><settings><controlname>labelcontrol</controlname></settings></field><field column="ObjectSettingsObjectID" fieldcaption="ObjectSettingsID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="17ff6fea-06c9-4780-8044-f7943e11c0d7" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ObjectSettingsObjectType" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="bf520e72-181f-420b-b512-d9164e4f53fc" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ObjectTags" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5931fbff-7d9b-41c5-8db5-07661c39be62" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="ObjectComments" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0df9e68d-b04f-461e-8efd-4215c1059870" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="ObjectCheckedOutByUserID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a0a0c4fa-6477-4e71-ab66-3a42cfba0990" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ObjectCheckedOutWhen" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4ae6e55d-3df1-4d5f-bd7f-53f05b81dbb0" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ObjectCheckedOutVersionHistoryID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ee3efd71-0994-4f82-a64f-e5f1fe1380a3" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ObjectPublishedVersionHistoryID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="49faa080-0165-48ee-8a75-22417ff16933" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ObjectWorkflowStepID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="74cdfc6c-29fb-48a4-9b20-645774cb7ead" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ObjectWorkflowSendEmails" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8cbf7d32-3210-4483-a1d2-3e829dd7f277" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_ObjectSettings', N'', N'', NULL, N'', 0, 0, 0, N'', 0, N'', NULL, '20120504 09:15:33', 'c7fd5320-9b31-4b2b-8d8c-7ba1c333af9c', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3155, N'Chat initiated chat request', N'Chat.InitiatedChatRequest', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Chat_InitiatedChatRequest">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="InitiatedChatRequestID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="InitiatedChatRequestUserID" type="xs:int" minOccurs="0" />
              <xs:element name="InitiatedChatRequestContactID" type="xs:int" minOccurs="0" />
              <xs:element name="InitiatedChatRequestRoomID" type="xs:int" />
              <xs:element name="InitiatedChatRequestState" type="xs:int" />
              <xs:element name="InitiatedChatRequestInitiatorName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="InitiatedChatRequestInitiatorChatUserID" type="xs:int" />
              <xs:element name="InitiatedChatRequestLastModification" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Chat_InitiatedChatRequest" />
      <xs:field xpath="InitiatedChatRequestID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="InitiatedChatRequestID" fieldcaption="InitiatedChatRequestID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="d2e8e4b6-df4d-4e4e-b0e2-bae61332c3a0"><settings><controlname>labelcontrol</controlname></settings></field><field column="InitiatedChatRequestUserID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d311eb3d-f7d0-4121-b1b2-be39845b54a2" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="InitiatedChatRequestContactID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="805fe156-071e-4302-9a25-6691357bafee" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="InitiatedChatRequestRoomID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bc35ce80-8201-44ec-b13d-561692367502" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="InitiatedChatRequestState" defaultvalue="1" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="dbab5d44-ce4f-4f04-bb74-8453764425ae" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="InitiatedChatRequestInitiatorName" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="480d86d3-ea58-4f6f-b8c2-10779752d4a7" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="InitiatedChatRequestInitiatorChatUserID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e076a977-09db-4a1c-b3f1-e30c2eb1e78e" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="InitiatedChatRequestLastModification" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a38706b0-8f5a-4e54-9549-820a4328d765" visibility="none"><settings><controlname>datetimefilter</controlname></settings></field></form>', N'', N'', N'', N'Chat_InitiatedChatRequest', N'', N'', NULL, N'', 0, 0, 0, N'', 0, N'', NULL, '20120725 18:11:14', '7bb6e013-df57-4931-befc-979dd52b0a5a', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3338, N'Template device layout', N'CMS.TemplateDeviceLayout', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_TemplateDeviceLayout">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TemplateDeviceLayoutID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="PageTemplateID" type="xs:int" />
              <xs:element name="ProfileID" type="xs:int" />
              <xs:element name="LayoutID" type="xs:int" minOccurs="0" />
              <xs:element name="LayoutCode" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LayoutType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LayoutCSS" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LayoutLastModified" type="xs:dateTime" />
              <xs:element name="LayoutGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="LayoutVersionGUID" minOccurs="0">
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
      <xs:selector xpath=".//CMS_TemplateDeviceLayout" />
      <xs:field xpath="TemplateDeviceLayoutID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TemplateDeviceLayoutID" fieldcaption="TemplateDeviceLayoutID" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="743d3238-c14f-4c24-a47e-17ae971fb7e8"><settings><controlname>labelcontrol</controlname></settings></field><field column="PageTemplateID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="83272253-9658-4928-aa37-95ba2611609d" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ProfileID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c27d563c-f413-41d9-91a9-aad9183b3578" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="LayoutID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="489feb0e-5ac4-4ea6-898c-524818aaca26" visibility="none" /><field column="LayoutCode" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="91b2664f-f162-44a0-986e-559cc1907c41" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>htmlareacontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable><MediaDialogConfiguration>True</MediaDialogConfiguration></settings></field><field column="LayoutType" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="35c66eb7-c90f-49fb-8b24-715432eb3e96" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="LayoutCSS" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fcca6deb-0d35-4c30-bd9f-c82d885d6b83" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>htmlareacontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable><MediaDialogConfiguration>True</MediaDialogConfiguration></settings></field><field column="LayoutGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="13a0903b-ccc2-4bc9-aaa2-65a5d8b9f663" visibility="none"><settings><controlname>calendarcontrol</controlname></settings></field><field column="LayoutLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e12e8607-14dc-4438-86c1-d81f4bc4655e" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>calendarcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="LayoutVersionGUID" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="f3f526fa-3c84-4b00-bd08-982a0793bac2" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field></form>', N'~/CMSModules/PortalEngine/UI/PageTemplates/DeviceLayout_Frameset.aspx?devicelayoutid={%EditedObject.ID%}&templateid={%EditedObject.ParentID%}&aliaspath=/&editonlycode=1&deviceactions=0', N'', N'', N'CMS_TemplateDeviceLayout', N'', N'', NULL, N'', 0, 0, 0, N'', 0, N'', NULL, '20120801 07:37:37', 'e3d31c59-de49-4995-b6b6-e9ead8034bef', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3344, N'Automation history', N'CMS.AutomationHistory', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_AutomationHistory">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="HistoryID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="HistoryStepID" type="xs:int" minOccurs="0" />
              <xs:element name="HistoryStepName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="440" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="HistoryStepDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="HistoryStepType" type="xs:int" minOccurs="0" />
              <xs:element name="HistoryTargetStepID" type="xs:int" minOccurs="0" />
              <xs:element name="HistoryTargetStepName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="440" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="HistoryTargetStepDisplayName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="HistoryTargetStepType" type="xs:int" minOccurs="0" />
              <xs:element name="HistoryApprovedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="HistoryApprovedWhen" type="xs:dateTime" minOccurs="0" />
              <xs:element name="HistoryComment" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="HistoryTransitionType" type="xs:int" minOccurs="0" />
              <xs:element name="HistoryWorkflowID" type="xs:int" />
              <xs:element name="HistoryRejected" type="xs:boolean" minOccurs="0" />
              <xs:element name="HistoryWasRejected" type="xs:boolean" />
              <xs:element name="HistoryStateID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_AutomationHistory" />
      <xs:field xpath="HistoryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="HistoryID" fieldcaption="HistoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="e59b22d4-86f4-4d50-be6a-17620db6526f"><settings><controlname>labelcontrol</controlname></settings></field><field column="HistoryStepID" fieldcaption="HistoryStepID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b944d1a7-2ee4-42c4-adad-43154e2e77c1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HistoryStepName" fieldcaption="HistoryStepName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="440" publicfield="false" guid="6e24f77e-5d77-4d36-8eef-72d9569fcc57"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HistoryStepDisplayName" fieldcaption="HistoryStepDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="1f934b2f-559d-4bc2-87d1-8b2cfac50e2d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HistoryStepType" fieldcaption="HistoryStepType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="bef2dc1f-edd1-4a51-a5ef-96b95cde9ff6"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HistoryTargetStepID" fieldcaption="HistoryTargetStepID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="80819a33-b0e2-4782-9407-96da45313350"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HistoryTargetStepName" fieldcaption="HistoryTargetStepName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="440" publicfield="false" guid="03e59c6d-c177-46eb-a3d5-97d725fc525a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HistoryTargetStepDisplayName" fieldcaption="HistoryTargetStepDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="431c65e1-d3c2-4d4c-b421-6990a0bfb476"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HistoryTargetStepType" fieldcaption="HistoryTargetStepType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6d1ab4c0-0a2d-4b7b-8b78-75d89f7c8458"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HistoryApprovedByUserID" fieldcaption="HistoryApprovedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0c4fa387-c012-453c-accd-d0e8fdc7b633"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HistoryApprovedWhen" fieldcaption="HistoryApprovedWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cdbeaa8d-95a9-45ba-92c7-ce89b2dacea9"><settings><controlname>calendarcontrol</controlname></settings></field><field column="HistoryComment" fieldcaption="HistoryComment" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c50778c9-d128-4834-8c6f-52649331b5ce"><settings><controlname>textareacontrol</controlname></settings></field><field column="HistoryTransitionType" fieldcaption="HistoryTransitionType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4e669d8d-1ccf-41be-80f9-c7684bb61a72"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HistoryWorkflowID" fieldcaption="HistoryWorkflowID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="795fec40-411f-4dc0-b7a0-49933b93b2d3"><settings><controlname>textboxcontrol</controlname></settings></field><field column="HistoryRejected" fieldcaption="HistoryRejected" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="96d4e5ef-b781-4c43-bcc7-e2ef9dc97ef9"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="HistoryWasRejected" fieldcaption="HistoryWasRejected" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="503545c0-fa3e-4bf8-b436-0be6cbb233ee"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="HistoryStateID" fieldcaption="HistoryStateID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d1ed2c7f-6f2e-42f3-9054-ddf9c9525e61"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_AutomationHistory', N'', N'', NULL, N'', 0, 0, 0, N'', 0, N'', NULL, '20120813 21:53:19', '2c6c5ab8-2a0e-41b1-b4b4-416f1e9106ec', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3345, N'Object workflow trigger', N'CMS.ObjectWorkflowTrigger', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_ObjectWorkflowTrigger">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TriggerID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TriggerGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="TriggerLastModified" type="xs:dateTime" />
              <xs:element name="TriggerType" type="xs:int" />
              <xs:element name="TriggerMacroCondition" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TriggerWorkflowID" type="xs:int" />
              <xs:element name="TriggerSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="TriggerDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TriggerObjectType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TriggerParameters" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TriggerTargetObjectType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TriggerTargetObjectID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_ObjectWorkflowTrigger" />
      <xs:field xpath="TriggerID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TriggerID" fieldcaption="TriggerID" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="a92b1092-2df2-401a-8071-e11109a9edd0"><settings><controlname>labelcontrol</controlname></settings></field><field column="TriggerGUID" fieldcaption="TriggerGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2ae41c83-46ad-4b52-9d46-c7d292f45589" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="TriggerLastModified" fieldcaption="TriggerLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9591a19f-604f-49c0-9e54-91dd1d441330" visibility="none"><settings><DisplayNow>True</DisplayNow><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="TriggerDisplayName" fieldcaption="Display name" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="c0987906-007f-4a8a-bc04-5b0d4c9b8148" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TriggerType" fieldcaption="{$ma.trigger.type$}" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bb361369-3be9-45a0-bcd5-a2c8d20d166b" visibility="none" hasdependingfields="true"><settings><controlname>dropdownlistcontrol</controlname><EditText>False</EditText><Options>0;{$ma.trigger.creation$}
1;{$ma.trigger.change$}
2;{$ma.trigger.activity$}
3;{$ma.trigger.scorechange$}</Options></settings></field><field column="TriggerMacroCondition" fieldcaption="{$ma.trigger.macrocondition$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5dcbf6b3-7716-4f70-8089-e78dc5acf49e" visibility="none"><settings><controlname>conditionbuilder</controlname><RuleCategoryNames>cms.onlinemarketing</RuleCategoryNames><DisplayRuleType>0</DisplayRuleType><ShowAutoCompletionAbove>False</ShowAutoCompletionAbove><MaxWidth>600</MaxWidth></settings></field><field column="TriggerObjectType" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="196371ef-8797-4529-8d93-9a9f45cd1733" visibility="none" /><field column="TriggerTargetObjectType" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="cdaf46cc-4182-48b1-a3dc-3402c8d4483b" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TriggerTargetObjectID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a86e6b3d-5038-4d58-a166-1aa045e6aea9" visibility="none" /><field column="TriggerParameters" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d5239d68-4497-41cf-9fc8-baa34e52a537" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>htmlareacontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable><MediaDialogConfiguration>True</MediaDialogConfiguration></settings></field><field column="TriggerWorkflowID" fieldcaption="TriggerWorkflowID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9d3821ef-fb86-4e6b-b3e2-30a6889dfab8" visibility="none"><settings><AddGlobalObjectNamePrefix>False</AddGlobalObjectNamePrefix><AllowAll>False</AllowAll><AddGlobalObjectSuffix>False</AddGlobalObjectSuffix><LocalizeItems>True</LocalizeItems><MaxDisplayedItems>25</MaxDisplayedItems><SelectionMode>0</SelectionMode><ValuesSeparator>;</ValuesSeparator><ObjectType>cms.workflow</ObjectType><AllowEditTextBox>False</AllowEditTextBox><ReturnColumnName>WorkflowID</ReturnColumnName><MaxDisplayedTotalItems>50</MaxDisplayedTotalItems><DialogWindowName>SelectionDialog</DialogWindowName><AllowEmpty>True</AllowEmpty><RemoveMultipleCommas>False</RemoveMultipleCommas><WhereCondition>WorkflowType = 3</WhereCondition><ItemsPerPage>25</ItemsPerPage><controlname>uni_selector</controlname><DialogWindowHeight>590</DialogWindowHeight><AllowDefault>False</AllowDefault><DialogWindowWidth>668</DialogWindowWidth><GlobalObjectSuffix>(global)</GlobalObjectSuffix></settings></field><field column="TriggerSiteID" fieldcaption="TriggerSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fe1269b7-5b0e-4a25-93bd-1a80c045c48d" visibility="none"><settings><controlname>selectsite</controlname><AllowAll>False</AllowAll><AllowGlobal>True</AllowGlobal><AllowEmpty>False</AllowEmpty></settings></field></form>', N'', N'', N'', N'CMS_ObjectWorkflowTrigger', N'', N'', NULL, N'', 0, 0, 0, N'', 0, N'', NULL, '20120814 12:00:17', '6c8003f7-4bc2-429e-88af-65c2b69db47c', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3352, N'Automation state', N'CMS.AutomationState', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_AutomationState">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="StateID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="StateStepID" type="xs:int" />
              <xs:element name="StateObjectID" type="xs:int" />
              <xs:element name="StateObjectType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StateActionStatus" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StateCreated" type="xs:dateTime" minOccurs="0" />
              <xs:element name="StateLastModified" type="xs:dateTime" minOccurs="0" />
              <xs:element name="StateWorkflowID" type="xs:int" />
              <xs:element name="StateStatus" type="xs:int" minOccurs="0" />
              <xs:element name="StateSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="StateUserID" type="xs:int" minOccurs="0" />
              <xs:element name="StateGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="StateCustomData" minOccurs="0">
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
      <xs:selector xpath=".//CMS_AutomationState" />
      <xs:field xpath="StateID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="StateID" fieldcaption="StateID" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="74a0e811-253c-452b-949c-8d1c72961da5"><settings><controlname>labelcontrol</controlname></settings></field><field column="StateStepID" fieldcaption="StateStepID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3f168f2d-6ea4-4157-8842-f686174908ed" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="StateObjectID" fieldcaption="StateObjectID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="09e5a829-6999-4239-9b28-a8eeb23e73ad" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="StateObjectType" fieldcaption="StateObjectType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="03e95edd-0b54-4a41-996a-168139ae40bd" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="StateWorkflowID" fieldcaption="StateWorkflowID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="42bf42b5-f375-4b84-98de-e64ca538c805" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="StateSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="30ae43c0-946e-4f40-88b8-4b16588b5cb3" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="StateActionStatus" fieldcaption="StateActionStatus" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="370bf448-3a57-4a49-ba72-80835a4de0ce" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="StateStatus" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="bad16c92-3f2b-4a06-9020-63e4b7a6dc7f" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="StateCreated" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="91087bbc-fbb1-4de8-8b27-1c9041f352d1" visibility="none" /><field column="StateUserID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b20142e0-d9d0-4972-a534-4c04c3b8ecb4" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="StateLastModified" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="290bebbb-07ee-401b-9d40-a27cc894eaff" visibility="none" /><field column="StateGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="16c85dd0-9fdc-4c9d-8bb3-0e46ed0611a4" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="StateCustomData" fieldcaption="StateCustomData" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="517fe349-5c77-4723-9828-d64239e631c2" visibility="none"><settings><Wrap>True</Wrap><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><IsTextArea>True</IsTextArea><controlname>textareacontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_AutomationState', N'', N'', NULL, N'', 0, 0, 0, N'', 0, N'', NULL, '20120817 16:33:08', 'a6163281-d51d-41bb-b76a-638035b95e05', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (3421, N'Device profile layout', N'CMS.DeviceProfileLayout', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_DeviceProfileLayout">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="DeviceProfileLayoutID" type="xs:int" />
              <xs:element name="DeviceProfileID" type="xs:int" />
              <xs:element name="SourceLayoutID" type="xs:int" />
              <xs:element name="TargetLayoutID" type="xs:int" />
              <xs:element name="DeviceProfileLayoutGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="DeviceProfileLayoutLastModified" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_DeviceProfileLayout" />
      <xs:field xpath="DeviceProfileLayoutID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="DeviceProfileLayoutID" fieldcaption="DeviceProfileLayoutID" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="288b3ddb-ffc9-417b-a379-ba17bf75f130"><settings><controlname>labelcontrol</controlname></settings></field><field column="DeviceProfileID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bd41b658-a5ce-49bd-9656-a3731edec120" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SourceLayoutID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="25ee77ac-6c00-4dbc-b452-25718eabf301" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TargetLayoutID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="92356e65-b7fa-4a43-9b84-10572f065957" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="DeviceProfileLayoutGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1fe477e7-f0e6-4042-9225-6e892109fc46" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="DeviceProfileLayoutLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="abdc3082-f8b8-4c00-afac-15b61c06eaa3" visibility="none"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_DeviceProfileLayout', N'', N'', NULL, N'', 0, 0, 0, N'', 0, N'', NULL, '20120725 15:33:28', '4f7ed42f-e120-47c3-8a0e-2b43ac6a48bd', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
SET IDENTITY_INSERT [CMS_Class] OFF
