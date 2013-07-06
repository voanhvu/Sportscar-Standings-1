SET IDENTITY_INSERT [CMS_Class] ON
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1122, N'Forum', N'Forums.Forum', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Forums_Forum">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ForumID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ForumGroupID" type="xs:int" />
              <xs:element name="ForumName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ForumDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ForumDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ForumOrder" type="xs:int" minOccurs="0" />
              <xs:element name="ForumDocumentID" type="xs:int" minOccurs="0" />
              <xs:element name="ForumOpen" type="xs:boolean" />
              <xs:element name="ForumModerated" type="xs:boolean" />
              <xs:element name="ForumDisplayEmails" type="xs:boolean" minOccurs="0" />
              <xs:element name="ForumRequireEmail" type="xs:boolean" minOccurs="0" />
              <xs:element name="ForumAccess" type="xs:int" />
              <xs:element name="ForumThreads" type="xs:int" />
              <xs:element name="ForumPosts" type="xs:int" />
              <xs:element name="ForumLastPostTime" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ForumLastPostUserName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ForumBaseUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ForumAllowChangeName" type="xs:boolean" minOccurs="0" />
              <xs:element name="ForumHTMLEditor" type="xs:boolean" minOccurs="0" />
              <xs:element name="ForumUseCAPTCHA" type="xs:boolean" minOccurs="0" />
              <xs:element name="ForumGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ForumLastModified" type="xs:dateTime" />
              <xs:element name="ForumUnsubscriptionUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ForumIsLocked" type="xs:boolean" minOccurs="0" />
              <xs:element name="ForumSettings" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ForumAuthorEdit" type="xs:boolean" minOccurs="0" />
              <xs:element name="ForumAuthorDelete" type="xs:boolean" minOccurs="0" />
              <xs:element name="ForumType" type="xs:int" minOccurs="0" />
              <xs:element name="ForumIsAnswerLimit" type="xs:int" minOccurs="0" />
              <xs:element name="ForumImageMaxSideSize" type="xs:int" minOccurs="0" />
              <xs:element name="ForumLastPostTimeAbsolute" type="xs:dateTime" minOccurs="0" />
              <xs:element name="ForumLastPostUserNameAbsolute" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ForumPostsAbsolute" type="xs:int" minOccurs="0" />
              <xs:element name="ForumThreadsAbsolute" type="xs:int" minOccurs="0" />
              <xs:element name="ForumAttachmentMaxFileSize" type="xs:int" minOccurs="0" />
              <xs:element name="ForumDiscussionActions" type="xs:int" minOccurs="0" />
              <xs:element name="ForumSiteID" type="xs:int" />
              <xs:element name="ForumLogActivity" type="xs:boolean" minOccurs="0" />
              <xs:element name="ForumCommunityGroupID" type="xs:int" minOccurs="0" />
              <xs:element name="ForumEnableOptIn" type="xs:boolean" minOccurs="0" />
              <xs:element name="ForumSendOptInConfirmation" type="xs:boolean" minOccurs="0" />
              <xs:element name="ForumOptInApprovalURL" minOccurs="0">
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
      <xs:selector xpath=".//Forums_Forum" />
      <xs:field xpath="ForumID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ForumID" fieldcaption="ForumID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="a5a72580-8e59-4c28-9ed1-68260005d5ec"><settings><controlname>labelcontrol</controlname></settings></field><field column="ForumGroupID" fieldcaption="ForumGroupID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="da47afe9-4cee-4122-a356-fdf161909434"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumName" fieldcaption="ForumName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="d44035ca-f757-4b21-ab86-2496940def23"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumDisplayName" fieldcaption="ForumDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="cbcfba2f-7033-418e-a983-207674c0b40c" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumDescription" fieldcaption="ForumDescription" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="80033e42-d650-4b5e-87fe-1ee020efc671" translatefield="true"><settings><controlname>textareacontrol</controlname></settings></field><field column="ForumOrder" fieldcaption="ForumOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1ace9535-c2d2-4bc9-90cc-a777926a7190"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumDocumentID" fieldcaption="ForumDocumentID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4f5d483c-a9d4-4be0-b997-3cf8172c434a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumOpen" fieldcaption="ForumOpen" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="29d695a8-f165-44c0-977c-bfe1952e4864"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ForumModerated" fieldcaption="ForumModerated" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2a84972b-9988-4560-8fd9-bd60fcd05e76"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ForumDisplayEmails" fieldcaption="ForumDisplayEmails" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="401fe8d8-bd7a-4671-aa42-9188b881b9af"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ForumRequireEmail" fieldcaption="ForumRequireEmail" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="036c72c8-c97b-41d8-9f15-a3550a2c8dd7"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ForumAccess" fieldcaption="ForumAccess" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4e1fe9df-0be3-41ab-8418-45481e35d136"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumThreads" fieldcaption="ForumThreads" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="56fa4909-066d-4135-b56f-4c2e751d57c3"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumPosts" fieldcaption="ForumPosts" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e866e09f-15cc-43e2-b16c-31c643ddf8e6"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumLastPostTime" fieldcaption="ForumLastPostTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="50bf7d4f-258a-4f24-8bed-9272753c7b5a"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ForumLastPostUserName" fieldcaption="ForumLastPostUserName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="68e87a3c-eb53-4f1e-aa59-0dde3dba94b0" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumBaseUrl" fieldcaption="ForumBaseUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="f2789b2b-0187-45a3-b51d-ebd2b01b58fa"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumAllowChangeName" fieldcaption="ForumAllowChangeName" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a1b4cee6-4eff-41a6-9925-8167361bfbb5"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ForumHTMLEditor" fieldcaption="ForumHTMLEditor" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fa99d5b2-81da-4d20-988a-84fd8dfeb08f"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ForumUseCAPTCHA" fieldcaption="ForumUseCAPTCHA" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="efc0612a-7161-42e5-b4e9-77fbd182b2e8"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ForumGUID" fieldcaption="ForumGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="626e3139-da8d-4d78-8d0b-217a5ba4c66d"><settings><controlname>labelcontrol</controlname></settings></field><field column="ForumLastModified" fieldcaption="ForumLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="e6af3cf1-871c-434d-a8ea-ca33c21bb372"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ForumUnsubscriptionUrl" fieldcaption="ForumUnsubscriptionUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="0a317c54-44e3-4f35-8762-9b83d2bb64dc"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumIsLocked" fieldcaption="ForumIsLocked" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="1e79145e-05e7-45f6-bddb-d3040108b386"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ForumSettings" fieldcaption="ForumSettings" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6460cdfc-8e5c-4286-b5ba-5b40f1ca6e6e"><settings><controlname>textareacontrol</controlname></settings></field><field column="ForumAuthorEdit" fieldcaption="ForumAuthorEdit" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7128e991-75dd-4730-9a81-ab995016d9b7"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ForumAuthorDelete" fieldcaption="ForumAuthorDelete" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0c03904c-0369-4ff4-ae26-603433572553"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ForumType" fieldcaption="ForumType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="65c15999-91c6-48ed-9b85-58fbd76e2168"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumIsAnswerLimit" fieldcaption="ForumIsAnswerLimit" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="71f079d1-33ad-43ba-9803-f05d121ce042"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumImageMaxSideSize" fieldcaption="ForumImageMaxSideSize" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d9dd0e96-655b-4bdd-9358-92bbb755eeb8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumLastPostTimeAbsolute" fieldcaption="ForumLastPostTimeAbsolute" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ff990f14-94d5-4a78-ae1a-e0a462d689d7"><settings><controlname>calendarcontrol</controlname></settings></field><field column="ForumLastPostUserNameAbsolute" fieldcaption="ForumLastPostUserNameAbsolute" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="10473eee-e635-4929-9a58-d06f4940114f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumPostsAbsolute" fieldcaption="ForumPostsAbsolute" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4bd75ccf-9dfc-426d-8ce8-bcbe4f7638a0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumThreadsAbsolute" fieldcaption="ForumThreadsAbsolute" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b86bebb0-db09-421e-92d3-fe5acb10838f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumAttachmentMaxFileSize" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d4909e25-1604-4dd6-89f5-3a44f697b9c3"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumDiscussionActions" fieldcaption="ForumDiscussionActions" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b7fa1080-90f2-4f08-a7d2-75417dea8550"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ForumSiteID" fieldcaption="Forum site ID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="9dd53caf-bf89-4ec7-92a9-3414595e9649" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="ForumLogActivity" fieldcaption="Log on-line marketing activity" visible="true" defaultvalue="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0959e7dd-7f2b-41e8-8036-38d64a70837f" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ForumCommunityGroupID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b6cce314-15bf-43c9-b1f6-51a8323c46e2" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ForumEnableOptIn" fieldcaption="ForumEnableOptIn" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="52988602-0d35-49fd-a1c5-f3e3c9b15aaa" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ForumSendOptInConfirmation" fieldcaption="ForumSendOptInConfirmation" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5bd37682-2451-4ca9-ae55-c5f4cd7c54f3" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ForumOptInApprovalURL" fieldcaption="ForumOptInApprovalURL" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="450" publicfield="false" guid="f8c12573-5a92-4237-84ae-aeec24c9a556" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>False</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field></form>', N'', N'', N'', N'Forums_Forum', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', '32a7f4fb-dfa5-4394-a120-6af690f0f2e2', 0, 1, 0, N'', 2, N'ForumDisplayName', N'ForumDescription', N'', N'ForumLastModified', N'<search><item searchable="True" name="ForumID" tokenized="False" content="False" id="2a8eeb34-9411-4e4e-909f-19924c223e62" /><item searchable="True" name="ForumGroupID" tokenized="False" content="False" id="5c34e78b-a11b-43c5-beac-4349a11030f2" /><item searchable="False" name="ForumName" tokenized="True" content="True" id="eaad5cb4-c866-4586-b9f1-d2b3e9ab4225" /><item searchable="False" name="ForumDisplayName" tokenized="True" content="True" id="0e3ef579-0fdc-4789-9972-041f6f686d8f" /><item searchable="False" name="ForumDescription" tokenized="True" content="True" id="bdb0affe-16a1-4861-bb99-cc9c77906ba1" /><item searchable="True" name="ForumOrder" tokenized="False" content="False" id="6e0b1d37-80cf-412f-a785-5a1281a99c54" /><item searchable="True" name="ForumDocumentID" tokenized="False" content="False" id="373803d4-e307-4d23-9df7-df8893d3e31e" /><item searchable="True" name="ForumOpen" tokenized="False" content="False" id="06e3295f-3304-4e79-bde0-89b3ff86cae0" /><item searchable="True" name="ForumModerated" tokenized="False" content="False" id="42917067-5437-4e3c-879b-53125822ee6b" /><item searchable="True" name="ForumDisplayEmails" tokenized="False" content="False" id="bd34fef9-191f-4043-bb4c-823460f19521" /><item searchable="True" name="ForumRequireEmail" tokenized="False" content="False" id="db26ca93-2a0a-46de-ab41-8d53e2cfb290" /><item searchable="True" name="ForumAccess" tokenized="False" content="False" id="79a6c12c-656a-4e22-9d38-a38dff198d4d" /><item searchable="True" name="ForumThreads" tokenized="False" content="False" id="54d3fe2a-e6f7-42c0-8c5e-a645fcb9d0c2" /><item searchable="True" name="ForumPosts" tokenized="False" content="False" id="e599c192-6c97-454e-b247-8190c0bb757b" /><item searchable="True" name="ForumLastPostTime" tokenized="False" content="False" id="82cecd2f-15de-4f60-b494-089f1046f0ec" /><item searchable="False" name="ForumLastPostUserName" tokenized="True" content="True" id="5e1ea68c-12dc-412a-9d9d-3456b166ec7f" /><item searchable="False" name="ForumBaseUrl" tokenized="True" content="True" id="810d7caf-6e36-45f6-b94c-b2cd3330c2a1" /><item searchable="True" name="ForumAllowChangeName" tokenized="False" content="False" id="4ba5650a-6442-40e3-a668-0f18c7cf3f58" /><item searchable="True" name="ForumHTMLEditor" tokenized="False" content="False" id="1814e147-5a0d-41cd-bab6-cc30ccb64877" /><item searchable="True" name="ForumUseCAPTCHA" tokenized="False" content="False" id="08e41aa7-2286-448c-8c5d-502caac3b2f6" /><item searchable="False" name="ForumGUID" tokenized="False" content="False" id="18c52c56-07e7-4e56-bf6d-797f049303a5" /><item searchable="True" name="ForumLastModified" tokenized="False" content="False" id="73b80f4c-8c41-456d-a9a2-7653e8e5af34" /><item searchable="False" name="ForumUnsubscriptionUrl" tokenized="True" content="True" id="412d894b-7039-4134-be2d-cd4216b6cdab" /><item searchable="True" name="ForumIsLocked" tokenized="False" content="False" id="b5943b0b-cb0e-4e37-a36e-caa34172cf03" /><item searchable="False" name="ForumSettings" tokenized="True" content="True" id="c998773b-6985-48b1-9540-49ea02831c9e" /><item searchable="True" name="ForumAuthorEdit" tokenized="False" content="False" id="2824b85f-99a7-46fa-a559-3f39ee74c5dd" /><item searchable="True" name="ForumAuthorDelete" tokenized="False" content="False" id="02966967-03d1-410a-8897-c899ba7c97a8" /><item searchable="True" name="ForumType" tokenized="False" content="False" id="c99a5ca2-8099-49e5-af59-d1315c939cea" /><item searchable="True" name="ForumIsAnswerLimit" tokenized="False" content="False" id="80534f06-2c4d-47f5-9320-ebcafdce5bf4" /><item searchable="True" name="ForumImageMaxSideSize" tokenized="False" content="False" id="2dfba041-494d-4251-ada3-001a118c92e0" /><item searchable="True" name="ForumLastPostTimeAbsolute" tokenized="False" content="False" id="daa22402-b847-4072-9050-4a7fc8a25ed4" /><item searchable="False" name="ForumLastPostUserNameAbsolute" tokenized="True" content="True" id="a4e466c6-1d7c-42a0-99af-f5697bd680c2" /><item searchable="True" name="ForumPostsAbsolute" tokenized="False" content="False" id="67059b63-3058-4bb6-bfd3-35a10b62db14" /><item searchable="True" name="ForumThreadsAbsolute" tokenized="False" content="False" id="680f2610-8aa1-4881-aca8-1eadb0e54b12" /><item searchable="True" name="ForumAttachmentMaxFileSize" tokenized="False" content="False" id="a97bb594-3c61-4643-acc1-7612da025506" /><item searchable="True" name="ForumDiscussionActions" tokenized="False" content="False" id="28ffaa81-482b-41f6-acf4-0731de663cca" /><item searchable="True" name="ForumSiteID" tokenized="False" content="False" id="ce6f2f08-3100-4062-910c-4cdf4940fdec" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1123, N'ForumPost', N'Forums.ForumPost', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Forums_ForumPost">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="PostId" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="PostForumID" type="xs:int" />
              <xs:element name="PostParentID" type="xs:int" minOccurs="0" />
              <xs:element name="PostIDPath">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PostLevel" type="xs:int" />
              <xs:element name="PostSubject">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PostUserID" type="xs:int" minOccurs="0" />
              <xs:element name="PostUserName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PostUserMail" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PostText" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PostTime" type="xs:dateTime" />
              <xs:element name="PostApprovedByUserID" type="xs:int" minOccurs="0" />
              <xs:element name="PostThreadPosts" type="xs:int" minOccurs="0" />
              <xs:element name="PostThreadLastPostUserName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PostThreadLastPostTime" type="xs:dateTime" minOccurs="0" />
              <xs:element name="PostUserSignature" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PostGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="PostLastModified" type="xs:dateTime" />
              <xs:element name="PostApproved" type="xs:boolean" minOccurs="0" />
              <xs:element name="PostIsLocked" type="xs:boolean" minOccurs="0" />
              <xs:element name="PostIsAnswer" type="xs:int" minOccurs="0" />
              <xs:element name="PostStickOrder" type="xs:int" />
              <xs:element name="PostViews" type="xs:int" minOccurs="0" />
              <xs:element name="PostLastEdit" type="xs:dateTime" minOccurs="0" />
              <xs:element name="PostInfo" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PostAttachmentCount" type="xs:int" minOccurs="0" />
              <xs:element name="PostType" type="xs:int" minOccurs="0" />
              <xs:element name="PostThreadPostsAbsolute" type="xs:int" minOccurs="0" />
              <xs:element name="PostThreadLastPostUserNameAbsolute" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PostThreadLastPostTimeAbsolute" type="xs:dateTime" minOccurs="0" />
              <xs:element name="PostQuestionSolved" type="xs:boolean" minOccurs="0" />
              <xs:element name="PostIsNotAnswer" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//Forums_ForumPost" />
      <xs:field xpath="PostId" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="PostId" fieldcaption="PostId" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="00a5f4ac-2e67-465b-bd5c-e6848c10559a"><settings><controlname>labelcontrol</controlname></settings></field><field column="PostForumID" fieldcaption="PostForumID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="924d3b8c-3110-48b4-961a-08bae5b5adc0"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostParentID" fieldcaption="PostParentID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7ec61a89-dd67-4694-8734-6887ad02b162"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostIDPath" fieldcaption="PostIDPath" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="3f10250c-688d-4f5e-8b6d-68e5055872e3"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostLevel" fieldcaption="PostLevel" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="a5f89ef5-0988-402e-996e-e93409d0b22a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostSubject" fieldcaption="PostSubject" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="450" publicfield="false" guid="fc8be85a-2904-4098-a7c0-35ea946ae16d" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostUserID" fieldcaption="PostUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6e8e10ba-6ff2-4393-b6cc-37d4e3a3687b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostUserName" fieldcaption="PostUserName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="8373dd18-fe7b-4ead-a3b6-9c295605385f" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostUserMail" fieldcaption="PostUserMail" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="c2213d50-2c8f-41b0-9151-41f0b84f37db"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostText" fieldcaption="PostText" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="33c6eb92-51f3-420d-82cd-5e3b4f54361a"><settings><controlname>textareacontrol</controlname></settings></field><field column="PostTime" fieldcaption="PostTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="95aa7b00-47d2-4119-af78-6ba0003eede2"><settings><controlname>calendarcontrol</controlname></settings></field><field column="PostApprovedByUserID" fieldcaption="PostApprovedByUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ac69c3a5-53a2-4113-b78c-31d41d34868a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostThreadPosts" fieldcaption="PostThreadPosts" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6290317c-5293-44e1-81fb-b85c85f69f60"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostThreadLastPostUserName" fieldcaption="PostThreadLastPostUserName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="17985059-abff-4992-a38d-0ce54ff426dd" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostThreadLastPostTime" fieldcaption="PostThreadLastPostTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="989327c7-6997-4a50-a234-10ec7a5ad132"><settings><controlname>calendarcontrol</controlname></settings></field><field column="PostUserSignature" fieldcaption="PostUserSignature" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="47a93b85-74db-447b-a10f-2df627566203"><settings><controlname>textareacontrol</controlname></settings></field><field column="PostGUID" fieldcaption="PostGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b98f1f62-a46e-450b-b61d-68b13e0bff63"><settings><controlname>labelcontrol</controlname></settings></field><field column="PostLastModified" fieldcaption="PostLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b0d89e7c-6427-4f90-9ef9-1cd819cc3669"><settings><controlname>calendarcontrol</controlname></settings></field><field column="PostApproved" fieldcaption="PostApproved" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0bb49d7c-346d-4da4-ac4e-70cd971fec5d"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="PostIsLocked" fieldcaption="PostIsLocked" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2560b6ed-9156-4b51-81d6-8b44165c8334"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="PostIsAnswer" fieldcaption="PostIsAnswer" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ac84a32c-33eb-4404-88cd-843cd5f4475a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostStickOrder" fieldcaption="PostStickOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5dcc65fd-dba4-4e7f-b899-b5cfcbbe23e6"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostViews" fieldcaption="PostViews" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c586bf90-5b68-488d-a6a6-6bda0f1a6e27"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostLastEdit" fieldcaption="PostLastEdit" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a00788a0-53ec-4f73-bf9a-47f7c1fa1940"><settings><controlname>calendarcontrol</controlname></settings></field><field column="PostInfo" fieldcaption="PostInfo" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a879820c-e3cd-4467-82a6-c4d28f15e637"><settings><controlname>textareacontrol</controlname></settings></field><field column="PostAttachmentCount" fieldcaption="PostAttachmentCount" visible="true" defaultvalue="0" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="71cc9ff2-e54e-4536-8248-3205e7320931"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PostType" fieldcaption="PostType" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9157042f-693a-4e03-9b2c-dcc84404f34a"><settings><controlname>radiobuttonscontrol</controlname><repeatdirection>vertical</repeatdirection><options>&lt;item value="0" text="Normal" /&gt;&lt;item value="1" text="Answer" /&gt;</options></settings></field><field column="PostThreadPostsAbsolute" fieldcaption="PostThreadPostsAbsolute" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7470dc26-3ee4-4027-bdc1-aedd64b35715"><settings><controlname>labelcontrol</controlname></settings></field><field column="PostThreadLastPostUserNameAbsolute" fieldcaption="PostThreadLastPostUserNameAbsolute" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="17951f5f-5f61-4cc8-b63b-82f58815c826"><settings><controlname>labelcontrol</controlname></settings></field><field column="PostThreadLastPostTimeAbsolute" fieldcaption="PostThreadLastPostTimeAbsolute" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0af83503-acaf-47a1-b6f6-19c85308a9fb"><settings><controlname>labelcontrol</controlname></settings></field><field column="PostQuestionSolved" fieldcaption="PostQuestionSolved" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6e4af8f2-aae7-4df1-b977-2cd341ada9f0"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="PostIsNotAnswer" fieldcaption="PostIsNotAnswer" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="34fe9c34-2c65-456b-a285-fcbc84b7650a"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Forums_ForumPost', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', 'f40c961c-3d47-4e6a-997e-b127db2520c1', 0, 1, 0, N'', 2, N'PostSubject', N'PostText', N'', N'PostTime', N'<search><item tokenized="False" name="PostId" content="False" searchable="True" id="e4795a52-a0c3-4040-b4d9-07a57294e05b" /><item tokenized="False" name="PostForumID" content="False" searchable="True" id="075d7293-802f-476d-aac6-af0abae45816" /><item tokenized="False" name="PostParentID" content="False" searchable="True" id="4bac1bd7-1885-497a-8f15-0fc6015dfa93" /><item tokenized="False" name="PostIDPath" content="False" searchable="True" id="76d587b1-0711-419e-ac79-a4305a3e1c38" /><item tokenized="False" name="PostLevel" content="False" searchable="True" id="c515659a-41e8-4e0d-9bfd-a8706a4cec54" /><item tokenized="True" name="PostSubject" content="True" searchable="False" id="d8fdc784-f5d5-412c-8885-b4c4ff0c5974" /><item tokenized="False" name="PostUserID" content="False" searchable="True" id="0f9a0b1e-731c-4432-bd1b-d9bc1bdddae2" /><item tokenized="True" name="PostUserName" content="True" searchable="False" id="c5939d48-d9cb-4d74-bfe3-5e5d4e4b200f" /><item tokenized="True" name="PostUserMail" content="True" searchable="False" id="32dde000-eed5-4091-8bc9-8acca85ac1b3" /><item tokenized="True" name="PostText" content="True" searchable="False" id="20650fce-9586-4dac-87e2-042eabd757f8" /><item tokenized="False" name="PostTime" content="False" searchable="True" id="e3c5b2c8-00cc-43b0-b1cd-16cae14e6102" /><item tokenized="False" name="PostApprovedByUserID" content="False" searchable="True" id="781b680e-5ee9-485a-a260-2652245919df" /><item tokenized="False" name="PostThreadPosts" content="False" searchable="True" id="75949b92-d698-4053-99e4-43a277a9ec1c" /><item tokenized="False" name="PostThreadLastPostUserName" content="False" searchable="False" id="c55984d7-8f15-40ca-bd4b-8b152eb3ed7a" /><item tokenized="False" name="PostThreadLastPostTime" content="False" searchable="False" id="acd19d37-9350-4661-b2b8-fdd16cde9050" /><item tokenized="False" name="PostUserSignature" content="False" searchable="False" id="6235fc61-99c0-4b32-8759-e87c981e9a65" /><item tokenized="False" name="PostGUID" content="False" searchable="False" id="c16877d3-a7d2-48e4-86d2-c39014f324db" /><item tokenized="False" name="PostLastModified" content="False" searchable="True" id="4270f74e-7c3b-405c-b953-4eb710cdb86f" /><item tokenized="False" name="PostApproved" content="False" searchable="True" id="ef64c5f6-6b82-4070-b814-4dbd575b29e2" /><item tokenized="False" name="PostIsLocked" content="False" searchable="True" id="84eb64c7-849d-4621-bc08-84d693b98cab" /><item tokenized="False" name="PostIsAnswer" content="False" searchable="True" id="88c1b2a0-4a86-42c4-ac35-54955c146b83" /><item tokenized="False" name="PostStickOrder" content="False" searchable="True" id="c610c446-b9bb-4e09-a9b9-c9cf0cf47bb3" /><item tokenized="False" name="PostViews" content="False" searchable="True" id="3133a944-d966-472a-8c87-9e28865eb634" /><item tokenized="False" name="PostLastEdit" content="False" searchable="True" id="5b7c2424-423a-4367-9053-1fb5751e4be8" /><item tokenized="False" name="PostInfo" content="False" searchable="False" id="a6d1e097-2511-4e4f-8a65-a18c9c7f0701" /><item tokenized="False" name="PostAttachmentCount" content="False" searchable="True" id="fb76529e-3521-4987-b1f5-9c2b22cf2afe" /><item tokenized="False" name="PostType" content="False" searchable="True" id="6fbf9437-e4ce-4636-88d3-5a5225d5da58" /><item tokenized="False" name="PostThreadPostsAbsolute" content="False" searchable="False" id="e1e78549-804d-486d-808d-0d9088dd4c9f" /><item tokenized="False" name="PostThreadLastPostUserNameAbsolute" content="False" searchable="False" id="703bb080-71c4-41ab-bcca-ad88374bc5ef" /><item tokenized="False" name="PostThreadLastPostTimeAbsolute" content="False" searchable="False" id="34738a31-7dbb-45b8-af3d-7249fb54857b" /><item tokenized="False" name="PostQuestionSolved" content="False" searchable="True" id="abacdb5a-597a-4e0d-882c-b4f86c15adb4" /><item tokenized="False" name="PostIsNotAnswer" content="False" searchable="True" id="ef75eb43-e6da-448d-b7bc-714b44e6f5ea" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1124, N'ForumSubscription', N'Forums.ForumSubscription', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Forums_ForumSubscription">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SubscriptionID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SubscriptionUserID" type="xs:int" minOccurs="0" />
              <xs:element name="SubscriptionEmail" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SubscriptionForumID" type="xs:int" />
              <xs:element name="SubscriptionPostID" type="xs:int" minOccurs="0" />
              <xs:element name="SubscriptionGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="SubscriptionLastModified" type="xs:dateTime" />
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
      <xs:selector xpath=".//Forums_ForumSubscription" />
      <xs:field xpath="SubscriptionID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SubscriptionID" fieldcaption="SubscriptionID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="3fc5afd4-d80f-4c8e-bff1-203798e7142a"><settings><controlname>labelcontrol</controlname></settings></field><field column="SubscriptionUserID" fieldcaption="SubscriptionUserID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="dd5652e2-0d24-4e79-bbca-41508456c966"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionEmail" fieldcaption="SubscriptionEmail" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="01531690-2ab8-4ef5-97a3-db33bf517da4"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionForumID" fieldcaption="SubscriptionForumID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="1f53c06d-dfed-46f0-b77e-7ce173d0f2e5"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionPostID" fieldcaption="SubscriptionPostID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="aafad6cf-698b-41f7-97b7-21d4988bd61a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SubscriptionGUID" fieldcaption="SubscriptionGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="446281b6-cf2d-4f6a-95a1-bda6552a2b74"><settings><controlname>unknown</controlname></settings></field><field column="SubscriptionLastModified" fieldcaption="SubscriptionLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f417d26b-a105-4dbd-848a-7451dcb6d6b7"><settings><controlname>calendarcontrol</controlname></settings></field><field column="SubscriptionApproved" fieldcaption="SubscriptionApproved" visible="true" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d9c61ae3-24b6-4ec7-8b11-55cde16dfcac" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="SubscriptionApprovalHash" fieldcaption="SubscriptionApprovalHash" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="61b9352f-eb8a-45c8-bbf0-532f73744594" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'Forums_ForumSubscription', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:22', 'c1ddbb88-8e9a-4b77-b7c1-cb331ed94083', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1125, N'Country', N'cms.country', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="cms_country">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="CountryID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="CountryDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CountryName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CountryGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="CountryLastModified" type="xs:dateTime" />
              <xs:element name="CountryTwoLetterCode" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CountryThreeLetterCode" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="3" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//cms_country" />
      <xs:field xpath="CountryID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="CountryID" fieldcaption="CountryID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="1c2b75ec-e2ec-4c27-b9f3-b1ad4c86747b" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="CountryDisplayName" fieldcaption="{$Country_Edit.CountryDisplayNameLabel$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="714fce0f-86fb-4b48-84bd-7e028eecf62d" visibility="none" translatefield="true"><settings><controlname>localizabletextbox</controlname></settings></field><field column="CountryName" fieldcaption="{$Country_Edit.CountryNameLabel$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="7360fc6f-444b-4293-a60e-678920a9635f" visibility="none"><settings><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field><field column="CountryTwoLetterCode" fieldcaption="{$country_edit.countrytwolettercodelabel$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="2" regularexpression="([a-zA-Z]{2})?" validationerrormessage="{$Country_Edit.CountryTwoLetterCodeInvalid$}" publicfield="false" spellcheck="false" controlcssclass="ShortTextBox" guid="4990f190-450a-49ba-b62a-edd31e61f4e4" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>True</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CountryThreeLetterCode" fieldcaption="{$country_edit.countrythreelettercodelabel$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="3" regularexpression="([a-zA-Z]{3})?" validationerrormessage="{$Country_Edit.CountryThreeLetterCodeInvalid$}" publicfield="false" spellcheck="false" controlcssclass="ShortTextBox" guid="1bd74da5-9805-4b8c-932e-d65b2191dc7f" visibility="none"><settings><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><Trim>True</Trim><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching></settings></field><field column="CountryGUID" fieldcaption="CountryGUID" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="eafdf9a4-1213-4ab7-ad24-e67684cfa34e" visibility="none"><settings><controlname>directuploadcontrol</controlname><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="CountryLastModified" fieldcaption="CountryLastModified" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="28acb0c7-a1e6-4b19-9037-b53147d9cf02" visibility="none"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'cms_country', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', '7e651b6d-e59d-4d72-93c3-2d3adb2a6c6b', 0, 1, 0, N'', 1, N'CountryDisplayName', N'0', N'', N'CountryLastModified', N'<search><item searchable="True" name="CountryID" tokenized="False" content="False" id="c08c858f-ac1c-4f8c-a8ed-aa91d8f6a11f" /><item searchable="False" name="CountryDisplayName" tokenized="True" content="True" id="64ded574-2084-420d-9348-18be85becc4c" /><item searchable="False" name="CountryName" tokenized="True" content="True" id="84980a47-1ee7-4a79-ae61-0487f25db40e" /><item searchable="False" name="CountryGUID" tokenized="False" content="False" id="a021a032-aba1-4edf-8f18-4ec0e1972374" /><item searchable="True" name="CountryLastModified" tokenized="False" content="False" id="ebdbe945-da05-4c45-a31f-e7a6be2ec9b0" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1126, N'State', N'cms.state', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="CMS_State">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="StateID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="StateDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StateName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StateCode" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CountryID" type="xs:int" />
              <xs:element name="StateGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="StateLastModified" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//CMS_State" />
      <xs:field xpath="StateID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="StateID" fieldcaption="StateID" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="9d25f72b-8b2f-4635-a0c0-49f1a46369ce" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="StateDisplayName" fieldcaption="{$Country_State_Edit.StateDisplayNameLabel$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="153f4f19-df99-4cb5-8089-cdfc25260a4f" visibility="none" translatefield="true"><settings><controlname>localizabletextbox</controlname></settings></field><field column="StateName" fieldcaption="{$Country_State_Edit.StateNameLabel$}" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="f773552d-012b-4d94-9935-dab01da9b535" visibility="none"><settings><controlname>codename</controlname></settings></field><field column="StateCode" fieldcaption="{$Country_State_Edit.StateCodeLabel$}" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="100" publicfield="false" guid="33e36f31-a6ad-4e19-a83c-b4d900cc07db" visibility="none"><settings><controlname>textboxcontrol</controlname><FilterMode>False</FilterMode><FilterEnabled>False</FilterEnabled></settings></field><field column="CountryID" fieldcaption="CountryID" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c76ec985-2879-4e92-aebd-edf82909e58b" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StateGUID" fieldcaption="StateGUID" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="216850cd-1080-4bc7-a794-2c0f2fa848a0" visibility="none"><settings><controlname>directuploadcontrol</controlname><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="StateLastModified" fieldcaption="StateLastModified" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="014db439-c6cd-4774-9a1b-d2243fdff59c" visibility="none"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'CMS_State', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:29', '6d8f4d1f-3ac1-4388-94d6-14d68e972f5d', 0, 1, 0, N'', 1, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1131, N'Staging - synchronization', N'staging.synchronization', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Staging_Synchronization">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SynchronizationID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SynchronizationTaskID" type="xs:int" />
              <xs:element name="SynchronizationServerID" type="xs:int" />
              <xs:element name="SynchronizationLastRun" type="xs:dateTime" />
              <xs:element name="SynchronizationErrorMessage" minOccurs="0">
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
      <xs:selector xpath=".//Staging_Synchronization" />
      <xs:field xpath="SynchronizationID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SynchronizationID" fieldcaption="SynchronizationID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="a98996fd-850a-48a3-862e-ed43833d3780"><settings><controlname>labelcontrol</controlname></settings></field><field column="SynchronizationTaskID" fieldcaption="SynchronizationTaskID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="82d4f3ab-07fb-42ff-9a7c-5f398e1c52cd"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SynchronizationServerID" fieldcaption="SynchronizationServerID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5ed8bcb4-d204-46e7-b6e3-9a282fc888ea"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SynchronizationLastRun" fieldcaption="SynchronizationLastRun" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f85de1a4-a651-4150-97f5-8af2c850964c"><settings><controlname>calendarcontrol</controlname></settings></field><field column="SynchronizationErrorMessage" fieldcaption="SynchronizationErrorMessage" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="0a3c3f13-ce60-45e4-8276-539e56d79972"><settings><controlname>textareacontrol</controlname></settings></field></form>', N'', N'', N'', N'Staging_Synchronization', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120528 09:26:49', '235368da-5b9f-4a38-b0f6-b8baf22ecd0f', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1132, N'Staging - server', N'staging.server', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="staging_server">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ServerID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ServerName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ServerDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="440" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ServerSiteID" type="xs:int" />
              <xs:element name="ServerURL">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="450" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ServerEnabled" type="xs:boolean" />
              <xs:element name="ServerAuthentication">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="20" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ServerUsername" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ServerPassword" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ServerX509ClientKeyID" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ServerX509ServerKeyID" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ServerGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ServerLastModified" type="xs:dateTime" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//staging_server" />
      <xs:field xpath="ServerID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ServerID" fieldcaption="ServerID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="adc25c7d-4b9d-4272-9bb5-83577cf832d3"><settings><controlname>labelcontrol</controlname></settings></field><field column="ServerName" fieldcaption="ServerName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="56e84c75-7ef5-46ac-b851-792532748a56"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ServerDisplayName" fieldcaption="ServerDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="440" publicfield="false" guid="ccbfd081-f598-4bcd-86c5-0b0659d1d823" visibility="none" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ServerSiteID" fieldcaption="ServerSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3a5aac85-f6a7-462c-995c-f87088fccdc7"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ServerURL" fieldcaption="ServerURL" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="5e032c90-c2ab-43d8-bb9c-9c43ebfcddc8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ServerEnabled" fieldcaption="ServerEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4726b612-34b9-464b-8a35-17ef4acc9c26"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="ServerAuthentication" fieldcaption="ServerAuthentication" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="df28276a-53b0-4899-b35e-3bce1bf0cfb8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ServerUsername" fieldcaption="ServerUsername" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="7d0a229d-7ac4-4377-aaf4-953e995ed9a8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ServerPassword" fieldcaption="ServerPassword" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="b2bb8d87-584d-4e88-bff1-ebc6e96eff4a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ServerX509ClientKeyID" fieldcaption="ServerX509ClientKeyID" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2c24dc63-7eed-4fc9-a343-24c89827ce81"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ServerX509ServerKeyID" fieldcaption="ServerX509ServerKeyID" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="8b2d88a3-111f-4a03-8128-e31abaff562f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="ServerGUID" fieldcaption="ServerGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="85c57a10-f71b-4bcc-903a-8e55bd1038a2"><settings><controlname>unknown</controlname></settings></field><field column="ServerLastModified" fieldcaption="ServerLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="40a0bfef-1603-4a94-90c0-d48e769f3fe7"><settings><controlname>calendarcontrol</controlname></settings></field></form>', N'', N'', N'', N'Staging_Server', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:29', 'ae6f2aaa-9dbc-47f4-b365-91167e71bbd0', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1133, N'Staging - synclog', N'staging.synclog', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Staging_Synclog">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SyncLogID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SyncLogTaskID" type="xs:int" />
              <xs:element name="SyncLogServerID" type="xs:int" />
              <xs:element name="SyncLogTime" type="xs:dateTime" />
              <xs:element name="SyncLogError" minOccurs="0">
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
      <xs:selector xpath=".//Staging_Synclog" />
      <xs:field xpath="SyncLogID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SyncLogID" fieldcaption="SyncLogID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="8bdf61c0-cae5-4bbb-a8a3-ed8fff630027"><settings><controlname>labelcontrol</controlname></settings></field><field column="SyncLogTaskID" fieldcaption="SyncLogTaskID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="47ab8296-3ebb-42a4-84e0-427938f02836"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SyncLogServerID" fieldcaption="SyncLogServerID" visible="true" columntype="integer" fieldtype="CustomUserControl" system="true" publicfield="false" guid="bfd29008-13d1-46f0-a828-7d475504278f"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SyncLogTime" fieldcaption="SyncLogTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3f06b57e-9ceb-4a12-a92d-c9fed5686c61"><settings><controlname>calendarcontrol</controlname></settings></field><field column="SyncLogError" fieldcaption="SyncLogError" visible="true" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="5cca9fdd-e704-42df-8121-172a42e3c8be"><settings><controlname>textareacontrol</controlname></settings></field></form>', N'', N'', N'', N'Staging_Synclog', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:29', 'abf6512d-23fe-4657-a767-0417f41cf96b', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1134, N'Staging - task', N'staging.task', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="Staging_Task">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="TaskID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="TaskSiteID" type="xs:int" minOccurs="0" />
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
              <xs:element name="TaskData">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
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
              <xs:element name="TaskRunning" type="xs:boolean" minOccurs="0" />
              <xs:element name="TaskNodeID" type="xs:int" minOccurs="0" />
              <xs:element name="TaskServers" minOccurs="0">
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
      <xs:selector xpath=".//Staging_Task" />
      <xs:field xpath="TaskID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="TaskID" fieldcaption="TaskID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="5a76cc96-89cf-4a50-94e6-7514e2d49fdc"><settings><controlname>labelcontrol</controlname></settings></field><field column="TaskSiteID" fieldcaption="TaskSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="fa037649-546c-4e8c-b6ba-b58233ac4cfb"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskDocumentID" fieldcaption="TaskDocumentID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="229ffc3b-f78f-4982-a159-fd0789c9875e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskNodeID" fieldcaption="TaskNodeID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="df505950-031a-4d7d-bfa7-0f0dbea0a732" visibility="none"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskNodeAliasPath" fieldcaption="TaskNodeAliasPath" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="44f99d9f-cf85-4f4e-9f6a-b38466e32e4c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskTitle" fieldcaption="TaskTitle" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ec039fe8-3da7-4c0f-a8f7-4f8d8c501eea"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskData" fieldcaption="TaskData" visible="true" columntype="longtext" fieldtype="CustomUserControl" system="true" publicfield="false" guid="582a8ed2-17d6-46e7-af57-d1552a5905c4"><settings><controlname>textareacontrol</controlname></settings></field><field column="TaskTime" fieldcaption="TaskTime" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fe5c0b3e-381b-4813-896f-8a24119c8912"><settings><controlname>calendarcontrol</controlname></settings></field><field column="TaskType" fieldcaption="TaskType" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="4c934e50-ede0-429b-9243-7951ae0c7022"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskObjectType" fieldcaption="TaskObjectType" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ca7447f8-e178-4ef1-8a8a-d373c2364422"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskObjectID" fieldcaption="TaskObjectID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="c27c108d-ecda-45ce-a085-fce64d313eed"><settings><controlname>textboxcontrol</controlname></settings></field><field column="TaskRunning" fieldcaption="TaskRunning" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="17eafbfa-0395-4cc3-9ad3-0afdbea9c19e"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="TaskServers" defaultvalue="null" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" fielddescription="List of server names separated by ?;?(;server1;server2;server3;)" publicfield="false" guid="2a3a4d63-e6d8-4821-bb81-d0574331824d" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field></form>', N'', N'', N'', N'Staging_Task', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120611 13:31:24', 'a79db106-b9f8-44ee-a172-f8c77403aebb', 0, 1, 0, N'', 2, N'', N'', N'', N'', N'', NULL, 0, NULL, NULL, NULL, 0, N'PRODUCT', NULL, 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1141, N'Ecommerce - Supplier', N'ecommerce.supplier', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_Supplier">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="SupplierID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="SupplierDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SupplierPhone">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SupplierEmail">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SupplierFax">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="SupplierEnabled" type="xs:boolean" />
              <xs:element name="SupplierGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="SupplierLastModified" type="xs:dateTime" />
              <xs:element name="SupplierSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="SupplierName" minOccurs="0">
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
      <xs:selector xpath=".//COM_Supplier" />
      <xs:field xpath="SupplierID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="SupplierID" fieldcaption="SupplierID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="7197f910-b4b5-4c81-be4c-b24f7c38e87c"><settings><controlname>labelcontrol</controlname></settings></field><field column="SupplierDisplayName" fieldcaption="SupplierDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="fe7d0925-6fda-47bc-9783-d8f27867590a" visibility="none" translatefield="true"><settings><Trim>False</Trim><AutoCompleteFirstRowSelected>False</AutoCompleteFirstRowSelected><AutoCompleteShowOnlyCurrentWordInCompletionListItem>False</AutoCompleteShowOnlyCurrentWordInCompletionListItem><FilterMode>False</FilterMode><AutoCompleteEnableCaching>False</AutoCompleteEnableCaching><controlname>textboxcontrol</controlname></settings></field><field column="SupplierName" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="1bfead82-764b-43b7-aa17-8cdd64ef6b2d" visibility="none"><settings><controlname>allowedextensionsselector</controlname></settings></field><field column="SupplierPhone" fieldcaption="SupplierPhone" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f321f915-0958-4c10-9bc3-b8ab505b1f2a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SupplierEmail" fieldcaption="SupplierEmail" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="01565a13-6ee4-482d-b9f6-d6a9d03c2fca"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SupplierFax" fieldcaption="SupplierFax" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="8bc06426-f54b-4cd7-9b59-64fd0d84b1c3"><settings><controlname>textboxcontrol</controlname></settings></field><field column="SupplierEnabled" fieldcaption="SupplierEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fb64cad7-bec2-4e50-8c90-502de0f21738"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="SupplierGUID" fieldcaption="SupplierGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="27e25a04-f570-44cf-9358-89869d3a33e1"><settings><controlname>unknown</controlname></settings></field><field column="SupplierLastModified" fieldcaption="SupplierLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d0e00d08-4f82-4a61-a2fd-b6a796758c0d"><settings><controlname>calendarcontrol</controlname></settings></field><field column="SupplierSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="f858d835-cc53-491c-afc7-5700c53c60e0" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_Supplier', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120614 08:39:56', 'd30e1123-ea76-42db-8f74-a20da0c54d03', 0, 1, 0, N'', 2, N'SupplierDisplayName', N'0', N'', N'0', N'<search><item searchable="True" name="SupplierID" tokenized="False" content="False" id="2a1901da-71f5-490f-8835-c5a41b6d41fd" /><item searchable="False" name="SupplierDisplayName" tokenized="True" content="True" id="717de3e9-0940-41ab-9a4c-ce2b4238c26d" /><item searchable="False" name="SupplierPhone" tokenized="True" content="True" id="5aa79877-ff3d-4f28-a46b-86513db4bfb9" /><item searchable="False" name="SupplierEmail" tokenized="True" content="True" id="0f09391c-5849-4704-820d-8cfce8f536fa" /><item searchable="False" name="SupplierFax" tokenized="True" content="True" id="5ddb4255-e23f-43ab-9043-97e4029fb16a" /><item searchable="True" name="SupplierEnabled" tokenized="False" content="False" id="0f1bc837-6ca5-4806-bd85-1edc0ba20240" /><item searchable="False" name="SupplierGUID" tokenized="False" content="False" id="fde172e5-f58b-4714-b1d6-b36db9f735f5" /><item searchable="True" name="SupplierLastModified" tokenized="False" content="False" id="91e5c40b-dd09-4820-824e-9070e61eaf8e" /><item searchable="True" name="SupplierSiteID" tokenized="False" content="False" id="e2b44de0-ba33-4a2b-8e8d-95936b8ed114" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1142, N'Ecommerce - Manufacturer', N'ecommerce.manufacturer', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_Manufacturer">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="ManufacturerID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="ManufacturerDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ManufactureHomepage" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="400" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ManufacturerEnabled" type="xs:boolean" />
              <xs:element name="ManufacturerGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="ManufacturerLastModified" type="xs:dateTime" />
              <xs:element name="ManufacturerSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="ManufacturerThumbnailGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="ManufacturerIsImportant" type="xs:boolean" minOccurs="0" />
              <xs:element name="ManufacturerDescription" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="2147483647" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="ManufacturerName" minOccurs="0">
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
      <xs:selector xpath=".//COM_Manufacturer" />
      <xs:field xpath="ManufacturerID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="ManufacturerID" fieldcaption="ManufacturerID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="53e6de27-2519-46b8-bf4a-9b9b6b29089b"><settings><controlname>unknown</controlname></settings></field><field column="ManufacturerDisplayName" fieldcaption="ManufacturerDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" columnsize="200" publicfield="false" guid="51d162fa-6588-4109-b837-0d1e88903be6" translatefield="true"><settings><controlname>unknown</controlname></settings></field><field column="ManufacturerName" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="200" publicfield="false" guid="4967f2e5-c21d-42da-95e5-d8697879fe20" visibility="none"><settings><controlname>allowedextensionsselector</controlname></settings></field><field column="ManufacturerDescription" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="246af7fb-09cc-49dc-b69e-c8ec6bbe44de" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="ManufactureHomepage" fieldcaption="ManufactureHomepage" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" columnsize="400" publicfield="false" guid="24da0868-e426-4381-9141-8a0c20b2fffa"><settings><controlname>unknown</controlname></settings></field><field column="ManufacturerEnabled" fieldcaption="ManufacturerEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="26bc66e3-00c2-49c4-9713-1dc8a2237c2c"><settings><controlname>unknown</controlname></settings></field><field column="ManufacturerGUID" fieldcaption="ManufacturerGUID" visible="true" columntype="guid" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d4586504-a3d4-4f8e-9624-ce18f6849fab"><settings><controlname>unknown</controlname></settings></field><field column="ManufacturerLastModified" fieldcaption="ManufacturerLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" system="true" publicfield="false" guid="2c25aa69-3c12-4d67-90d5-337e8722abf9"><settings><controlname>unknown</controlname></settings></field><field column="ManufacturerSiteID" fieldcaption="ManufacturerSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="84b6048d-6430-4bf8-a75e-8062f2aae429"><settings><controlname>unknown</controlname></settings></field><field column="ManufacturerThumbnailGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ea1d7e3a-9959-434c-9c04-f3d35aec3c19" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="ManufacturerIsImportant" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="795f18e2-c5d1-406d-892d-a5fe8696b89a" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_Manufacturer', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', 'dcbcbc29-fa72-404c-bcaf-7eea0dac144e', 0, 1, 0, N'', 2, N'ManufacturerDisplayName', N'ManufactureHomepage', N'', N'ManufacturerLastModified', N'<search><item searchable="True" name="ManufacturerID" tokenized="False" content="False" id="eeefda16-bcd6-42ee-8237-4161be12e7b7" /><item searchable="False" name="ManufacturerDisplayName" tokenized="True" content="True" id="63610929-09cc-41f8-b6da-c976b4f47376" /><item searchable="False" name="ManufactureHomepage" tokenized="True" content="True" id="c8a08a6c-73d1-4e45-9612-a5dd66041550" /><item searchable="True" name="ManufacturerEnabled" tokenized="False" content="False" id="3cbc1302-b6b9-4a7d-a962-68d0f00c6e82" /><item searchable="False" name="ManufacturerGUID" tokenized="False" content="False" id="f8662843-ef3f-418b-89c6-b66fcbd0cf4a" /><item searchable="True" name="ManufacturerLastModified" tokenized="False" content="False" id="a26d17d3-a332-4b96-8c41-c20f721cfd8b" /><item searchable="True" name="ManufacturerSiteID" tokenized="False" content="False" id="bffd60ac-5d3f-4af9-8eca-7ef6dbabe4f9" /></search>', NULL, 1, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1143, N'Ecommerce - Currency', N'ecommerce.currency', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_Currency">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="CurrencyID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="CurrencyName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CurrencyDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CurrencyCode">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="50" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CurrencyRoundTo" type="xs:int" minOccurs="0" />
              <xs:element name="CurrencyEnabled" type="xs:boolean" />
              <xs:element name="CurrencyFormatString">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="100" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="CurrencyIsMain" type="xs:boolean" />
              <xs:element name="CurrencyGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="CurrencyLastModified" type="xs:dateTime" />
              <xs:element name="CurrencySiteID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_Currency" />
      <xs:field xpath="CurrencyID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="CurrencyID" fieldcaption="CurrencyID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="e5c6c212-da7d-441e-a7ea-0a4ad9878485"><settings><controlname>labelcontrol</controlname></settings></field><field column="CurrencyName" fieldcaption="CurrencyName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="90342e29-3669-4e5e-a523-cf604230d80d"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CurrencyDisplayName" fieldcaption="CurrencyDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="194beb72-436a-452c-88b5-ed2dcaa4794d" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CurrencyCode" fieldcaption="CurrencyCode" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="088b32fc-7f67-4730-9419-b81aa71c1e48"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CurrencyRoundTo" fieldcaption="CurrencyRoundTo" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="3ed60614-90b5-43ba-be0d-e774e8868f41"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CurrencyEnabled" fieldcaption="CurrencyEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="305137cc-6b7a-48b9-9c61-1c56cd21ff0b"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CurrencyFormatString" fieldcaption="CurrencyFormatString" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="32757520-9db9-4153-937d-bc8e3b0ee5b8"><settings><controlname>textboxcontrol</controlname></settings></field><field column="CurrencyIsMain" fieldcaption="CurrencyIsMain" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="727b2700-d8e8-47e1-be66-b6a9977db89c"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="CurrencyGUID" fieldcaption="CurrencyGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="edfd61fa-607c-4bb0-9166-2a7a5c2c2dd3" visibility="none"><settings><controlname>labelcontrol</controlname></settings></field><field column="CurrencyLastModified" fieldcaption="CurrencyLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="13efe629-afaf-4943-b3b7-0a3e0d0ec1d9"><settings><controlname>calendarcontrol</controlname></settings></field><field column="CurrencySiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="e07b4e06-f8f7-4f2a-ae13-4294ef5ae714" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_Currency', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', '456a1f44-3c71-446f-8a24-509b74037abd', 0, 1, 0, N'', 2, N'CurrencyDisplayName', N'0', N'', N'0', N'<search><item searchable="True" name="CurrencyID" tokenized="False" content="False" id="0599d565-bd44-41e3-a9c5-a135157faacb" /><item searchable="False" name="CurrencyName" tokenized="True" content="True" id="12529362-e413-4781-bd33-05a35f5fa671" /><item searchable="False" name="CurrencyDisplayName" tokenized="True" content="True" id="1dc78b36-663d-4eb4-ae97-87b2531ce1fd" /><item searchable="False" name="CurrencyCode" tokenized="True" content="True" id="eea11d9f-8f84-4f87-a35c-30bfa757cc8d" /><item searchable="True" name="CurrencyRoundTo" tokenized="False" content="False" id="4736ccb9-8576-4031-8cc4-a31ef53b5e37" /><item searchable="True" name="CurrencyEnabled" tokenized="False" content="False" id="49dcfb00-f2d4-4663-8c4f-2e5fb1513025" /><item searchable="False" name="CurrencyFormatString" tokenized="True" content="True" id="1d0b9777-1965-443d-b0ef-3ccd854dda22" /><item searchable="True" name="CurrencyIsMain" tokenized="False" content="False" id="0769b2d8-ef53-4464-aadb-2fc5adddecdc" /><item searchable="False" name="CurrencyGUID" tokenized="False" content="False" id="06f31704-4856-4eff-bd41-cdd453429418" /><item searchable="True" name="CurrencyLastModified" tokenized="False" content="False" id="77dbdea8-49e9-4143-822b-929e21460d19" /><item searchable="True" name="CurrencySiteID" tokenized="False" content="False" id="76ea84e2-6eed-4709-a917-443b2c720dee" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1144, N'Ecommerce - Payment option', N'ecommerce.paymentoption', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_PaymentOption">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="PaymentOptionID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="PaymentOptionName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PaymentOptionDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PaymentOptionEnabled" type="xs:boolean" />
              <xs:element name="PaymentOptionSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="PaymentOptionPaymentGateUrl" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="500" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PaymentOptionAssemblyName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PaymentOptionClassName" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PaymentOptionSucceededOrderStatusID" type="xs:int" minOccurs="0" />
              <xs:element name="PaymentOptionFailedOrderStatusID" type="xs:int" minOccurs="0" />
              <xs:element name="PaymentOptionGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="PaymentOptionLastModified" type="xs:dateTime" />
              <xs:element name="PaymentOptionAllowIfNoShipping" type="xs:boolean" minOccurs="0" />
              <xs:element name="PaymentOptionThumbnailGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" minOccurs="0" />
              <xs:element name="PaymentOptionDescription" minOccurs="0">
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
      <xs:selector xpath=".//COM_PaymentOption" />
      <xs:field xpath="PaymentOptionID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="PaymentOptionID" fieldcaption="PaymentOptionID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="0c8db08f-1219-47e6-9ec0-2c7347e6dfb4"><settings><controlname>labelcontrol</controlname></settings></field><field column="PaymentOptionName" fieldcaption="PaymentOptionName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b941eea2-edcd-44af-8370-63df85298d7a"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PaymentOptionDisplayName" fieldcaption="PaymentOptionDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="c81b117e-07e6-4665-8852-e07ee74e30ee" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PaymentOptionDescription" columntype="longtext" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6acbfb39-4df5-4e81-8104-b5573f04720c" visibility="none"><settings><Dialogs_Web_Hide>False</Dialogs_Web_Hide><Dialogs_Attachments_Hide>False</Dialogs_Attachments_Hide><ShowAdvancedImage>False</ShowAdvancedImage><ShowAdvancedUrl>False</ShowAdvancedUrl><Dialogs_Anchor_Hide>False</Dialogs_Anchor_Hide><Dialogs_Libraries_Hide>False</Dialogs_Libraries_Hide><controlname>bbeditorcontrol</controlname><Dialogs_Content_Hide>False</Dialogs_Content_Hide><Dialogs_Email_Hide>False</Dialogs_Email_Hide><Autoresize_Hashtable>True</Autoresize_Hashtable></settings></field><field column="PaymentOptionEnabled" fieldcaption="PaymentOptionEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6dcaf75a-f970-4cc9-8119-ba5d68b6a41f"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="PaymentOptionSiteID" fieldcaption="PaymentOptionSiteID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="012bd445-e8a8-4c27-8d04-9e3867e7c3a7"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PaymentOptionPaymentGateUrl" fieldcaption="PaymentOptionPaymentGateUrl" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="e9508d42-44c5-4241-a83f-e74ec498eeb9"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PaymentOptionAssemblyName" fieldcaption="PaymentOptionAssemblyName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6c32782d-b052-4ff6-a7ba-0f8936788f8b"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PaymentOptionClassName" fieldcaption="PaymentOptionClassName" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="abff12f4-f681-4245-88c3-61b27d1a9794"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PaymentOptionSucceededOrderStatusID" fieldcaption="PaymentOptionSucceededOrderStatusID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="f183ff2d-e653-4d8f-b167-4ea7468efb7c"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PaymentOptionFailedOrderStatusID" fieldcaption="PaymentOptionFailedOrderStatusID" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2b6c2060-7184-410e-9c14-60636824d725"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PaymentOptionGUID" fieldcaption="PaymentOptionGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="2683e510-dc55-4bf1-8367-845ec45dbb05"><settings><controlname>unknown</controlname></settings></field><field column="PaymentOptionLastModified" fieldcaption="PaymentOptionLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4e2fdbb1-b20c-4165-84b3-d1b4e55c90c0"><settings><controlname>calendarcontrol</controlname></settings></field><field column="PaymentOptionAllowIfNoShipping" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a3b1072d-0f77-4404-b04e-a26456b1e602" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="PaymentOptionThumbnailGUID" columntype="guid" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="07c7ff5e-a193-491a-b57b-01489b601ddb" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_PaymentOption', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', 'f4d1e038-f33e-4ff6-99e8-a075a94a964b', 0, 1, 0, N'', 2, N'PaymentOptionDisplayName', N'0', N'', N'PaymentOptionLastModified', N'<search><item searchable="True" name="PaymentOptionID" tokenized="False" content="False" id="620d385c-8edc-4fb8-9e31-552157c944d2" /><item searchable="False" name="PaymentOptionName" tokenized="True" content="True" id="6a7824a8-ef73-4e6a-8563-afdf283b3e73" /><item searchable="False" name="PaymentOptionDisplayName" tokenized="True" content="True" id="e5381762-9fa3-4424-a477-90e51013b26b" /><item searchable="True" name="PaymentOptionEnabled" tokenized="False" content="False" id="2704897d-58bd-47df-8a48-37c9ad2ddd4c" /><item searchable="True" name="PaymentOptionSiteID" tokenized="False" content="False" id="a6bbd8ce-e3d1-475a-a64f-f9d4f326ae8e" /><item searchable="False" name="PaymentOptionPaymentGateUrl" tokenized="True" content="True" id="ea90d96e-1953-4b45-a79d-e29ccb237194" /><item searchable="False" name="PaymentOptionAssemblyName" tokenized="True" content="True" id="ff11cbb0-488b-4250-b1b9-5035bfce72d3" /><item searchable="False" name="PaymentOptionClassName" tokenized="True" content="True" id="ae7cc207-7193-431e-a652-7a67d493fbaa" /><item searchable="True" name="PaymentOptionSucceededOrderStatusID" tokenized="False" content="False" id="269597e9-164d-4225-a918-4f740b80b007" /><item searchable="True" name="PaymentOptionFailedOrderStatusID" tokenized="False" content="False" id="a22001d2-d183-4ada-9436-285fb00ed6d2" /><item searchable="False" name="PaymentOptionGUID" tokenized="False" content="False" id="cabc21a9-6f9f-4076-a883-154f9d4def19" /><item searchable="True" name="PaymentOptionLastModified" tokenized="False" content="False" id="9bfe226f-b85a-4bd1-8601-47cc99a48bb7" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1145, N'Ecommerce - Public status', N'ecommerce.publicstatus', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_PublicStatus">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="PublicStatusID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="PublicStatusName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PublicStatusDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="PublicStatusEnabled" type="xs:boolean" />
              <xs:element name="PublicStatusGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="PublicStatusLastModified" type="xs:dateTime" />
              <xs:element name="PublicStatusSiteID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_PublicStatus" />
      <xs:field xpath="PublicStatusID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="PublicStatusID" fieldcaption="PublicStatusID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="18356b40-9b5e-448b-8e05-944cacae39ca"><settings><controlname>labelcontrol</controlname></settings></field><field column="PublicStatusName" fieldcaption="PublicStatusName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="ad426156-5ac2-4260-99bb-4cba01b0eaee"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PublicStatusDisplayName" fieldcaption="PublicStatusDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="b12464a8-94d8-437d-95a5-76e1a3b7c22f" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="PublicStatusEnabled" fieldcaption="PublicStatusEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="43ca7794-8f4d-4384-8b99-6e168baec910"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="PublicStatusGUID" fieldcaption="PublicStatusGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="4ac4a4f9-5e50-4de6-a042-4d2aa3afdb53"><settings><controlname>unknown</controlname></settings></field><field column="PublicStatusLastModified" fieldcaption="PublicStatusLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="94bf7a36-2b43-4b77-97b7-37448a4a80be"><settings><controlname>calendarcontrol</controlname></settings></field><field column="PublicStatusSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="6913b813-4f9d-45fd-bbd2-5c191c2fe4a9" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_PublicStatus', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:21', 'ae8706a2-9a38-47be-ad1b-251862821fad', 0, 1, 0, N'', 2, N'PublicStatusDisplayName', N'0', N'', N'0', N'<search><item searchable="True" name="PublicStatusID" tokenized="False" content="False" id="d5c72829-bfaf-4ae2-9626-50697800d800" /><item searchable="False" name="PublicStatusName" tokenized="True" content="True" id="6d7f584e-b7a9-4700-b98f-88007906530f" /><item searchable="False" name="PublicStatusDisplayName" tokenized="True" content="True" id="ac847cb3-19bc-4cf7-b6a0-467148f03904" /><item searchable="True" name="PublicStatusEnabled" tokenized="False" content="False" id="897b5fa5-3853-4760-86a8-0a18e1e8f0d3" /><item searchable="False" name="PublicStatusGUID" tokenized="False" content="False" id="563b6218-1dc8-469d-a6bd-76ce82669e17" /><item searchable="True" name="PublicStatusLastModified" tokenized="False" content="False" id="a7d3e48c-3af0-4cae-ae8e-d4fbe82ba64e" /><item searchable="True" name="PublicStatusSiteID" tokenized="False" content="False" id="40c18e66-d40f-4c44-a1a9-8925cce9f6df" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1146, N'Ecommerce - Order status', N'ecommerce.orderstatus', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_OrderStatus">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="StatusID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="StatusName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StatusDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StatusOrder" type="xs:int" minOccurs="0" />
              <xs:element name="StatusEnabled" type="xs:boolean" />
              <xs:element name="StatusColor" minOccurs="0">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="7" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="StatusGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="StatusLastModified" type="xs:dateTime" />
              <xs:element name="StatusSendNotification" type="xs:boolean" minOccurs="0" />
              <xs:element name="StatusSiteID" type="xs:int" minOccurs="0" />
              <xs:element name="StatusOrderIsPaid" type="xs:boolean" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_OrderStatus" />
      <xs:field xpath="StatusID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="StatusID" fieldcaption="StatusID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="0054dfd5-d032-4146-b5a1-b611202c552c"><settings><controlname>labelcontrol</controlname></settings></field><field column="StatusName" fieldcaption="StatusName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="44fa0a6c-5818-45ae-b066-e2526e5754e7"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StatusDisplayName" fieldcaption="StatusDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="fef2499a-8e05-4f98-aedc-4b6103d46383" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StatusOrder" fieldcaption="StatusOrder" visible="true" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ecb76c5e-b8a5-488a-a57b-ee00951c578e"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StatusEnabled" fieldcaption="StatusEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="3eddb801-ea97-430d-a5f8-97a5e06cef87"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="StatusColor" fieldcaption="StatusColor" visible="true" columntype="text" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="a23641f6-08d0-40df-aa21-4dad99eff0ff"><settings><controlname>textboxcontrol</controlname></settings></field><field column="StatusGUID" fieldcaption="StatusGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="03ecad4a-071c-4810-85d9-a42e792c12b0"><settings><controlname>unknown</controlname></settings></field><field column="StatusLastModified" fieldcaption="StatusLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="6c01407a-db06-418a-baf0-16a1c398ef57"><settings><controlname>calendarcontrol</controlname></settings></field><field column="StatusSendNotification" fieldcaption="StatusSendNotification" visible="true" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="9bc726eb-df8d-409e-82ac-7038abc35d6b"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="StatusSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="5ca22366-8cd8-4ade-bcd0-50aab476506c" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field><field column="StatusOrderIsPaid" defaultvalue="false" columntype="boolean" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="941b9582-f90b-4216-9534-648c129725ad" visibility="none"><settings><controlname>checkboxcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_OrderStatus', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', 'da3a2138-096a-4554-9a64-afd4ef3e0b30', 0, 1, 0, N'', 2, N'StatusDisplayName', N'0', N'', N'0', N'<search><item searchable="True" name="StatusID" tokenized="False" content="False" id="ad82e6ba-847a-40e9-9a28-7228af1db2b9" /><item searchable="False" name="StatusName" tokenized="True" content="True" id="799aaa7f-4e38-4c21-a81b-5a296c000fc0" /><item searchable="False" name="StatusDisplayName" tokenized="True" content="True" id="783ffe0d-fc01-44b4-b744-33c62b2a6945" /><item searchable="True" name="StatusOrder" tokenized="False" content="False" id="62bbfe67-8a14-4900-8f7c-a432d4762866" /><item searchable="True" name="StatusEnabled" tokenized="False" content="False" id="27f4c7d9-a1f5-4dd9-9fe7-dd13dec5d9c0" /><item searchable="False" name="StatusColor" tokenized="True" content="True" id="862f3d6d-0e92-4a96-bb9f-baf5ba65fadc" /><item searchable="False" name="StatusGUID" tokenized="False" content="False" id="11be0615-e649-4b0a-b7ea-64d2bf18f870" /><item searchable="True" name="StatusLastModified" tokenized="False" content="False" id="6a41c6ae-11c6-4c81-91ae-427e4aa7c658" /><item searchable="True" name="StatusSendNotification" tokenized="False" content="False" id="bdb98f5a-b8f2-4fd3-a236-57765c3f48ec" /><item searchable="True" name="StatusSiteID" tokenized="False" content="False" id="76d07ebe-70f0-4a37-94b8-6bdb2b911897" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
INSERT INTO [CMS_Class] ([ClassID], [ClassDisplayName], [ClassName], [ClassUsesVersioning], [ClassIsDocumentType], [ClassIsCoupledClass], [ClassXmlSchema], [ClassFormDefinition], [ClassEditingPageUrl], [ClassListPageUrl], [ClassNodeNameSource], [ClassTableName], [ClassViewPageUrl], [ClassPreviewPageUrl], [ClassFormLayout], [ClassNewPageUrl], [ClassShowAsSystemTable], [ClassUsePublishFromTo], [ClassShowTemplateSelection], [ClassSKUMappings], [ClassIsMenuItemType], [ClassNodeAliasSource], [ClassDefaultPageTemplateID], [ClassLastModified], [ClassGUID], [ClassCreateSKU], [ClassIsProduct], [ClassIsCustomTable], [ClassShowColumns], [ClassLoadGeneration], [ClassSearchTitleColumn], [ClassSearchContentColumn], [ClassSearchImageColumn], [ClassSearchCreationDateColumn], [ClassSearchSettings], [ClassInheritsFromClassID], [ClassSearchEnabled], [ClassSKUDefaultDepartmentName], [ClassSKUDefaultDepartmentID], [ClassContactMapping], [ClassContactOverwriteEnabled], [ClassSKUDefaultProductType], [ClassConnectionString], [ClassIsProductSection], [ClassPageTemplateCategoryID]) VALUES (1147, N'Ecommerce - Internal status', N'ecommerce.internalstatus', 0, 0, 1, N'<?xml version="1.0" encoding="utf-8"?>
<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">
  <xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">
    <xs:complexType>
      <xs:choice minOccurs="0" maxOccurs="unbounded">
        <xs:element name="COM_InternalStatus">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="InternalStatusID" msdata:ReadOnly="true" msdata:AutoIncrement="true" type="xs:int" />
              <xs:element name="InternalStatusName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="InternalStatusDisplayName">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:maxLength value="200" />
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="InternalStatusEnabled" type="xs:boolean" />
              <xs:element name="InternalStatusGUID" msdata:DataType="System.Guid, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" type="xs:string" />
              <xs:element name="InternalStatusLastModified" type="xs:dateTime" />
              <xs:element name="InternalStatusSiteID" type="xs:int" minOccurs="0" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:choice>
    </xs:complexType>
    <xs:unique name="Constraint1" msdata:PrimaryKey="true">
      <xs:selector xpath=".//COM_InternalStatus" />
      <xs:field xpath="InternalStatusID" />
    </xs:unique>
  </xs:element>
</xs:schema>', N'<form><field column="InternalStatusID" fieldcaption="InternalStatusID" visible="true" columntype="integer" fieldtype="CustomUserControl" isPK="true" system="true" publicfield="false" guid="4d9bc5f0-be40-458a-b037-cb2f25c812b8"><settings><controlname>labelcontrol</controlname></settings></field><field column="InternalStatusName" fieldcaption="InternalStatusName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="d9e2dd64-1886-40af-bbea-f0d722372dde"><settings><controlname>textboxcontrol</controlname></settings></field><field column="InternalStatusDisplayName" fieldcaption="InternalStatusDisplayName" visible="true" columntype="text" fieldtype="CustomUserControl" system="true" publicfield="false" guid="6c1a9a41-562d-4d26-a189-7356ef7608d0" translatefield="true"><settings><controlname>textboxcontrol</controlname></settings></field><field column="InternalStatusEnabled" fieldcaption="InternalStatusEnabled" visible="true" columntype="boolean" fieldtype="CustomUserControl" system="true" publicfield="false" guid="f45be238-8cf2-4ddc-8bea-9be2914679a7"><settings><controlname>checkboxcontrol</controlname></settings></field><field column="InternalStatusGUID" fieldcaption="InternalStatusGUID" visible="true" columntype="file" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="d73f5d80-96da-4fa4-a642-220c585a6e15"><settings><controlname>unknown</controlname></settings></field><field column="InternalStatusLastModified" fieldcaption="InternalStatusLastModified" visible="true" columntype="datetime" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" guid="ad337396-1b43-44d4-ac68-cb6114e158d6"><settings><controlname>calendarcontrol</controlname></settings></field><field column="InternalStatusSiteID" columntype="integer" fieldtype="CustomUserControl" allowempty="true" system="true" publicfield="false" spellcheck="false" guid="fdbc49fb-8441-4da8-97e5-d24be3f91506" visibility="none"><settings><controlname>dropdownlistcontrol</controlname></settings></field></form>', N'', N'', N'', N'COM_InternalStatus', N'', N'', N'', N'', 0, 0, 0, N'', 0, N'', NULL, '20120430 10:27:20', '65ac5e46-2fbe-4c21-b123-687d3b54ac67', 0, 1, 0, N'', 2, N'InternalStatusDisplayName', N'0', N'', N'0', N'<search><item searchable="True" name="InternalStatusID" tokenized="False" content="False" id="3dc0ecad-2719-4738-b5b1-284a18997fbc" /><item searchable="False" name="InternalStatusName" tokenized="True" content="True" id="28628865-fb13-4556-bf5b-518f6014ffca" /><item searchable="False" name="InternalStatusDisplayName" tokenized="True" content="True" id="00c71b4a-b532-444b-b233-c75d7b5dc1b1" /><item searchable="True" name="InternalStatusEnabled" tokenized="False" content="False" id="c850fc9c-7cee-4aa4-9a55-304d6a1cbb72" /><item searchable="False" name="InternalStatusGUID" tokenized="False" content="False" id="28e5bdcc-f923-4ec0-b785-34a8b5a13663" /><item searchable="True" name="InternalStatusLastModified" tokenized="False" content="False" id="765e034b-d622-49eb-85e9-324fe8784c65" /><item searchable="True" name="InternalStatusSiteID" tokenized="False" content="False" id="7d428bde-c39c-4848-a375-e5eccbd4e353" /></search>', NULL, 0, N'', NULL, NULL, 0, N'PRODUCT', N'', 0, NULL)
SET IDENTITY_INSERT [CMS_Class] OFF
