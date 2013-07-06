SET IDENTITY_INSERT [CMS_Layout] ON
INSERT INTO [CMS_Layout] ([LayoutID], [LayoutCodeName], [LayoutDisplayName], [LayoutDescription], [LayoutCode], [LayoutVersionGUID], [LayoutGUID], [LayoutLastModified], [LayoutType], [LayoutCSS], [LayoutThumbnailGUID], [LayoutZoneCount], [LayoutIsConvertible]) VALUES (1, N'CMS.Simple', N'Simple', N'Simple layout with one web part zone.', N'<cms:CMSWebPartZone ZoneID="zoneA" runat="server" />', N'f840250c-f7d3-4b87-b01b-e839b365fab5', '701bb385-0d11-4b17-9820-df7cafc3a0a2', '20120828 10:35:44', N'ascx', N'', 'dd71b5db-eb76-4a95-b27d-fedcc91297a1', 1, 0)
INSERT INTO [CMS_Layout] ([LayoutID], [LayoutCodeName], [LayoutDisplayName], [LayoutDescription], [LayoutCode], [LayoutVersionGUID], [LayoutGUID], [LayoutLastModified], [LayoutType], [LayoutCSS], [LayoutThumbnailGUID], [LayoutZoneCount], [LayoutIsConvertible]) VALUES (13, N'CMS.TwoColumnsCSS', N'Two columns', N'Two column layout using CSS', N'<div>
  <cms:CMSWebPartZone ZoneID="zoneA" runat="server" />      
</div>
<div style="width: 100%;">
  <div style="width: 50%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneB" runat="server" />      
  </div>
  <div style="width: 50%; float: right;">
    <cms:CMSWebPartZone ZoneID="zoneC" runat="server" />      
  </div>
</div>
<div style="clear: both">
  <cms:CMSWebPartZone ZoneID="zoneD" runat="server" />
</div>', N'3465d799-4f32-43a3-95b7-5c37f8b50288', '550a79a7-95ba-453b-801f-683892a2b365', '20120828 10:35:44', N'ascx', N'', '5e1a2652-4279-420b-bea4-3b5e2e36da30', 4, 1)
INSERT INTO [CMS_Layout] ([LayoutID], [LayoutCodeName], [LayoutDisplayName], [LayoutDescription], [LayoutCode], [LayoutVersionGUID], [LayoutGUID], [LayoutLastModified], [LayoutType], [LayoutCSS], [LayoutThumbnailGUID], [LayoutZoneCount], [LayoutIsConvertible]) VALUES (14, N'CMS.TwoColumns20_80CSS', N'Two columns - 20/80', N'Two columns in ratio 20%/80% using CSS.', N'<div>
  <cms:CMSWebPartZone ZoneID="zoneA" runat="server" />      
</div>
<div style="width: 100%;">
  <div style="width: 20%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneB" runat="server" />      
  </div>
  <div style="width: 80%; float: right;">
    <cms:CMSWebPartZone ZoneID="zoneC" runat="server" />      
  </div>
</div>
<div style="clear: both">
  <cms:CMSWebPartZone ZoneID="zoneD" runat="server" />
</div>', N'b8594568-5040-48a1-9271-68299ecebb35', '7ab5c1f8-3ec3-452f-85cc-c33dc2b712eb', '20120828 10:35:44', N'ascx', N'', '9b19e3ff-4646-4b7b-a9c0-bb2feabafbd0', 4, 1)
INSERT INTO [CMS_Layout] ([LayoutID], [LayoutCodeName], [LayoutDisplayName], [LayoutDescription], [LayoutCode], [LayoutVersionGUID], [LayoutGUID], [LayoutLastModified], [LayoutType], [LayoutCSS], [LayoutThumbnailGUID], [LayoutZoneCount], [LayoutIsConvertible]) VALUES (15, N'CMS.TwoColumns30_70CSS', N'Two columns - 30/70', N'Two columns in ratio 30%/70% using CSS.', N'<div>
  <cms:CMSWebPartZone ZoneID="zoneA" runat="server" />      
</div>
<div style="width: 100%;">
  <div style="width: 30%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneB" runat="server" />      
  </div>
  <div style="width: 70%; float: right;">
    <cms:CMSWebPartZone ZoneID="zoneC" runat="server" />      
  </div>
</div>
<div style="clear: both">
  <cms:CMSWebPartZone ZoneID="zoneD" runat="server" />
</div>', N'eeb3698e-092e-4c97-ab69-a8108e5ed327', '1e6331ed-3091-4bf2-adc0-e27e8f5489be', '20120828 10:35:44', N'ascx', N'', 'c3636e45-f3c6-46bb-bbf9-80b8bc6f86a4', 4, 1)
INSERT INTO [CMS_Layout] ([LayoutID], [LayoutCodeName], [LayoutDisplayName], [LayoutDescription], [LayoutCode], [LayoutVersionGUID], [LayoutGUID], [LayoutLastModified], [LayoutType], [LayoutCSS], [LayoutThumbnailGUID], [LayoutZoneCount], [LayoutIsConvertible]) VALUES (16, N'CMS.TwoColumns70_30CSS', N'Two columns - 70/30', N'Two columns in ratio 70%/30% using CSS.', N'<div>
  <cms:CMSWebPartZone ZoneID="zoneA" runat="server" />      
</div>
<div style="width: 100%;">
  <div style="width: 70%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneB" runat="server" />      
  </div>
  <div style="width: 30%; float: right;">
    <cms:CMSWebPartZone ZoneID="zoneC" runat="server" />      
  </div>
</div>
<div style="clear: both">
  <cms:CMSWebPartZone ZoneID="zoneD" runat="server" />
</div>', N'e2f49d5f-fc5f-43cf-8b11-92662aff2d95', '68916806-2b60-43ae-ac8a-b0b741cf9e6e', '20120828 10:35:44', N'ascx', N'', '9f22a28d-6d44-4ec4-b740-eea9a35dff4c', 4, 1)
INSERT INTO [CMS_Layout] ([LayoutID], [LayoutCodeName], [LayoutDisplayName], [LayoutDescription], [LayoutCode], [LayoutVersionGUID], [LayoutGUID], [LayoutLastModified], [LayoutType], [LayoutCSS], [LayoutThumbnailGUID], [LayoutZoneCount], [LayoutIsConvertible]) VALUES (17, N'CMS.TwoColumns80_20CSS', N'Two columns - 80/20', N'Two columns in ratio 80%/20% using CSS.', N'<div>
  <cms:CMSWebPartZone ZoneID="zoneA" runat="server" />      
</div>
<div style="width: 100%;">
  <div style="width: 80%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneB" runat="server" />      
  </div>
  <div style="width: 20%; float: right;">
    <cms:CMSWebPartZone ZoneID="zoneC" runat="server" />      
  </div>
</div>
<div style="clear: both">
  <cms:CMSWebPartZone ZoneID="zoneD" runat="server" />
</div>', N'0e81a4ab-cbce-41f9-a64b-1d03af9eb99d', '80d21b69-dfd0-4648-9571-36f2dbf1500e', '20120828 10:35:44', N'ascx', N'', 'ed62c94f-178e-4e37-86e0-e7501850dfe7', 4, 1)
INSERT INTO [CMS_Layout] ([LayoutID], [LayoutCodeName], [LayoutDisplayName], [LayoutDescription], [LayoutCode], [LayoutVersionGUID], [LayoutGUID], [LayoutLastModified], [LayoutType], [LayoutCSS], [LayoutThumbnailGUID], [LayoutZoneCount], [LayoutIsConvertible]) VALUES (19, N'CMS.ThreeColumnsCSS', N'Three columns', N'Three columns with web part zones using CSS.', N'<div>
  <cms:CMSWebPartZone ZoneID="zoneA" runat="server" />      
</div>
<div style="width: 100%;">
  <div style="width: 33%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneB" runat="server" />      
  </div>
  <div style="width: 34%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneC" runat="server" /> 
  </div>
  <div style="width: 33%; float: right;">
    <cms:CMSWebPartZone ZoneID="zoneD" runat="server" />      
  </div>
</div>
<div style="clear: both">
  <cms:CMSWebPartZone ZoneID="zoneE" runat="server" />
</div>', N'e39c9564-4b45-4cd0-8982-7fe1a907c709', 'a96ae4bf-f02b-4b2f-ac84-f49cf2c83a1e', '20120828 10:35:44', N'ascx', N'', '91d3274b-26a4-4dc8-a13e-67be1766c1fa', 5, 1)
INSERT INTO [CMS_Layout] ([LayoutID], [LayoutCodeName], [LayoutDisplayName], [LayoutDescription], [LayoutCode], [LayoutVersionGUID], [LayoutGUID], [LayoutLastModified], [LayoutType], [LayoutCSS], [LayoutThumbnailGUID], [LayoutZoneCount], [LayoutIsConvertible]) VALUES (20, N'CMS.Grid2CSS', N'Grid 2x2 cells', N'Grid 2x2 of web part zones using CSS.', N'<div>
  <cms:CMSWebPartZone ZoneID="zoneA" runat="server" />      
</div>
<div style="width: 100%;">
  <div style="width: 50%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneB" runat="server" />      
  </div>
  <div style="width: 50%; float: right;">
    <cms:CMSWebPartZone ZoneID="zoneC" runat="server" />      
  </div>
</div>
<div style="clear: both">
  <div style="width: 50%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneD" runat="server" />      
  </div>
  <div style="width: 50%; float: right;">
    <cms:CMSWebPartZone ZoneID="zoneE" runat="server" />      
  </div>
</div>
<div style="clear: both;">
  <cms:CMSWebPartZone ZoneID="zoneF" runat="server" />    
</div>', N'bfa68f3a-3a8a-46e0-96f2-519e0a762fcb', '3400c02b-4681-47a4-af16-43c67a9b4013', '20120828 10:35:44', N'ascx', N'', 'b9cbc27d-d217-4ba5-9c64-5a1c0b83a851', 6, 1)
INSERT INTO [CMS_Layout] ([LayoutID], [LayoutCodeName], [LayoutDisplayName], [LayoutDescription], [LayoutCode], [LayoutVersionGUID], [LayoutGUID], [LayoutLastModified], [LayoutType], [LayoutCSS], [LayoutThumbnailGUID], [LayoutZoneCount], [LayoutIsConvertible]) VALUES (21, N'CMS.Grid3CSS', N'Grid 3x2 cells', N'Grid 3x2 of web part zones using CSS.', N'<div>
  <cms:CMSWebPartZone ZoneID="zoneA" runat="server" />      
</div>
<div style="width: 100%;">
  <div style="width: 33%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneB" runat="server" />      
  </div>
  <div style="width: 34%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneC" runat="server" />      
  </div>
  <div style="width: 33%; float: right;">
    <cms:CMSWebPartZone ZoneID="zoneD" runat="server" />      
  </div>
</div>
<div style="clear: both">
  <div style="width: 33%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneE" runat="server" />      
  </div>
  <div style="width: 34%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneF" runat="server" />      
  </div>
  <div style="width: 33%; float: right;">
    <cms:CMSWebPartZone ZoneID="zoneG" runat="server" />      
  </div>
</div>
<div style="clear: both">  
  <cms:CMSWebPartZone ZoneID="zoneH" runat="server" />      
</div>', N'2a6fcdbf-3bfe-4ea1-9b7d-f46793796381', '775aae79-222c-4e6d-838f-93a0262bdb78', '20120828 10:35:44', N'ascx', N'', '6437bb97-f136-4d8e-8bf5-0b500f8a5a55', 8, 1)
INSERT INTO [CMS_Layout] ([LayoutID], [LayoutCodeName], [LayoutDisplayName], [LayoutDescription], [LayoutCode], [LayoutVersionGUID], [LayoutGUID], [LayoutLastModified], [LayoutType], [LayoutCSS], [LayoutThumbnailGUID], [LayoutZoneCount], [LayoutIsConvertible]) VALUES (42, N'CMS.FullPageCSS', N'Full page', N'Full page layout with one full width column using CSS.', N'<div>
  <cms:CMSWebPartZone ZoneID="zoneA" runat="server" />      
</div>
<div style="width: 100%;">
    <cms:CMSWebPartZone ZoneID="zoneB" runat="server" />      
</div>
<div>
  <cms:CMSWebPartZone ZoneID="zoneC" runat="server" />
</div>', N'23d5186f-42ae-4e6c-821e-bf8cc350fa4b', '15ab078b-bdd6-4913-9255-0c6c59be7a65', '20120828 10:35:44', N'ascx', N'', '28c8dd2a-a348-4885-8908-ad897b735029', 3, 1)
INSERT INTO [CMS_Layout] ([LayoutID], [LayoutCodeName], [LayoutDisplayName], [LayoutDescription], [LayoutCode], [LayoutVersionGUID], [LayoutGUID], [LayoutLastModified], [LayoutType], [LayoutCSS], [LayoutThumbnailGUID], [LayoutZoneCount], [LayoutIsConvertible]) VALUES (43, N'CMS.ThreeColumns25_50_25CSS', N'Three columns - 25/50/25', N'Three columns in ratio 25%/50%/25% using CSS.', N'<div>
  <cms:CMSWebPartZone ZoneID="zoneA" runat="server" />      
</div>
<div>
  <div style="width: 25%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneB" runat="server" />      
  </div>
  <div style="width: 50%; float: left;">
    <div class="Content"><cms:CMSWebPartZone ZoneID="zoneC" runat="server" /></div>    
  </div>
  <div style="width: 25%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneD" runat="server" />      
  </div>
</div>
<div style="clear: both">
  <cms:CMSWebPartZone ZoneID="zoneE" runat="server" />
</div>', N'c68cad81-e0b2-48d1-9165-9075aa45f79b', '8fcf2126-e2c2-40cf-b0a7-6694526cc076', '20120828 10:35:44', N'ascx', N'', 'f00e41c5-d1ee-435a-b3e6-cd6bd4c58b3b', 5, 1)
INSERT INTO [CMS_Layout] ([LayoutID], [LayoutCodeName], [LayoutDisplayName], [LayoutDescription], [LayoutCode], [LayoutVersionGUID], [LayoutGUID], [LayoutLastModified], [LayoutType], [LayoutCSS], [LayoutThumbnailGUID], [LayoutZoneCount], [LayoutIsConvertible]) VALUES (44, N'CMS.ThreeColumns20_60_20CSS', N'Three columns - 20/60/20', N'Three columns in ratio 20%/60%/20% using CSS.', N'<div>
  <cms:CMSWebPartZone ZoneID="zoneA" runat="server" />      
</div>
<div>
  <div style="width: 20%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneB" runat="server" />      
  </div>
  <div style="width: 60%; float: left;">
    <div class="Content"><cms:CMSWebPartZone ZoneID="zoneC" runat="server" /></div>  
  </div>
  <div style="width: 20%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneD" runat="server" />      
  </div>
</div>
<div style="clear: both">
  <cms:CMSWebPartZone ZoneID="zoneE" runat="server" />
</div>', N'6cd85ecf-ba3d-40a4-b586-ea113db3821c', '112dddcd-8f96-48bb-9e50-eceada4fe3a5', '20120828 10:35:44', N'ascx', N'', '812fbc16-28e1-4bc6-8382-371503f00e2c', 5, 1)
INSERT INTO [CMS_Layout] ([LayoutID], [LayoutCodeName], [LayoutDisplayName], [LayoutDescription], [LayoutCode], [LayoutVersionGUID], [LayoutGUID], [LayoutLastModified], [LayoutType], [LayoutCSS], [LayoutThumbnailGUID], [LayoutZoneCount], [LayoutIsConvertible]) VALUES (45, N'CMS.ThreeColumns33_33_33CSS', N'Three columns - 33/33/33', N'Three columns with web part zones using CSS.', N'<div>
  <cms:CMSWebPartZone ZoneID="zoneA" runat="server" />      
</div>
<div>
  <div style="width: 33%; float: left;">
    <cms:CMSWebPartZone ZoneID="zoneB" runat="server" />      
  </div>
  <div style="width: 34%; float: left;">
    <div class="Content"><cms:CMSWebPartZone ZoneID="zoneC" runat="server" /></div>      
  </div>
  <div style="width: 33%; float: right;">
    <cms:CMSWebPartZone ZoneID="zoneD" runat="server" />      
  </div>
</div>
<div style="clear: both">
  <cms:CMSWebPartZone ZoneID="zoneE" runat="server" />
</div>', N'877c7e3d-a7cb-44d3-b55c-fec72ccd052f', '686194bc-7f23-4a48-bfdd-e1161cfd64f1', '20120828 10:35:44', N'ascx', N'', '44490e4b-3b00-41e3-a85c-cef61ce8bb14', 5, 1)
INSERT INTO [CMS_Layout] ([LayoutID], [LayoutCodeName], [LayoutDisplayName], [LayoutDescription], [LayoutCode], [LayoutVersionGUID], [LayoutGUID], [LayoutLastModified], [LayoutType], [LayoutCSS], [LayoutThumbnailGUID], [LayoutZoneCount], [LayoutIsConvertible]) VALUES (148, N'CMS.EightRows', N'Rows', N'Eight rows with web part zones.', N'<div>
  <cms:CMSWebPartZone ZoneID="zoneA" runat="server" />
</div>
<div>
  <cms:CMSWebPartZone ZoneID="zoneB" runat="server" />
</div>
<div>
  <cms:CMSWebPartZone ZoneID="zoneC" runat="server" />
</div>
<div>
  <cms:CMSWebPartZone ZoneID="zoneD" runat="server" />
</div>
<div>
  <cms:CMSWebPartZone ZoneID="zoneE" runat="server" />
</div>
<div>
  <cms:CMSWebPartZone ZoneID="zoneF" runat="server" />
</div>
<div>
  <cms:CMSWebPartZone ZoneID="zoneG" runat="server" />
</div>
<div>
  <cms:CMSWebPartZone ZoneID="zoneH" runat="server" />
</div>', N'ed44e4a4-3bb6-45b2-9b04-97fc71cf0fe9', 'aae1e059-e3a8-48b2-af84-ada3c63bb144', '20120828 10:35:44', N'ascx', N'', '86fa0a64-e80c-409e-aeda-4ab27653be19', 8, 0)
SET IDENTITY_INSERT [CMS_Layout] OFF
