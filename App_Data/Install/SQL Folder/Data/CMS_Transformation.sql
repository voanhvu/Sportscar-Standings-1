SET IDENTITY_INSERT [CMS_Transformation] ON
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (1115, N'AtomItem', N'<entry>
  <title><%# EvalCDATA("DocumentName") %></title>
  <link href="<%# GetAbsoluteUrl(GetDocumentUrlForFeed(), Eval("SiteName")) %>" />
  <id>urn:uuid:<%# Eval("NodeGUID") %></id>
  <published><%# GetAtomDateTime(Eval("DocumentCreatedWhen")) %></published>
  <updated><%# GetAtomDateTime(Eval("DocumentModifiedWhen")) %></updated>
  <author>
    <name><%# Eval("NodeOwnerFullName") %></name>
  </author>
  <summary><%# EvalCDATA("NodeAliasPath") %></summary>
</entry>', N'ascx', 1095, N'adb540cb-3c30-494e-99a4-455fc8123177', 'ce31d65b-f97e-4967-824c-c65bb10543ad', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (676, N'Attachment', N'<%@ Register TagPrefix="cc1" Namespace="CMS.GlobalHelper" Assembly="CMS.GlobalHelper" %>
<div>
<a target="_blank" href="<%# GetAbsoluteUrl(GetAttachmentUrl(Eval("AttachmentName"), Eval("NodeAliasPath")), Eval<int>("AttachmentSiteID")) %>">
<img style="border: none;" src="<%# IfCompare(ImageHelper.IsImage((string)Eval("AttachmentExtension")), true, GetAttachmentIconUrl(Eval("AttachmentExtension"), null), GetAbsoluteUrl(GetAttachmentUrl(Eval("AttachmentName"), Eval("NodeAliasPath")), Eval<int>("AttachmentSiteID"))) %>?maxsidesize=150" alt="<%# Eval("AttachmentName", true) %>" />
</a>
<%# IfCompare(ImageHelper.IsImage((string)Eval("AttachmentExtension")), true, "<br />" + ResHelper.GetString("attach.openfile"), "") %>
<br />
<%# Eval("AttachmentName",true) %>
<br />
</div>', N'ascx', 1095, N'6c8255a2-005a-4587-9bb8-9cd366fe5d57', '6eba21c8-7c1a-49a6-937e-974627c9224b', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (1982, N'AttachmentCarousel2D', N'<%@ Register TagPrefix="cc1" Namespace="CMS.GlobalHelper" Assembly="CMS.GlobalHelper" %>
<%# IfCompare(ImageHelper.IsImage((string)Eval("AttachmentExtension")), true,"<li><div style=''text-align:center;''><div style=''font-size: 11px;line-height: 12px;position:relative;z-index:1000;margin:auto;''><a target=''_blank'' href=''" + GetAbsoluteUrl(GetAttachmentUrl(Eval("AttachmentName"), Eval("NodeAliasPath")), Eval<int>("AttachmentSiteID")) + "''><img style=''border: none;'' src=''" + GetAttachmentIconUrl(Eval("AttachmentExtension"), null) + "'' alt=''" + Eval("AttachmentName") + "'' /></a></div><p>" + ResHelper.GetString("attach.openfile") + "</p></div></li>",
"<li><img src=''" + GetAbsoluteUrl(GetAttachmentUrl(Eval("AttachmentName"), Eval("NodeAliasPath")), Eval<int>("AttachmentSiteID")) + "?maxsidesize=150'' class=''cloudcarousel2d'' alt=''" + Eval("AttachmentTitle", true) + "'' title=''" + Eval("AttachmentDescription", true) + "'' /></li>") %>', N'ascx', 1095, N'd0a1f436-b555-4e7a-bd07-1fe5d116e887', '1813bc8e-8791-4a0a-b6b2-acb90f0fa599', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (1739, N'AttachmentCarousel3D', N'<%@ Register TagPrefix="cc1" Namespace="CMS.GlobalHelper" Assembly="CMS.GlobalHelper" %>
<%# IfCompare(ImageHelper.IsImage((string)Eval("AttachmentExtension")), true,
"<div style=\"text-align:center;width: 350px;\"><div style=\"font-size: 11px;line-height: 12px;position:relative;z-index:1000;margin:auto;width:140px;\"><a target=\"_blank\" href=\"" + GetAbsoluteUrl(GetAttachmentUrl(Eval("AttachmentName"), Eval("NodeAliasPath")), Eval<int>("AttachmentSiteID")) + "\"><img style=\"border: none;\" src=\"" + GetAttachmentIconUrl(Eval("AttachmentExtension"), null) + "\" alt=\"" + Eval("AttachmentName") + "\" /></a><p>" + ResHelper.GetString("attach.openfile") + "</p></div></div>",
"<img src=\"" + GetAbsoluteUrl(GetAttachmentUrl(Eval("AttachmentName"), Eval("NodeAliasPath")), Eval<int>("AttachmentSiteID")) + "?maxsidesize=150\" class=\"cloudcarousel3d\" alt=\"" + Eval("AttachmentTitle", true) + "\" title=\"" + Eval("AttachmentDescription", true) + "\" />") %>', N'ascx', 1095, N'cd223232-c634-4263-8717-9c03b0810912', '49c7568b-113e-41eb-b183-4712344811a3', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (713, N'AttachmentLightbox', N'<%@ Register TagPrefix="cc1" Namespace="CMS.GlobalHelper" Assembly="CMS.GlobalHelper" %>
<a style="text-decoration: none;" href="<%# GetAbsoluteUrl(GetAttachmentUrl(Eval("AttachmentName"), Eval("NodeAliasPath")), Eval<int>("AttachmentSiteID")) %>" rel="lightbox" rev="<%# Eval("AttachmentID") %>" title="<%# Eval("AttachmentName", true) %>">
<img style="border: none;" src="<%# IfCompare(ImageHelper.IsImage((string)Eval("AttachmentExtension")), true, GetAttachmentIconUrl(Eval("AttachmentExtension"), null), GetAbsoluteUrl(GetAttachmentUrl(Eval("AttachmentName"), Eval("NodeAliasPath")), Eval<int>("AttachmentSiteID"))) %>?maxsidesize=150" alt="<%# Eval("AttachmentTitle", true) %>" />
</a>', N'ascx', 1095, N'9cc5f03f-ba7e-4795-a99a-efa8c52702af', 'f0460e74-2509-4b1e-8665-5e68cf947e86', '20120911 12:17:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (714, N'AttachmentLightboxDetail', N'<%@ Register TagPrefix="cc1" Namespace="CMS.GlobalHelper" Assembly="CMS.GlobalHelper" %>
<%# IfCompare(ImageHelper.IsImage((string)Eval("AttachmentExtension")), true,
"<div style=\"text-align:center;width: 350px;\"><div style=\"font-size: 11px;line-height: 12px;position:relative;z-index:1000;margin:auto;width:140px;\"><a target=\"_blank\" href=\"" + GetAbsoluteUrl(GetAttachmentUrl(Eval("AttachmentName"), Eval("NodeAliasPath")), Eval<int>("AttachmentSiteID")) + "\"><img style=\"border: none;\" src=\"" + GetAttachmentIconUrl(Eval("AttachmentExtension"), null) + "\" alt=\"" + Eval("AttachmentName") + "\" /></a><p>" + ResHelper.GetString("attach.openfile") + "</p></div></div>",
"<img src=\"" + GetAbsoluteUrl(GetAttachmentUrl(Eval("AttachmentName"), Eval("NodeAliasPath")), Eval<int>("AttachmentSiteID")) + "?maxsidesize=1000\" alt=\"" + Eval("AttachmentTitle", true) + "\" title=\"" + Eval("AttachmentDescription", true) + "\" />") %>', N'ascx', 1095, N'612e08bb-e563-42a5-8448-b9c4de3d405d', 'fdad8271-1293-4444-9151-e74af81dcda6', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (841, N'AttachmentList', N'<div>
<img src="<%# GetAttachmentIconUrl(Eval("AttachmentExtension"), "List") %>" alt="<%# Eval("AttachmentName",true) %>" />
&nbsp;
<a target="_blank" href="<%# GetAbsoluteUrl(GetAttachmentUrl(Eval("AttachmentName"), Eval("NodeAliasPath")), EvalInteger("AttachmentSiteID")) %>">
<%# Eval("AttachmentName",true) %>
</a>
</div>', N'ascx', 1095, N'278428fd-fb9a-491a-89bf-5c009cd3824e', '4455961a-e81f-419b-8a68-19d1cdcef2a1', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (415, N'CategoryList', N'<asp:PlaceHolder ID="plcCategoryList" runat="server" EnableViewState="false"></asp:PlaceHolder><br />', N'ascx', 1095, N'ededcb60-d056-490c-ad40-56aa213d6e43', '4b6c6f44-ac26-45c1-920f-df48f92e94d0', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (915, N'CMSDeskSmartSearchResults', N'<div style="margin-bottom: 30px;">
  <%-- Search result image --%>
        <div style="border: solid 1px #eeeeee; width: 90px; height:90px; margin-right: 5px;" class="LeftAlign">
          <img src="<%# GetSearchImageUrl("CMSModules/CMS_SmartSearch/no_image.gif",90) %>" alt="" />
        </div>
        <div class="LeftAlign">
            <%-- Search result title --%>
            <div style="text-align: left;">
                <a style="font-weight: bold" href="<%# "javascript:SelectItem(" + CMS.ExtendedControls.ControlsHelper.RemoveDynamicControls(ValidationHelper.GetString(GetSearchValue("nodeId"), "")) + ", ''"+ ValidationHelper.GetString(GetSearchValue("DocumentCulture"), "") + "'')" %>">
                    <%#SearchHighlight(CMS.GlobalHelper.HTMLHelper.HTMLEncode(DataHelper.GetNotEmpty(Eval("Title"), "/")), "<span style=''font-weight:bold;''>", "</span>")%> (<%#ValidationHelper.GetString(GetSearchValue("DocumentCulture"), "")%>)
                </a>
            </div>
            <%-- Search result content --%>
            <div style="margin-top: 5px; width: 590px;min-height:40px">
                <%#SearchHighlight(CMS.GlobalHelper.HTMLHelper.HTMLEncode(TextHelper.LimitLength(HttpUtility.HtmlDecode(CMS.GlobalHelper.HTMLHelper.StripTags(CMS.ExtendedControls.ControlsHelper.RemoveDynamicControls(GetSearchedContent(DataHelper.GetNotEmpty(Eval("Content"), ""))), false, " ")), 280, "...")), "<span style=''background-color: #FEFF8F''>", "</span>")%><br />
            </div>
            <%-- Relevance, URL, Creattion --%>
            <div style="margin-top: 5px;">
                <%-- Relevance --%>
                <div title="Relevance: <%# Convert.ToInt32(ValidationHelper.GetDouble(Eval("Score"),0.0)*100) %>%"
                    style="width: 50px; border: solid 1px #aaaaaa; margin-top: 7px; margin-right: 6px;
                    float: left; color: #0000ff; font-size: 2pt; line-height: 4px; height: 4px;">
                    <div style="<%# "background-color:#a7d3a7;width:"+ Convert.ToString(Convert.ToInt32((ValidationHelper.GetDouble(Eval("Score"),0.0)/2)*100))  + "px;height:4px;line-height: 4px;"%>">
                    </div>
                </div>
                <%-- URL --%>
                <span style="color: #008000">
                    <%# TextHelper.BreakLine(SearchHighlight(SearchResultUrl(true),"<strong>","</strong>"),75,"<br />") %>
                </span>
                <%-- Creation --%>
                <span style="padding-left:5px;color: #888888; font-size: 9pt">
                    <%# GetDateTimeString(ValidationHelper.GetDateTime(Eval("Created"), DateTimeHelper.ZERO_TIME), true) %>
                </span>
            </div>
        </div>
        <div style="clear: both">
        </div>
    </div>', N'ascx', 1095, N'e1408d63-c61d-46c2-9460-cb07f57e1b65', 'aadecc4c-1909-4804-b0bb-990c093fc4e0', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (916, N'CMSDeskSQLSearchResults', N'<div style="margin-bottom: 30px;">
  <%-- Search result image --%>
        <div style="margin-right: 5px;" class="LeftAlign">
           <img src="<%# UIHelper.GetDocumentTypeIconUrl(this.Page, ValidationHelper.GetString(DataBinder.Eval(((System.Web.UI.WebControls.RepeaterItem)(Container)).DataItem, "ClassName"), "")) %>" alt="" />
        </div>
        <div class="LeftAlign" style="width:95%;">
            <%-- Search result title --%>
            <div>
        <a style="font-weight: bold" href="<%# "javascript:SelectItem(" + Eval("NodeID") + ", \''" + Eval("DocumentCulture") + "\'')" %>"><%# IfEmpty(Eval("NodeName"), "/", HTMLHelper.HTMLEncode(ValidationHelper.GetString(Eval("DocumentName"), null))) %> (<%# Eval("DocumentCulture") %>)</a>
            </div>
</div>
<div class="LeftAlign">
  <div style="margin-top: 5px;">
<%-- URL --%>
                <span style="color: #008000">
                    <%#  GetAbsoluteUrl(GetDocumentUrl()) %>
                </span>
                <%-- Creation --%>
                <span style="padding-left:5px;;color: #888888; font-size: 9pt">
                    <%# GetDateTimeString(ValidationHelper.GetDateTime(Eval("DocumentCreatedWhen"), DateTimeHelper.ZERO_TIME), true) %>
                </span>
        </div>
  </div>
<div style="clear: both"></div>
</div>', N'ascx', 1095, N'85c9ee45-0c0b-41e8-bd20-1ce7abfe49b0', '914377c1-21ad-443e-956f-0b9646e5520b', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2226, N'Empty', N'', N'ascx', 1095, N'679bd9ab-b211-4b75-8a62-053c18c3c2b0', '8fe2f25d-5319-4c07-a9a1-1cc8c70aecdb', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (668, N'GoogleSiteMap', N'<url>
<%# GetSitemapItem("loc") %>
<%# GetSitemapItem("lastmod") %>
<%# GetSitemapItem("changefreq") %>
<%# GetSitemapItem("priority") %>
</url>', N'ascx', 1095, N'927c0bcd-63fd-44e7-9b86-b2ab21848847', '8d5a6991-b2bf-436d-ba82-5159eb98fc71', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (153, N'Newsletter_Archive', N'<%#  FormatDateTime(Eval("IssueMailoutTime"),"d") %> - <a href="~/CMSModules/Newsletters/CMSPages/GetNewsletterIssue.aspx?issueId=<%# Eval("IssueID")%>" target="_blank"><%# Eval("IssueSubject",true) %></a> <br />', N'ascx', 1095, N'2516ee44-b5b6-4ff8-a1a2-a2f7dc50d8c7', '62116172-2118-4676-98eb-373c79fa6cc6', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (559, N'OnLineUsers', N'<%# Eval("UserName", true) %>&nbsp;', N'ascx', 1095, N'26da0dfa-0436-470e-a547-bddeb248255d', '3b16b39e-3020-485d-8bae-6e7617e13894', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (3371, N'Parameters', N'<br />', N'ascx', 1095, N'0968b31c-c73a-4101-8a85-e086bc475027', '14585af1-bf3a-4b68-8ad1-3aa5f40dda92', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (283, N'Print', N'<h3>Print transformation is missing</h3>
<div>Transformation of current document type is missing. You have to define the tranformation in the CMS Site Manager Development section.</div>', N'ascx', 1095, N'b620017e-eee6-4edc-8903-3efb33453ace', 'dfba986c-38de-431c-89df-8ad3e8c7b451', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (15, N'RelatedDocuments', N'<strong><a href="<%# ResolveUrl(GetUrl( Eval("NodeAliasPath"), null)) %>">
<%# Eval("DocumentName",true) %></a></strong>
<br />', N'ascx', 1095, N'6d973ef8-2aec-48c5-a16b-378f2679d295', 'b96f0a40-8fb6-4ed5-8eaa-309867a18283', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (1019, N'RSSItem', N'<item>
     <guid isPermaLink="false"><%# Eval("NodeGUID") %></guid>
     <title><%# EvalCDATA("DocumentName") %></title>
     <description><%# EvalCDATA("NodeAliasPath") %></description>
     <pubDate><%# GetRSSDateTime(Eval("DocumentCreatedWhen")) %></pubDate>
     <link><![CDATA[<%# GetAbsoluteUrl(GetDocumentUrlForFeed(), Eval("SiteName")) %>]]></link>     	
</item>', N'ascx', 1095, N'1a15194b-d966-4d49-b366-8b58591518a3', 'e38315ed-fcef-46a9-b82a-b33d6902649b', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (20, N'SearchResults', N'<div class="SearchResult">
  <div class="ResultTitle">
    <a href="<%# GetDocumentUrl()%>"><%# IfEmpty(Eval("SearchResultName",true), "/", Eval("SearchResultName",true)) %></a>
  </div>
  <div class="ResultPath">
    Path: <%# Eval("DocumentNamePath",true) %><br />
  </div>
</div>', N'ascx', 1095, N'7d0cbd5c-a793-427e-aa92-907d21a704fc', 'a3c543c8-b855-4acd-9c03-9302a02f8f74', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (801, N'SmartSearchResults', N'<div style="margin-bottom: 30px;">
        <%-- Search result title --%>
        <div>
            <a style="font-weight: bold" href=''<%# SearchResultUrl(true) %>''>
                <%#SearchHighlight(CMS.GlobalHelper.HTMLHelper.HTMLEncode(CMS.ExtendedControls.ControlsHelper.RemoveDynamicControls(DataHelper.GetNotEmpty(Eval("Title"), "/"))), "<span style=''font-weight:bold;''>", "</span>")%>
            </a>
        </div>
        <%-- Search result content --%>
        <div style="margin-top: 5px; width: 590px;">
            <%#SearchHighlight(CMS.GlobalHelper.HTMLHelper.HTMLEncode(TextHelper.LimitLength(HttpUtility.HtmlDecode(CMS.GlobalHelper.HTMLHelper.StripTags(CMS.ExtendedControls.ControlsHelper.RemoveDynamicControls(GetSearchedContent(DataHelper.GetNotEmpty(Eval("Content"), ""))), false, " ")), 280, "...")), "<span style=''background-color: #FEFF8F''>", "</span>")%><br />
        </div>
        <%-- Relevance, URL, Creattion --%>
        <div style="margin-top: 5px;">
            <%-- Relevance --%>
            <div title="Relevance: <%# Convert.ToInt32(ValidationHelper.GetDouble(Eval("Score"),0.0)*100)%>%"
                style="width: 50px; border: solid 1px #aaaaaa; margin-top: 7px; margin-right: 6px; float: left; color: #0000ff; font-size: 2pt; line-height: 4px; height: 4px;">
                <div style=''<%# "background-color:#a7d3a7;width:"+ Convert.ToString(Convert.ToInt32((ValidationHelper.GetDouble(Eval("Score"),0.0)/2)*100))  + "px;height:4px;line-height: 4px;"%>''>
                </div>
            </div>
            <%-- URL --%>
            <span style="color: #008000">
                <%# SearchHighlight(SearchResultUrl(true),"<strong>","</strong>")%>
            </span>
            <%-- Creation --%>
            <span style="color: #888888; font-size: 9pt">
                <%# GetDateTimeString(ValidationHelper.GetDateTime(Eval("Created"), DateTimeHelper.ZERO_TIME), true) %>
            </span>
        </div>
    </div>', N'ascx', 1095, N'01cf2dc9-486f-46fc-8fd7-e2612c682090', '63b96721-59ae-4462-a842-10fedfc282e1', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (846, N'SmartSearchResultsWithImages', N'<div style="margin-bottom: 30px;">
  <%-- Search result image --%>
        <div style="float: left; border: solid 1px #eeeeee; width: 90px; height:90px; margin-right: 5px;">
           <img src="<%# GetSearchImageUrl("/CMSModules/CMS_SmartSearch/no_image.gif",90) %>" alt="" />
        </div>
        <div style="float: left">
            <%-- Search result title --%>
            <div>
                <a style="font-weight: bold" href=''<%# SearchResultUrl(true) %>''>
                    <%#SearchHighlight(CMS.GlobalHelper.HTMLHelper.HTMLEncode(CMS.ExtendedControls.ControlsHelper.RemoveDynamicControls(DataHelper.GetNotEmpty(Eval("Title"), "/"))), "<span style=''font-weight:bold;''>", "</span>")%>
                </a>
            </div>
            <%-- Search result content --%>
            <div style="margin-top: 5px; width: 590px;min-height:40px">
                <%#SearchHighlight(CMS.GlobalHelper.HTMLHelper.HTMLEncode(TextHelper.LimitLength(HttpUtility.HtmlDecode(CMS.GlobalHelper.HTMLHelper.StripTags(CMS.ExtendedControls.ControlsHelper.RemoveDynamicControls(GetSearchedContent(DataHelper.GetNotEmpty(Eval("Content"), ""))), false, " ")), 280, "...")), "<span style=''background-color: #FEFF8F''>", "</span>")%><br />
            </div>
            <%-- Relevance, URL, Creattion --%>
            <div style="margin-top: 5px;">
                <%-- Relevance --%>
                <div title="Relevance: <%#Convert.ToInt32(ValidationHelper.GetDouble(Eval("Score"),0.0)*100)%>%"
                    style="width: 50px; border: solid 1px #aaaaaa; margin-top: 7px; margin-right: 6px;
                    float: left; color: #0000ff; font-size: 2pt; line-height: 4px; height: 4px;">
                    <div style="<%# "background-color:#a7d3a7;width:"+ Convert.ToString(Convert.ToInt32((ValidationHelper.GetDouble(Eval("Score"),0.0)/2)*100))  + "px;height:4px;line-height: 4px;"%>">
                    </div>
                </div>
                <%-- URL --%>
                <span style="color: #008000">
                    <%# TextHelper.BreakLine(SearchHighlight(SearchResultUrl(true),"<strong>","</strong>"),75,"<br />") %>
                </span>
                <%-- Creation --%>
                <span style="padding-left:5px;color: #888888; font-size: 9pt">
                    <%# GetDateTimeString(ValidationHelper.GetDateTime(Eval("Created"), DateTimeHelper.ZERO_TIME), true) %>
                </span>
            </div>
        </div>
        <div style="clear: both">
        </div>
    </div>', N'ascx', 1095, N'c247d27c-d951-4cd4-af42-7c8dbc8de596', 'fa253f7c-6705-4995-bb27-96c0042dee5b', '20120828 10:35:54', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2646, N'ChatError', N'<span style="color:#FF0000">{{html Message}}</span> 
    <a href="#" onclick="${Delete}" > [X]</a>', N'jquery', 3140, N'29741d1d-e336-406a-892b-240d72818356', '4a59194f-bd11-4351-bd38-de1ce84f7f1e', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2647, N'ChatErrorDeleteAllBtn', N'<a href="#" onclick="${DeleteAll}">{$chat.closeall$}</a>', N'jquery', 3140, N'eac68d35-9a68-4bc7-8627-7d7cc1e5dff4', '70e881e1-3189-4241-8369-214fa81147d6', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2648, N'ChatMessage', N'<div class="ChatMessage">
{{if System}}
	<span class="System">${LastModified.toLocaleTimeString()}:
	<span class="Message System{{if (System == 7) || (System == 10)}} Greeting{{/if}}"> ${MessageText}</span> </span>
{{else}}
	{{if RejectMessage}}
        	<div class="RejectButton">
                	<a href="#" onclick="${RejectMessage}">
                        	<img src=''{%GetImageUrl("CMSModules/CMS_Chat/reject.png")|(user)administrator|(hash)e306a5a7933aff219b5b0354dc602f28c0cd5967897eb4b2836f9f020133d816%}'' alt="{$chat.rejectmessage$}" title="{$chat.rejectmessage$}" width="8px" height="8px"/>
                	</a>
        	</div>
        {{/if}}
  	<span class="PostedTime">${PostedTime.toLocaleTimeString()}</span>
        {{if Modified}}
        	<span class="Modified">({$chat.messagemodified$} ${LastModified.toLocaleTimeString()})</span>
        {{/if}}
        
        {{if (Whisper && !IsOneOnOne)}}
        	<span class="Whisper">
                <strong>
                	{{if SelectRecipient}}
                		{$chat.from$} 
                         <a href="#" onclick="${SelectRecipient}">${Nickname}</a>   
                     {{else}}
                        {$chat.to$}
                          {{if (SelectPrevRecipient)}}
                             <a href="#" onclick="${SelectPrevRecipient}">${Recipient}</a>
                          {{else}}
                              ${Recipient}
                          {{/if}}
                     {{/if}}
                </strong>
                        	
        {{else}}
        	<strong>
                	{{if (SelectRecipient && !IsOneOnOne)}}
                        	<a href="#" onclick="${SelectRecipient}">${Nickname}</a>
                        {{else}}
                        	${Nickname}
                        {{/if}}
                </strong>
        {{/if}}:
        {{if Rejected}}
        	<span class="Rejected">{$chat.messagerejected$}</span>
        {{else}}
        	<span class="Message">${MessageText}</span>
        {{/if}}
        
        {{if (Whisper && !IsOneOnOne)}}
        	</span>
        {{/if}}
{{/if}}
</div>', N'jquery', 3140, N'5cd4cee9-65bf-47d1-8d90-70f71ca37f77', 'ca883224-656b-4018-afd6-0abeab006458', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2649, N'ChatNotification', N'{{if NotificationType == 0}}
	<td>{$chat.user$} <b><span>${SenderNickname}</span></b>
	{{if IsOneToOne}}
        	{$chat.invitedyoutoaprivateconversation$}.
        {{else}}
	 	{$chat.invitedyou$} <b><span>${RoomName}</span></b>.
        {{/if}}
        </td><td class="ChatNotificationButtons"><input class="SubmitButton ChatNotificationButton" onclick="${AcceptEvent}" type="button" value="{$chat.accept$}" /><input class="SubmitButton ChatNotificationButton" onclick="${DeclineEvent}" type="button" value="{$chat.decline$}" /></td>
{{else}}
	<td>
	{{if NotificationType == 1}}
        	{$chat.user$} <b><span>${SenderNickname}</span></b> 
                {{if IsOneToOne}}
                	{$chat.declinedprivate$}.
                {{else}}
                	{$chat.declined$} <b><span>${RoomName}</span></b>.
                {{/if}}
        {{/if}}
        {{if NotificationType == 2}}
        	{$chat.user$} <b><span>${SenderNickname}</span></b> 
                {{if IsOneToOne}}
                	{$chat.acceptedprivate$}.
                {{else}}
                	{$chat.accepted$} <b><span>${RoomName}</span></b>.
                {{/if}}
        {{/if}}
        {{if NotificationType == 3}}{$chat.nicknamechanged$}.{{/if}}
        {{if NotificationType == 4}}{$chat.user$} <b><span>${SenderNickname}</span></b> {$chat.kicked$} <b><span>${RoomName}</span></b>. {{if KickTime}} {$chat.kickreturn$} <b>${KickTime}</b>.{{/if}}{{/if}}
        {{if NotificationType == 5}}{$chat.user$} <b><span>${SenderNickname}</span></b> {$chat.kickedperm$} <b><span>${RoomName}</span></b>.{{/if}}
        {{if NotificationType == 6}}{$chat.user$} <b><span>${SenderNickname}</span></b> {$chat.adminadded$} <b><span>${RoomName}</span></b>.{{/if}}
        {{if NotificationType == 7}}{$chat.user$} <b><span>${SenderNickname}</span></b> {$chat.admindeleted$} <b><span>${RoomName}</span></b>.{{/if}}
        </td>
        <td class="ChatNotificationButtons">
        	<input class="SubmitButton ChatNotificationButton" onclick="${CloseEvent}" type="button" value="{$chat.delete$}" />
        </td>
{{/if}}', N'jquery', 3140, N'1ef63daf-9568-4a59-bb56-e76ecaafb315', '96c1e946-bde9-490d-ada9-e29c20b32e57', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2650, N'ChatOnlineUser', N'{{if IsCurrentUser}}<span style="color:#0000FF">${Nickname}</span> {{else}}<a href="#" onclick="${OnClick}" target="_blank">${Nickname}</a>{{/if}}', N'jquery', 3140, N'08c62bed-d1dd-40a5-9b64-9ceaf81fbe00', 'de0784dd-6b73-4188-84c3-3d9bf8700dd4', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2651, N'ChatRooms', N'<div class="ChatRoomListItem">
        {{if Abandon}}
        <div class="AbandonButton">
        	<a href="#" onclick="${Abandon}">
                	<img src=''{%GetImageUrl("CMSModules/CMS_Chat/delete.png")|(user)administrator|(hash)925d3f6c138c50d3a20dfc83f1cec1f42915416a3a32f0186822966ac323b050%}'' alt="{$chat.abandon$}" title="{$chat.abandon$}" width="12px" height="12px"/>
                </a>
        </div>        
        {{/if}}
        
        {{if Delete}}
        <div class="DeleteButton">
        	<a href="#" onclick="${Delete}">
                	<img src=''{%GetImageUrl("CMSModules/CMS_Chat/reject.png")|(user)administrator|(hash)7c77461d3b082f996e1f29d93b175416c251668ea03be46b0bc85dbf47b45de0%}'' alt="{$general.disable$}" title="{$general.disable$}" width="12px" height="12px"/>
                </a>
        </div>        
        {{/if}}
        
        {{if Edit}}
        <div class="EditButton">
        	<a href="#" onclick="${Edit}">
                	<img src=''{%GetImageUrl("CMSModules/CMS_Chat/edit.png")|(user)administrator|(hash)8da67b9bc2f42c94e7a6f3d4d7e61c71bf49105de36e27aa9efe780b5db4a8a3%}'' alt="{$general.edit$}" title="{$general.edit$}" width="12px" height="12px"/>
                </a>
        </div>        
        {{/if}}
        
        <div class="ChatRoomTitle"><!-- Do not change this class name -->
	    {{if IsCurrentRoom}}
        	<strong><span style="color: blue;">
        {{else}}
        	<a href="#" title="{$chat.enter$}" class="JoinRoom"> <!-- Do not change this class name -->
                {{if IsCurrentUserIn}}
                	<strong>
                {{/if}}
        {{/if}}
	        
        ${DisplayName}
        (${OnlineUsersCount})
                
        {{if IsCurrentRoom}}
        	</span></strong>
        {{else}}
        	{{if IsCurrentUserIn}}
        		</strong>
            {{/if}}
            </a>
        {{/if}}  
  
        <span class="ChatRoomInfoIcons">   
        {{if IsPrivate}}
            <img src=''{%GetImageUrl("CMSModules/CMS_Chat/private_room16.png")|(user)administrator|(hash)b043c98f0537d91c3139c626b4f40276af5cc81cfe9756b68c4210f48b87204d%}'' alt="{$chat.privateroom$}" title="{$chat.privateroom$}" width="12px" height="12px"/>
        {{/if}}
        {{if HasPassword}}
            <img src=''{%GetImageUrl("CMSModules/CMS_Chat/password.png")|(user)administrator|(hash)20a3e2867f084bc50358d66ab80a95c213ad8aa5ec00fd1f3786f55c7a2a701d%}'' alt="{$chat.passwordprotected$}" title="{$chat.passwordprotected$}" width="12px" height="12px"/>
        {{/if}}
        </span>
        </div>
        
        {{if Description != ""}}
        	<div class="ChatRoomListItemDescription">${Description}</div>
        {{/if}}
</div>', N'jquery', 3140, N'19f3d878-7b4f-4991-a13e-acf75dbce1e7', 'd2396311-25ad-4f54-9c44-c80d071c72ac', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2652, N'ChatRoomUser', N'<div class="ChatRoomUser {{if IsOnline}}OnlineUser{{else}}OfflineUser{{/if}}">
  {{if KickUserPerm}}
      <div class="PermaKickButton">
              <a href="#" onclick="${KickUserPerm}">
                      <img src=''{%GetImageUrl("CMSModules/CMS_Chat/permakick.png")|(user)administrator|(hash)f67d689eb6b43056ed791e4590bea8f12d871615260ea544b45757c34771c181%}'' title="{$chat.kickuserperm$}" alt="{$chat.kickuserperm$}" width="12px" height="12px"/>
                  </a>
          </div>
  {{/if}}
  
  {{if KickUser}}
      <div class="KickButton">
              <a href="#" onclick="${KickUser}">
                      <img src=''{%GetImageUrl("CMSModules/CMS_Chat/kick.png")|(user)administrator|(hash)c437186ced23408677e1074b40ae50e4c4f968a02137181594b330e8deb70251%}'' title="{$chat.kick$}" alt="{$chat.kick$}" width="12px" height="12px"/>
                  </a>
          </div>
  {{/if}}
  
  {{if DeleteAdmin}}
      <div class="DeleteAdminButton">
              <a href="#" onclick="${DeleteAdmin}">
                      <img src=''{%GetImageUrl("CMSModules/CMS_Chat/security_agent_delete.png")|(user)administrator|(hash)feb3920004c2c6d7006d5a80592a4253f609292d9e3b2d00ee26433632c23f96%}'' title="{$chat.deleteadmin$}" alt="{$chat.deleteadmin$}" width="12px" height="12px"/>
                  </a>
          </div>
  {{/if}}
  
  {{if AddAdmin}}
      <div class="AddAdminButton">
              <a href="#" onclick="${AddAdmin}">
                      <img src=''{%GetImageUrl("CMSModules/CMS_Chat/security_agent_add.png")|(user)administrator|(hash)5debfd85f329c7e3d0e7254ad254dfb91a3d669258d3d5ebe47d0cc8595dddde%}'' title="{$chat.addadmin$}" alt="{$chat.addadmin$}" width="12px" height="12px"/>
                  </a>
          </div>
  {{/if}}
  
  <div class="ChatRoomUserName"> <!-- Do not change this class name -->
    {{if IsOnline}}
        {{if IsCurrentUser}}<span class="CurrentUser"><strong>${Nickname}</strong></span> 
        {{else}}
            {{if OneOnOneChat}}
                <a href="#" onclick="${OneOnOneChat}" target="_blank">${Nickname}</a>
            {{else}}
                ${Nickname}
            {{/if}}
        {{/if}}
    {{else}}
        <span>
            <a href="#" onclick="return false;" title="{$chat.notpresent$}" style="text-decoration:none; cursor:default">${Nickname}</a>
        </span>
    {{/if}} 
    {{if IsAdmin && !IsCreator}} <span class="UserAdmin"> <img src=''{%GetImageUrl("CMSModules/CMS_Chat/security_agent.png")|(user)administrator|(hash)f35d6fcf3ffa09919fda5a0a6a3a98b15849014d6605388d1ddefe7dea980a93%}'' title="{$chat.livesite.admin$}" alt="{$chat.livesite.admin$}" width="12px" height="12px"/></span>{{/if}}
    {{if IsCreator}} <span class="UserCreator"> <img src=''{%GetImageUrl("CMSModules/CMS_Chat/security_agent_creator.png")|(user)administrator|(hash)1e95dcdf88c913b99acef878dfc0976262fc58e1312265e833a07b379bfea3a1%}'' title="{$chat.livesite.creator$}" alt="{$chat.livesite.creator$}" width="12px" height="12px"/></span>{{/if}}
  </div>
</div>', N'jquery', 3140, N'731327d1-dc34-4e15-a81a-20ea2f8e63e6', '07675e70-c478-4651-8f77-cf98d145409c', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2653, N'ChatSupportRequest', N'{{if LiveSupport}}
    <input type="button" value="{$chat.supportrequest.openchat$}" />
{{else}}
    {{if EmailEnabled}}
      <input type="button" value="{$chat.supportrequest.emailavailable$}" />
    {{else}}
      <input type="button" value="{$chat.supportrequest.unavailable$}" />
    {{/if}}
{{/if}}', N'jquery', 3140, N'81e626e0-0f18-478e-982c-e99c4a2f3042', 'daa06eca-9fe1-40ef-ab51-c8b72b09a5a7', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2654, N'CMSChatError', N'<span style="color:#FF0000">Error message: {{html Message}}</span><a href="#" onclick="${Delete}" > [X]</a>', N'jquery', 3140, N'96917f79-e90c-45a9-a235-dc7ccb440227', '3d226508-ef50-4740-b47d-08af0688585b', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2655, N'CMSChatErrorDeleteAllButton', N'<br/><a href="#" onclick="${DeleteAll}">Close all errors.</a><br/><br/>', N'jquery', 3140, N'd5e5c488-9d58-4534-8a2a-b686aa577a5b', 'd550a6ea-2f94-47aa-9d8a-8e5008df78f9', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2656, N'CMSChatMessage', N'<div class="ChatMessage">
{{if System}}
	<span class="System">${LastModified.toLocaleTimeString()}:
	<span class="Message System{{if (System == 7) || (System == 10)}} Greeting{{/if}}"> ${MessageText}</span> </span>
{{else}}
	{{if RejectMessage}}
        	<div class="RejectButton">
                	<a href="#" onclick="${RejectMessage}">
                        	<img src=''{%GetImageUrl("CMSModules/CMS_Chat/reject.png")|(user)administrator|(hash)e306a5a7933aff219b5b0354dc602f28c0cd5967897eb4b2836f9f020133d816%}'' alt="{$chat.rejectmessage$}" title="{$chat.rejectmessage$}" width="8px" height="8px"/>
                	</a>
        	</div>
        {{/if}}
  	<span class="PostedTime">${PostedTime.toLocaleTimeString()}</span>
        {{if Modified}}
        	<span class="Modified">({$chat.messagemodified$} ${LastModified.toLocaleTimeString()})</span>
        {{/if}}
        
        {{if (Whisper && !IsOneOnOne)}}
        	<span class="Whisper">
                <strong>
                	{{if SelectRecipient}}
                		{$chat.from$} 
                         <a href="#" onclick="${SelectRecipient}">${Nickname}</a>   
                     {{else}}
                        {$chat.to$}
                          {{if (SelectPrevRecipient)}}
                             <a href="#" onclick="${SelectPrevRecipient}">${Recipient}</a>
                          {{else}}
                              ${Recipient}
                          {{/if}}
                     {{/if}}
                </strong>
                        	
        {{else}}
        	<strong>
                	{{if (SelectRecipient && !IsOneOnOne)}}
                        	<a href="#" onclick="${SelectRecipient}">${Nickname}</a>
                        {{else}}
                        	${Nickname}
                        {{/if}}
                </strong>
        {{/if}}:
        {{if Rejected}}
        	<span class="Rejected">{$chat.messagerejected$}</span>
        {{else}}
        	<span class="Message">${MessageText}</span>
        {{/if}}
        
        {{if (Whisper && !IsOneOnOne)}}
        	</span>
        {{/if}}
{{/if}}
</div>', N'jquery', 3140, N'fad6b936-f57d-42a9-9dd0-9c40006a972e', 'f2210e38-139b-42ab-ba5d-f69f0063a231', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2657, N'CMSChatNotification', N'{{if NotificationType == 0}}
	<td>{$chat.user$} <b><span>${SenderNickname}</span></b>
	{{if IsOneToOne}}
        	{$chat.invitedyoutoaprivateconversation$}.
        {{else}}
	 	{$chat.invitedyou$} <b><span>${RoomName}</span></b>.
        {{/if}}
        </td><td><input class="SubmitButton ChatNotificationButton" onclick="${AcceptEvent}" type="button" value="{$chat.accept$}" /><input class="SubmitButton ChatNotificationButton" onclick="${DeclineEvent}" type="button" value="{$chat.decline$}" /></td>
{{else}}
	<td>
	{{if NotificationType == 1}}
        	{$chat.user$} <b><span>${SenderNickname}</span></b> 
                {{if IsOneToOne}}
                	{$chat.declinedprivate$}.
                {{else}}
                	{$chat.declined$} <b><span>${RoomName}</span></b>.
                {{/if}}
        {{/if}}
        {{if NotificationType == 2}}
        	{$chat.user$} <b><span>${SenderNickname}</span></b> 
                {{if IsOneToOne}}
                	{$chat.acceptedprivate$}.
                {{else}}
                	{$chat.accepted$} <b><span>${RoomName}</span></b>.
                {{/if}}
        {{/if}}
        {{if NotificationType == 3}}{$chat.nicknamechanged$}.{{/if}}
        {{if NotificationType == 4}}{$chat.user$} <b><span>${SenderNickname}</span></b> {$chat.kicked$} <b><span>${RoomName}</span></b>. {{if KickTime}} {$chat.kickreturn$} <b>${KickTime}</b>.{{/if}}{{/if}}
        {{if NotificationType == 5}}{$chat.user$} <b><span>${SenderNickname}</span></b> {$chat.kickedperm$} <b><span>${RoomName}</span></b>.{{/if}}
        {{if NotificationType == 6}}{$chat.user$} <b><span>${SenderNickname}</span></b> {$chat.adminadded$} <b><span>${RoomName}</span></b>.{{/if}}
        {{if NotificationType == 7}}{$chat.user$} <b><span>${SenderNickname}</span></b> {$chat.admindeleted$} <b><span>${RoomName}</span></b>.{{/if}}
        </td>
        <td class="ChatNotificationButtons">
        	<input class="SubmitButton ChatNotificationButton" onclick="${CloseEvent}" type="button" value="{$chat.delete$}" />
        </td>
{{/if}}', N'jquery', 3140, N'd4680d2f-088b-4507-85ba-4206dfbdbc6e', '5f569586-f6f1-447a-a640-8010f7c4156b', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2658, N'CMSChatRoomUser', N'<div class="ChatRoomUser {{if IsOnline}}OnlineUser{{else}}OfflineUser{{/if}}">
  {{if KickUserPerm}}
      <div class="PermaKickButton">
              <a href="#" onclick="${KickUserPerm}">
                      <img src=''{%GetImageUrl("CMSModules/CMS_Chat/permakick.png")|(user)administrator|(hash)f67d689eb6b43056ed791e4590bea8f12d871615260ea544b45757c34771c181%}'' title="{$chat.kickuserperm$}" alt="{$chat.kickuserperm$}" width="12px" height="12px"/>
                  </a>
          </div>
  {{/if}}
  
  {{if KickUser}}
      <div class="KickButton">
              <a href="#" onclick="${KickUser}">
                      <img src=''{%GetImageUrl("CMSModules/CMS_Chat/kick.png")|(user)administrator|(hash)c437186ced23408677e1074b40ae50e4c4f968a02137181594b330e8deb70251%}'' title="{$chat.kick$}" alt="{$chat.kick$}" width="12px" height="12px"/>
                  </a>
          </div>
  {{/if}}
  
  {{if DeleteAdmin}}
      <div class="DeleteAdminButton">
              <a href="#" onclick="${DeleteAdmin}">
                      <img src=''{%GetImageUrl("CMSModules/CMS_Chat/security_agent_delete.png")|(user)administrator|(hash)feb3920004c2c6d7006d5a80592a4253f609292d9e3b2d00ee26433632c23f96%}'' title="{$chat.deleteadmin$}" alt="{$chat.deleteadmin$}" width="12px" height="12px"/>
                  </a>
          </div>
  {{/if}}
  
  {{if AddAdmin}}
      <div class="AddAdminButton">
              <a href="#" onclick="${AddAdmin}">
                      <img src=''{%GetImageUrl("CMSModules/CMS_Chat/security_agent_add.png")|(user)administrator|(hash)5debfd85f329c7e3d0e7254ad254dfb91a3d669258d3d5ebe47d0cc8595dddde%}'' title="{$chat.addadmin$}" alt="{$chat.addadmin$}" width="12px" height="12px"/>
                  </a>
          </div>
  {{/if}}
  
  <div class="ChatRoomUserName"> <!-- Do not change this class name -->
    {{if IsOnline}}
        {{if IsCurrentUser}}<span class="CurrentUser"><strong>${Nickname}</strong></span> 
        {{else}}
            {{if OneOnOneChat}}
                <a href="#" onclick="${OneOnOneChat}" target="_blank">${Nickname}</a>
            {{else}}
                ${Nickname}
            {{/if}}
        {{/if}}
    {{else}}
        <span>
            <a href="#" onclick="return false;" title="{$chat.notpresent$}" style="text-decoration:none; cursor:default">${Nickname}</a>
        </span>
    {{/if}} 
    {{if IsAdmin && !IsCreator}} <span class="UserAdmin"> <img src=''{%GetImageUrl("CMSModules/CMS_Chat/security_agent.png")|(user)administrator|(hash)f35d6fcf3ffa09919fda5a0a6a3a98b15849014d6605388d1ddefe7dea980a93%}'' title="{$chat.livesite.admin$}" alt="{$chat.livesite.admin$}" width="12px" height="12px"/></span>{{/if}}
    {{if IsCreator}} <span class="UserCreator"> <img src=''{%GetImageUrl("CMSModules/CMS_Chat/security_agent_creator.png")|(user)administrator|(hash)1e95dcdf88c913b99acef878dfc0976262fc58e1312265e833a07b379bfea3a1%}'' title="{$chat.livesite.creator$}" alt="{$chat.livesite.creator$}" width="12px" height="12px"/></span>{{/if}}
  </div>
</div>', N'jquery', 3140, N'4ad151d7-750a-401c-81c8-403828fe0fb3', 'abfda7d0-4571-4523-bfbd-9183085b58c2', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2659, N'CMSRoomName', N'<h1>${RoomName}</h1>', N'jquery', 3140, N'fc57f427-a90c-498d-9e98-4f6d69fec469', '781c93b4-6dbf-4080-8b0e-2fe0ca848903', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2694, N'InitiatedChat', N'{{if MessagesTemplate}}
  <div class="InitiateChatMessage">${Text}</div>
{{else}}
<div class="InitiatedChatBubble">
  <div class="InitiateChatSupporterName">
    ${InitiatorName}
  </div>
  <div class="InitiateChatMessages">
    {{html Messages}}
  </div>
  <div class="InitiateChatButtons">
      <a href="#" onclick="${Accept}" class="InitiateChatAcceptButton">{$chat.initiatechat.accept$}</a>
      <a href="#" onclick="${Reject}" class="InitiateChatRejectButton">{$chat.initiatechat.reject$}</a>
  </div>
</div>
{{/if}}', N'jquery', 3140, N'351fcf82-5d08-44c6-83a4-818b7ed5e055', '69b4a850-dce7-43a8-bd68-7f0fd49203e8', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2660, N'RoomName', N'<h1>${RoomName}</h1>', N'jquery', 3140, N'87d1dfa7-aa55-4cd5-9d07-aa3614def570', '445871e0-ed65-4db6-bddb-3c8b18d42e61', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (3398, N'RoomNameWebPartsExamples', N'<div style="border: 2px solid gray; padding: 8px; background:#DADADA;">
<span style="font-size: 14px; font-weight: bold">${RoomName}</span>
</div>', N'jquery', 3140, N'590832da-33c7-4658-b1d9-ce20ae040cf2', 'fbdb3524-b3e1-44fb-a9e2-37e3e85cf055', '20120828 10:36:03', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (1143, N'AtomItem', N'<entry>
  <title><%# EvalCDATA("FileName") %></title>
  <link href="<%# GetAbsoluteUrl(GetDocumentUrlForFeed(), Eval("SiteName")) %>"/>
  <id>urn:uuid:<%# Eval("NodeGUID") %></id>
  <published><%# GetAtomDateTime(Eval("DocumentCreatedWhen")) %></published>
  <updated><%# GetAtomDateTime(Eval("DocumentModifiedWhen")) %></updated>
  <author>
    <name><%# Eval("NodeOwnerFullName") %></name>
  </author>
  <summary><%# EvalCDATA("FileDescription") %></summary>
</entry>', N'ascx', 1685, N'a96475ea-3782-4644-b3d9-ed434d39b651', 'f696f2d5-70d0-4cce-93d0-3108df11abaa', '20120828 10:35:55', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (299, N'AttachmentList', N'<a target="_blank" href="<%# GetFileUrl("FileAttachment") %>">
<%# IfImage("FileAttachment", GetImage("FileAttachment", 400, 400, 400, Eval("FileDescription")), "") %>
<br /><%# Eval("FileName",true) %></a><br />', N'ascx', 1685, N'547c875a-0f55-41e4-93e9-87f68131d5d3', '74f430bc-627c-4867-b21c-dbe6134e54c3', '20120828 10:35:55', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (296, N'ImageGallery_detail400', N'<%#IfEmpty(Eval("FileAttachment"), "no image", "<img alt=''" + Eval("FileName", true) + "'' src=''" + GetFileUrl("FileAttachment") + "?maxsidesize=400'' />")%>', N'ascx', 1685, N'fda53c27-62d8-44a0-b860-443325562e03', '9f9fda7c-4695-48d3-8014-88a3bc670a76', '20120828 10:35:55', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (302, N'ImageGallery_detail500', N'<%#IfEmpty(Eval("FileAttachment"), "no image", "<img alt=''" + Eval("FileDescription") + "'' src=''" + GetFileUrl("FileAttachment") + "?maxsidesize=500'' />")%>', N'ascx', 1685, N'a6385255-e371-4118-8a5e-1dc873eda13b', 'b7ce1195-a490-4808-b9c9-802922f35b7b', '20120828 10:35:55', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (297, N'ImageGallery_detail600', N'<%#IfEmpty(Eval("FileAttachment"), "no image", "<img alt=''" + Eval("FileDescription") + "'' src=''" + GetFileUrl("FileAttachment") + "?maxsidesize=600'' />")%>', N'ascx', 1685, N'809c1327-db18-46f9-9e33-2a006d74e255', 'f08449f5-74a0-4e73-a777-63e2ec95cb4e', '20120828 10:35:55', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (298, N'ImageGallery_detail800', N'<%#IfEmpty(Eval("FileAttachment"), "no image", "<img alt=''" + Eval("FileDescription") + "'' src=''" + GetFileUrl("FileAttachment") + "?maxsidesize=800'' />")%>', N'ascx', 1685, N'fa6f2d68-7200-44c8-8f42-8aa840f20dce', '1876199f-187e-41ea-8145-8a5fa9aaf78d', '20120828 10:35:55', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (1738, N'ImageGallery_LightBoxList', N'<%#IfEmpty(Eval("FileAttachment"), "no image", "<a href=''" + GetFileUrl("FileAttachment") + "'' class=''ImgLightBox''><img alt=''" + Eval("FileDescription") + "'' src=''" + GetFileUrl("FileAttachment") + "?maxsidesize=800'' /></a>")%>', N'ascx', 1685, N'ffacffbb-fbdd-4d1a-8244-188663cb9473', 'f297745a-1089-44f1-a9cb-645f899addfe', '20120828 10:35:55', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (293, N'ImageGallery_thumbnails100', N'<a href="?imagepath=<%# System.Web.HttpUtility.UrlEncode(DataBinder.Eval(Container, "DataItem.NodeAliasPath").ToString()) %>">
<%#IfEmpty(Eval("FileAttachment"), "no image", "<img alt=''" + Eval("FileName", true) + "'' src=''" + GetFileUrl("FileAttachment") + "?maxsidesize=100'' border=''0'' />")%>
</a>', N'ascx', 1685, N'a2374b34-5679-44b9-b7ee-4175993d3109', 'c8365347-59be-4353-88d0-9ae8fde751db', '20120828 10:35:55', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (303, N'ImageGallery_thumbnails180', N'<a href="?imagepath=<%# System.Web.HttpUtility.UrlEncode(DataBinder.Eval(Container, "DataItem.NodeAliasPath").ToString()) %>">
<%#IfEmpty(Eval("FileAttachment"), "no image", "<img alt=''" + Eval("FileDescription") + "'' src=''" + GetFileUrl("FileAttachment") + "?maxsidesize=180'' border=''0'' />")%>
</a>', N'ascx', 1685, N'6e279d2c-2316-4d33-8ee5-e3c6753f6b4b', '376eb9e5-13a8-4baf-a9e9-f20d11dfea2a', '20120828 10:35:55', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (294, N'ImageGallery_thumbnails200', N'<a href="?imagepath=<%# System.Web.HttpUtility.UrlEncode(DataBinder.Eval(Container, "DataItem.NodeAliasPath").ToString()) %>">
<%#IfEmpty(Eval("FileAttachment"), "no image", "<img alt=''" + Eval("FileName", true) + "'' src=''" + GetFileUrl("FileAttachment") + "?maxsidesize=200'' border=''0'' />")%>
</a>', N'ascx', 1685, N'900a763c-b398-4cf9-87e7-554c9f41db02', 'bc05b40a-fba1-4f66-9730-6bb35fc85e85', '20120828 10:35:55', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (295, N'ImageGallery_thumbnails300', N'<a href="?imagepath=<%# System.Web.HttpUtility.UrlEncode(DataBinder.Eval(Container, "DataItem.NodeAliasPath").ToString()) %>">
<%#IfEmpty(Eval("FileAttachment"), "no image", "<img alt=''" + Eval("FileName") + "'' src=''" + GetFileUrl("FileAttachment") + "?maxsidesize=300'' border=''0'' />")%>
</a>', N'ascx', 1685, N'33594609-5666-4051-abf8-2732566b5ff4', '10a47820-4a54-4fec-8a69-0e04853155c7', '20120828 10:35:55', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (300, N'Lightbox', N'<a href="<%# GetDocumentUrl() %>" rel="lightbox[group]" rev="<%# Eval("NodeAliasPath") %>" title="<%# Eval("FileDescription", true) %>"><img src="<%# GetFileUrl("FileAttachment") %>?maxsidesize=150" alt="<%# Eval("FileName", true) %>" /></a>', N'ascx', 1685, N'ea67f733-ab92-432f-b3fa-d3f230218ad4', '2673a82a-c87b-47aa-bc33-544d5c8bbc79', '20120828 10:35:55', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (301, N'LightboxSelected', N'<img src="<%# GetFileUrl("FileAttachment") %>" title="<%# Eval("FileName",true) %>" alt="" />', N'ascx', 1685, N'5e608953-2ac1-4dd2-8695-4dc9ac71baa2', '6440767f-166e-4e66-960a-41048df70eb6', '20120828 10:35:55', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (2309, N'LightBoxSimple', N'<a href="<%# GetDocumentUrl() %>" rel="lightbox" rev="<%# Eval("NodeAliasPath") %>" title="<%# Eval("FileDescription", true) %>"><img src="<%# GetFileUrl("FileAttachment") %>?maxsidesize=150" alt="<%# Eval("FileName", true) %>" /></a>', N'ascx', 1685, N'dab08dba-f604-4a8b-ad69-761e5ccab284', 'd73baf6c-e8ca-45ec-ba9a-8c9ca440e7d6', '20120828 10:35:55', 0, N'', N'')
INSERT INTO [CMS_Transformation] ([TransformationID], [TransformationName], [TransformationCode], [TransformationType], [TransformationClassID], [TransformationVersionGUID], [TransformationGUID], [TransformationLastModified], [TransformationIsHierarchical], [TransformationHierarchicalXML], [TransformationCSS]) VALUES (1082, N'RSSItem', N'<item>
  <guid isPermaLink="false"><%# Eval("NodeGUID") %></guid>
  <title><%# EvalCDATA("FileName") %></title>
  <description><%# EvalCDATA("FileDescription") %></description>
  <pubDate><%# GetRSSDateTime(Eval("DocumentCreatedWhen")) %></pubDate>
  <link><![CDATA[<%# GetAbsoluteUrl(GetDocumentUrlForFeed(), Eval("SiteName")) %>]]></link>
</item>', N'ascx', 1685, N'78697e5c-f259-4c3c-ba21-07b516f3e1cc', 'b365d59a-46fb-46e8-b27c-7f9a220f930b', '20120828 10:35:55', 0, N'', N'')
SET IDENTITY_INSERT [CMS_Transformation] OFF
