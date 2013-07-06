SET IDENTITY_INSERT [CMS_Class] ON
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1148, N'Ecommerce - Department', N'ecommerce.department', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_Department">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="DepartmentID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="DepartmentName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DepartmentDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DepartmentDefaultTaxClassID" type="xs:int" minOccurs="0" />
              <xs:element name="DepartmentGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="DepartmentLastModified" type="xs:dateTime" />
              <xs:element name="DepartmentSiteID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_Department" />
      <xs:field xpath="DepartmentID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="DepartmentID" fieldcaption="DepartmentID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="3d7b9c80-4c03-4312-a523-d86e3c03102d"><settings><controlname>labelcontrol</controlname></settings></field><field column="DepartmentName" fieldcaption="DepartmentName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b5e1a6b9-cfcd-48ef-bcf8-0a7fa4a5e1b8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DepartmentDisplayName" fieldcaption="DepartmentDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1a96bf6c-baaa-49c4-8a1f-8d34f80cbbf6" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DepartmentDefaultTaxClassID" fieldcaption="DepartmentDefaultTaxClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="addb3f11-2bfa-4747-8e86-3aaa8905658e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DepartmentGUID" fieldcaption="DepartmentGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b7726ed9-96c7-4b3d-b36e-71200f682a89"><settings><controlname>unknown</controlname></settings></field><field column="DepartmentLastModified" fieldcaption="DepartmentLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="029ca9e8-e182-43bd-b944-d3bd4f8d5bc9"><settings><controlname>calendarcontrol</controlname></settings></field><field column="DepartmentSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="af9978d0-baf3-4b26-af41-b825ff7cc908" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_Department', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', '1c05d8cc-e5b6-4477-b04c-2bcdf7f2ac84', 0, 1, 0, N'', 2, N'DepartmentDisplayName', N'0', N'', N'DepartmentLastModified', N'<search><item searchable="True" name="DepartmentID" tokenized="False" content="False" id="a4fe3b23-bb06-4993-9e1a-efac91f6b1c4" /><item searchable="False" name="DepartmentName" tokenized="True" content="True" id="7ac6d7d4-e984-4627-b52e-4fe4cbd2dadd" /><item searchable="False" name="DepartmentDisplayName" tokenized="True" content="True" id="c0caf40d-3af5-4b61-be9c-0df21e019206" /><item searchable="True" name="DepartmentDefaultTaxClassID" tokenized="False" content="False" id="1935167e-6bac-4816-8bcd-b5bf77ae0692" /><item searchable="False" name="DepartmentGUID" tokenized="False" content="False" id="da3a72ab-ffe3-4ca6-8d27-b114b2b2cb8e" /><item searchable="True" name="DepartmentLastModified" tokenized="False" content="False" id="5733a2e1-66f1-44ee-8c6c-616c82a70339" /><item searchable="True" name="DepartmentSiteID" tokenized="False" content="False" id="608d5eb4-2725-46da-99ff-43dff7a8082c" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1149, N'Ecommerce - Discount coupon', N'ecommerce.discountcoupon', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_DiscountCoupon">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="DiscountCouponID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="DiscountCouponDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DiscountCouponIsExcluded" type="xs:boolean" />
              <xs:element name="DiscountCouponValidFrom" type="xs:dateTime" minOccurs="0" />
              <xs:element name="DiscountCouponValidTo" type="xs:dateTime" minOccurs="0" />
              <xs:element name="DiscountCouponValue" type="xs:double" minOccurs="0" />
              <xs:element name="DiscountCouponIsFlatValue" type="xs:boolean" />
              <xs:element name="DiscountCouponCode">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="DiscountCouponGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="DiscountCouponLastModified" type="xs:dateTime" />
              <xs:element name="DiscountCouponSiteID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_DiscountCoupon" />
      <xs:field xpath="DiscountCouponID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="DiscountCouponID" fieldcaption="DiscountCouponID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="f325b7a0-e6e0-427e-ba5a-6e7e1197a7ba"><settings><controlname>labelcontrol</controlname></settings></field><field column="DiscountCouponDisplayName" fieldcaption="DiscountCouponDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="30072228-a0df-40dc-8e75-2df26d8b4fc1" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DiscountCouponIsExcluded" fieldcaption="DiscountCouponIsExcluded" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d2d7e4b6-2225-4bac-9b51-b681ecc71f6b"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="DiscountCouponValidFrom" fieldcaption="DiscountCouponValidFrom" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="869851d3-7ba1-4373-97bf-edd987dcb27a"><settings><controlname>calendarcontrol</controlname></settings></field><field column="DiscountCouponValidTo" fieldcaption="DiscountCouponValidTo" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2d107d85-ff21-46f7-95f5-600c5f07924b"><settings><controlname>calendarcontrol</controlname></settings></field><field column="DiscountCouponValue" fieldcaption="DiscountCouponValue" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="76a9cd38-0d59-43b7-bdcc-5086f8856f7e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DiscountCouponIsFlatValue" fieldcaption="DiscountCouponIsFlatValue" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2dfbc1f5-331a-4c71-b85b-c89ab250c55b"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="DiscountCouponCode" fieldcaption="DiscountCouponCode" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="52d454b1-53da-425c-b24b-93e114ffc1d9"><settings><controlname>textboxcontrol</controlname></settings></field><field column="DiscountCouponGUID" fieldcaption="DiscountCouponGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2e7733de-f0a1-4b82-ad47-c7f93ca0bc0a"><settings><controlname>unknown</controlname></settings></field><field column="DiscountCouponLastModified" fieldcaption="DiscountCouponLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b737ffd1-10c2-4059-a59f-31eae0aac802"><settings><controlname>calendarcontrol</controlname></settings></field><field column="DiscountCouponSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="2e5a32ea-9669-49bf-8c21-7d5a5c1ede77" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_DiscountCoupon', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', 'ae9dba35-b6b5-45f4-bb1c-5125d15b3bb4', 0, 1, 0, N'', 2, N'DiscountCouponDisplayName', N'0', N'', N'DiscountCouponLastModified', N'<search><item searchable="True" name="DiscountCouponID" tokenized="False" content="False" id="2b14f092-1979-4546-8ea4-dec698433766" /><item searchable="False" name="DiscountCouponDisplayName" tokenized="True" content="True" id="204eca6a-69a5-4fc0-9c9d-28362b1050ed" /><item searchable="True" name="DiscountCouponIsExcluded" tokenized="False" content="False" id="8ac7badc-db21-431d-9467-6f6a5009539d" /><item searchable="True" name="DiscountCouponValidFrom" tokenized="False" content="False" id="56df5e1e-ffce-451e-8d0f-6bdef6fafe7c" /><item searchable="True" name="DiscountCouponValidTo" tokenized="False" content="False" id="2bd649ef-b921-4959-9e44-143892751405" /><item searchable="True" name="DiscountCouponValue" tokenized="False" content="False" id="599306e0-6dcd-432c-9027-fbc46198c417" /><item searchable="True" name="DiscountCouponIsFlatValue" tokenized="False" content="False" id="c5e7829f-b95b-49cd-8d8d-d215bc6e00d0" /><item searchable="False" name="DiscountCouponCode" tokenized="True" content="True" id="36efe5e7-4e36-4771-8d3e-87c00d0bba54" /><item searchable="False" name="DiscountCouponGUID" tokenized="False" content="False" id="54419afe-6151-4ba0-a1a9-03039da6055d" /><item searchable="True" name="DiscountCouponLastModified" tokenized="False" content="False" id="3dc0d4c2-1d3e-46f8-8ac7-cd6b931bbbc7" /><item searchable="True" name="DiscountCouponSiteID" tokenized="False" content="False" id="270a42ab-f237-4ac1-85e0-a75f33872380" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1150, N'Ecommerce - Shipping option', N'Ecommerce.ShippingOption', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_ShippingOption">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ShippingOptionID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ShippingOptionName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ShippingOptionDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ShippingOptionCharge" type="xs:double" />
              <xs:element name="ShippingOptionEnabled" type="xs:boolean" />
              <xs:element name="ShippingOptionSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="ShippingOptionGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ShippingOptionLastModified" type="xs:dateTime" />
              <xs:element name="ShippingOptionThumbnailGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="ShippingOptionDescription" minOccurs="0">
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
      <xs:selector xpath=".//COM_ShippingOption" />
      <xs:field xpath="ShippingOptionID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ShippingOptionID" fieldcaption="ShippingOptionID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="dc7a8f97-f1cb-4517-8031-489213a2445d"><settings><controlname>labelcontrol</controlname></settings></field><field column="ShippingOptionName" fieldcaption="ShippingOptionName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9804163e-683a-4f71-91ed-d2b81643f483"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ShippingOptionDisplayName" fieldcaption="ShippingOptionDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="765b2b6e-52b1-41c9-ab12-ec94b3ef6ad7" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ShippingOptionDescription" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0b53df7f-bcc9-49a4-8fcc-946b90068ca6" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="ShippingOptionCharge" fieldcaption="ShippingOptionCharge" visible="true" columntype="double" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a22dba60-33bc-4d6a-8ad3-88c1f3459f49"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ShippingOptionEnabled" fieldcaption="ShippingOptionEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0fe5eaa7-6d54-4c76-90c5-376b35a11f9d"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ShippingOptionSiteID" fieldcaption="ShippingOptionSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fd1414cc-26d1-4d35-8dfe-6d6c0edf3a92" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ShippingOptionGUID" fieldcaption="ShippingOptionGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="18dd26bf-7cc3-4d53-9cd4-b3cb5df860da"><settings><controlname>unknown</controlname></settings></field><field column="ShippingOptionLastModified" fieldcaption="ShippingOptionLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="949f7f46-fd67-4cc3-8942-77064b1924cf"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ShippingOptionThumbnailGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d2799e66-8102-4569-ba53-a826837785e5" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_ShippingOption', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', 'b556c066-57d3-4400-b601-78bb4f527447', 0, 1, 0, N'', 2, N'ShippingOptionDisplayName', N'0', N'', N'ShippingOptionLastModified', N'<search><item searchable="True" name="ShippingOptionID" tokenized="False" content="False" id="37bba34d-ce23-44b0-8dd3-49a2a73fbf52" /><item searchable="False" name="ShippingOptionName" tokenized="True" content="True" id="bb8ce5a0-8ee2-4b00-98c1-ac488b108a73" /><item searchable="False" name="ShippingOptionDisplayName" tokenized="True" content="True" id="a6d290f6-04fb-4fb0-a1fa-b90218c01a7a" /><item searchable="True" name="ShippingOptionCharge" tokenized="False" content="False" id="58b7ead9-2038-4b2d-9731-1968cc7bf09d" /><item searchable="True" name="ShippingOptionEnabled" tokenized="False" content="False" id="601e8ce1-c959-45f7-816a-e0996264ddd6" /><item searchable="True" name="ShippingOptionSiteID" tokenized="False" content="False" id="3097d44e-cc79-427e-bbe6-229e0d592933" /><item searchable="False" name="ShippingOptionGUID" tokenized="False" content="False" id="299f630d-910c-4070-aa4c-2206fdab632a" /><item searchable="True" name="ShippingOptionLastModified" tokenized="False" content="False" id="3cf17e19-481d-47a2-bc1a-f8c834f6bd46" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1151, N'Ecommerce - Exchange table', N'ecommerce.exchangetable', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_ExchangeTable">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ExchangeTableID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ExchangeTableDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ExchangeTableValidFrom" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ExchangeTableValidTo" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ExchangeTableGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ExchangeTableLastModified" type="xs:dateTime" />
              <xs:element name="ExchangeTableSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="ExchangeTableRateFromGlobalCurrency" type="xs:double" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_ExchangeTable" />
      <xs:field xpath="ExchangeTableID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ExchangeTableID" fieldcaption="ExchangeTableID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="0598477f-1a96-4453-a8bc-5d4a4d374a47"><settings><controlname>labelcontrol</controlname></settings></field><field column="ExchangeTableDisplayName" fieldcaption="ExchangeTableDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b9524920-c9cd-4861-b338-b6a6c91cf70e" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ExchangeTableValidFrom" fieldcaption="ExchangeTableValidFrom" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ad6205d5-899a-49f8-8760-8ac47c5c48c3"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ExchangeTableValidTo" fieldcaption="ExchangeTableValidTo" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="bff8a62c-8e74-413e-b319-d22e2490a4e6"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ExchangeTableGUID" fieldcaption="ExchangeTableGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1a96357c-6911-4b5b-bb22-ec5cc29a7476"><settings><controlname>unknown</controlname></settings></field><field column="ExchangeTableLastModified" fieldcaption="ExchangeTableLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1c59db57-7b91-4cc5-aac3-8d6a69dd3e58"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ExchangeTableSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="0d5d6f91-4d30-468e-b5d0-6dd6278b027d" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ExchangeTableRateFromGlobalCurrency" fieldcaption="ExchangeTableRateFromGlobalCurrency" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="977e8a84-1be7-4c6c-a9fe-92d382bd8b38" visibility="none"><settings><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field></form>', N'', N'', N'', N'COM_ExchangeTable', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', 'f13d168a-10fd-4202-a9f6-cc0c2c61b4ce', 0, 1, 0, N'', 2, N'ExchangeTableDisplayName', N'0', N'', N'ExchangeTableValidFrom', N'<search><item searchable="True" name="ExchangeTableID" tokenized="False" content="False" id="bc868cc3-1a55-4d15-87ba-d5e4aa9e47e8" /><item searchable="False" name="ExchangeTableDisplayName" tokenized="True" content="True" id="128cd09c-6e71-4e1b-b7af-f2aa7f7bdd5e" /><item searchable="True" name="ExchangeTableValidFrom" tokenized="False" content="False" id="3748dd5a-031b-4be2-a16c-3269a1a9eb0f" /><item searchable="True" name="ExchangeTableValidTo" tokenized="False" content="False" id="1d855c2c-4de9-412f-a2b8-29a09bd7df66" /><item searchable="False" name="ExchangeTableGUID" tokenized="False" content="False" id="5e69cfde-8cff-4120-9779-ccb92e4ba979" /><item searchable="True" name="ExchangeTableLastModified" tokenized="False" content="False" id="eaf5fd39-6886-4341-a5a5-99304733d460" /><item searchable="True" name="ExchangeTableSiteID" tokenized="False" content="False" id="4b772b43-9877-41b5-9021-0466a9c8b0c4" /><item searchable="True" name="ExchangeTableRateFromGlobalCurrency" tokenized="False" content="False" id="7f80fc3b-c906-4856-820a-4bfb05fa4845" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1152, N'Ecommerce - Tax class', N'ecommerce.taxclass', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_TaxClass">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TaxClassID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TaxClassName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaxClassDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaxClassZeroIfIDSupplied" type="xs:boolean" minOccurs="0" />
              <xs:element name="TaxClassGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="TaxClassLastModified" type="xs:dateTime" />
              <xs:element name="TaxClassSiteID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_TaxClass" />
      <xs:field xpath="TaxClassID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TaxClassID" fieldcaption="TaxClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="120dba86-26f2-4062-87b9-c2df858fea8d"><settings><controlname>labelcontrol</controlname></settings></field><field column="TaxClassName" fieldcaption="TaxClassName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3a64b5fd-d188-4bb7-83f5-8644669e296a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaxClassDisplayName" fieldcaption="TaxClassDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="170b4fb7-d206-4bb8-87fa-c132a3dd3193" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaxClassZeroIfIDSupplied" fieldcaption="TaxClassZeroIfIDSupplied" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3d8003fd-ab1c-4f33-a7f8-5b060cecfad8"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TaxClassGUID" fieldcaption="TaxClassGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3627e0db-1184-4d5d-a27f-1e11eff3ffe3"><settings><controlname>unknown</controlname></settings></field><field column="TaxClassLastModified" fieldcaption="TaxClassLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e5339651-4379-490c-9fea-c380ed074213"><settings><controlname>calendarcontrol</controlname></settings></field><field column="TaxClassSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="9a74e039-c6a3-41bd-9c4b-e705e7534109" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_TaxClass', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', 'b4fa4dd9-d561-463e-8aa9-1c3cc4550ac2', 0, 1, 0, N'', 2, N'TaxClassDisplayName', N'0', N'', N'0', N'<search><item searchable="True" name="TaxClassID" tokenized="False" content="False" id="abd55122-4c05-43f9-a1ef-979bbc8ed2ad" /><item searchable="False" name="TaxClassName" tokenized="True" content="True" id="169d5965-16b3-4c0e-ba81-2bb474ac6612" /><item searchable="False" name="TaxClassDisplayName" tokenized="True" content="True" id="e38edc2a-72b9-4fde-b486-fbdf4085ed5d" /><item searchable="True" name="TaxClassZeroIfIDSupplied" tokenized="False" content="False" id="50eddfb5-6e21-4801-88fc-6155c76f19b4" /><item searchable="False" name="TaxClassGUID" tokenized="False" content="False" id="70e7f750-205e-4799-b58f-6f90bebe750d" /><item searchable="True" name="TaxClassLastModified" tokenized="False" content="False" id="e2e4c202-6409-4735-bf6c-935432f0908e" /><item searchable="True" name="TaxClassSiteID" tokenized="False" content="False" id="ad778182-320b-4010-b88d-88aab477b6d9" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1154, N'Ecommerce - Tax class country', N'Ecommerce.TaxClassCountry', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_TaxClassCountry">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TaxClassCountryID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TaxClassID" type="xs:int" />
              <xs:element name="CountryID" type="xs:int" />
              <xs:element name="TaxValue" type="xs:double" />
              <xs:element name="IsFlatValue" type="xs:boolean" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_TaxClassCountry" />
      <xs:field xpath="TaxClassCountryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TaxClassCountryID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="59560247-2e15-4714-9444-2e694cef028f" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="TaxClassID" fieldcaption="TaxClassID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9867db8a-cff3-4795-a695-3cb52f1bff4e"><settings><controlname>labelcontrol</controlname></settings></field><field column="CountryID" fieldcaption="CountryID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6304fe0c-face-498e-a72e-4a1bc2eccd24"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaxValue" fieldcaption="TaxValue" visible="true" columntype="double" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7671e12b-8ab1-4438-b1f9-947bba3cfb48"><settings><controlname>textboxcontrol</controlname></settings></field><field column="IsFlatValue" fieldcaption="IsFlatValue" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="dcd43c73-4dc1-47cd-9391-11349a5aa35c"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_TaxClassCountry', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', '87c1d77d-21ea-4629-ad2a-eaab556602f7', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1156, N'Ecommerce - Address', N'Ecommerce.Address', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_Address">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="AddressID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="AddressName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AddressLine1">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AddressLine2">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AddressCity">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AddressZip">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="20" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AddressPhone" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AddressCustomerID" type="xs:int" />
              <xs:element name="AddressCountryID" type="xs:int" />
              <xs:element name="AddressStateID" type="xs:int" minOccurs="0" />
              <xs:element name="AddressIsBilling" type="xs:boolean" />
              <xs:element name="AddressEnabled" type="xs:boolean" />
              <xs:element name="AddressPersonalName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AddressIsShipping" type="xs:boolean" />
              <xs:element name="AddressIsCompany" type="xs:boolean" minOccurs="0" />
              <xs:element name="AddressGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="AddressLastModified" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_Address" />
      <xs:field xpath="AddressID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="AddressID" fieldcaption="AddressID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="45acf5f0-2a7d-407b-996b-438274529c9a"><settings><controlname>labelcontrol</controlname></settings></field><field column="AddressName" fieldcaption="AddressName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5e42b159-00f3-4933-85ab-73f3de18a8ee" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AddressLine1" fieldcaption="AddressLine1" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="650bc95e-0923-4cbe-b83c-4a250bfe5505"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AddressLine2" fieldcaption="AddressLine2" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6e25541d-4592-426d-9ace-eb8c4f9903aa"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AddressCity" fieldcaption="AddressCity" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0633aba6-62bd-4184-ae5f-5ad85e562358"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AddressZip" fieldcaption="AddressZip" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d036387c-702f-437f-9785-218dac48ad3c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AddressPhone" fieldcaption="AddressPhone" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c5e86531-d896-4784-a7ce-46e4e7563fa2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AddressCustomerID" fieldcaption="AddressCustomerID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="26fe2b8e-a2c2-40de-8fe6-a2f97dd5e171"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AddressCountryID" fieldcaption="AddressCountryID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8a967728-36e1-4eb9-964c-a91c8a557594"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AddressStateID" fieldcaption="AddressStateID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ac508421-fa90-4e76-9387-06b5af8df17b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AddressIsBilling" fieldcaption="AddressIsBilling" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b4dbab58-4ce0-46cd-936e-889a5dc45540"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="AddressEnabled" fieldcaption="AddressEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4dcca810-6afe-46ca-8d38-9633fcf374b4"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="AddressPersonalName" fieldcaption="AddressPersonalName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8879c6fb-f4ae-4802-9d82-82fd3d074124"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AddressIsShipping" fieldcaption="AddressIsShipping" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="cfe91c20-eda4-4e6a-86b3-6579d973ef2b"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="AddressIsCompany" fieldcaption="AddressIsCompany" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="558c8a0d-7328-4cd8-bed2-82a76514c24f"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="AddressGUID" fieldcaption="AddressGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f038c0a7-59ae-477e-b9c6-5dfc9daedf3e" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="AddressLastModified" fieldcaption="AddressLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="33264671-3b18-4eb9-b7fc-d96c007adb37"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_Address', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', '3cc96754-268c-4eeb-94cf-44204a27431a', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1157, N'Ecommerce - Customer', N'ecommerce.customer', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_Customer">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="CustomerID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="CustomerFirstName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CustomerLastName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CustomerEmail" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CustomerPhone" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CustomerFax" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CustomerCompany" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CustomerUserID" type="xs:int" minOccurs="0" />
              <xs:element name="CustomerPreferredCurrencyID" type="xs:int" minOccurs="0" />
              <xs:element name="CustomerPreferredShippingOptionID" type="xs:int" minOccurs="0" />
              <xs:element name="CustomerCountryID" type="xs:int" minOccurs="0" />
              <xs:element name="CustomerEnabled" type="xs:boolean" />
              <xs:element name="CustomerPrefferedPaymentOptionID" type="xs:int" minOccurs="0" />
              <xs:element name="CustomerStateID" type="xs:int" minOccurs="0" />
              <xs:element name="CustomerGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="CustomerTaxRegistrationID" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CustomerOrganizationID" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CustomerDiscountLevelID" type="xs:int" minOccurs="0" />
              <xs:element name="CustomerLastModified" type="xs:dateTime" />
              <xs:element name="CustomerSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="CustomerCreated" type="xs:dateTime" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_Customer" />
      <xs:field xpath="CustomerID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="CustomerID" fieldcaption="CustomerID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="96c3731e-c8dc-4bb7-b692-120b5e92e67d"><settings><controlname>labelcontrol</controlname></settings></field><field column="CustomerFirstName" fieldcaption="CustomerFirstName" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="b2b44dc5-ae13-4180-9fad-7a47431b9b36"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CustomerLastName" fieldcaption="CustomerLastName" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="f1470954-5eed-49a9-91ae-de257fc8cc6b" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CustomerEmail" fieldcaption="CustomerEmail" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="ed57af72-8df1-456f-b369-041c7faf0085"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CustomerPhone" fieldcaption="CustomerPhone" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="ec61f54e-1202-4e42-8646-30f067f38eb2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CustomerFax" fieldcaption="CustomerFax" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="044422b8-46d8-4222-b0f7-9466783c2274"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CustomerCompany" fieldcaption="CustomerCompany" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="0b263893-c00f-44f7-a36d-ca0449ac9f0a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CustomerUserID" fieldcaption="CustomerUserID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="54062fca-65ff-4995-9b7a-404ca2e04f58"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CustomerPreferredCurrencyID" fieldcaption="CustomerPreferredCurrencyID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3142d83c-af78-484f-9867-946339d66fba"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CustomerPreferredShippingOptionID" fieldcaption="CustomerPreferredShippingOptionID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8217b461-c402-41b2-8923-1364b6468ba2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CustomerCountryID" fieldcaption="CustomerCountryID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="80182aa0-ae56-432a-8f66-51ea1ec857ac"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CustomerEnabled" fieldcaption="CustomerEnabled" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="86754dcb-f60a-490c-916e-c3e51d63cc38"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CustomerPrefferedPaymentOptionID" fieldcaption="CustomerPrefferedPaymentOptionID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0bc8e195-ea84-4474-bede-ed7bbdd1ad04"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CustomerStateID" fieldcaption="CustomerStateID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e2feb737-5110-40db-b535-12079051379e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CustomerGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="56206b17-fdf9-4953-9136-6e91e18d6d4d" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CustomerTaxRegistrationID" fieldcaption="CustomerTaxRegistrationID" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="873dce9d-ee95-4793-a1ed-963a3feeee42"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CustomerOrganizationID" fieldcaption="CustomerOrganizationID" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="e7df891f-ea59-4add-876b-69d4a619ac12"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CustomerDiscountLevelID" fieldcaption="CustomerDiscountLevelID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7fbca01a-61af-4362-a273-e2aa8a3a454c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CustomerCreated" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="54fa9014-05b8-4a7f-9936-94a13458b6c0" visibility="none"><settings><controlname>calendarcontrol</controlname></settings></field><field column="CustomerLastModified" fieldcaption="CustomerLastModified" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="87a1a570-2285-457b-9508-d541995a7769"><settings><controlname>labelcontrol</controlname></settings></field><field column="CustomerSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="b986d250-cc3e-404f-86f2-987f25770524" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_Customer', N'', N'', N'', N'', 1, 0, 0, N'', 0, N'', NULL, '20120502 09:31:37', 'cd867311-743a-4599-ba72-5fe29b1c4a9c', 0, 1, 0, N'', 2, N'CustomerID', N'0', N'', N'0', N'<search><item searchable="True" name="CustomerID" tokenized="False" content="False" id="5ec636e6-a399-4970-9a67-6a8069198ca1" /><item searchable="False" name="CustomerFirstName" tokenized="True" content="True" id="77c67bcd-9c66-4a8e-82c5-64c42cf7b169" /><item searchable="False" name="CustomerLastName" tokenized="True" content="True" id="5bf27f2b-6785-4ff3-9787-4b97116b7bbd" /><item searchable="False" name="CustomerEmail" tokenized="True" content="True" id="111c4a7f-292c-4a7c-9ef1-e4874870af2f" /><item searchable="False" name="CustomerPhone" tokenized="True" content="True" id="8633ad64-b248-40bd-9727-654cd45ce65c" /><item searchable="False" name="CustomerFax" tokenized="True" content="True" id="4f34fc10-3289-48e9-8547-8d63682ecb4b" /><item searchable="False" name="CustomerCompany" tokenized="True" content="True" id="db833152-c2de-4c69-afff-56fc46c4fcfe" /><item searchable="True" name="CustomerUserID" tokenized="False" content="False" id="e3a09419-04c5-4970-8d22-3a4d22c914e8" /><item searchable="True" name="CustomerPreferredCurrencyID" tokenized="False" content="False" id="c755f1e1-6e94-48e7-b872-91185e6489ce" /><item searchable="True" name="CustomerPreferredShippingOptionID" tokenized="False" content="False" id="e2979431-6cd8-4861-8795-f92d16b53e4d" /><item searchable="True" name="CustomerCountryID" tokenized="False" content="False" id="bb4fe818-52ee-4ddb-992a-69c44d567286" /><item searchable="True" name="CustomerEnabled" tokenized="False" content="False" id="fe1dd2d8-b80c-46f8-a363-55f10a4d39cf" /><item searchable="True" name="CustomerPrefferedPaymentOptionID" tokenized="False" content="False" id="0eb76742-d24d-4818-825e-1bd8b5163f3a" /><item searchable="True" name="CustomerStateID" tokenized="False" content="False" id="d60fdec0-da6e-466b-9b39-eaa055d90164" /><item searchable="False" name="CustomerGUID" tokenized="True" content="True" id="1c3ee168-d69e-4dd0-891a-e712d5b5d41e" /><item searchable="False" name="CustomerTaxRegistrationID" tokenized="True" content="True" id="7b02b7b2-5207-4753-9e09-8312e6fd448b" /><item searchable="False" name="CustomerOrganizationID" tokenized="True" content="True" id="37206195-2d56-4856-8557-9ca836c02fb7" /><item searchable="True" name="CustomerDiscountLevelID" tokenized="False" content="False" id="a6135c81-5917-42be-a89b-53b9d80b1688" /><item searchable="True" name="CustomerLastModified" tokenized="False" content="False" id="23f0d85c-678b-4ac0-a69e-d8ad7e4e1058" /><item searchable="True" name="CustomerSiteID" tokenized="False" content="False" id="10f52642-f19e-4eb5-ae5c-7f54791e9987" /></search>', NULL, 1, N'', NULL, N'<form><field column="ContactCountryID" mappedtofield="CustomerCountryID" /><field column="ContactEmail" mappedtofield="CustomerEmail" /><field column="ContactFirstName" mappedtofield="CustomerFirstName" /><field column="ContactLastName" mappedtofield="CustomerLastName" /><field column="ContactMobilePhone" mappedtofield="CustomerPhone" /><field column="ContactStateID" mappedtofield="CustomerStateID" /></form>', 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1158, N'Ecommerce - Order', N'ecommerce.order', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_Order">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="OrderID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="OrderBillingAddressID" type="xs:int" />
              <xs:element name="OrderShippingAddressID" type="xs:int" minOccurs="0" />
              <xs:element name="OrderShippingOptionID" type="xs:int" minOccurs="0" />
              <xs:element name="OrderTotalShipping" type="xs:double" minOccurs="0" />
              <xs:element name="OrderTotalPrice" type="xs:double" />
              <xs:element name="OrderTotalTax" type="xs:double" />
              <xs:element name="OrderDate" type="xs:dateTime" />
              <xs:element name="OrderStatusID" type="xs:int" minOccurs="0" />
              <xs:element name="OrderCurrencyID" type="xs:int" minOccurs="0" />
              <xs:element name="OrderCustomerID" type="xs:int" />
              <xs:element name="OrderCreatedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="OrderNote" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="OrderSiteID" type="xs:int" />
              <xs:element name="OrderPaymentOptionID" type="xs:int" minOccurs="0" />
              <xs:element name="OrderInvoice" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="OrderInvoiceNumber" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="OrderDiscountCouponID" type="xs:int" minOccurs="0" />
              <xs:element name="OrderCompanyAddressID" type="xs:int" minOccurs="0" />
              <xs:element name="OrderTrackingNumber" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="OrderCustomData" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="OrderPaymentResult" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="OrderGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="OrderLastModified" type="xs:dateTime" />
              <xs:element name="OrderTotalPriceInMainCurrency" type="xs:double" minOccurs="0" />
              <xs:element name="OrderIsPaid" type="xs:boolean" minOccurs="0" />
              <xs:element name="OrderCulture" minOccurs="0">
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
      <xs:selector xpath=".//COM_Order" />
      <xs:field xpath="OrderID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="OrderID" fieldcaption="OrderID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="f28fb94f-e177-48e6-aaf6-acfcd856ac3e"><settings><controlname>labelcontrol</controlname></settings></field><field column="OrderBillingAddressID" fieldcaption="OrderBillingAddressID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="27697294-392b-4a76-8a1d-e9a1cb05eb58"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderShippingAddressID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="26b8aeb8-fade-40be-9f3d-3ce906583670" visibility="none" /><field column="OrderShippingOptionID" fieldcaption="OrderShippingOptionID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0eccbbc8-1bb0-4ef9-9c34-6d30c87ea79c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderTotalShipping" fieldcaption="OrderTotalShipping" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="075b59b9-762d-46f7-8e08-e0008ad055ea"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderTotalPrice" fieldcaption="OrderTotalPrice" columntype="double" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fef6bb8a-2c7d-4ea3-8335-920498657802"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderTotalPriceInMainCurrency" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a62bd496-944e-4f31-9f2d-530b849cd644" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="OrderTotalTax" fieldcaption="OrderTotalTax" columntype="double" fieldtype="CustomUserControl" system="true" publicfield="false" guid="786aede8-95e6-4d3a-a285-1627661b9ca7"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderDate" fieldcaption="OrderDate" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fc38316b-50bd-49f2-b469-2a8649440ed8"><settings><controlname>calendarcontrol</controlname><editTime>false</editTime></settings></field><field column="OrderStatusID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="11250533-9320-4950-b72c-f44d48c6903c" visibility="none" /><field column="OrderCurrencyID" fieldcaption="OrderCurrencyID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="efeadf73-e9a5-4283-b015-0702a04163e9"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderCustomerID" fieldcaption="OrderCustomerID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ae5f163d-d345-459c-97e2-3adb7150195f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderCreatedByUserID" fieldcaption="OrderCreatedByUserID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1fda4f50-5db3-4803-aeb5-7c1ddfbf85ab"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderNote" fieldcaption="OrderNote" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ad9e3376-04c8-42b3-b405-d0f36bebb606"><settings><controlname>textareacontrol</controlname></settings></field><field column="OrderSiteID" fieldcaption="OrderSiteID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="72c87c0f-a61b-4ff4-8c2b-4f6b510e03a1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderPaymentOptionID" fieldcaption="OrderPaymentOptionID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d7942b91-97c7-46d0-a4b5-770a006065e1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderInvoice" fieldcaption="OrderInvoice" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="da660e03-1666-44e4-b05c-15b52a9e2f44"><settings><controlname>textareacontrol</controlname></settings></field><field column="OrderInvoiceNumber" fieldcaption="OrderInvoiceNumber" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="2e515b8c-5186-488f-8836-84ae1a3a73bb" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderDiscountCouponID" fieldcaption="OrderDiscountCouponID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="dceb6698-1196-4cd4-803e-bdc73f5c3413"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderCompanyAddressID" fieldcaption="OrderCompanyAddressID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="43aac489-4194-4d9e-898c-bdbad5dc4f0d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderTrackingNumber" fieldcaption="OrderTrackingNumber" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="a8e47954-ef84-46cc-a2e7-c8ae6515b4c5"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderCustomData" fieldcaption="OrderCustomData" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0162e231-adda-4951-b014-fde264ec2103"><settings><controlname>textareacontrol</controlname></settings></field><field column="OrderPaymentResult" fieldcaption="OrderPaymentResult" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="59784e17-5d9d-48e0-93a1-ae6d97564121"><settings><controlname>textareacontrol</controlname></settings></field><field column="OrderGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="cfcbbfde-eda8-4fd8-b94c-7d92bac0b907" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="OrderLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0554677d-56cc-4b16-8992-7e02ae6c46f7"><settings><controlname>calendarcontrol</controlname></settings></field><field column="OrderIsPaid" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4f3c7a42-baa6-44bc-8c52-2f18dc8e20b9" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="OrderCulture" fieldcaption="Culture" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="10" publicfield="false" guid="d4c36d0d-073d-4b64-a99c-5213b120cffc" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'COM_Order', N'', N'', N'', N'', 1, 0, 0, N'', 0, N'', NULL, '20120816 15:02:08', '58eb48fc-83f4-41f7-add2-bc3ce5de8909', 0, 1, 0, N'', 2, N'OrderID', N'0', N'', N'OrderLastModified', N'<search><item searchable="True" name="OrderID" tokenized="False" content="False" id="eeabfd04-b3dd-4d99-b656-f0abef3d468c" /><item searchable="True" name="OrderBillingAddressID" tokenized="False" content="False" id="1a5f4c67-3815-4f24-942b-66d517388c86" /><item searchable="True" name="OrderShippingAddressID" tokenized="False" content="False" id="ed4b6001-d65a-42b1-aed4-e8db4601dc45" /><item searchable="True" name="OrderShippingOptionID" tokenized="False" content="False" id="caa2b3dd-38b2-4041-8edb-d0cedcb68152" /><item searchable="True" name="OrderTotalShipping" tokenized="False" content="False" id="e59df6f0-a275-4e29-a67d-505a030900dd" /><item searchable="True" name="OrderTotalPrice" tokenized="False" content="False" id="91181b5c-6e21-4854-8c73-bc432f74093e" /><item searchable="True" name="OrderTotalTax" tokenized="False" content="False" id="1afe29be-f598-4b42-9062-f0dcb44b2714" /><item searchable="True" name="OrderDate" tokenized="False" content="False" id="01ae8919-418d-43c2-aba2-b8b30c0111b2" /><item searchable="True" name="OrderStatusID" tokenized="False" content="False" id="af522e39-0f42-41e3-a64f-5a91bd7a1ebb" /><item searchable="True" name="OrderCurrencyID" tokenized="False" content="False" id="8ce766ae-df06-464b-a120-93dbe99e55b9" /><item searchable="True" name="OrderCustomerID" tokenized="False" content="False" id="378a81fb-e51a-4288-bc88-def7e7921244" /><item searchable="True" name="OrderCreatedByUserID" tokenized="False" content="False" id="a0b7f51f-1f7e-4a50-85e0-0ef7abadd4ba" /><item searchable="False" name="OrderNote" tokenized="True" content="True" id="c8c5f815-714c-43b1-8809-af12e657494a" /><item searchable="True" name="OrderSiteID" tokenized="False" content="False" id="5009e672-8dfc-4941-a7de-8ca0705bc1b7" /><item searchable="True" name="OrderPaymentOptionID" tokenized="False" content="False" id="55f2f36f-7f03-4521-8ff4-44155d93d9f1" /><item searchable="False" name="OrderInvoice" tokenized="True" content="True" id="6770ca0f-0bc0-4cf0-85b6-d35c4b56f303" /><item searchable="False" name="OrderInvoiceNumber" tokenized="True" content="True" id="48cd47a4-b745-4aa6-8cc3-8fed99f67975" /><item searchable="True" name="OrderDiscountCouponID" tokenized="False" content="False" id="b8b082e8-3326-4b46-bee6-0f2b4760dd0c" /><item searchable="True" name="OrderCompanyAddressID" tokenized="False" content="False" id="8c6455e2-c515-426b-a889-d421ef210e1a" /><item searchable="False" name="OrderTrackingNumber" tokenized="True" content="True" id="464cfc17-c570-473b-af60-6be86fd4d032" /><item searchable="False" name="OrderCustomData" tokenized="True" content="True" id="8e09b135-71d7-4c71-928a-40dc07b0fe0f" /><item searchable="False" name="OrderPaymentResult" tokenized="True" content="True" id="b629e211-20aa-41b1-984c-4188d5c79728" /><item searchable="False" name="OrderGUID" tokenized="False" content="False" id="c0a5dbf1-a5ae-4a56-b75e-1b97b8ac9299" /><item searchable="True" name="OrderLastModified" tokenized="False" content="False" id="c25620f7-d5d0-4041-ade5-46c9a86091b6" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1159, N'Ecommerce - SKU', N'ecommerce.sku', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_SKU">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SKUID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SKUNumber" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SKUName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="440" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SKUDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SKUPrice" type="xs:double" />
              <xs:element name="SKUEnabled" type="xs:boolean" />
              <xs:element name="SKUDepartmentID" type="xs:int" minOccurs="0" />
              <xs:element name="SKUManufacturerID" type="xs:int" minOccurs="0" />
              <xs:element name="SKUInternalStatusID" type="xs:int" minOccurs="0" />
              <xs:element name="SKUPublicStatusID" type="xs:int" minOccurs="0" />
              <xs:element name="SKUSupplierID" type="xs:int" minOccurs="0" />
              <xs:element name="SKUAvailableInDays" type="xs:int" minOccurs="0" />
              <xs:element name="SKUGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="SKUImagePath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SKUWeight" type="xs:double" minOccurs="0" />
              <xs:element name="SKUWidth" type="xs:double" minOccurs="0" />
              <xs:element name="SKUDepth" type="xs:double" minOccurs="0" />
              <xs:element name="SKUHeight" type="xs:double" minOccurs="0" />
              <xs:element name="SKUAvailableItems" type="xs:int" minOccurs="0" />
              <xs:element name="SKUSellOnlyAvailable" type="xs:boolean" minOccurs="0" />
              <xs:element name="SKUCustomData" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SKUOptionCategoryID" type="xs:int" minOccurs="0" />
              <xs:element name="SKUOrder" type="xs:int" minOccurs="0" />
              <xs:element name="SKULastModified" type="xs:dateTime" />
              <xs:element name="SKUCreated" type="xs:dateTime" minOccurs="0" />
              <xs:element name="SKUSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="SKUPrivateDonation" type="xs:boolean" minOccurs="0" />
              <xs:element name="SKUNeedsShipping" type="xs:boolean" minOccurs="0" />
              <xs:element name="SKUMaxDownloads" type="xs:int" minOccurs="0" />
              <xs:element name="SKUValidUntil" type="xs:dateTime" minOccurs="0" />
              <xs:element name="SKUProductType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SKUMaxItemsInOrder" type="xs:int" minOccurs="0" />
              <xs:element name="SKUMaxPrice" type="xs:double" minOccurs="0" />
              <xs:element name="SKUValidity" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SKUValidFor" type="xs:int" minOccurs="0" />
              <xs:element name="SKUMinPrice" type="xs:double" minOccurs="0" />
              <xs:element name="SKUMembershipGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="SKUConversionName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SKUConversionValue" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SKUBundleInventoryType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SKUMinItemsInOrder" type="xs:int" minOccurs="0" />
              <xs:element name="SKURetailPrice" type="xs:double" minOccurs="0" />
              <xs:element name="SKUParentSKUID" type="xs:int" minOccurs="0" />
              <xs:element name="SKUAllowAllVariants" type="xs:boolean" minOccurs="0" />
              <xs:element name="SKUInheritsTaxClasses" type="xs:boolean" minOccurs="0" />
              <xs:element name="SKUInheritsDiscounts" type="xs:boolean" minOccurs="0" />
              <xs:element name="SKUTrackInventory" type="xs:boolean" minOccurs="0" />
              <xs:element name="SKUShortDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SKUEproductFilesCount" type="xs:int" minOccurs="0" />
              <xs:element name="SKUBundleItemsCount" type="xs:int" minOccurs="0" />
              <xs:element name="SKUInStoreFrom" type="xs:dateTime" minOccurs="0" />
              <xs:element name="SKUReorderAt" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_SKU" />
      <xs:field xpath="SKUID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><category name="com.sku.generalcategory" caption="{$com.sku.generalcategory$}" visible="True" /><field column="SKUID" fieldcaption="SKUID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="95abe990-8663-4a8d-8db4-a4d104579424" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="SKUGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="99228497-3209-44bd-8e5c-cd9de56e7fbd" visibility="none" /><field column="SKUOptionCategoryID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5781a44f-28d4-4ac6-b393-55c9fb2b1f3a"><settings><controlname>labelcontrol</controlname></settings></field><field column="SKUOrder" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3e41eb69-f9f4-42ea-a51b-f47ebb489b6e"><settings><controlname>labelcontrol</controlname></settings></field><field column="SKUSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="69b49087-e19b-4b94-990c-f174f146b7db" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SKUName" fieldcaption="{$com.sku.name$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="440" publicfield="false" guid="161e6482-fbd6-41df-b251-5ef9603f8576" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>True</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SKUNumber" fieldcaption="{$com.sku.number$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="c37e01b4-9477-4ccd-86f8-b6f000743184" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>True</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SKUPrice" fieldcaption="{$com.sku.price$}" visible="true" columntype="double" fieldtype="CustomUserControl" system="true" captionstyle="margin-bottom: 20px; display: block;" inputcontrolstyle="margin-bottom: 20px;" publicfield="false" guid="a3c3478f-0507-44ef-a8be-26f7fd3833c5" visibility="none"><settings><ShowErrorsOnNewLine>False</ShowErrorsOnNewLine><RangeErrorMessage>com.productedit.priceinvalid</RangeErrorMessage><FormatValueAsInteger>False</FormatValueAsInteger><AllowZero>True</AllowZero><EmptyErrorMessage>com.productedit.priceinvalid</EmptyErrorMessage><controlname>priceselector</controlname><AllowNegative>False</AllowNegative><AllowEmpty>False</AllowEmpty><ShowCurrencyCode>True</ShowCurrencyCode></settings></field><field column="SKURetailPrice" fieldcaption="{$com.sku.listprice$}" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="93d5d6bd-c3c4-4108-b886-24540b17ed56" visibility="none"><settings><ShowErrorsOnNewLine>False</ShowErrorsOnNewLine><RangeErrorMessage>com.productedit.priceinvalid</RangeErrorMessage><FormatValueAsInteger>False</FormatValueAsInteger><AllowZero>True</AllowZero><EmptyErrorMessage>com.productedit.priceinvalid</EmptyErrorMessage><controlname>priceselector</controlname><AllowNegative>False</AllowNegative><AllowEmpty>True</AllowEmpty><ShowCurrencyCode>True</ShowCurrencyCode></settings></field><field column="SKUDepartmentID" fieldcaption="{$com.sku.departmentid$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f97d35fc-6b5a-4c23-a666-15f8cfe7faa6" visibility="none"><settings><AddWithoutDepartmentRecord>False</AddWithoutDepartmentRecord><DropDownListMode>True</DropDownListMode><controlname>departmentselector</controlname><AddAllMyRecord>False</AddAllMyRecord><AddNoneRecord>True</AddNoneRecord><AddAllItemsRecord>False</AddAllItemsRecord><UseDepartmentNameForSelection>False</UseDepartmentNameForSelection><ShowAllSites>False</ShowAllSites></settings></field><field column="SKUManufacturerID" fieldcaption="{$com.sku.manufacturerid$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="808244ef-6595-42f2-90a0-9bf0717645e1" visibility="none"><settings><AddNoneRecord>True</AddNoneRecord><controlname>manufacturerselector</controlname><AddAllItemsRecord>False</AddAllItemsRecord><DisplayOnlyEnabled>True</DisplayOnlyEnabled></settings></field><field column="SKUSupplierID" fieldcaption="{$com.sku.supplierid$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" captionstyle="margin-bottom: 20px; display: block;" inputcontrolstyle="margin-bottom: 20px;" publicfield="false" guid="57cc81c5-1f0c-45d4-9741-e37d7f35db34" visibility="none"><settings><AddNoneRecord>True</AddNoneRecord><controlname>supplierselector</controlname><AddAllItemsRecord>False</AddAllItemsRecord><DisplayOnlyEnabled>True</DisplayOnlyEnabled></settings></field><field column="SKUImagePath" fieldcaption="{$com.sku.imagepath$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="6174e45a-ca37-4946-a8b9-a53bd4fb76d2" visibility="none"><settings><controlname>productimageselector</controlname></settings></field><field column="SKUShortDescription" fieldcaption="{$com.sku.shortdescription$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0e18113d-59b6-4fba-9c46-796465b2251e" visibility="none"><settings><Width>100</Width><Height>50</Height><HeightUnitType>PX</HeightUnitType><controlname>htmlareacontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><WidthUnitType>PERCENTAGE</WidthUnitType><Autoresize_Hashtable>True</Autoresize_Hashtable><MediaDialogConfiguration>True</MediaDialogConfiguration></settings></field><field column="SKUDescription" fieldcaption="{$com.sku.description$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" captionstyle="margin-bottom: 20px; display: block;" inputcontrolstyle="margin-bottom: 20px;" publicfield="false" guid="b13a8a29-f8a9-49ed-8cb4-4db417e174ab" external="true" visibility="none"><settings><HeightUnitType>PX</HeightUnitType><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><Width>100</Width><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>htmlareacontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><WidthUnitType>PERCENTAGE</WidthUnitType><Autoresize_Hashtable>True</Autoresize_Hashtable><MediaDialogConfiguration>True</MediaDialogConfiguration></settings></field><field column="SKUProductType" fieldcaption="{$com.sku.producttype$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="33da4205-7ff2-46f9-ae88-3f28ae663ff8" visibility="none"><settings><AllowStandardProduct>True</AllowStandardProduct><AllowDonation>True</AllowDonation><AllowMembership>True</AllowMembership><AllowNone>False</AllowNone><controlname>producttypeselector</controlname><AllowBundle>True</AllowBundle><AllowText>True</AllowText><AutoPostBack>True</AutoPostBack><AllowEproduct>True</AllowEproduct><AllowAll>False</AllowAll></settings></field><field column="SKUCustomData" fieldcaption="SKUCustomData" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="29e8c9c5-d3c7-4846-a18f-057d5cd0a352"><settings><controlname>textareacontrol</controlname></settings></field><field column="SKUCreated" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="046115eb-09d5-4c9f-b4ae-e5da3761b436" visibility="none"><settings><timezonetype>inherit</timezonetype><controlname>labelcontrol</controlname></settings></field><field column="SKULastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="87e7a912-8806-4971-9912-af8711f71707"><settings><controlname>calendarcontrol</controlname></settings></field><category name="com.sku.representingcategory" caption="{$com.sku.representingcategory$}" visible="True" /><field column="SKUMembershipGUID" fieldcaption="{$com.sku.membershipguid$}" visible="true" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1bdbe0d4-4142-4aac-9eff-51709cfa8b06" visibility="none"><settings><AddNoneRecord>True</AddNoneRecord><controlname>membershipselector</controlname><UseCodeNameForSelection>False</UseCodeNameForSelection><UseGUIDForSelection>True</UseGUIDForSelection></settings></field><field column="SKUValidity" fieldcaption="{$com.sku.validity$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" controlcssclass="BorderedWrapper" guid="24a8c5b1-f065-4a4b-a608-836e06d07083" visibility="none"><settings><AutoPostBack>True</AutoPostBack><ValidUntilFieldName>SKUValidUntil</ValidUntilFieldName><controlname>validityselector</controlname><ValidForFieldName>SKUValidFor</ValidForFieldName></settings></field><field column="SKUValidFor" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e708cdc4-502c-46a3-b8a7-120167863a7e" visibility="none"><settings><controlname>checkboxlistcontrol</controlname></settings></field><field column="SKUValidUntil" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fea9d168-8b89-4b05-8243-2cd26c6b9773" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SKUMaxDownloads" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5e1d81cf-b3bc-43cf-96eb-42e343da9eb8" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SKUEproductFilesCount" fieldcaption="{$com.sku.eproductfilescount$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4b93bdbb-4ef6-44b5-8f24-371438ce8945" visibility="none"><settings><controlname>eproductfilesselector</controlname></settings></field><field column="SKUMinPrice" fieldcaption="{$com.sku.minprice$}" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f6464371-2fc6-42bb-a2f2-3021efb4c455" visibility="none"><settings><ShowErrorsOnNewLine>False</ShowErrorsOnNewLine><RangeErrorMessage>com.productedit.priceinvalid</RangeErrorMessage><FormatValueAsInteger>False</FormatValueAsInteger><AllowZero>True</AllowZero><EmptyErrorMessage>com.productedit.priceinvalid</EmptyErrorMessage><controlname>priceselector</controlname><AllowNegative>False</AllowNegative><AllowEmpty>True</AllowEmpty><ShowCurrencyCode>True</ShowCurrencyCode></settings></field><field column="SKUMaxPrice" fieldcaption="{$com.sku.maxprice$}" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5fd253dd-6dfa-4a2b-a106-055fe2ab90a0" visibility="none"><settings><ShowErrorsOnNewLine>False</ShowErrorsOnNewLine><RangeErrorMessage>com.productedit.priceinvalid</RangeErrorMessage><FormatValueAsInteger>False</FormatValueAsInteger><AllowZero>True</AllowZero><EmptyErrorMessage>com.productedit.priceinvalid</EmptyErrorMessage><controlname>priceselector</controlname><AllowNegative>False</AllowNegative><AllowEmpty>True</AllowEmpty><ShowCurrencyCode>True</ShowCurrencyCode></settings></field><field column="SKUPrivateDonation" fieldcaption="{$com.sku.privatedonation$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="72fe9474-dd53-40e2-b9c3-7501baded3bd" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="SKUBundleInventoryType" fieldcaption="{$com.sku.bundleinventorytype$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="4f095aab-f4fe-409b-9990-fd491bdfa7f8" visibility="none"><settings><controlname>bundleinventorytypeselector</controlname></settings></field><field column="SKUBundleItemsCount" fieldcaption="{$com.sku.bundleitemscount$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0b485e64-28e3-44f1-a4d7-52a2116b9007" visibility="none"><settings><controlname>bundleitemsselector</controlname></settings></field><category name="com.sku.statuscategory" caption="{$com.sku.statuscategory$}" visible="True" /><field column="SKUInStoreFrom" fieldcaption="{$com.sku.instorefrom$}" visible="true" defaultvalue="##TODAY##" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="09e82b4e-75c1-4cbb-958a-9b7c5a3ff7b2" visibility="none"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>False</EditTime></settings></field><field column="SKUPublicStatusID" fieldcaption="{$com.sku.publicstatusid$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9e5eaa25-43b3-40af-b651-94387a5b77ef" visibility="none"><settings><AddNoneRecord>True</AddNoneRecord><UseStatusNameForSelection>False</UseStatusNameForSelection><controlname>publicstatusselector</controlname><AddAllItemsRecord>False</AddAllItemsRecord><DisplayOnlyEnabled>True</DisplayOnlyEnabled><AppendGlobalItems>False</AppendGlobalItems></settings></field><field column="SKUInternalStatusID" fieldcaption="{$com.sku.internalstatusid$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e6053672-514c-4f66-8c2e-87da9dd3f310" visibility="none"><settings><AddNoneRecord>True</AddNoneRecord><UseStatusNameForSelection>False</UseStatusNameForSelection><controlname>internalstatusselector</controlname><AddAllItemsRecord>False</AddAllItemsRecord><DisplayOnlyEnabled>True</DisplayOnlyEnabled><AppendGlobalItems>False</AppendGlobalItems></settings></field><field column="SKUEnabled" fieldcaption="{$com.sku.enabled$}" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bedcaf24-ad52-4293-9418-f7fcecbb9811" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><category name="com.sku.shippingcategory" caption="{$com.sku.shippingcategory$}" visible="True" /><field column="SKUNeedsShipping" fieldcaption="{$com.sku.needsshipping$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0fd1ef55-4dd6-4c0e-8030-244dda90ffa3" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="SKUWeight" fieldcaption="{$com.sku.weight$}" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="433ec6bf-2a24-46f7-ab64-413723f8d2d4" visibility="none"><settings><FilterType>0|3</FilterType><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><FilterMode>False</FilterMode><ValidChars>.</ValidChars><controlname>textboxcontrol</controlname><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><Trim>True</Trim></settings></field><field column="SKUHeight" fieldcaption="{$com.sku.height$}" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="960b12da-a78a-47af-b30a-dd5d4c963c7f" visibility="none"><settings><FilterType>0|3</FilterType><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><FilterMode>False</FilterMode><ValidChars>.</ValidChars><controlname>textboxcontrol</controlname><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><Trim>True</Trim></settings></field><field column="SKUWidth" fieldcaption="{$com.sku.width$}" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cada95d5-f56f-47b8-8ec5-2311f6420e8f" visibility="none"><settings><FilterType>0|3</FilterType><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><FilterMode>False</FilterMode><ValidChars>.</ValidChars><controlname>textboxcontrol</controlname><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><Trim>True</Trim></settings></field><field column="SKUDepth" fieldcaption="{$com.sku.depth$}" visible="true" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="01b371cb-8598-4409-82a5-955e5178dbfa" visibility="none"><settings><FilterType>0|3</FilterType><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><FilterMode>False</FilterMode><ValidChars>.</ValidChars><controlname>textboxcontrol</controlname><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><Trim>True</Trim></settings></field><category name="com.sku.inventorycategory" caption="{$com.sku.inventorycategory$}" visible="True" /><field column="SKUTrackInventory" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b008a40a-2651-4341-8779-872030271467" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="SKUSellOnlyAvailable" fieldcaption="{$com.sku.sellonlyavailable$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" fielddescription="Description" publicfield="false" guid="ca3ef874-bccc-401d-ae31-f5b40c99f900" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="SKUAvailableItems" fieldcaption="{$com.sku.availableitems$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="db263b45-b660-45e4-b02e-fa0819e75472" visibility="none"><settings><FilterType>0|3</FilterType><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><FilterMode>False</FilterMode><ValidChars>-</ValidChars><controlname>textboxcontrol</controlname><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><Trim>True</Trim></settings></field><field column="SKUReorderAt" fieldcaption="{$com.sku.reorderat$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8ff5a58e-6a4f-4a3d-9b98-0dc5e0c0b57f" visibility="none"><settings><FilterType>0|3</FilterType><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><FilterMode>False</FilterMode><ValidChars>-</ValidChars><controlname>textboxcontrol</controlname><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><Trim>False</Trim></settings></field><field column="SKUAvailableInDays" fieldcaption="{$com.sku.availableindays$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" captionstyle="margin-bottom: 20px; display: block;" inputcontrolstyle="margin-bottom: 20px;" publicfield="false" guid="7d56b109-15d2-41ed-ab41-c505b50b8386" visibility="none"><settings><FilterType>0|3</FilterType><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><FilterMode>False</FilterMode><ValidChars>-</ValidChars><controlname>textboxcontrol</controlname><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><Trim>True</Trim></settings></field><field column="SKUMinItemsInOrder" fieldcaption="{$com.sku.minitemsinorder$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="429d99b0-8c88-4a2c-9022-4e71e96d2998" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterType>0</FilterType><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><Trim>True</Trim></settings></field><field column="SKUMaxItemsInOrder" fieldcaption="{$com.sku.maxitemsinorder$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cf170044-35ac-4710-b82f-4c0162d805ff" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterType>0</FilterType><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><Trim>True</Trim></settings></field><category name="com.sku.analyticscategory" caption="{$com.sku.analyticscategory$}" visiblemacro="{%ProductSiteID &gt; 0%}" visible="True" /><field column="SKUConversionName" fieldcaption="{$com.sku.conversionname$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" controlcssclass="NoWrap" guid="0132fdb3-0cfc-4966-99ce-a7d8cfd4bf9a" visibility="none"><settings><controlname>conversionselector</controlname></settings></field><field column="SKUConversionValue" fieldcaption="{$com.sku.conversionvalue$}" visible="true" defaultvalue="0" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="870a3279-5120-4bc6-817c-318360a7fbb3" visibility="none"><settings><controlname>textbox_double_validator</controlname></settings></field><category name="com.sku.variantcategory" caption="{$com.sku.variantcategory$}" visible="True" /><field column="SKUParentSKUID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cfda202f-ccbf-47b8-9b24-d6feae3a470c" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SKUAllowAllVariants" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4ffd5e2e-b622-41b4-a4ea-52f3459d5b7f" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SKUInheritsDiscounts" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d6691ab6-021d-4434-90ab-4e413960be0f" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="SKUInheritsTaxClasses" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f9951968-8ca9-4a4a-a29e-c655bc84b08a" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_SKU', N'', N'', N'', N'', 1, 0, 0, N'', 0, N'', NULL, '20120823 10:47:35', 'f1349c42-bae7-4614-a2ec-a7e61d8867c5', 0, 1, 0, N'', 2, N'SKUName', N'SKUDescription', N'SKUImagePath', N'SKUCreated', N'<search><item searchable="True" name="SKUID" tokenized="False" content="False" id="07096f8c-260b-423e-bbf2-139646aa757f" /><item searchable="False" name="SKUGUID" tokenized="False" content="False" id="c333a1f2-6abc-41cc-b2aa-f5393e41c7eb" /><item searchable="False" name="SKUOptionCategoryID" tokenized="False" content="False" id="2e7cce9f-0604-4ccd-959b-2fddcf05cc71" /><item searchable="True" name="SKUOrder" tokenized="False" content="False" id="e1ab5b2d-f1c3-4281-a0df-82c67392cf59" /><item searchable="False" name="SKUSiteID" tokenized="False" content="False" id="623460fc-8f6d-40b4-a8bf-e522caa26ab4" /><item searchable="False" name="SKUName" tokenized="True" content="True" id="5f510822-b73f-4afc-a627-79d9aa956b8d" /><item searchable="True" name="SKUNumber" tokenized="False" content="False" id="e708b285-d2ee-4536-9d2a-448cac2173e3" /><item searchable="True" name="SKUPrice" tokenized="False" content="False" id="a09777ce-00d5-40a4-a4a2-f7fbf0069e8c" /><item searchable="False" name="SKURetailPrice" tokenized="False" content="False" id="66912cf8-e75d-4e86-95a0-14d42f38dbf8" /><item searchable="False" name="SKUDepartmentID" tokenized="False" content="False" id="3311a41b-d97d-4682-be19-05322428bd39" /><item searchable="False" name="SKUManufacturerID" tokenized="False" content="False" id="0e910dfb-5817-4d3d-b650-b820d3340d81" /><item searchable="False" name="SKUSupplierID" tokenized="False" content="False" id="ba2340d0-a55a-4f94-b41a-54b797e51171" /><item searchable="True" name="SKUImagePath" tokenized="False" content="False" id="c6ada065-96e2-4450-ac68-d09d045b998f" /><item searchable="False" name="SKUDescription" tokenized="True" content="True" id="34f5f061-81e2-4b3d-9f70-23ae6b16a1eb" /><item searchable="False" name="SKUShortDescription" tokenized="False" content="False" id="cae7627c-f9e1-4be6-a366-905326985844" /><item searchable="False" name="SKUProductType" tokenized="False" content="False" id="312fc4b0-94ec-4d07-9681-6061fbb27995" /><item searchable="False" name="SKUCustomData" tokenized="False" content="False" id="e31db95c-95ad-475f-be9e-954abcf3e959" /><item searchable="True" name="SKUCreated" tokenized="False" content="False" id="adfc80a8-2133-4102-a443-52ae6f45e27b" /><item searchable="False" name="SKULastModified" tokenized="False" content="False" id="0b2ee435-b555-4ac5-a1d4-0ba2a44a13cf" /><item searchable="False" name="SKUValidity" tokenized="False" content="False" id="189728fe-9f91-4b54-bfb3-fe4ef9fb1c31" /><item searchable="False" name="SKUValidFor" tokenized="False" content="False" id="1891e347-1f93-4a73-a8a2-ee919ceb34fc" /><item searchable="False" name="SKUValidUntil" tokenized="False" content="False" id="f2d4e932-2652-44ae-90e7-704d8cb32bf3" /><item searchable="False" name="SKUMembershipGUID" tokenized="False" content="False" id="1fda7eb5-058b-4745-9537-99f9dc6df8ad" /><item searchable="False" name="SKUMaxDownloads" tokenized="False" content="False" id="b901acff-46e4-430c-94c2-beb695120765" /><item searchable="False" name="SKUEproductFilesCount" tokenized="False" content="False" id="7da38843-705c-4470-a17b-c6b7fdf4f887" /><item searchable="False" name="SKUMinPrice" tokenized="False" content="False" id="9b1f8e57-e6f0-4091-99bb-5db1435966e0" /><item searchable="False" name="SKUMaxPrice" tokenized="False" content="False" id="20c237ad-ce14-44b2-9c51-b776c32c10d3" /><item searchable="False" name="SKUPrivateDonation" tokenized="False" content="False" id="0ee8559b-4cba-41e3-bb87-6e0d096edc6b" /><item searchable="False" name="SKUBundleInventoryType" tokenized="False" content="False" id="4974b750-af24-4b65-9d60-32bd0f0de6b5" /><item searchable="False" name="SKUBundleItemsCount" tokenized="False" content="False" id="8e0274dc-6f07-44c6-af6a-076ca509a0d9" /><item searchable="False" name="SKUInStoreFrom" tokenized="False" content="False" id="0a3a5a40-bd44-46d2-aba4-e5ef6e445c5f" /><item searchable="False" name="SKUPublicStatusID" tokenized="False" content="False" id="fba4c34c-8e49-4261-af0f-48b6994f0684" /><item searchable="False" name="SKUInternalStatusID" tokenized="False" content="False" id="67a5e591-9ab2-4d06-b119-5136133792de" /><item searchable="True" name="SKUEnabled" tokenized="False" content="False" id="d27d868c-7adc-4071-aeee-f0225e716bf3" /><item searchable="False" name="SKUNeedsShipping" tokenized="False" content="False" id="936bd940-c40a-410b-8e60-8700f92f6176" /><item searchable="True" name="SKUWeight" tokenized="False" content="False" id="92de2500-a904-4e51-8013-bf0cde1a9e54" /><item searchable="True" name="SKUHeight" tokenized="False" content="False" id="2cac8c7f-a7ce-4ca4-a0cc-28e5eabcf0a8" /><item searchable="True" name="SKUWidth" tokenized="False" content="False" id="4f7116fb-dfd9-486f-be40-0a88a00199b2" /><item searchable="True" name="SKUDepth" tokenized="False" content="False" id="a4dec066-f7a9-49f5-8c80-d1e676b1d5b6" /><item searchable="False" name="SKUTrackInventory" tokenized="False" content="False" id="56625f61-6c8b-444d-abba-717c388301a7" /><item searchable="True" name="SKUSellOnlyAvailable" tokenized="False" content="False" id="cc98f3f8-3e4e-4749-82f0-2293cc8c492d" /><item searchable="True" name="SKUAvailableItems" tokenized="False" content="False" id="5eea71b0-e95e-48bb-a054-8674c9eaf02e" /><item searchable="True" name="SKUAvailableInDays" tokenized="False" content="False" id="5a41c290-e714-4e7d-89b3-bcaf4e125922" /><item searchable="False" name="SKUMinItemsInOrder" tokenized="False" content="False" id="61146729-8241-49d2-beff-ea394f859926" /><item searchable="False" name="SKUMaxItemsInOrder" tokenized="False" content="False" id="a8d2abbe-511e-4a2b-87ba-17caca64048d" /><item searchable="False" name="SKUConversionName" tokenized="False" content="False" id="a8cb0dd0-b47b-450e-a438-ce3a0f38dcf3" /><item searchable="False" name="SKUConversionValue" tokenized="False" content="False" id="6a825230-d8b2-4cfe-b0fa-86759f2474b4" /><item searchable="False" name="SKUParentSKUID" tokenized="False" content="False" id="57dbf7d2-5aaa-4da9-aee0-f843f2eb88df" /><item searchable="False" name="SKUAllowAllVariants" tokenized="False" content="False" id="92646c28-e5ed-4ac0-ac2b-73c4e57a710d" /><item searchable="False" name="SKUInheritsDiscounts" tokenized="False" content="False" id="d263adcb-78f7-4b57-bebe-9ee7e77c1ad0" /><item searchable="False" name="SKUInheritsTaxClasses" tokenized="False" content="False" id="0c5870e8-e12e-4bae-a290-23c1b9baa11d" /><item searchable="False" name="testjandCustomField1" tokenized="False" content="False" id="5b2f291e-1a74-4c05-a534-120fa5572451" /><item searchable="False" name="testjandCustomField2" tokenized="False" content="False" id="4628d84c-c02d-4c8f-8533-fd86e38edef3" /><item searchable="False" name="testjandCustomField3" tokenized="False" content="False" id="0978445b-ba57-4534-bf77-f864381fa230" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1161, N'Ecommerce - Order item', N'ecommerce.orderitem', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_OrderItem">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="OrderItemID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="OrderItemOrderID" type="xs:int" />
              <xs:element name="OrderItemSKUID" type="xs:int" />
              <xs:element name="OrderItemSKUName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="OrderItemUnitPrice" type="xs:double" />
              <xs:element name="OrderItemUnitCount" type="xs:int" />
              <xs:element name="OrderItemCustomData" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="OrderItemGuid" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="OrderItemParentGuid" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="OrderItemLastModified" type="xs:dateTime" />
              <xs:element name="OrderItemIsPrivate" type="xs:boolean" minOccurs="0" />
              <xs:element name="OrderItemSKU" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="OrderItemValidTo" type="xs:dateTime" minOccurs="0" />
              <xs:element name="OrderItemBundleGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="OrderItemTotalPriceInMainCurrency" type="xs:double" minOccurs="0" />
              <xs:element name="OrderItemSendNotification" type="xs:boolean" minOccurs="0" />
              <xs:element name="OrderItemText" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="OrderItemPrice" type="xs:double" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_OrderItem" />
      <xs:field xpath="OrderItemID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="OrderItemID" fieldcaption="OrderItemID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="d4f766eb-288a-4b3e-87ea-d0929b2cd93f"><settings><controlname>labelcontrol</controlname></settings></field><field column="OrderItemOrderID" fieldcaption="OrderItemOrderID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6ff5cd02-cfdf-418e-b6df-dfb477ed8819"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderItemSKUID" fieldcaption="OrderItemSKUID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="94d1bc70-53c7-4753-9652-5f6929c372c8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderItemSKUName" fieldcaption="OrderItemSKUName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="4cfc2089-cbc3-4e95-9135-ff18a4602836" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderItemUnitPrice" fieldcaption="OrderItemUnitPrice" visible="true" columntype="double" fieldtype="CustomUserControl" system="true" publicfield="false" guid="76c993a3-e9c5-416f-96d7-7a0a8985cd42"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderItemUnitCount" fieldcaption="OrderItemUnitCount" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="aa23435f-dc7b-4836-9056-79e473c56153"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderItemCustomData" fieldcaption="OrderItemCustomData" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="274c6fda-298f-4dcd-84e8-2fdb1ec00f45"><settings><controlname>textareacontrol</controlname></settings></field><field column="OrderItemGuid" fieldcaption="OrderItemGuid" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8d32219d-22fd-4305-8ad8-fcc9053e35c5" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderItemParentGuid" fieldcaption="OrderItemParentGuid" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="581d726c-a02b-43f1-aa1d-1976a35aa14a" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="OrderItemBundleGUID" fieldcaption="OrderItemBundleGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="61e5d45b-8b47-4183-bf31-db5342f38738" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="OrderItemLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="599a7c93-bc13-497e-8f08-8da4a23e093a"><settings><controlname>calendarcontrol</controlname></settings></field><field column="OrderItemIsPrivate" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b4cd1d3c-39c6-4aff-a866-d66ba0587a7c" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="OrderItemValidTo" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1e3612e9-db5a-4158-a63b-a2afeaa9de56" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="OrderItemSendNotification" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2426d80e-7a3a-44fe-8c54-033ea0cfd892" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="OrderItemSKU" fieldcaption="OrderItemSKU" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="488da930-0ccb-4b81-bca1-05d073755331" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="OrderItemTotalPriceInMainCurrency" fieldcaption="OrderItemTotalPriceInMainCurrency" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="32aaf914-dd2f-4240-91b3-1417125a40de" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="OrderItemText" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6d24de89-1a8d-43eb-b4a4-4c32a4420b30" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="OrderItemPrice" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5ff2a596-54db-45dc-aebc-22c7f973489d" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_OrderItem', N'', N'', N'', N'', 1, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', '201d37f4-8961-45d1-9b34-05303f8df065', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1162, N'Ecommerce - Shopping cart', N'ecommerce.shoppingcart', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_ShoppingCart">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ShoppingCartID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ShoppingCartGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ShoppingCartUserID" type="xs:int" minOccurs="0" />
              <xs:element name="ShoppingCartSiteID" type="xs:int" />
              <xs:element name="ShoppingCartLastUpdate" type="xs:dateTime" />
              <xs:element name="ShoppingCartCurrencyID" type="xs:int" minOccurs="0" />
              <xs:element name="ShoppingCartPaymentOptionID" type="xs:int" minOccurs="0" />
              <xs:element name="ShoppingCartShippingOptionID" type="xs:int" minOccurs="0" />
              <xs:element name="ShoppingCartDiscountCouponID" type="xs:int" minOccurs="0" />
              <xs:element name="ShoppingCartBillingAddressID" type="xs:int" minOccurs="0" />
              <xs:element name="ShoppingCartShippingAddressID" type="xs:int" minOccurs="0" />
              <xs:element name="ShoppingCartCustomerID" type="xs:int" minOccurs="0" />
              <xs:element name="ShoppingCartNote" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ShoppingCartCompanyAddressID" type="xs:int" minOccurs="0" />
              <xs:element name="ShoppingCartCustomData" minOccurs="0">
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
      <xs:selector xpath=".//COM_ShoppingCart" />
      <xs:field xpath="ShoppingCartID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ShoppingCartID" fieldcaption="ShoppingCartID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="c46cbaf5-3ff2-4503-a206-d6f9c7967de6"><settings><controlname>labelcontrol</controlname></settings></field><field column="ShoppingCartGUID" fieldcaption="ShoppingCartGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="595611ae-e9d0-48bc-8dc4-c03f1aedaca6" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ShoppingCartUserID" fieldcaption="ShoppingCartUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4d7e8b85-0d95-45b8-8667-2149bbd30656"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ShoppingCartSiteID" fieldcaption="ShoppingCartSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="970e2c1d-f283-4280-8f58-3032e55473c2"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ShoppingCartLastUpdate" fieldcaption="ShoppingCartLastUpdate" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fc89a87d-246c-41da-b28d-ce9577e7d705"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ShoppingCartCurrencyID" fieldcaption="ShoppingCartCurrencyID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fa403d6a-27e8-4c85-af97-4e2653f9823b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ShoppingCartPaymentOptionID" fieldcaption="ShoppingCartPaymentOptionID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b4157cc5-c600-45af-b243-c4caea0d2b50"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ShoppingCartShippingOptionID" fieldcaption="ShoppingCartShippingOptionID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="58c0aa4e-e24e-4776-bb4b-e3adc1a67e63"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ShoppingCartDiscountCouponID" fieldcaption="ShoppingCartDiscountCouponID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="82f0b1e8-f3ac-4918-b414-c056744c346f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ShoppingCartBillingAddressID" fieldcaption="ShoppingCartBillingAddressID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="00ab0979-20f9-452c-8cb0-09cf2ef776b6"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ShoppingCartShippingAddressID" fieldcaption="ShoppingCartShippingAddressID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7014e4e5-6067-416b-bd27-2815fad98bea"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ShoppingCartCustomerID" fieldcaption="ShoppingCartCustomerID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="746649e0-c4fd-4b06-a05a-908cb3b3b875"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ShoppingCartNote" fieldcaption="ShoppingCartNote" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0fcd34b7-3982-44ef-914d-922ed3f99395"><settings><controlname>textareacontrol</controlname></settings></field><field column="ShoppingCartCompanyAddressID" fieldcaption="ShoppingCartCompanyAddressID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="40009fbf-c9b9-41c2-b717-491de0cfb316"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ShoppingCartCustomData" fieldcaption="ShoppingCartCustomData" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="43d0e526-c14a-4406-a7d1-eaa5ebc6636a"><settings><controlname>textareacontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_ShoppingCart', N'', N'', N'', N'', 1, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', 'c8a865c2-df9e-4f10-9b9e-f78bc0926f15', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1163, N'Ecommerce - Order status - user', N'ecommerce.OrderStatusUser', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_OrderStatusUser">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="OrderStatusUserID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="OrderID" type="xs:int" />
              <xs:element name="FromStatusID" type="xs:int" minOccurs="0" />
              <xs:element name="ToStatusID" type="xs:int" />
              <xs:element name="ChangedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="Date" type="xs:dateTime" />
              <xs:element name="Note" minOccurs="0">
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
      <xs:selector xpath=".//COM_OrderStatusUser" />
      <xs:field xpath="OrderStatusUserID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="OrderStatusUserID" fieldcaption="OrderStatusUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="32fe6606-1f77-42bc-8835-b4b8d09b1770"><settings><controlname>labelcontrol</controlname></settings></field><field column="OrderID" fieldcaption="OrderID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="89c15ea5-4d0a-485a-8648-bf16a26608c8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="FromStatusID" fieldcaption="FromStatusID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4c7ca64c-b914-422b-95d5-aa390862dace"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ToStatusID" fieldcaption="ToStatusID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="02f7c0cb-be80-4f2a-a4d3-83a4f834a921"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ChangedByUserID" fieldcaption="ChangedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a01e87ea-ab09-40fa-87cd-d0a76b2dc3cf"><settings><controlname>textboxcontrol</controlname></settings></field><field column="Date" fieldcaption="Date" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ddb5c3f2-4e45-4a6c-b9bc-bdb20510d49d"><settings><controlname>calendarcontrol</controlname></settings></field><field column="Note" fieldcaption="Note" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cb010f29-a80d-4232-b876-2c6a4fc48ad2"><settings><controlname>textareacontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_OrderStatusUser', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', 'd196077d-d956-4c09-9ffd-f8239ac3d81c', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1202, N'Ecommerce - Exchange rate', N'ecommerce.exchangerate', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_CurrencyExchangeRate">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ExchagneRateID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ExchangeRateToCurrencyID" type="xs:int" />
              <xs:element name="ExchangeRateValue" type="xs:double" />
              <xs:element name="ExchangeTableID" type="xs:int" />
              <xs:element name="ExchangeRateGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="ExchangeRateLastModified" type="xs:dateTime" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_CurrencyExchangeRate" />
      <xs:field xpath="ExchagneRateID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ExchagneRateID" fieldcaption="ExchagneRateID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="52028791-7170-424b-b587-3f0f3892084a"><settings><controlname>labelcontrol</controlname></settings></field><field column="ExchangeRateToCurrencyID" fieldcaption="ExchangeRateToCurrencyID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ae3af6c9-5fd8-44a7-b93c-9e42115aeff4"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ExchangeRateValue" fieldcaption="ExchangeRateValue" visible="true" columntype="double" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c68f77b3-fdb2-4f52-bb6f-848e143a836e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ExchangeTableID" fieldcaption="ExchangeTableID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="008e3a69-256a-498e-9333-88d7c3d9e02e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ExchangeRateGUID" fieldcaption="ExchangeRateGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a94dd2fb-461a-4433-b3f0-554ce6da1f20"><settings><controlname>unknown</controlname></settings></field><field column="ExchangeRateLastModified" fieldcaption="ExchangeRateLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="147c537e-88d2-4a8e-9fd0-35ccf666780f"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_CurrencyExchangeRate', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', '8cae6e0b-2da2-46a7-9a0b-fa73aed5e96b', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
SET IDENTITY_INSERT [CMS_Class] OFF
