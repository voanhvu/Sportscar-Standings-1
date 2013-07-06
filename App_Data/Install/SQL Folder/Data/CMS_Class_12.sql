SET IDENTITY_INSERT [CMS_Class] ON
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2841, N'Contact management - Contact', N'OM.Contact', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_Contact">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ContactID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ContactFirstName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactMiddleName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactLastName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactSalutation" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactTitleBefore" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactTitleAfter" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactJobTitle" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactAddress1" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactAddress2" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactCity" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactZIP" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="20" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactStateID" type="xs:int" minOccurs="0" />
              <xs:element name="ContactCountryID" type="xs:int" minOccurs="0" />
              <xs:element name="ContactMobilePhone" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="26" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactHomePhone" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="26" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactBusinessPhone" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="26" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactEmail" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactWebSite" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactBirthday" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ContactGender" type="xs:int" minOccurs="0" />
              <xs:element name="ContactStatusID" type="xs:int" minOccurs="0" />
              <xs:element name="ContactNotes" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactOwnerUserID" type="xs:int" minOccurs="0" />
              <xs:element name="ContactMonitored" type="xs:boolean" minOccurs="0" />
              <xs:element name="ContactMergedWithContactID" type="xs:int" minOccurs="0" />
              <xs:element name="ContactIsAnonymous" type="xs:boolean" />
              <xs:element name="ContactSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="ContactGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ContactLastModified" type="xs:dateTime" />
              <xs:element name="ContactCreated" type="xs:dateTime" />
              <xs:element name="ContactMergedWhen" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ContactGlobalContactID" type="xs:int" minOccurs="0" />
              <xs:element name="ContactBounces" type="xs:int" minOccurs="0" />
              <xs:element name="ContactLastLogon" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ContactCampaign" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactSalesForceLeadID" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="18" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactSalesForceLeadReplicationDisabled" type="xs:boolean" minOccurs="0" />
              <xs:element name="ContactSalesForceLeadReplicationDateTime" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ContactSalesForceLeadReplicationSuspensionDateTime" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ContactCompanyName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactSalesForceLeadReplicationRequired" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//OM_Contact" />
      <xs:field xpath="ContactID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ContactID" fieldcaption="ContactID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="18650e04-a7a9-47fc-98e9-f692386f29aa"><settings><controlname>labelcontrol</controlname></settings></field><field column="ContactFirstName" fieldcaption="First name" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="84594ecb-a64d-4860-8f4a-d7ee5a08c354" visibility="none" displayinsimplemode="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactMiddleName" fieldcaption="Middle name" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="ccf8d540-3f72-4b50-82a9-7349059035a3" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactLastName" fieldcaption="Last name" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="cd41b1d5-e269-44d0-af12-d323ef2d9716" visibility="none" translatefield="true" displayinsimplemode="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactSalutation" fieldcaption="Salutation" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="173ab8d6-e871-4bd4-87ed-85a1b98e6df3" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactTitleBefore" fieldcaption="Title before" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="b475c693-db39-4003-9258-e80a781e609f" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactTitleAfter" fieldcaption="Title after" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="c17b7368-e2aa-4865-99e1-082c9dc10b02" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactJobTitle" fieldcaption="Job title" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="2a60347a-6997-4fe1-90fc-ddc3e07d80c4" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactCompanyName" fieldcaption="Company name" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="c8415f67-aaf4-4d43-87d4-cb195df99a30" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactAddress1" fieldcaption="Address 1" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="bd8c4074-63e8-4251-8293-f91987ede2de" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactAddress2" fieldcaption="Address 2" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="4b8554c3-6cfb-453a-8fda-ea924b62886d" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactCity" fieldcaption="City" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="06f53e80-b855-4ab4-bd83-30d3056b1841" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactZIP" fieldcaption="ZIP code" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="20" publicfield="false" guid="7692d80e-b523-4051-93dd-f7e6606d9d5e" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactStateID" fieldcaption="State" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9f851997-36c8-4d84-a627-3715fe954ce7" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactCountryID" fieldcaption="Country" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="02b0d2d1-854c-4771-9126-da1ba713890a" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactMobilePhone" fieldcaption="Mobile phone" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="26" publicfield="false" guid="2427c757-3860-431e-892e-eecd1da26410" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactHomePhone" fieldcaption="Home phone" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="26" publicfield="false" guid="5bebebaa-4e84-4d4f-a924-7e2daf8d9767" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactBusinessPhone" fieldcaption="Business phone" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="26" publicfield="false" guid="278d9fd3-4c08-415c-8c1f-f0df9feab23b" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactEmail" fieldcaption="E-mail address" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="cc4e5abe-0ab1-4526-b792-e8cdf907ad4c" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactWebSite" fieldcaption="Web URL" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="9ed41a75-cc71-49f1-8142-733ba9aac0a4" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactBirthday" fieldcaption="Birthday" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="966346ba-d00e-4ac3-ab8a-1ad08bbd8ac6" visibility="none"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="ContactGender" fieldcaption="Gender" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6eb0cdc8-d4f1-433c-a39d-9fef3487d29e" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactStatusID" fieldcaption="Status" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="db330726-0a21-4714-9374-18991f8f2cd7" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactCampaign" fieldcaption="Campaign" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="df3722c4-a6b7-47d2-9535-209ad749bbf5" visibility="none" inheritable="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactNotes" fieldcaption="Notes" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="92e4dd75-3cbe-43f5-be33-0e4c99db025a" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><Wrap>True</Wrap><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactOwnerUserID" fieldcaption="Owner" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6b6c5e38-9b27-4500-b6c5-72511196d59c" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactMonitored" fieldcaption="Track activities" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cb68cef6-6a79-44d2-8b38-4afbf19c571a" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ContactMergedWithContactID" fieldcaption="Merged into" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="14af1be4-5f57-420d-8bb8-e4df3188a4f4" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactIsAnonymous" fieldcaption="Is anonymous" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f4693a12-35c1-4238-a030-d0ceb8c73df6" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ContactSiteID" fieldcaption="Site ID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0649f220-2dee-41fe-9bb0-2647a5e329bd" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactGUID" fieldcaption="Contact GUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e55c63af-e2e1-4f5b-9cc3-770e7f7d80eb" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ContactLastModified" fieldcaption="Last modified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9fe0b186-d2d0-40af-a791-f78e2c447cb4" visibility="none"><settings><DisplayNow>True</DisplayNow><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="ContactCreated" fieldcaption="Created" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="770b979e-92f8-44c3-8d84-410135a6b409" visibility="none"><settings><DisplayNow>True</DisplayNow><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="ContactMergedWhen" fieldcaption="Merged when" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="47b72355-d047-40b8-9d61-f88dc8f3d111" visibility="none"><settings><DisplayNow>True</DisplayNow><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="ContactGlobalContactID" fieldcaption="Global Contact ID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="43e89736-5d65-45b0-9d4e-708d4a7d685c" visibility="none"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field><field column="ContactBounces" fieldcaption="Bounces" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0e414b04-bfd2-4191-998a-3f9f9124879f" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactLastLogon" fieldcaption="Last logon" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8f8914b7-b88d-49fc-9ed9-566be9dfd9ac" visibility="none"><settings><DisplayNow>True</DisplayNow><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="ContactSalesForceLeadID" fieldcaption="SalesForce - Lead ID" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="18" publicfield="false" guid="d84aa39e-d95c-4e53-99c4-69e5ba4aab23" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactSalesForceLeadReplicationDisabled" fieldcaption="SalesForce - Replication disabled" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="bbe2667c-538c-48fd-9d6c-9378207fb0df" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ContactSalesForceLeadReplicationDateTime" fieldcaption="SalesForce - Replication date" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="531e86dc-3c94-4fdc-83ab-ddad002c26fa" visibility="none"><settings><DisplayNow>True</DisplayNow><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="ContactSalesForceLeadReplicationSuspensionDateTime" fieldcaption="SalesForce - Replication suspension date" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d4655c8b-f017-45d4-863d-5f9283acd11d" visibility="none"><settings><DisplayNow>True</DisplayNow><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><field column="ContactSalesForceLeadReplicationRequired" fieldcaption="SalesForce - Replication required" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ed635ea1-58a9-40af-8429-501b10fe6f71" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'OM_Contact', N'', N'', N'', N'', 1, 0, 0, N'', 0, N'', NULL, '20120903 15:58:31', 'a7ca5324-19a5-4104-9579-ef54c7fca5fa', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'CMSOMConnectionString', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2843, N'Contact management - Contact status', N'OM.ContactStatus', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_ContactStatus">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ContactStatusID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ContactStatusName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactStatusDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactStatusDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactStatusSiteID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//OM_ContactStatus" />
      <xs:field xpath="ContactStatusID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ContactStatusID" fieldcaption="ContactStatusID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="ee533c1f-3b09-431c-b84b-20469cb0f002" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ContactStatusDisplayName" fieldcaption="{$general.displayname$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="ab35703c-8527-4f07-b98a-5dc8cf33b825" visibility="none" translatefield="true"><settings><controlname>localizabletextbox</controlname></settings></field><field column="ContactStatusName" fieldcaption="{$general.codename$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="540a85be-c86b-45de-97e1-721af811a8bf" visibility="none"><settings><controlname>codename</controlname></settings></field><field column="ContactStatusDescription" fieldcaption="{$general.description$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ccf8688b-03dc-4b5f-a177-e893abadd45b" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactStatusSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c32fe1f8-70f0-4c71-b1a7-5a5630386ef4" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'OM_ContactStatus', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:19', '8c6ea654-3e7f-4838-89b4-6633ab851b8c', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'CMSOMConnectionString', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2844, N'Contact management - Contact role', N'OM.ContactRole', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_ContactRole">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ContactRoleID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ContactRoleName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactRoleDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactRoleDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactRoleSiteID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//OM_ContactRole" />
      <xs:field xpath="ContactRoleID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ContactRoleID" fieldcaption="ContactRoleID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="378c0bef-aa2e-4038-93fe-0d378a526b9e" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ContactRoleDisplayName" fieldcaption="{$general.displayname$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="4d9eacf2-3bb1-47b8-b32e-a34d55adb36f" visibility="none" translatefield="true"><settings><controlname>localizabletextbox</controlname></settings></field><field column="ContactRoleName" fieldcaption="{$general.codename$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="2447dbcc-aa1f-4be9-a1b3-d35567bec9f0" visibility="none"><settings><controlname>codename</controlname></settings></field><field column="ContactRoleDescription" fieldcaption="{$general.description$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="86e4aa34-d34c-423f-9705-e9ddce795b54" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ContactRoleSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="357fdbc7-b7f3-4bf9-be8b-8f8d7ed8800d" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'OM_ContactRole', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:19', '6ef5e1b9-08d9-4dfa-a748-e483afe72621', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'CMSOMConnectionString', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2848, N'Contact management - AccountContact', N'OM.AccountContact', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_AccountContact">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="AccountContactID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ContactRoleID" type="xs:int" minOccurs="0" />
              <xs:element name="AccountID" type="xs:int" />
              <xs:element name="ContactID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//OM_AccountContact" />
      <xs:field xpath="AccountContactID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="AccountContactID" fieldcaption="AccountContactID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="f4b7d8c1-777b-410e-b1c2-6e6251449216"><settings><controlname>labelcontrol</controlname></settings></field><field column="ContactRoleID" fieldcaption="ContactRoleID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="bcfc3aba-b780-4350-b6a7-930d6d4ff8d8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AccountID" fieldcaption="AccountID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="67ab562d-fa08-4bfd-930c-de1b9d916b6f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ContactID" fieldcaption="ContactID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="96361cb2-9434-4b11-b430-b799dbce84ad"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'OM_AccountContact', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:19', '6f8e05a4-3bc3-4d45-a4ea-905664c3a84e', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'CMSOMConnectionString', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2850, N'Contact management - Contact group', N'OM.ContactGroup', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_ContactGroup">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ContactGroupID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ContactGroupName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactGroupDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactGroupDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactGroupSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="ContactGroupDynamicCondition" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ContactGroupScheduledTaskID" type="xs:int" minOccurs="0" />
              <xs:element name="ContactGroupEnabled" type="xs:boolean" minOccurs="0" />
              <xs:element name="ContactGroupLastModified" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ContactGroupGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="ContactGroupStatus" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//OM_ContactGroup" />
      <xs:field xpath="ContactGroupID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ContactGroupID" fieldcaption="ContactGroupID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="8254be8f-7554-4c85-8d8b-f16e0ec2bd5f"><settings><controlname>labelcontrol</controlname></settings></field><field column="ContactGroupName" fieldcaption="ContactGroupName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="5c5692fb-85c4-409f-a6e6-6f6670a52f7d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ContactGroupDisplayName" fieldcaption="ContactGroupDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="0b8230c0-06a2-4378-9435-8f475865687a" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ContactGroupDescription" fieldcaption="ContactGroupDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="99c12065-9aa0-4dce-835d-949a31f4162e" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="ContactGroupSiteID" fieldcaption="ContactGroupSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3fd1a0bc-a707-47ac-8697-639814b7d8c5"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ContactGroupDynamicCondition" fieldcaption="ContactGroupDynamicCondition" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fd9391ed-bfab-4753-bc4d-a98e0457ce1a"><settings><controlname>textareacontrol</controlname></settings></field><field column="ContactGroupScheduledTaskID" fieldcaption="ContactGroupScheduledTaskID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="30f002f8-04f7-4af6-8e4c-b0984ac7c36c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ContactGroupEnabled" fieldcaption="ContactGroupEnabled" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b2572394-a920-4f7e-81a9-5cc435925099" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ContactGroupLastModified" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b6dff322-4c32-46ec-a06b-2b096a148658" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ContactGroupGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="affe9d0f-3c70-4a67-90f8-d61075eb1b55" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ContactGroupStatus" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8c338293-e30c-4b0c-bae3-58eea2993f58" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'OM_ContactGroup', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:19', '97f104ff-d87a-48b8-a5db-216786f9344e', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'CMSOMConnectionString', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2852, N'Contact management - Contact group member', N'OM.ContactGroupMember', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_ContactGroupMember">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ContactGroupMemberID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ContactGroupMemberContactGroupID" type="xs:int" />
              <xs:element name="ContactGroupMemberType" type="xs:int" />
              <xs:element name="ContactGroupMemberRelatedID" type="xs:int" />
              <xs:element name="ContactGroupMemberFromCondition" type="xs:boolean" minOccurs="0" />
              <xs:element name="ContactGroupMemberFromAccount" type="xs:boolean" minOccurs="0" />
              <xs:element name="ContactGroupMemberFromManual" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//OM_ContactGroupMember" />
      <xs:field xpath="ContactGroupMemberID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ContactGroupMemberID" fieldcaption="ContactGroupMemberID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="90ead803-7778-4f92-bddb-96392f9de47e"><settings><controlname>labelcontrol</controlname></settings></field><field column="ContactGroupMemberContactGroupID" fieldcaption="ContactGroupMemberContactGroupID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bfa9a1f4-f74f-422e-8c63-09b3f285940c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ContactGroupMemberType" fieldcaption="ContactGroupMemberType" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d483d94a-3fc2-4aa2-81d7-630ea8fb5b69"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ContactGroupMemberRelatedID" fieldcaption="ContactGroupMemberRelatedID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d63f5de4-1a7e-4d6f-a5da-911216c3387d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ContactGroupMemberFromCondition" fieldcaption="ContactGroupMemberFromCondition" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8787c195-4535-4b2e-9ad0-49d59d5e1219"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ContactGroupMemberFromAccount" fieldcaption="ContactGroupMemberFromAccount" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="dae88fb9-e687-4658-8b3c-7ac140387db6"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ContactGroupMemberFromManual" fieldcaption="ContactGroupMemberFromManual" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b54f0668-da33-453e-9997-0d1726a199a2"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'OM_ContactGroupMember', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:19', '00327990-a464-416f-bc40-982e4f50b75b', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'CMSOMConnectionString', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2853, N'Contact management - Membership', N'OM.Membership', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_Membership">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="MembershipID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="RelatedID" type="xs:int" />
              <xs:element name="MemberType" type="xs:int" />
              <xs:element name="MembershipGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="MembershipCreated" type="xs:dateTime" />
              <xs:element name="OriginalContactID" type="xs:int" />
              <xs:element name="ActiveContactID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//OM_Membership" />
      <xs:field xpath="MembershipID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="MembershipID" fieldcaption="MembershipID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="3fde76e8-499f-480b-8263-72faf59abfaf"><settings><controlname>labelcontrol</controlname></settings></field><field column="RelatedID" fieldcaption="RelatedID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2c5889ba-0b23-4945-a716-8c1cd7e7cf14"><settings><controlname>textboxcontrol</controlname></settings></field><field column="MemberType" fieldcaption="MemberType" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="74d74e56-841a-4806-9b1d-50f2d62af849" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="MembershipGUID" fieldcaption="MembershipGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5afe204e-d410-466d-85f8-544ab8a380b0"><settings><controlname>labelcontrol</controlname></settings></field><field column="MembershipCreated" fieldcaption="MembershipCreated" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="628f5301-1490-4e02-84fc-4ced237f15d0"><settings><controlname>calendarcontrol</controlname></settings></field><field column="OriginalContactID" fieldcaption="OriginalContactID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bd58535d-c7c8-4086-ae88-7a82113f35b4"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ActiveContactID" fieldcaption="ActiveContactID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="223dcffb-f53e-4a1f-ae8e-dc08b38e5b41"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'OM_Membership', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120719 18:28:13', '8d4dc93d-ac34-48f4-8977-90788ef5fd1d', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'CMSOMConnectionString', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2854, N'Contact management - Activity', N'OM.Activity', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_Activity">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ActivityID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ActivityActiveContactID" type="xs:int" />
              <xs:element name="ActivityOriginalContactID" type="xs:int" />
              <xs:element name="ActivityCreated" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ActivityType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActivityItemID" type="xs:int" minOccurs="0" />
              <xs:element name="ActivityItemDetailID" type="xs:int" minOccurs="0" />
              <xs:element name="ActivityValue" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActivityURL" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActivityTitle" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActivitySiteID" type="xs:int" minOccurs="0" />
              <xs:element name="ActivityGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ActivityIPAddress" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActivityComment" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActivityCampaign" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActivityURLReferrer" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActivityCulture" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="10" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActivityNodeID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//OM_Activity" />
      <xs:field xpath="ActivityID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ActivityID" fieldcaption="ActivityID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="5d3c983f-e8a6-4164-b18c-49834d046588"><settings><controlname>labelcontrol</controlname></settings></field><field column="ActivityActiveContactID" fieldcaption="ActivityActiveContactID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bfb83fb9-da4f-40bb-9923-c328e526664a" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ActivityOriginalContactID" fieldcaption="ActivityOriginalContactID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ab69f043-3de1-463f-bbe1-b338b86e5f44" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ActivityType" fieldcaption="ActivityType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="250" publicfield="false" guid="e90919e1-7a7d-4bf4-8178-592b0edda080" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><category name="Activity data" caption="Activity details" visible="True" /><field column="ActivityItemID" fieldcaption="{$om.activity.activityitem$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1e18dc64-c5a3-4ae5-8c65-1fad3e2f6b22" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ActivityItemDetailID" fieldcaption="{$om.activity.activityitemdetail$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6fb533b0-2036-49e2-9c36-e92bfb1e2205" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ActivityValue" fieldcaption="{$om.activity.value$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" guid="7e1bf8d5-33bb-4e36-9727-bdb6a04fb7b0" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ActivityCreated" fieldcaption="{$om.activity.activitytime$}" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="db2eba1f-fec7-4019-b1c0-cfd4bfaf314f" visibility="none"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field><category name="Location" visible="True" /><field column="ActivityNodeID" fieldcaption="{$om.scoring.page$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a103a7a6-e54e-412b-a361-8af46626f133" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ActivityURL" fieldcaption="{$om.activity.url$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="209bc147-d2a8-4dcd-aff9-e9c0de77c220" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><category name="Description" visible="True" /><field column="ActivityTitle" fieldcaption="{$om.activity.title$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" guid="72b362da-019d-4679-a29f-cfd87909d18b" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ActivityComment" fieldcaption="{$om.activity.activitycomment$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2d92df26-e285-494c-b07a-2564ab0c73c0" visibility="none"><settings><ShowItalic>True</ShowItalic><ShowColor>True</ShowColor><ShowQuote>True</ShowQuote><ShowImage>True</ShowImage><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><ShowUnderline>True</ShowUnderline><ShowCode>True</ShowCode><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><ShowUrl>True</ShowUrl><ShowBold>True</ShowBold><ShowStrike>True</ShowStrike><Autoresize_Hashtable>True</Autoresize_Hashtable><MediaDialogConfiguration>True</MediaDialogConfiguration><UsePromptDialog>True</UsePromptDialog></settings></field><category name="Context information" caption="Context" visible="True" /><field column="ActivityCampaign" fieldcaption="{$om.activity.campaign$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="c5ec06be-8c55-41c5-8e11-ffeb5ec0d600" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ActivityCulture" fieldcaption="{$om.scoring.culture$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="10" publicfield="false" guid="4aa00d2f-43dc-403f-93fc-ddc5b059434c" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><category name="Browser" caption="Browser information" visible="True" /><field column="ActivityIPAddress" fieldcaption="{$om.activity.ipaddress$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="bd611bde-53e7-4d46-8dda-e9404a21a4ef" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ActivityURLReferrer" fieldcaption="{$om.activity.urlreferrer$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cf247454-7ab5-4e3f-a239-7b0fa57d3884" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><category name="System data" visible="True" /><field column="ActivityGUID" fieldcaption="ActivityGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f94bf0ad-39ec-4fc3-bc0f-1041a3389711" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ActivitySiteID" fieldcaption="ActivitySiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fb41f1a4-f2f9-4d9e-b161-43f4eca82d5b" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><category name="Additional settings" caption="Additional details" visible="True" /></form>', N'', N'', N'', N'OM_Activity', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120719 18:33:32', '77fa65bf-2a57-42a1-a738-c29d6f0f444a', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'CMSOMConnectionString', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2855, N'Contact management - IP address', N'OM.IP', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_IP">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="IPID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="IPActiveContactID" type="xs:int" />
              <xs:element name="IPOriginalContactID" type="xs:int" />
              <xs:element name="IPAddress" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="IPCreated" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//OM_IP" />
      <xs:field xpath="IPID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="IPID" fieldcaption="IPID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="e359eed6-b362-45de-b02f-634f2865b1bc" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="IPActiveContactID" fieldcaption="IPActiveContactID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0cd441ce-a001-497b-a400-6b7bfd789beb" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="IPOriginalContactID" fieldcaption="IPOriginalContactID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="04a41edb-ba92-4c0f-9c5c-005ba414a7e5" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="IPAddress" fieldcaption="IPAddress" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="71037126-5448-429e-9ac2-46427ce20790" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="IPCreated" fieldcaption="IPCreated" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="89a368c6-2720-48fd-8595-cc4029e39926" visibility="none"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field></form>', N'', N'', N'', N'OM_IP', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120719 18:36:41', 'fc25fa6c-9d70-4c83-9195-a7326bce2fc8', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'CMSOMConnectionString', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2856, N'Contact management - User agent', N'OM.UserAgent', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_UserAgent">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="UserAgentID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="UserAgentString">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserAgentActiveContactID" type="xs:int" />
              <xs:element name="UserAgentOriginalContactID" type="xs:int" />
              <xs:element name="UserAgentCreated" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//OM_UserAgent" />
      <xs:field xpath="UserAgentID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="UserAgentID" fieldcaption="UserAgentID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="e071be4f-6728-4132-b362-ef8381d36d4c"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserAgentString" fieldcaption="UserAgentString" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="487b63a0-d2a3-4871-b377-adc9737c7eaa" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="UserAgentActiveContactID" fieldcaption="UserAgentActiveContactID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9e416ad8-c509-4b9a-92b5-276aa9bb4e6f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserAgentOriginalContactID" fieldcaption="UserAgentOriginalContactID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4ee1b681-4b56-4eda-a877-107be04d84d1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserAgentCreated" fieldcaption="UserAgentCreated" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a1b1df83-8077-4cc3-8013-73f45d43247c"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'OM_UserAgent', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:19', '8c00ef9a-f446-4b47-921f-c4dcb295db31', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'CMSOMConnectionString', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2857, N'Contact management - Activity type', N'OM.ActivityType', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_ActivityType">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ActivityTypeID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ActivityTypeDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActivityTypeName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActivityTypeEnabled" type="xs:boolean" minOccurs="0" />
              <xs:element name="ActivityTypeIsCustom" type="xs:boolean" minOccurs="0" />
              <xs:element name="ActivityTypeDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActivityTypeManualCreationAllowed" type="xs:boolean" minOccurs="0" />
              <xs:element name="ActivityTypeMainFormControl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ActivityTypeDetailFormControl" minOccurs="0">
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
      <xs:selector xpath=".//OM_ActivityType" />
      <xs:field xpath="ActivityTypeID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ActivityTypeID" fieldcaption="ActivityTypeID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="eb811a14-d44f-4fae-ba89-ef3f4341f6f5" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ActivityTypeDisplayName" fieldcaption="ActivityTypeDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="250" publicfield="false" guid="d96c07e8-00fb-4b89-8015-8de31dc4e25f" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ActivityTypeName" fieldcaption="ActivityTypeName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="250" publicfield="false" guid="42c30a9e-4855-4bad-b0d3-3197e6114268" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ActivityTypeEnabled" fieldcaption="ActivityEnabled" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9b57bc43-521f-478f-867b-83b5e381240f" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ActivityTypeIsCustom" fieldcaption="ActivityIsCustom" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1434163d-dd6e-4f05-84b9-578c1e9d7dd6" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ActivityTypeDescription" fieldcaption="ActivityDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="74d0880f-9b39-4deb-9f06-c19c704f5307" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ActivityTypeManualCreationAllowed" fieldcaption="ActivityTypeManualCreationAllowed" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="cd4f230d-ddfc-4fc8-9772-99740c13dec2" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ActivityTypeMainFormControl" fieldcaption="Main form control" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="b8e414ba-b56d-4191-8692-7dcbd990e758" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ActivityTypeDetailFormControl" fieldcaption="Detail form control" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="632db9b8-7929-473e-9e38-9b2d43a76024" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'OM_ActivityType', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:19', 'e1c6d908-d1f7-4495-a06b-c070ead822a9', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'CMSOMConnectionString', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2858, N'Contact management - Page visit', N'OM.PageVisit', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_PageVisit">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="PageVisitID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="PageVisitDetail" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageVisitActivityID" type="xs:int" />
              <xs:element name="PageVisitABVariantName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PageVisitMVTCombinationName" minOccurs="0">
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
      <xs:selector xpath=".//OM_PageVisit" />
      <xs:field xpath="PageVisitID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="PageVisitID" fieldcaption="PageVisitID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="388493c9-71ff-4897-958a-94a2bc5497db"><settings><controlname>labelcontrol</controlname></settings></field><field column="PageVisitActivityID" fieldcaption="PageVisitActivityID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f3a0c519-ff2c-4654-8198-e6d3b6c70418" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="PageVisitDetail" fieldcaption="{$om.scoring.pagevisitdetail$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="916559c2-b5df-4d6b-bd8c-d4f76790e6f5" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="PageVisitABVariantName" fieldcaption="{$om.scoring.pagevisitabvariant$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="86730fa7-73d4-4b55-bf9c-db66a4c09894" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="PageVisitMVTCombinationName" fieldcaption="{$om.scoring.pagevisitmvtcomb$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="2d351910-f35a-464f-8716-338fd6c1726f" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'OM_PageVisit', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:19', 'c8bf01da-7d31-49aa-b24a-2aa97e95abf1', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'CMSOMConnectionString', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2860, N'Contact management - Search', N'OM.Search', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="OM_Search">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SearchID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SearchActivityID" type="xs:int" />
              <xs:element name="SearchProvider" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SearchKeywords">
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
      <xs:selector xpath=".//OM_Search" />
      <xs:field xpath="SearchID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SearchID" fieldcaption="SearchID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="3a9552cd-7d19-441e-bd01-dff44eed9a91" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SearchActivityID" fieldcaption="SearchActivityID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c22b0e1a-e6e7-4ba7-808e-c8509f720867" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SearchProvider" fieldcaption="{$om.scoring.searchprovider$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" guid="e8fb268b-1dec-4eba-a773-9a28a9b67cce" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SearchKeywords" fieldcaption="{$om.scoring.searchkeyword$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7c84cee9-14fb-4694-8ae8-10b94691e8d0" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'OM_Search', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:19', '36e572ec-7a34-4043-8aa9-e9cb15114017', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'CMSOMConnectionString', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2881, N'Search engine', N'CMS.SearchEngine', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_SearchEngine">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SearchEngineID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SearchEngineDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SearchEngineName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SearchEngineDomainRule">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SearchEngineKeywordParameter" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SearchEngineGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="SearchEngineLastModified" type="xs:dateTime" />
              <xs:element name="SearchEngineCrawler" minOccurs="0">
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
      <xs:selector xpath=".//CMS_SearchEngine" />
      <xs:field xpath="SearchEngineID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SearchEngineID" fieldcaption="SearchEngineID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="d7aa8890-60ac-46fb-ac9b-c91bc26ecc16" visibility="none" translatefield="true"><settings><controlname>labelcontrol</controlname></settings></field><field column="SearchEngineDisplayName" fieldcaption="{$searchengine.displayname$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="c8db1d0d-ef3c-44aa-8d19-ad975f5801fd" visibility="none" translatefield="true"><settings><controlname>localizabletextbox</controlname></settings></field><field column="SearchEngineName" fieldcaption="{$SearchEngine.codename$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="bd8b57d3-0bb1-402f-aa89-571c10db07a4" visibility="none" translatefield="true"><settings><controlname>codename</controlname></settings></field><field column="SearchEngineDomainRule" fieldcaption="{$SearchEngine.domainrule$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="379764c1-6523-4c7d-a9d6-795d3c270c52" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SearchEngineKeywordParameter" fieldcaption="{$SearchEngine.keyword$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="52983b96-ce90-4a46-b08e-b95ff4e2e045" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="SearchEngineGUID" fieldcaption="SearchEngineGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fbf52e80-7fe2-466e-b132-c2e2a8c7e74e" visibility="none" translatefield="true"><settings><controlname>labelcontrol</controlname></settings></field><field column="SearchEngineLastModified" fieldcaption="SearchEngineLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e68e6195-d166-48fc-b2c3-7ea19a252a7b" visibility="none" translatefield="true"><settings><controlname>calendarcontrol</controlname></settings></field><field column="SearchEngineCrawler" fieldcaption="{$SearchEngine.UserAgent$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="214d5c45-e378-4acc-a1c5-f5d623d0acb6" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'CMS_SearchEngine', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:28', '118ef47d-2be7-4337-aa49-b20287248efe', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2884, N'Integration - Connector', N'Integration.Connector', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Integration_Connector">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ConnectorID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ConnectorName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ConnectorDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="440" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ConnectorAssemblyName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ConnectorClassName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ConnectorEnabled" type="xs:boolean" />
              <xs:element name="ConnectorLastModified" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Integration_Connector" />
      <xs:field xpath="ConnectorID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ConnectorID" fieldcaption="ConnectorID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="2fa72235-5398-43d9-8d48-65a978d5f4e4"><settings><controlname>labelcontrol</controlname></settings></field><field column="ConnectorName" fieldcaption="ConnectorName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="fde86c81-e225-4843-9bcf-7af779dd02ec"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ConnectorDisplayName" fieldcaption="ConnectorDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="440" publicfield="false" guid="d01e7018-93d6-426a-9a35-f1bbb74923ce" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ConnectorAssemblyName" fieldcaption="ConnectorAssemblyName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="400" publicfield="false" guid="52f0a5a2-3874-4dc4-9898-0d4fa136263d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ConnectorClassName" fieldcaption="ConnectorClassName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="400" publicfield="false" guid="3f8f2199-9bd7-4e77-9df9-f67d6cfe2aa4"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ConnectorEnabled" fieldcaption="ConnectorEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1717dead-6e78-4546-8f34-ba85b4d88718"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ConnectorLastModified" fieldcaption="ConnectorLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7c2a1e25-157e-45f6-9138-e0cccb2a1bac"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'Integration_Connector', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:23', '8dc5bb80-21ae-4744-b6e7-dab9568c42c0', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2885, N'Integration - Task', N'Integration.Task', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Integration_Task">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TaskID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TaskNodeID" type="xs:int" minOccurs="0" />
              <xs:element name="TaskDocumentID" type="xs:int" minOccurs="0" />
              <xs:element name="TaskNodeAliasPath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TaskTitle">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
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
              <xs:element name="TaskIsInbound" type="xs:boolean" />
              <xs:element name="TaskProcessType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
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
              <xs:element name="TaskSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="TaskDataType" minOccurs="0">
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
      <xs:selector xpath=".//Integration_Task" />
      <xs:field xpath="TaskID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TaskID" fieldcaption="TaskID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="9b26c8b8-aadb-4e0d-93c7-4c5aa36d2ca6"><settings><controlname>labelcontrol</controlname></settings></field><field column="TaskNodeID" fieldcaption="TaskNodeID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="70b7d91e-5cd1-4af6-9cf7-280c40cdd669"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskDocumentID" fieldcaption="TaskDocumentID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="95585887-249d-4323-bba8-d6868b6de34e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskNodeAliasPath" fieldcaption="TaskNodeAliasPath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="806cf9cf-197d-47d8-a2f6-b603c18363d1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskTitle" fieldcaption="TaskTitle" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="52b9ff56-c147-401c-af53-553d97894d48" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskTime" fieldcaption="TaskTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2c7f99ac-6a35-4e98-9425-148fb7efe8e7"><settings><controlname>calendarcontrol</controlname></settings></field><field column="TaskType" fieldcaption="TaskType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="50" publicfield="false" guid="520299ec-2577-40d5-a8dd-b16351512d59"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskObjectType" fieldcaption="TaskObjectType" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="5566cb6d-6cb0-4128-b9a3-228bd5ebcb32"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskObjectID" fieldcaption="TaskObjectID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e1dbaac6-9d5d-4cab-bcc9-98b57bef1185"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskIsInbound" fieldcaption="TaskIsInbound" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5827bf7a-d583-4ea4-a9d6-bf7ae8ed1942"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TaskProcessType" fieldcaption="TaskProcessType" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="0539b561-4830-4875-a43d-fb09104e6583"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskData" fieldcaption="TaskData" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8a0bc8b9-2eb1-4be4-9711-825ae8a2076b"><settings><controlname>textareacontrol</controlname></settings></field><field column="TaskSiteID" fieldcaption="TaskSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ee44a207-69df-42fd-82dc-7705500a6aff"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskDataType" fieldcaption="TaskDataType" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="ea1ba086-9abf-43ab-b48a-45e6fe5a585f"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Integration_Task', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:23', 'b2409753-2393-4912-8e49-a481c1dbcfe3', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2886, N'Integration - Sychronization log', N'Integration.SyncLog', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Integration_SyncLog">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SyncLogID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SyncLogSynchronizationID" type="xs:int" />
              <xs:element name="SyncLogTime" type="xs:dateTime" />
              <xs:element name="SyncLogErrorMessage" minOccurs="0">
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
      <xs:selector xpath=".//Integration_SyncLog" />
      <xs:field xpath="SyncLogID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SyncLogID" fieldcaption="SyncLogID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="a3145728-c1dd-4e62-8218-aacf30ef0bfa"><settings><controlname>labelcontrol</controlname></settings></field><field column="SyncLogSynchronizationID" fieldcaption="SyncLogSynchronizationID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="500e6067-0c61-4279-83db-a0045ec7348e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SyncLogTime" fieldcaption="SyncLogTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="eb4bceaa-33d2-4191-9aa6-30c74de223aa"><settings><controlname>calendarcontrol</controlname></settings></field><field column="SyncLogErrorMessage" fieldcaption="SyncLogErrorMessage" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5d24d069-8de8-4a52-af48-0380ec76eba9"><settings><controlname>textareacontrol</controlname></settings></field></form>', N'', N'', N'', N'Integration_SyncLog', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:23', '25031924-1a7e-49e5-a39f-b876e2c5206a', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2887, N'Integration - Synchronization', N'Integration.Synchronization', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Integration_Synchronization">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SynchronizationID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SynchronizationTaskID" type="xs:int" />
              <xs:element name="SynchronizationConnectorID" type="xs:int" />
              <xs:element name="SynchronizationLastRun" type="xs:dateTime" />
              <xs:element name="SynchronizationErrorMessage" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SynchronizationIsRunning" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Integration_Synchronization" />
      <xs:field xpath="SynchronizationID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SynchronizationID" fieldcaption="SynchronizationID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="de3e9c47-2d72-4385-b082-e55bb73f98d5"><settings><controlname>labelcontrol</controlname></settings></field><field column="SynchronizationTaskID" fieldcaption="SynchronizationTaskID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="dc91ea88-bab5-4233-903b-6258f451af4c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SynchronizationConnectorID" fieldcaption="SynchronizationConnectorID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6f2ed46e-788f-4eaa-863c-302288e14ba7"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SynchronizationLastRun" fieldcaption="SynchronizationLastRun" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="cc970e65-3be8-4d69-948d-b105112fa661"><settings><controlname>calendarcontrol</controlname></settings></field><field column="SynchronizationErrorMessage" fieldcaption="SynchronizationErrorMessage" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a9d74284-362e-43fa-b1a0-806b89724d74"><settings><controlname>textareacontrol</controlname></settings></field><field column="SynchronizationIsRunning" fieldcaption="SynchronizationIsRunning" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f9052ec7-5742-41f9-9d78-8d2971477d01"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Integration_Synchronization', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:23', '8b8fc6de-ba0d-4166-88cb-c83e3863494f', 0, 0, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2889, N'Conversion', N'Analytics.Conversion', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Analytics_Conversion">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ConversionID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ConversionName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ConversionDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ConversionDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ConversionGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ConversionLastModified" type="xs:dateTime" />
              <xs:element name="ConversionSiteID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Analytics_Conversion" />
      <xs:field xpath="ConversionID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ConversionID" fieldcaption="ConversionID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="213f7a0f-771c-47d3-91f5-fbaf5ce12488" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ConversionDisplayName" fieldcaption="{$conversion.conversiondisplayname$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="407c3719-166f-4835-8683-f1e20e70989d" visibility="none" translatefield="true"><settings><controlname>localizabletextbox</controlname></settings></field><field column="ConversionName" fieldcaption="{$conversion.codename$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="63a5d713-deec-4938-9e6e-a39bf4ca4cb1" visibility="none"><settings><controlname>codename</controlname></settings></field><field column="ConversionSiteID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="52a0c590-d906-4842-91ec-55152e4ca1c2" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ConversionDescription" fieldcaption="{$conversion.description$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="62045130-603d-46c6-8a2d-566c2fce4243" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="ConversionGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="196fdbed-32c0-4cf0-8e4e-7ce66c2fa8f0" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ConversionLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7148d65a-1c4c-4082-8a73-3e428f6f0234" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'Analytics_Conversion', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:19', '8ff2047b-d987-4891-b82f-77f41b22eeab', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (2890, N'Campaign', N'Analytics.Campaign', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Analytics_Campaign">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="CampaignID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="CampaignName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CampaignDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CampaignDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CampaignSiteID" type="xs:int" />
              <xs:element name="CampaignImpressions" type="xs:int" minOccurs="0" />
              <xs:element name="CampaignOpenFrom" type="xs:dateTime" minOccurs="0" />
              <xs:element name="CampaignOpenTo" type="xs:dateTime" minOccurs="0" />
              <xs:element name="CampaignRules" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CampaignGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="CampaignLastModified" type="xs:dateTime" />
              <xs:element name="CampaignUseAllConversions" type="xs:boolean" minOccurs="0" />
              <xs:element name="CampaignEnabled" type="xs:boolean" minOccurs="0" />
              <xs:element name="CampaignTotalCost" type="xs:double" minOccurs="0" />
              <xs:element name="CampaignGoalVisitorsMin" type="xs:double" minOccurs="0" />
              <xs:element name="CampaignGoalConversionsMin" type="xs:double" minOccurs="0" />
              <xs:element name="CampaignGoalValueMin" type="xs:double" minOccurs="0" />
              <xs:element name="CampaignGoalPerVisitorMin" type="xs:double" minOccurs="0" />
              <xs:element name="CampaignGoalVisitors" type="xs:double" minOccurs="0" />
              <xs:element name="CampaignGoalConversions" type="xs:double" minOccurs="0" />
              <xs:element name="CampaignGoalValue" type="xs:double" minOccurs="0" />
              <xs:element name="CampaignGoalPerVisitor" type="xs:double" minOccurs="0" />
              <xs:element name="CampaignGoalVisitorsPercent" type="xs:boolean" minOccurs="0" />
              <xs:element name="CampaignGoalConversionsPercent" type="xs:boolean" minOccurs="0" />
              <xs:element name="CampaignGoalValuePercent" type="xs:boolean" minOccurs="0" />
              <xs:element name="CampaignGoalPerVisitorPercent" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Analytics_Campaign" />
      <xs:field xpath="CampaignID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="CampaignID" fieldcaption="CampaignID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" publicfield="false" guid="711075c9-9aa8-43b2-83f2-cc906249af7f"><settings><controlname>labelcontrol</controlname></settings></field><field column="CampaignName" fieldcaption="{$campaign.name$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="3d4cb3e2-42cc-4e1d-9523-43b66f9e48e4" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>True</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CampaignDisplayName" fieldcaption="CampaignID" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="90225c07-45df-4b02-8a67-907c51c871f9" visibility="none" translatefield="true"><settings><controlname>labelcontrol</controlname></settings></field><field column="CampaignDescription" fieldcaption="Campaign description" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b182012b-3bde-4d6b-9fe5-b41c7441f876" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CampaignSiteID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6b4b18cc-44bc-4a4a-a1ec-a55478aca007" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CampaignImpressions" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0bd3378d-9419-4542-8dcf-6db2221c74de" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CampaignOpenFrom" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1451a479-d266-4aa9-9ecf-21a7e8f319a8" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CampaignOpenTo" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="82a56168-ef25-4fa7-b77b-fdda4a14d2dd" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CampaignEnabled" fieldcaption="CampaignID" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5c80b0d1-c771-4475-87ba-509008c029df" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="CampaignTotalCost" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9bc15f69-7e1c-4db9-a9db-34b6d90cf4ea" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CampaignRules" fieldcaption="CampaignID" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4bafdb56-fc03-4fc3-a954-3338874aa01b" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="CampaignUseAllConversions" fieldcaption="CampaignID" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a6f571a9-4289-4f34-9ec9-c5f381b65809" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="CampaignGoalVisitorsMin" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" minnumericvalue="0" validationerrormessage="{$campaign.valuegreaterzero$}" publicfield="false" guid="57ef188b-cbe3-4689-a261-ce9c4f44e4d6" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CampaignGoalConversionsMin" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" minnumericvalue="0" validationerrormessage="{$campaign.valuegreaterzero$}" publicfield="false" guid="84c23731-dbd5-4e1a-8086-fafd5ac1c041" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CampaignGoalValueMin" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" minnumericvalue="0" validationerrormessage="{$campaign.valuegreaterzero$}" publicfield="false" guid="9ca41fd5-6a65-4a18-bc9f-b36c7329c548" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CampaignGoalPerVisitorMin" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" minnumericvalue="0" validationerrormessage="{$campaign.valuegreaterzero$}" publicfield="false" guid="ea1b88e8-b9ff-4e6d-94ad-c78026dfe6b8" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CampaignGoalVisitors" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" minnumericvalue="0" validationerrormessage="{$campaign.valuegreaterzero$}" publicfield="false" guid="de496d22-f619-4104-9a63-8dc898a171a0" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CampaignGoalConversions" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" minnumericvalue="0" validationerrormessage="{$campaign.valuegreaterzero$}" publicfield="false" guid="b1200bbb-a6ab-4740-afd9-9f59a96248eb" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CampaignGoalValue" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" minnumericvalue="0" validationerrormessage="{$campaign.valuegreaterzero$}" publicfield="false" guid="13b59883-6bca-49c6-81cc-5e46104f74a1" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CampaignGoalPerVisitor" columntype="double" fieldtype="CustomUserControl" allowempty="true" system="true" minnumericvalue="0" validationerrormessage="{$campaign.valuegreaterzero$}" publicfield="false" guid="567a7665-3f46-4933-b8ea-087d6b73a33b" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CampaignGoalVisitorsPercent" fieldcaption="CampaignID" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f0ac7615-c486-4bcb-bdd1-ea5245f8a207" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="CampaignGoalConversionsPercent" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f07f6664-fc71-4512-badb-9fdad2dd7352" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CampaignGoalValuePercent" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7d265215-72d2-456e-bb43-fa9e90c08fab" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CampaignGoalPerVisitorPercent" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="98f808a5-2888-4d71-9e5e-dc812727c5c1" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CampaignGUID" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="90986a69-038b-4f7a-a203-21c4273cbdff" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="CampaignLastModified" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="cc921717-7a9b-434e-b694-8a67de6d8641" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'Analytics_Campaign', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:18', '3c3d3648-9f75-4484-8b05-f9e5a6541100', 0, 0, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
SET IDENTITY_INSERT [CMS_Class] OFF
