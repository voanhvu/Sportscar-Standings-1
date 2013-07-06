SET IDENTITY_INSERT [CMS_Class] ON
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (233, N'ACL', N'cms.acl', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_ACL">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ACLID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ACLInheritedACLs">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ACLOwnerNodeID" type="xs:int" />
              <xs:element name="ACLGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ACLLastModified" type="xs:dateTime" />
              <xs:element name="ACLSiteID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_ACL" />
      <xs:field xpath="ACLID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ACLID" fieldcaption="ACLID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="ed3bb1c3-2f77-4362-aaa2-32522e66c3f0"><settings><controlname>labelcontrol</controlname></settings></field><field column="ACLInheritedACLs" fieldcaption="ACLInheritedACLs" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="7db7efe1-669f-4181-98c5-6f137ac342fa"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ACLOwnerNodeID" fieldcaption="ACLOwnerNodeID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9da03250-37ab-48bd-bb1a-9864426beabc"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ACLGUID" fieldcaption="ACLGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="25d0fa3a-f1da-49f8-97c0-d2c67679c4f3"><settings><controlname>labelcontrol</controlname></settings></field><field column="ACLLastModified" fieldcaption="ACLLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1d55ce40-56bf-4319-94f2-c1d357df6047"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ACLSiteID" fieldcaption="ACLSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="50cb28fc-3e27-4ce2-978b-7151ccb5768b" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_ACL', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:17', '798885a1-331c-44aa-95c2-45ebb9a46a65', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (298, N'Workflow history', N'cms.workflowhistory', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WorkflowHistory">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="WorkflowHistoryID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="VersionHistoryID" type="xs:int" />
              <xs:element name="StepID" type="xs:int" minOccurs="0" />
              <xs:element name="StepDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ApprovedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="ApprovedWhen" type="xs:dateTime" minOccurs="0" />
              <xs:element name="Comment" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WasRejected" type="xs:boolean" />
              <xs:element name="StepName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="440" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TargetStepID" type="xs:int" minOccurs="0" />
              <xs:element name="TargetStepName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="440" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="TargetStepDisplayName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StepType" type="xs:int" minOccurs="0" />
              <xs:element name="TargetStepType" type="xs:int" minOccurs="0" />
              <xs:element name="HistoryObjectType" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="HistoryObjectID" type="xs:int" minOccurs="0" />
              <xs:element name="HistoryTransitionType" type="xs:int" minOccurs="0" />
              <xs:element name="HistoryWorkflowID" type="xs:int" minOccurs="0" />
              <xs:element name="HistoryRejected" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_WorkflowHistory" />
      <xs:field xpath="WorkflowHistoryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="WorkflowHistoryID" fieldcaption="WorkflowHistoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="216f01a5-16fa-4a22-a0ff-e1eee5700bc4"><settings><controlname>labelcontrol</controlname></settings></field><field column="VersionHistoryID" fieldcaption="VersionHistoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ffc25364-a750-4ac1-a749-a7183e166e80"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StepID" fieldcaption="StepID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="da6cebcb-7dbe-45cf-8596-c175a68eb72e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StepDisplayName" fieldcaption="StepDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9e9f09c3-97be-4f0e-88a6-aef997532d6e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ApprovedByUserID" fieldcaption="ApprovedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="51b7ad05-c0ae-42d1-ae89-b8f6bd3e6eb9"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ApprovedWhen" fieldcaption="ApprovedWhen" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e8bb8da1-4c12-4137-b98a-6ed43ca5da8a"><settings><controlname>calendarcontrol</controlname></settings></field><field column="Comment" fieldcaption="Comment" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fd6fac2f-dcdd-4c7e-ad68-4255ede92001"><settings><controlname>textareacontrol</controlname></settings></field><field column="WasRejected" fieldcaption="WasRejected" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="366b4b7a-e22c-4d4c-9fb9-3df3b5efcb1b"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="StepName" fieldcaption="StepName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="440" publicfield="false" spellcheck="false" guid="4ee5b13d-554c-46a7-8c7a-f0cffbf5d475" visibility="none"><settings><controlname>textboxcontrol</controlname><FilterEnabled>False</FilterEnabled></settings></field><field column="TargetStepID" fieldcaption="TagetStepID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3a962e8c-f18a-4014-b58a-a58cdd62c35b" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TargetStepName" fieldcaption="TargetStepName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="440" publicfield="false" guid="9da7993c-ef4a-415c-b55e-af978c3ebe4c" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TargetStepDisplayName" fieldcaption="TargetStepDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="d43e6997-5e2f-4c4a-b5e0-c6538de3ba32" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="StepType" fieldcaption="StepType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4d288621-ba1b-4dcb-b267-2f129997fea4" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="TargetStepType" fieldcaption="TargetStepType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ff8157d6-9bb1-46ee-8d3d-f954625951ca" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="HistoryObjectType" fieldcaption="HistoryObjectType" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="02c99c05-9758-430c-9b6d-c19d305be161" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="HistoryObjectID" fieldcaption="HistoryObjectID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="476eb58f-0f81-4bca-9899-d106bd837d0d" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="HistoryTransitionType" fieldcaption="HistoryTransitionType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7a055e40-2404-40cd-9f9e-2436d5100fca" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="HistoryWorkflowID" fieldcaption="HistoryWorkflowID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a1ab9767-c587-4b7e-b4a3-fa1fe1af5bf9" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="HistoryRejected" fieldcaption="HistoryRejected" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2390d12c-17d6-4004-a46a-b14d6a92da57" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_WorkflowHistory', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120801 12:46:29', 'accc303b-bfec-49fb-8d65-bef8984b7833', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (405, N'Page template category', N'cms.pagetemplatecategory', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_PageTemplateCategory">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="CategoryID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="CategoryDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryParentID" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="CategoryLastModified" type="xs:dateTime" />
              <xs:element name="CategoryImagePath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryChildCount" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryTemplateChildCount" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryPath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryOrder" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryLevel" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_PageTemplateCategory" />
      <xs:field xpath="CategoryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="CategoryID" fieldcaption="CategoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="6049bf05-83a6-45c6-93e5-6981f476ec91"><settings><controlname>labelcontrol</controlname></settings></field><field column="CategoryDisplayName" fieldcaption="CategoryDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="eb6f8688-47b1-401a-b552-9cc53bb0b28f" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryParentID" fieldcaption="CategoryParentID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ced6a744-2400-473b-af23-d446df602f58"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryName" fieldcaption="CategoryName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4cf24965-9b14-4f3f-86eb-316501e42f24"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryGUID" fieldcaption="CategoryGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2356cad3-2cda-408b-a312-19432631758a"><settings><controlname>unknown</controlname></settings></field><field column="CategoryLastModified" fieldcaption="CategoryLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4c42aad5-077d-496b-acb2-1a9b76bd2a15"><settings><controlname>calendarcontrol</controlname></settings></field><field column="CategoryImagePath" fieldcaption="CategoryImagePath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="482243d1-3780-46c4-99cd-2dba52f201cf" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="CategoryChildCount" fieldcaption="CategoryChildCount" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4f1a4640-8cc4-4b8a-824a-35e2cfe99703" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="CategoryTemplateChildCount" fieldcaption="CategoryTemplateChildCount" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="358b657b-3aff-4580-9838-598a0f22fe9c" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="CategoryPath" fieldcaption="CategoryPath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="ba9b77a6-bfd8-4e14-93fb-8ddff52a098b" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="CategoryOrder" fieldcaption="CategoryOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3670fe8d-2a01-4879-9351-ed8a6cd16615" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="CategoryLevel" fieldcaption="CategoryLevel" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="085396ce-e649-40ae-8309-db9fa4632ae4" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_PageTemplateCategory', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:25', '92a1be18-bad3-4aac-91f0-064d30d452fd', 0, 1, 0, N'', 1, N'CategoryDisplayName', N'0', N'CategoryImagePath', N'CategoryLastModified', N'<search><item searchable="True" name="CategoryID" tokenized="False" content="False" id="12cab9cc-49df-4f81-9794-7470a2815f04" /><item searchable="False" name="CategoryDisplayName" tokenized="True" content="True" id="da0ccbf2-a620-4a1c-badb-2494566798cc" /><item searchable="True" name="CategoryParentID" tokenized="False" content="False" id="3ca6c25a-2f35-418c-8dfc-993ea5413bf0" /><item searchable="False" name="CategoryName" tokenized="True" content="True" id="4e2963f6-9393-4037-9048-35a7e42099f3" /><item searchable="False" name="CategoryGUID" tokenized="False" content="False" id="49c474a0-cb50-4ad1-b6d3-36669cc6a119" /><item searchable="True" name="CategoryLastModified" tokenized="False" content="False" id="559fd159-52db-416e-b2ef-5674bbee23a5" /><item searchable="False" name="CategoryImagePath" tokenized="True" content="True" id="13ad4302-730c-4173-a0c1-83caa471509d" /><item searchable="True" name="CategoryChildCount" tokenized="False" content="False" id="f71a2481-d11b-419f-b726-e487843bc6be" /><item searchable="True" name="CategoryTemplateChildCount" tokenized="False" content="False" id="9b36da8f-2e98-4433-857a-a840e6a29827" /><item searchable="False" name="CategoryPath" tokenized="True" content="True" id="f91bf532-fc5b-423b-9737-8c4454380c4b" /><item searchable="True" name="CategoryOrder" tokenized="False" content="False" id="d8698fdf-680f-4755-95f9-db193e3dc9cd" /><item searchable="True" name="CategoryLevel" tokenized="False" content="False" id="c4770147-17e4-4145-859c-40d74a34339f" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (410, N'Layout', N'cms.layout', 1, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Layout">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="LayoutID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="LayoutCodeName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LayoutDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LayoutDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LayoutCode">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LayoutVersionGUID" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="LayoutGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="LayoutLastModified" type="xs:dateTime" />
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
              <xs:element name="LayoutThumbnailGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="LayoutZoneCount" type="xs:int" minOccurs="0" />
              <xs:element name="LayoutIsConvertible" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_Layout" />
      <xs:field xpath="LayoutID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><category name="_general.general_" caption="{$general.general$}" visible="True" /><field column="LayoutID" fieldcaption="Layout code" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" captionstyle="display: none;" publicfield="false" guid="ca2b14bd-12c8-47c4-8c2a-09a0a7bdc546" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="LayoutDisplayName" fieldcaption="{$general.displayname$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="09307aeb-2738-4b0e-b49e-5f76e48bb7a9" visibility="none" translatefield="true"><settings><controlname>localizabletextbox</controlname></settings></field><field column="LayoutCodeName" fieldcaption="{$general.codename$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="ee661fe6-8455-471e-8571-4aecad368b72" visibility="none"><settings><controlname>codename</controlname></settings></field><field column="LayoutDescription" fieldcaption="{$general.description$}" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e316e3e3-2d28-46d2-87f0-da19bda6bdf5" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><IsTextArea>True</IsTextArea><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="LayoutThumbnailGUID" fieldcaption="{$general.thumbnail$}" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="550542ca-816d-4fcb-bd1c-c8b0def79d8c" visibility="none"><settings><controlname>directuploadcontrol</controlname><Autoresize_Hashtable>True</Autoresize_Hashtable><Extensions>inherit</Extensions></settings></field><field column="LayoutZoneCount" fieldcaption="{$pagelayout.zonecount$}" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3a40669a-af4d-4a49-a2be-a724da1d05ae" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterType>0</FilterType><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><Trim>True</Trim></settings></field><field column="LayoutIsConvertible" fieldcaption="{$pagelayout.isconvertible$}" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e7a9fe37-d33f-4f45-ba98-cb6e71423e7d" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><category name="_Administration-PageLayout_New.LayoutTypeAndCode_" caption="{$Administration-PageLayout_New.LayoutTypeAndCode$}" visible="True" /><field column="LayoutCode" fieldcaption="Layout code" visible="true" defaultvalue="&lt;cms:CMSWebPartZone ZoneID=&quot;zoneA&quot; runat=&quot;server&quot; /&gt;" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="10c4bb79-c4bd-44d6-a590-09f7b9bf9136" visibility="none"><settings><controlname>page_layout_code</controlname><CodeColumn>LayoutCode</CodeColumn><TypeColumn>LayoutType</TypeColumn></settings></field><field column="LayoutCSS" fieldcaption="Add CSS styles" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a88496dc-a31a-444d-bfa6-bb827449feac" visibility="none"><settings><controlname>css_styles_editor</controlname></settings></field><field column="LayoutType" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="4b29932c-b7a1-492a-92e5-d34a58e6048f" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="LayoutVersionGUID" fieldcaption="LayoutVersionGUID" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="50" publicfield="false" guid="69c017d1-a807-4f34-a55e-911a71b9fe4f" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="LayoutGUID" fieldcaption="LayoutGUID" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8458d6aa-1b12-491f-80f7-c8223ba9c1a7" visibility="none"><settings><controlname>uploadcontrol</controlname><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="LayoutLastModified" fieldcaption="LayoutLastModified" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b2dc55fa-02c4-475f-9bf7-9e84558282a1" visibility="none"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'~/CMSModules/PortalEngine/UI/PageLayouts/PageLayout_Frameset.aspx?layoutid={%EditedObject.ID%}&editonlycode=1&dialogmode=1&tabmode=1&tabmode&sharedlayoutwarnings=0&deviceactions=0', N'', N'', N'CMS_Layout', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120810 09:50:08', 'f0ba54c7-64ef-41d9-a4f4-0b792510414d', 0, 1, 0, N'', 1, N'LayoutDisplayName', N'LayoutDescription', N'', N'LayoutLastModified', N'<search><item searchable="True" name="LayoutID" tokenized="False" content="False" id="aef1c509-6756-47e8-953d-a3c6ce855f6b" /><item searchable="False" name="LayoutCodeName" tokenized="True" content="True" id="3c89d01a-0eed-4706-ab94-3c80877f8b03" /><item searchable="False" name="LayoutDisplayName" tokenized="True" content="True" id="96a850e6-1983-4f3f-8fda-c18371d3d882" /><item searchable="False" name="LayoutDescription" tokenized="True" content="True" id="e0ba4743-dbcc-4251-af0d-18b57ca25d7d" /><item searchable="False" name="LayoutType" tokenized="True" content="True" id="da4e9677-1148-4755-b39f-a2a4c1f895ce" /><item searchable="False" name="LayoutCode" tokenized="True" content="True" id="940fcf28-8892-4459-b164-80b313523769" /><item searchable="False" name="LayoutCheckedOutFilename" tokenized="True" content="True" id="d2f49db2-c7d8-4088-a640-d9fe88481b9c" /><item searchable="True" name="LayoutCheckedOutByUserID" tokenized="False" content="False" id="11c03dc1-c0ba-40c1-b447-cb71ae98abb5" /><item searchable="False" name="LayoutCheckedOutMachineName" tokenized="True" content="True" id="bf2c07b8-e259-4e9e-b7cf-f64e754c84ed" /><item searchable="False" name="LayoutVersionGUID" tokenized="True" content="True" id="31ea45bb-33b3-4696-8249-9d511210ea4c" /><item searchable="False" name="LayoutGUID" tokenized="False" content="False" id="ce98daf8-7e3d-46cb-8889-1f457a92ed6e" /><item searchable="True" name="LayoutLastModified" tokenized="False" content="False" id="85666db1-c6d5-4249-bb87-8753ff395901" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (424, N'Web part category', N'cms.webpartcategory', 1, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WebPartCategory">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="CategoryID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="CategoryDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryParentID" type="xs:int" minOccurs="0" />
              <xs:element name="CategoryName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CategoryGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="CategoryLastModified" type="xs:dateTime" />
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
              <xs:element name="CategoryWebPartChildCount" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_WebPartCategory" />
      <xs:field xpath="CategoryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="CategoryID" fieldcaption="CategoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="e79a9743-1548-4c03-a0be-bf4e59a59de0"><settings><controlname>labelcontrol</controlname></settings></field><field column="CategoryDisplayName" fieldcaption="CategoryDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="557c910c-3b7c-4ebc-9545-ef444d9c3755" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryParentID" fieldcaption="CategoryParentID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6bbbeeaa-b4bc-45f2-9fc8-293e5cf2da27"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryName" fieldcaption="CategoryName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="fcb3e927-1a84-43db-8cc5-d838ad33d498"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryGUID" fieldcaption="CategoryGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ea4e0ee4-0446-457a-be59-226738008cb7"><settings><controlname>labelcontrol</controlname></settings></field><field column="CategoryLastModified" fieldcaption="CategoryLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d1ee711f-e797-4042-a1e9-ba528b5f2ee7"><settings><controlname>calendarcontrol</controlname></settings></field><field column="CategoryImagePath" fieldcaption="CategoryImagePath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="ea9f0f5e-5496-4b19-85c3-f4dd5c4b57f1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryPath" fieldcaption="CategoryPath" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="5fbadd22-4c00-4bc8-9412-e6f1775406ef"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryOrder" fieldcaption="CategoryOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a0a18eb8-cb03-4700-92dd-d3bc7afcd7ad"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryLevel" fieldcaption="CategoryLevel" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4ddb3f47-6d98-49bc-b29f-61b71df562bc"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryChildCount" fieldcaption="CategoryChildCount" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7bd82729-6151-450d-b9e8-f79c6907e603"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CategoryWebPartChildCount" fieldcaption="CategoryWebPartChildCount" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a4ae1551-c272-44b9-a63d-afc72d08730e"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_WebPartCategory', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:45', '920ce0d4-cb71-4a7b-bd25-af73d3323951', 0, 1, 0, N'', 1, N'CategoryDisplayName', N'0', N'CategoryImagePath', N'0', N'<search><item searchable="True" name="CategoryID" tokenized="False" content="False" id="49c49a57-20aa-40dd-a0fe-084c14e2a789" /><item searchable="False" name="CategoryDisplayName" tokenized="True" content="True" id="fe4a6a81-2a18-4113-928b-4e75aa50d453" /><item searchable="True" name="CategoryParentID" tokenized="False" content="False" id="47fcf947-c4d6-48a8-8c8c-2f7addd69b2c" /><item searchable="False" name="CategoryName" tokenized="True" content="True" id="b44e8fab-a75a-4e64-9e1d-53df49b3368f" /><item searchable="False" name="CategoryGUID" tokenized="False" content="False" id="36d96746-154c-4ed6-91d2-cb3480d44c6d" /><item searchable="True" name="CategoryLastModified" tokenized="False" content="False" id="5b4be3a3-5b47-4a33-9f1c-dd6e10a69f27" /><item searchable="False" name="CategoryImagePath" tokenized="True" content="True" id="b5837f78-85a7-4a62-b7e0-c82c47059bc7" /><item searchable="False" name="CategoryPath" tokenized="True" content="True" id="eef07646-442f-42a0-8104-5f95ad9fb645" /><item searchable="True" name="CategoryOrder" tokenized="False" content="False" id="125d2c30-d06b-4986-88dd-315291f3791f" /><item searchable="True" name="CategoryLevel" tokenized="False" content="False" id="ed247f64-d138-4b54-bcdb-916f2ac33b48" /><item searchable="True" name="CategoryChildCount" tokenized="False" content="False" id="d77b5453-2999-4f37-89b8-850ae05b97a3" /><item searchable="True" name="CategoryWebPartChildCount" tokenized="False" content="False" id="b8332516-d4e3-4a0b-b47f-d294055ae169" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (425, N'Web part', N'cms.webpart', 1, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WebPart">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="WebPartID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="WebPartName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebPartDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebPartDescription">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebPartFileName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebPartProperties">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebPartCategoryID" type="xs:int" />
              <xs:element name="WebPartParentID" type="xs:int" minOccurs="0" />
              <xs:element name="WebPartDocumentation" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebPartGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="WebPartLastModified" type="xs:dateTime" />
              <xs:element name="WebPartType" type="xs:int" minOccurs="0" />
              <xs:element name="WebPartLoadGeneration" type="xs:int" />
              <xs:element name="WebPartLastSelection" type="xs:dateTime" minOccurs="0" />
              <xs:element name="WebPartDefaultValues" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebPartResourceID" type="xs:int" minOccurs="0" />
              <xs:element name="WebPartCSS" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebPartSkipInsertProperties" type="xs:boolean" minOccurs="0" />
              <xs:element name="WebPartThumbnailGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_WebPart" />
      <xs:field xpath="WebPartID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="WebPartID" fieldcaption="WebPartID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="d3a38f4f-3cab-4767-a9fb-dcd3295ad0e8"><settings><controlname>labelcontrol</controlname></settings></field><field column="WebPartName" fieldcaption="WebPartName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="1d4f4dfe-8290-4cf4-9ed1-2e39d97902ad"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebPartDisplayName" fieldcaption="WebPartDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="79585e4d-5501-4cee-b37a-906c43f67fdb" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebPartDescription" fieldcaption="WebPartDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="436ca21c-abcd-4175-b564-f554ff24349f" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="WebPartCSS" fieldcaption="WebPartCSS" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fcbd9e97-6a62-4582-bf5d-01e52f9784f1" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textareacontrol</controlname><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="WebPartFileName" fieldcaption="WebPartFileName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="db339e77-7066-4eb0-ac2a-fa9333dbb45c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebPartProperties" fieldcaption="WebPartProperties" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5ff2bc7b-8079-4b4d-ba30-7b2fa1aa5269"><settings><controlname>textareacontrol</controlname></settings></field><field column="WebPartCategoryID" fieldcaption="WebPartCategoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7f34b123-3e8d-4fa9-814d-5385d397efd8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebPartParentID" fieldcaption="WebPartParentID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="84c73734-f65c-488a-a169-fd563cab6d40"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebPartDocumentation" fieldcaption="WebPartDocumentation" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="43aa4a09-b2ea-4685-9edc-fb0ac2179df4"><settings><controlname>textareacontrol</controlname></settings></field><field column="WebPartGUID" fieldcaption="WebPartGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b55f8e33-b63c-4fe0-98ad-416d6d6b05e5"><settings><controlname>labelcontrol</controlname></settings></field><field column="WebPartLastModified" fieldcaption="WebPartLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c1ab9701-42aa-4cf1-aa79-70952c79c9a6"><settings><controlname>calendarcontrol</controlname></settings></field><field column="WebPartType" fieldcaption="WebPartType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5a01db9d-bc2e-4924-a8b9-48d5a0b88f08"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebPartLoadGeneration" fieldcaption="WebPartLoadGeneration" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a650ce19-a7e6-4e79-8700-dc5405904902"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebPartLastSelection" fieldcaption="WebPartLastSelection" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a881f02b-f419-43b9-addd-9e1bb636f31b"><settings><controlname>calendarcontrol</controlname></settings></field><field column="WebPartDefaultValues" fieldcaption="Web part default values" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="dcb81f77-1f3f-48f8-8a63-915cbe552552" visibility="none"><settings><controlname>textareacontrol</controlname></settings></field><field column="WebPartResourceID" fieldcaption="Web part module ID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="970542bb-05ab-4808-a7b0-7a5fe3d49220" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebPartSkipInsertProperties" fieldcaption="Web part skip insert properties" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="56430545-5736-444b-8770-d48df7721c32" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="WebPartThumbnailGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0a25a337-686e-4aca-86de-3c5b2959ebf8" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_WebPart', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:45', '347a3154-07b4-4fd6-8b70-ce0391f76007', 0, 1, 0, N'', 0, N'WebPartDisplayName', N'WebPartDescription', N'', N'WebPartLastSelection', N'<search><item searchable="True" name="WebPartID" tokenized="False" content="False" id="5401474f-2fab-470b-a5fe-5bdd413cfcc9" /><item searchable="False" name="WebPartName" tokenized="True" content="True" id="1de1f98e-f057-4ab6-9dd4-33dd243b3dd0" /><item searchable="False" name="WebPartDisplayName" tokenized="True" content="True" id="6179fa91-aac1-482d-9d5b-f8384b1f5cc7" /><item searchable="False" name="WebPartDescription" tokenized="True" content="True" id="b3a1cff6-661c-40a6-b7a1-a23ef27f4127" /><item searchable="False" name="WebPartFileName" tokenized="True" content="True" id="3fefb063-ecf9-4dcc-88cd-8a644bbef9fd" /><item searchable="False" name="WebPartProperties" tokenized="True" content="True" id="28715c52-1284-4a00-85af-e2dfcc94e76e" /><item searchable="True" name="WebPartCategoryID" tokenized="False" content="False" id="adb0ff03-0522-4ad9-98e7-5b6768159e75" /><item searchable="True" name="WebPartParentID" tokenized="False" content="False" id="16d23d81-df6b-4adb-8e1f-a0250897a22b" /><item searchable="False" name="WebPartDocumentation" tokenized="True" content="True" id="f727d5e4-c286-450c-83be-33df1669d41b" /><item searchable="False" name="WebPartGUID" tokenized="False" content="False" id="b2d9c1e9-1a4d-4fa1-a034-fd985ef43ccf" /><item searchable="True" name="WebPartLastModified" tokenized="False" content="False" id="954dc1f0-0d98-4693-a996-f9bc4461963a" /><item searchable="True" name="WebPartType" tokenized="False" content="False" id="01b7d8ec-7386-4ab8-af2c-701d5340da51" /><item searchable="True" name="WebPartLoadGeneration" tokenized="False" content="False" id="fa36d0b6-af23-43a8-ab7c-de720fd50971" /><item searchable="True" name="WebPartLastSelection" tokenized="False" content="False" id="221ce8a3-b66d-4a2e-9bdd-103d9ad5acbc" /><item searchable="False" name="WebPartDefaultValues" tokenized="True" content="True" id="0afbf476-9c48-490c-b710-d6b70ec2a94e" /><item searchable="True" name="WebPartResourceID" tokenized="False" content="False" id="92313116-02a1-4426-9562-196800fb433c" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (490, N'UI culture', N'cms.uiculture', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_UICulture">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="UICultureID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="UICultureName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UICultureCode">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UICultureGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="UICultureLastModified" type="xs:dateTime" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_UICulture" />
      <xs:field xpath="UICultureID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="UICultureID" fieldcaption="UICultureID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="0e71eca6-a095-4fcb-838c-4bc9a10947f7"><settings><controlname>labelcontrol</controlname></settings></field><field column="UICultureName" fieldcaption="UICultureName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f845dfbb-a645-4f55-a68f-dc317f842802" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UICultureCode" fieldcaption="UICultureCode" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ef053470-1986-4676-9bf3-6b384d37d127"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UICultureGUID" fieldcaption="UICultureGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="597bcede-5b8e-43b5-b80a-125c049c671a"><settings><controlname>unknown</controlname></settings></field><field column="UICultureLastModified" fieldcaption="UICultureLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3d7274f5-c67d-4819-8cf6-fb30c450c1f6"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_UICulture', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:44', 'c5ac2fce-1d32-49b6-b36d-533610a50988', 0, 1, 0, N'', 1, N'UICultureName', N'0', N'', N'UICultureLastModified', N'<search><item searchable="True" name="UICultureID" tokenized="False" content="False" id="6c8294d5-3de1-4845-8c27-1c2eb23bb411" /><item searchable="False" name="UICultureName" tokenized="True" content="True" id="b6374db2-053c-4105-8ccb-f1648645860a" /><item searchable="False" name="UICultureCode" tokenized="True" content="True" id="ce441586-026b-4bd8-82c7-99a233ddeda4" /><item searchable="False" name="UICultureGUID" tokenized="False" content="False" id="617185fa-6e0b-4442-84ed-cb16224eb758" /><item searchable="True" name="UICultureLastModified" tokenized="False" content="False" id="b3e377df-f321-4c18-b776-98d487b969a9" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (500, N'Web template', N'cms.webtemplate', 1, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_WebTemplate">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="WebTemplateID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="WebTemplateDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebTemplateFileName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebTemplateDescription">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebTemplateGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="WebTemplateLastModified" type="xs:dateTime" />
              <xs:element name="WebTemplateName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebTemplateOrder" type="xs:int" />
              <xs:element name="WebTemplateLicenses">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebTemplatePackages" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="WebTemplateThumbnailGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_WebTemplate" />
      <xs:field xpath="WebTemplateID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="WebTemplateID" fieldcaption="WebTemplateID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="bedd2cc2-8f3d-4693-9d70-7a79b1b559d4"><settings><controlname>labelcontrol</controlname></settings></field><field column="WebTemplateDisplayName" fieldcaption="WebTemplateDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a1640e39-619a-46d7-ba7c-84dfe8c6e544" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebTemplateFileName" fieldcaption="WebTemplateFileName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="015f84fe-a23d-43c8-8f18-58a912bda714"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebTemplateDescription" fieldcaption="WebTemplateDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c94c476d-f821-4d18-a625-44b1845b7f48" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="WebTemplateGUID" fieldcaption="WebTemplateGUID" visible="true" columntype="file" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8ce11f28-e4f7-4139-9ffc-6f069a8c4bc6"><settings><controlname>unknown</controlname></settings></field><field column="WebTemplateLastModified" fieldcaption="WebTemplateLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="28416deb-c52c-477c-a27c-c4a29efe0811"><settings><controlname>calendarcontrol</controlname></settings></field><field column="WebTemplateName" fieldcaption="WebTemplateName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ead12402-8ffc-413b-8d53-4ce290b7556a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebTemplateOrder" fieldcaption="WebTemplateOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c285f89e-b479-4bec-8bd8-f24ffdeb42e1"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebTemplateLicenses" fieldcaption="WebTemplateLicenses" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b5634cf7-4ad7-4dde-b37c-df2975d0a04c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebTemplatePackages" fieldcaption="WebTemplatePackages" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" columnsize="200" publicfield="false" spellcheck="false" guid="211b54cf-02dc-4ef1-806f-f988e4bb8bd7" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="WebTemplateThumbnailGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="38608bf5-edfc-40cc-855a-7e580358a5a9" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_WebTemplate', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:45', '710b58bd-d39a-4f5c-93a8-42c8d886da2c', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (504, N'Attachment', N'cms.attachment', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Attachment">
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
              <xs:element name="AttachmentBinary" type="xs:base64Binary" minOccurs="0" />
              <xs:element name="AttachmentImageWidth" type="xs:int" minOccurs="0" />
              <xs:element name="AttachmentImageHeight" type="xs:int" minOccurs="0" />
              <xs:element name="AttachmentDocumentID" type="xs:int" minOccurs="0" />
              <xs:element name="AttachmentGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="AttachmentLastHistoryID" type="xs:int" minOccurs="0" />
              <xs:element name="AttachmentSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="AttachmentLastModified" type="xs:dateTime" />
              <xs:element name="AttachmentIsUnsorted" type="xs:boolean" minOccurs="0" />
              <xs:element name="AttachmentOrder" type="xs:int" minOccurs="0" />
              <xs:element name="AttachmentGroupGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="AttachmentFormGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="AttachmentHash" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="32" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttachmentTitle" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttachmentDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttachmentCustomData" minOccurs="0">
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
      <xs:selector xpath=".//CMS_Attachment" />
      <xs:field xpath="AttachmentID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="AttachmentID" fieldcaption="AttachmentID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="b985a545-89fe-4ff3-8dd2-337300735cc0" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentName" fieldcaption="AttachmentName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="255" publicfield="false" guid="2a47c2d0-d90b-4f7d-aff6-f372a9912c74" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentExtension" fieldcaption="AttachmentExtension" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="50" publicfield="false" guid="4c3bd725-76e9-445c-96cf-80f750bfefd8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentSize" fieldcaption="AttachmentSize" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e1e4069a-1cce-4d77-bba8-bee75d823cd4"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentMimeType" fieldcaption="AttachmentMimeType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="656c281f-de55-4ae4-94ff-7fcdda523c6c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentBinary" fieldcaption="AttachmentBinary" visible="true" columntype="binary" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fffa4cb8-cda7-4e8d-9f18-b713a6fda407" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentImageWidth" fieldcaption="AttachmentImageWidth" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="42f78c33-8aff-442c-8d86-be4150e2927e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentImageHeight" fieldcaption="AttachmentImageHeight" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="52a66a03-154a-44e3-84ba-1328bc6329b0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentDocumentID" fieldcaption="AttachmentDocumentID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c05d18d4-cd4f-4855-998c-cec7d5a60fc6"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentGUID" fieldcaption="AttachmentGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7f35eb41-f171-41b8-83f9-9d6fe00cf407"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentLastHistoryID" fieldcaption="AttachmentLastHistoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="247ac0af-3dd1-4fae-b8b1-c43ff9589d6a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentSiteID" fieldcaption="AttachmentSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3c5f0fd7-34c9-45d3-ba14-8b8e14b8f42a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentLastModified" fieldcaption="AttachmentLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="91858b60-a074-4fe4-836c-36170849e389"><settings><controlname>calendarcontrol</controlname></settings></field><field column="AttachmentIsUnsorted" fieldcaption="AttachmentIsUnsorted" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f07f10b2-bbab-46d0-ac1e-a5eb71e69579"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="AttachmentOrder" fieldcaption="AttachmentOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="29d985ab-ad73-4a2e-b3cf-4d328a2921f0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentGroupGUID" fieldcaption="AttachmentGroupGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1d321bde-cea0-45cf-a4a3-0ef2c412b0b8"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentFormGUID" fieldcaption="AttachmentFormGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b43b925b-a809-4697-9a18-a771af70e08c"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentHash" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="32" publicfield="false" guid="8fcd51df-1b8b-4086-9bab-812d2c1d2908" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentTitle" fieldcaption="AttachmentTitle" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" guid="b27e61f4-cbd7-4990-b372-c368bf5a1f9f" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentDescription" fieldcaption="AttachmentDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="06dcf746-1d89-4b15-90c5-fc4ec6aabaec" visibility="none" translatefield="true"><settings><controlname>textareacontrol</controlname><IsTextArea>True</IsTextArea></settings></field><field column="AttachmentCustomData" fieldcaption="AttachmentCustomData" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c2d9e94c-0164-4bd3-9721-e42a4595de4e" visibility="none"><settings><controlname>textareacontrol</controlname><IsTextArea>True</IsTextArea></settings></field></form>', N'', N'', N'', N'CMS_Attachment', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:18', 'af2b10c3-0037-42e9-8b5a-e4e1a90b81e6', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (516, N'Attachment history', N'cms.attachmenthistory', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_AttachmentHistory">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="AttachmentHistoryID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
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
              <xs:element name="AttachmentBinary" type="xs:base64Binary" minOccurs="0" />
              <xs:element name="AttachmentImageWidth" type="xs:int" minOccurs="0" />
              <xs:element name="AttachmentImageHeight" type="xs:int" minOccurs="0" />
              <xs:element name="AttachmentDocumentID" type="xs:int" />
              <xs:element name="AttachmentGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="AttachmentIsUnsorted" type="xs:boolean" minOccurs="0" />
              <xs:element name="AttachmentOrder" type="xs:int" minOccurs="0" />
              <xs:element name="AttachmentGroupGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="AttachmentHash" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="32" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttachmentTitle" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="250" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttachmentDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttachmentCustomData" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="AttachmentLastModified" type="xs:dateTime" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_AttachmentHistory" />
      <xs:field xpath="AttachmentHistoryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="AttachmentHistoryID" fieldcaption="AttachmentHistoryID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="86c5ec11-c8d9-4563-9aa6-c34c7e309859" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentName" fieldcaption="AttachmentName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="255" publicfield="false" guid="632cc328-92ac-4f9b-8f8e-055fc684d60a" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentExtension" fieldcaption="AttachmentExtension" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="50" publicfield="false" guid="88804def-9871-4dd3-947e-36d91ed97682"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentSize" fieldcaption="AttachmentSize" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="00919c3c-e110-4eda-9669-85cb1e2c3a41"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentMimeType" fieldcaption="AttachmentMimeType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="100" publicfield="false" guid="38063b41-d910-4166-bc14-fdfe6d003c28"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentBinary" fieldcaption="AttachmentBinary" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="53774aec-ef12-4e40-93b2-dcb2b57cf8ce"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentImageWidth" fieldcaption="AttachmentImageWidth" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1993f67a-0004-4365-ba55-320445401f91"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentImageHeight" fieldcaption="AttachmentImageHeight" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="dde1218e-27d0-4e6c-82c0-b79f7c9017be"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentDocumentID" fieldcaption="AttachmentDocumentID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c93b7183-23aa-4418-bf5e-2e064945c7ba"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentGUID" fieldcaption="AttachmentGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6da57418-94ce-4af9-a981-82fb58214236"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentIsUnsorted" fieldcaption="AttachmentIsUnsorted" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4fca9cf7-2b4a-48bc-90d7-13c93d20c3b7"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="AttachmentOrder" fieldcaption="AttachmentOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="02b696d5-7eaf-4f54-a96a-a22d4ecb4851"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentGroupGUID" fieldcaption="AttachmentGroupGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a9ec6492-5ccb-44a8-be38-edb173e968f9"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentHash" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="32" publicfield="false" guid="fd7e4017-edff-4c89-968b-5d1122b426ea" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="AttachmentTitle" fieldcaption="AttachmentTitle" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="250" publicfield="false" guid="4ab635f0-735d-4e5d-877d-daba1af1f7b6" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="AttachmentDescription" fieldcaption="AttachmentDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="eb0fe5a8-65e8-4c89-83bc-e9afa790c00f" visibility="none" translatefield="true"><settings><controlname>textareacontrol</controlname><IsTextArea>True</IsTextArea></settings></field><field column="AttachmentCustomData" fieldcaption="AttachmentCustomData" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="aefb4cae-fc4b-469f-bcbb-72f0fa4b9797" visibility="none"><settings><controlname>textareacontrol</controlname><IsTextArea>True</IsTextArea></settings></field><field column="AttachmentLastModified" fieldcaption="AttachmentLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="e2d6e0b8-26fd-49bc-bfa7-147591120e79" visibility="none"><settings><DisplayNow>True</DisplayNow><TimeZoneType>inherit</TimeZoneType><controlname>calendarcontrol</controlname><EditTime>True</EditTime></settings></field></form>', N'', N'', N'', N'CMS_AttachmentHistory', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:18', '5d723ee7-8df3-4253-a0de-8cb8534a1e17', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (530, N'Relationship name', N'cms.relationshipname', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_RelationshipName">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="RelationshipNameID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="RelationshipDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="RelationshipName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="RelationshipAllowedObjects" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="RelationshipGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="RelationshipLastModified" type="xs:dateTime" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_RelationshipName" />
      <xs:field xpath="RelationshipNameID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="RelationshipNameID" fieldcaption="RelationshipNameID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="47839bd6-f19c-4cfd-b67f-1ca754694d46"><settings><controlname>labelcontrol</controlname></settings></field><field column="RelationshipDisplayName" fieldcaption="RelationshipDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6515b190-003a-44b6-b541-8814760de218" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RelationshipName" fieldcaption="RelationshipName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="42221f4a-30fa-47a6-bc80-3f99ee81f8a5"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RelationshipAllowedObjects" fieldcaption="RelationshipAllowedObjects" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2a02c9d5-f0f9-4a19-be8d-9a007f4464ac"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RelationshipGUID" fieldcaption="RelationshipGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="03ad948a-2bb7-44b2-b580-b05abf3a2a8b"><settings><controlname>unknown</controlname></settings></field><field column="RelationshipLastModified" fieldcaption="RelationshipLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ea7edf35-ed86-4cef-91c5-7bfdde27c389"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_RelationshipName', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:28', 'bcf36881-2644-4955-a591-7bc93157bf96', 0, 1, 0, N'', 1, N'RelationshipDisplayName', N'0', N'', N'RelationshipLastModified', N'<search><item searchable="True" name="RelationshipNameID" tokenized="False" content="False" id="89896f5c-8388-4940-bad6-ba6229d90522" /><item searchable="False" name="RelationshipDisplayName" tokenized="True" content="True" id="8b8ed02d-bc42-48b0-a9e3-3e8dca31c195" /><item searchable="False" name="RelationshipName" tokenized="True" content="True" id="c133394d-5c34-4812-94cb-8553f159b448" /><item searchable="False" name="RelationshipAllowedObjects" tokenized="True" content="True" id="681668ba-e6ee-420e-8ebc-cc9e023b384b" /><item searchable="False" name="RelationshipGUID" tokenized="False" content="False" id="afee414a-6a57-413b-8224-036820b879c8" /><item searchable="True" name="RelationshipLastModified" tokenized="False" content="False" id="a7dcb781-133b-4eb1-8373-262929633d5b" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (536, N'RelationshipNameSite', N'CMS.RelationshipNameSite', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_RelationshipNameSite">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="RelationshipNameID" type="xs:int" />
              <xs:element name="SiteID" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_RelationshipNameSite" />
      <xs:field xpath="RelationshipNameID" />
      <xs:field xpath="SiteID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="RelationshipNameID" fieldcaption="RelationshipNameID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="e1f7d35d-e4b0-4df9-b63f-c855b306247c"><settings><controlname>labelcontrol</controlname></settings></field><field column="SiteID" fieldcaption="SiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="556cd134-f2b3-4ff4-8bbe-d7a7dce76095"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_RelationshipNameSite', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:28', 'b9bc174e-8753-4d6d-bac1-f3ebb2b77ba8', 0, 1, 0, N'', 1, N'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (537, N'Relationship', N'CMS.Relationship', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_Relationship">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="LeftNodeID" type="xs:int" />
              <xs:element name="RightNodeID" type="xs:int" />
              <xs:element name="RelationshipNameID" type="xs:int" />
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
      <xs:selector xpath=".//CMS_Relationship" />
      <xs:field xpath="LeftNodeID" />
      <xs:field xpath="RightNodeID" />
      <xs:field xpath="RelationshipNameID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="LeftNodeID" fieldcaption="LeftNodeID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="ace8cd3a-d954-4db1-8adb-895330e7f6b2"><settings><controlname>labelcontrol</controlname></settings></field><field column="RightNodeID" fieldcaption="RightNodeID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6ef2e0ec-a0bc-451e-ade1-1f1b17d10d79"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RelationshipNameID" fieldcaption="RelationshipNameID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f0ba6614-31ed-4544-8378-855c69df9e56"><settings><controlname>textboxcontrol</controlname></settings></field><field column="RelationshipCustomData" fieldcaption="RelationshipCustomData" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f3f9e7ed-c3e0-4765-8c91-577db743b687"><settings><controlname>textareacontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_Relationship', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:28', '784809db-885c-4619-89fd-ef1c59066839', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (555, N'CSS stylesheet', N'cms.cssstylesheet', 1, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_CssStyleSheet">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="StylesheetID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="StylesheetDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StylesheetName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StylesheetText">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StylesheetVersionGUID" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StylesheetGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="StylesheetLastModified" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_CssStyleSheet" />
      <xs:field xpath="StylesheetID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="StylesheetID" fieldcaption="StylesheetID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="e4954d9f-c7b4-4aed-900d-b4a41baad967"><settings><controlname>labelcontrol</controlname></settings></field><field column="StylesheetDisplayName" fieldcaption="StylesheetDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="9f19d3a0-ff81-4fd7-818e-ca9c964e2c1d" visibility="none" translatefield="true"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="StylesheetName" fieldcaption="StylesheetName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="f0a6eecf-5ba4-40de-8c0b-3a17dee2484f" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="StylesheetText" fieldcaption="StylesheetText" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7d418e04-4553-4ed3-9658-61f86e99abd7"><settings><controlname>textareacontrol</controlname></settings></field><field column="StylesheetVersionGUID" fieldcaption="StylesheetVersionGUID" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a8b4a916-8414-4932-81bb-93200820f30b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StylesheetGUID" fieldcaption="StylesheetGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="919f9210-e1c5-4722-a0b1-efffba6f4fcc"><settings><controlname>unknown</controlname></settings></field><field column="StylesheetLastModified" fieldcaption="StylesheetLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f02b9848-d685-435e-b51b-9ad5896ea338"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'~/CMSModules/CssStylesheets/Pages/CssStylesheet_Edit.aspx?cssstylesheetid={%EditedObject.ID%}&editonlycode=1&checksiteassociation=0&tabmode=1', N'', N'', N'CMS_CssStyleSheet', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120810 09:49:45', 'e6b9c8bb-e87b-48ec-949e-9158f60ff91c', 0, 1, 0, N'', 0, N'StylesheetDisplayName', N'StylesheetText', N'', N'StylesheetLastModified', N'<search><item searchable="True" name="StylesheetID" tokenized="False" content="False" id="860b5f61-0b3c-4581-b41a-4cf124a15065" /><item searchable="False" name="StylesheetDisplayName" tokenized="True" content="True" id="4715fb39-da6d-4a07-a559-3c0b761e202d" /><item searchable="False" name="StylesheetName" tokenized="True" content="True" id="29a956f0-231d-4648-b90c-d16ff771b792" /><item searchable="False" name="StylesheetText" tokenized="True" content="True" id="6669fc43-3af2-4302-a42a-fa0e3d4a98d9" /><item searchable="True" name="StylesheetCheckedOutByUserID" tokenized="False" content="False" id="ec9b90fa-b633-4e93-aff9-a206c377b164" /><item searchable="False" name="StylesheetCheckedOutMachineName" tokenized="True" content="True" id="cec0a5b7-70b0-4ba8-822a-b0f7921ffa0a" /><item searchable="False" name="StylesheetCheckedOutFileName" tokenized="True" content="True" id="f4f97a68-13db-4adf-9bab-2b3aa1499746" /><item searchable="False" name="StylesheetVersionGUID" tokenized="True" content="True" id="84a3d120-3942-45c2-b1ee-c5b03c309c0d" /><item searchable="False" name="StylesheetGUID" tokenized="False" content="False" id="ef38bbd2-b61e-426b-bfac-63c97081b1a3" /><item searchable="True" name="StylesheetLastModified" tokenized="False" content="False" id="a470451a-13ea-4dc3-bc09-5d35a724bade" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (661, N'Site domain alias', N'cms.sitedomainalias', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_SiteDomainAlias">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SiteDomainAliasID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SiteDomainAliasName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SiteID" type="xs:int" />
              <xs:element name="SiteDefaultVisitorCulture" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SiteDomainGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="SiteDomainLastModified" type="xs:dateTime" />
              <xs:element name="SiteDomainDefaultAliasPath" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SiteDomainRedirectUrl" minOccurs="0">
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
      <xs:selector xpath=".//CMS_SiteDomainAlias" />
      <xs:field xpath="SiteDomainAliasID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SiteDomainAliasID" fieldcaption="SiteDomainAliasID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="97dd2de6-e021-4be6-afc0-98bb257c2697"><settings><controlname>labelcontrol</controlname></settings></field><field column="SiteDomainAliasName" fieldcaption="SiteDomainAliasName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0128ef2c-a751-404e-a4ca-e635da780b90" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SiteID" fieldcaption="SiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6bcc14c5-26c8-4219-95fa-b17014252d3a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SiteDefaultVisitorCulture" fieldcaption="SiteDefaultVisitorCulture" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a69982ab-2f9e-4c9d-a11a-caa1bee222aa"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SiteDomainGUID" fieldcaption="SiteDomainGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9f8ec7b9-bd18-4c2f-aa37-86cc2e848fa7"><settings><controlname>unknown</controlname></settings></field><field column="SiteDomainLastModified" fieldcaption="SiteDomainLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9ddf6eaa-3970-4615-9000-e40513eaa8c3"><settings><controlname>calendarcontrol</controlname></settings></field><field column="SiteDomainDefaultAliasPath" fieldcaption="SiteDomainDefaultAliasPath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="8552c789-8c92-4639-8b27-22e5c07706ae"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SiteDomainRedirectUrl" fieldcaption="SiteDomainRedirectUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="f8cfa857-2f5c-465d-aa72-8d23841f0334"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_SiteDomainAlias', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:29', 'a72f9763-8c28-4314-981e-6247776f8134', 0, 1, 0, N'', 0, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (846, N'Form user control', N'cms.formusercontrol', 1, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_FormUserControl">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="UserControlID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="UserControlDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserControlCodeName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserControlFileName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserControlForText" type="xs:boolean" />
              <xs:element name="UserControlForLongText" type="xs:boolean" />
              <xs:element name="UserControlForInteger" type="xs:boolean" />
              <xs:element name="UserControlForDecimal" type="xs:boolean" />
              <xs:element name="UserControlForDateTime" type="xs:boolean" />
              <xs:element name="UserControlForBoolean" type="xs:boolean" />
              <xs:element name="UserControlForFile" type="xs:boolean" />
              <xs:element name="UserControlShowInBizForms" type="xs:boolean" />
              <xs:element name="UserControlDefaultDataType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserControlDefaultDataTypeSize" type="xs:int" minOccurs="0" />
              <xs:element name="UserControlShowInDocumentTypes" type="xs:boolean" minOccurs="0" />
              <xs:element name="UserControlShowInSystemTables" type="xs:boolean" minOccurs="0" />
              <xs:element name="UserControlShowInWebParts" type="xs:boolean" minOccurs="0" />
              <xs:element name="UserControlShowInReports" type="xs:boolean" minOccurs="0" />
              <xs:element name="UserControlGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="UserControlLastModified" type="xs:dateTime" />
              <xs:element name="UserControlForGuid" type="xs:boolean" />
              <xs:element name="UserControlShowInCustomTables" type="xs:boolean" minOccurs="0" />
              <xs:element name="UserControlForVisibility" type="xs:boolean" />
              <xs:element name="UserControlParameters" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserControlForDocAttachments" type="xs:boolean" minOccurs="0" />
              <xs:element name="UserControlForLongInteger" type="xs:boolean" minOccurs="0" />
              <xs:element name="UserControlResourceID" type="xs:int" minOccurs="0" />
              <xs:element name="UserControlType" type="xs:int" minOccurs="0" />
              <xs:element name="UserControlParentID" type="xs:int" minOccurs="0" />
              <xs:element name="UserControlDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="UserControlThumbnailGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="UserControlPriority" type="xs:int" minOccurs="0" />
              <xs:element name="UserControlIsSystem" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_FormUserControl" />
      <xs:field xpath="UserControlID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="UserControlID" fieldcaption="UserControlID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="12a7dbac-256a-4620-8c83-ebef77554f29"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserControlDisplayName" fieldcaption="UserControlDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="58a7d57f-08b3-4357-bf7c-1681268bf702" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserControlCodeName" fieldcaption="UserControlCodeName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="c78acd92-a019-4830-8b20-56129d0d056f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserControlFileName" fieldcaption="UserControlFileName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="400" publicfield="false" guid="6928eca4-3189-4172-b8a5-53d28a4e6966"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserControlForText" fieldcaption="UserControlForText" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="083e22af-aa8e-43ee-ba88-652dc8f24ba8"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlForLongText" fieldcaption="UserControlForLongText" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ed4af8dc-0bc5-4628-a3ac-da94198f24d6"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlForInteger" fieldcaption="UserControlForInteger" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a3b8e554-24f2-46fd-a547-6d31bf223066"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlForLongInteger" fieldcaption="UserControlForLongInteger" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6219a136-b2b3-4878-a4d7-aa063f3c2af1" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlForDecimal" fieldcaption="UserControlForDecimal" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="58ce5d88-bd20-4c62-be7f-5174c98c20e3"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlForDateTime" fieldcaption="UserControlForDateTime" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="0969400a-4930-4389-b6dd-3e70aa97ee91"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlForBoolean" fieldcaption="UserControlForBoolean" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d60d1960-04a9-4857-8bdf-6fb82b425a8a"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlForFile" fieldcaption="UserControlForFile" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="7b7c90e8-a739-4f82-baf9-6cb912f7fcb1"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlForDocAttachments" fieldcaption="User Control For Document Attachments" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="63c34a62-59b3-44dc-a33b-dbfcf832d3fe" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlForGuid" fieldcaption="UserControlForGuid" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5145d64a-c176-463a-89bb-19af77bb8e4d" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlForVisibility" fieldcaption="UserControlForVisibility" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9e466fcd-eae2-45f9-bef2-f9ea11a18ea1" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlShowInBizForms" fieldcaption="UserControlShowInBizForms" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="06591de6-0995-4cad-8931-2bb863c326f3"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlDefaultDataType" fieldcaption="UserControlDefaultDataType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="50" publicfield="false" guid="9ba27907-21f5-4b91-bef7-7bc775e5a17c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserControlDefaultDataTypeSize" fieldcaption="UserControlDefaultDataTypeSize" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="15fd80cc-e8e3-47ff-9892-cf8719ba1c2c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserControlShowInDocumentTypes" fieldcaption="UserControlShowInDocumentTypes" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="db50df09-ceff-498e-adf5-22f59ae02711"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlShowInSystemTables" fieldcaption="UserControlShowInSystemTables" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="95dd83fb-ec56-41cb-908b-3ef96d173c98"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlShowInWebParts" fieldcaption="UserControlShowInWebParts" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="597a5ea1-9775-4cb1-baa5-ce9c66d21d33"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlShowInReports" fieldcaption="UserControlShowInReports" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="336640d5-2347-45f8-afcb-6b2a97d59dd0"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlGUID" fieldcaption="UserControlGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="94342765-2117-4427-9fe9-ba8e89c657e4"><settings><controlname>labelcontrol</controlname></settings></field><field column="UserControlLastModified" fieldcaption="UserControlLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a74a847c-8357-434e-9096-7666c50bb870"><settings><controlname>calendarcontrol</controlname></settings></field><field column="UserControlShowInCustomTables" fieldcaption="UserControlShowInCustomTables" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d3a2ed0b-5b90-48f2-8fe8-6e4aef81f626"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="UserControlParameters" fieldcaption="UserControlParameters" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d0857b52-d00b-466f-a48c-fc0842f619d7" visibility="none"><settings><controlname>textareacontrol</controlname></settings></field><field column="UserControlResourceID" fieldcaption="Form control module ID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f6afb12a-6482-42d5-9452-9a130f7d1d9a" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserControlParentID" fieldcaption="UserControlParentID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6eb0fb69-68ed-411f-a1f5-1483b4445eb9" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="UserControlType" fieldcaption="UserControlType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="4d61220d-909f-499b-96dc-b8728c12f5aa" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="UserControlDescription" fieldcaption="Description" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="62fce0dc-e75a-4d71-b480-f3ff428727d0" visibility="none"><settings><controlname>localizabletextbox</controlname></settings></field><field column="UserControlPriority" fieldcaption="Priority" defaultvalue="0" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9c017fad-12e5-4d02-94af-194ed829efcc" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="UserControlThumbnailGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="aa075faa-6153-4b4a-9c17-c47eec002683" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="UserControlIsSystem" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="25a99c37-52f8-4e47-a5b1-40700d6323b6" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_FormUserControl', N'Null', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', 'ee83afe0-b6e8-442c-a643-13f670672466', 0, 1, 0, N'', 1, N'UserControlDisplayName', N'0', N'', N'UserControlLastModified', N'<search><item searchable="True" name="UserControlID" tokenized="False" content="False" id="c26fa479-5f12-4798-96b0-88dbe9160abd" /><item searchable="False" name="UserControlDisplayName" tokenized="True" content="True" id="a8dec2d7-fba9-4f56-baf6-dc77536e658b" /><item searchable="False" name="UserControlCodeName" tokenized="True" content="True" id="8d059f95-77a0-4a7d-a167-1dd591f8204e" /><item searchable="False" name="UserControlFileName" tokenized="True" content="True" id="b57cdb92-569f-4354-a89f-a45dc537f337" /><item searchable="True" name="UserControlForText" tokenized="False" content="False" id="5cf6d5b2-bda2-446e-8cd7-7ad701a0c952" /><item searchable="True" name="UserControlForLongText" tokenized="False" content="False" id="1dd77a9d-cacd-4c41-b93d-5dc0ec228a2e" /><item searchable="True" name="UserControlForInteger" tokenized="False" content="False" id="a72c3499-210a-4490-9203-092a0b1274a4" /><item searchable="True" name="UserControlForLongInteger" tokenized="False" content="False" id="096b5a47-3456-4d4a-ae54-6687da1d229b" /><item searchable="True" name="UserControlForDecimal" tokenized="False" content="False" id="cbe13ec2-b3a7-4027-a6ef-4e4b57f02e81" /><item searchable="True" name="UserControlForDateTime" tokenized="False" content="False" id="1234b7c4-17f1-40d7-bff4-6fda6bf47331" /><item searchable="True" name="UserControlForBoolean" tokenized="False" content="False" id="549c27ef-8c19-4637-936f-70da999acaeb" /><item searchable="True" name="UserControlForFile" tokenized="False" content="False" id="4fe4529a-0731-4b89-bc47-47bbe7c52475" /><item searchable="True" name="UserControlForDocAttachments" tokenized="False" content="False" id="3f392968-7575-42a1-b07c-7b52699a552b" /><item searchable="True" name="UserControlForGuid" tokenized="False" content="False" id="79c079d7-ade6-4982-a766-03e59247fe83" /><item searchable="True" name="UserControlForVisibility" tokenized="False" content="False" id="f2e1996b-f72c-4d89-b6c9-0c2f4cd4aa98" /><item searchable="True" name="UserControlShowInBizForms" tokenized="False" content="False" id="265bf9b3-fa41-49a2-ab49-266d1bb8a776" /><item searchable="False" name="UserControlDefaultDataType" tokenized="True" content="True" id="3c79c63b-986d-47ee-b919-7d6961fb3437" /><item searchable="True" name="UserControlDefaultDataTypeSize" tokenized="False" content="False" id="491917ba-84ff-41f7-adca-fd240b2c5c55" /><item searchable="True" name="UserControlShowInDocumentTypes" tokenized="False" content="False" id="3f8125fe-e739-452f-81fc-c5ba5cd8f099" /><item searchable="True" name="UserControlShowInSystemTables" tokenized="False" content="False" id="8cfcc9c9-f7d3-419c-a644-39dc66bb9c8d" /><item searchable="True" name="UserControlShowInWebParts" tokenized="False" content="False" id="430a41af-ecf5-4ef0-bfea-3977fbe49490" /><item searchable="True" name="UserControlShowInReports" tokenized="False" content="False" id="0699a0de-62d7-48b0-86f0-26a8b0c4d1db" /><item searchable="False" name="UserControlGUID" tokenized="False" content="False" id="7f99e978-cd10-48b7-979f-ee355adfa2ef" /><item searchable="True" name="UserControlLastModified" tokenized="False" content="False" id="171a5ec7-12d8-40e4-a1e6-f08664752630" /><item searchable="True" name="UserControlShowInCustomTables" tokenized="False" content="False" id="b94c255c-d4ed-4cdf-b480-e1c80efd326e" /><item searchable="False" name="UserControlParameters" tokenized="True" content="True" id="5c1d78bf-6e18-4b11-ab28-97f85e13d077" /><item searchable="True" name="UserControlResourceID" tokenized="False" content="False" id="2c37e967-05da-4344-9f6d-017bc2a2e0cc" /><item searchable="True" name="UserControlType" tokenized="False" content="False" id="45cf696a-462c-4508-b7dd-1534a657f845" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (877, N'Inline control', N'cms.inlinecontrol', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_InlineControl">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ControlID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ControlDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ControlName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ControlParameterName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ControlDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ControlGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ControlLastModified" type="xs:dateTime" />
              <xs:element name="ControlFileName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ControlProperties" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ControlResourceID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_InlineControl" />
      <xs:field xpath="ControlID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ControlID" fieldcaption="ControlID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="e85912e4-5a1a-4002-ad46-7ad5f2009a05"><settings><controlname>labelcontrol</controlname></settings></field><field column="ControlDisplayName" fieldcaption="ControlDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fd811489-c34a-412e-868c-a5c07bf43734" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ControlName" fieldcaption="ControlName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="564e6a7f-b643-4061-b218-b1c43633b7c0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ControlParameterName" fieldcaption="ControlParameterName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="02e9c06f-9187-44a6-9bab-72f9b9210b77"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ControlDescription" fieldcaption="ControlDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b6697c07-7d62-4961-a809-d410953ab0f9" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="ControlGUID" fieldcaption="ControlGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9f3a30a4-7d73-411e-a758-a1a72a8ad018"><settings><controlname>labelcontrol</controlname></settings></field><field column="ControlLastModified" fieldcaption="ControlLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="db669571-0da4-4607-8e9e-9d2c7787e88b"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ControlFileName" fieldcaption="ControlFileName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f0369391-048d-4717-8020-fc15e8fce2b3"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ControlProperties" fieldcaption="Control properties" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ead75d5b-0189-4836-8daa-6a6ea9dbf7d3"><settings><controlname>textareacontrol</controlname></settings></field><field column="ControlResourceID" fieldcaption="Control module ID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="afb6f63d-5951-432a-88c3-75c07499da1a" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_InlineControl', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:23', 'e2be9ac2-a390-4619-99ae-b3ff811d11d1', 0, 1, 0, N'', 1, N'ControlDisplayName', N'ControlDescription', N'', N'ControlLastModified', N'<search><item searchable="True" name="ControlID" tokenized="False" content="False" id="13542dec-1023-41e5-b176-925abf511962" /><item searchable="False" name="ControlDisplayName" tokenized="True" content="True" id="5e3848ec-5f4c-41bb-a439-ec7205020fc8" /><item searchable="False" name="ControlName" tokenized="True" content="True" id="a3a02099-4d86-4481-8b04-40f216235cc6" /><item searchable="False" name="ControlParameterName" tokenized="True" content="True" id="a49517fc-b949-4744-ae66-8ebe47ed2cda" /><item searchable="False" name="ControlDescription" tokenized="True" content="True" id="3edaa259-5b66-4828-8eae-f0621087d2c3" /><item searchable="False" name="ControlGUID" tokenized="False" content="False" id="a6fdf108-8a47-4fce-a628-42616ddb9bb7" /><item searchable="True" name="ControlLastModified" tokenized="False" content="False" id="58f09b1c-a773-4d16-a31e-2a1b93b948b2" /><item searchable="False" name="ControlFileName" tokenized="True" content="True" id="2b2f5d28-a1a7-4dc9-9135-0fd438db0369" /><item searchable="False" name="ControlProperties" tokenized="True" content="True" id="d077b281-5592-4424-b5d1-53b26a6d1af7" /><item searchable="True" name="ControlResourceID" tokenized="False" content="False" id="ced03442-b530-4c49-8449-ca9e42e2138e" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
SET IDENTITY_INSERT [CMS_Class] OFF
