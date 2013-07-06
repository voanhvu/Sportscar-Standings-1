CREATE TABLE [CMS_Layout] (
		[LayoutID]                [int] IDENTITY(1, 1) NOT NULL,
		[LayoutCodeName]          [nvarchar](100) NOT NULL,
		[LayoutDisplayName]       [nvarchar](200) NOT NULL,
		[LayoutDescription]       [nvarchar](max) NULL,
		[LayoutCode]              [nvarchar](max) NOT NULL,
		[LayoutVersionGUID]       [nvarchar](50) NULL,
		[LayoutGUID]              [uniqueidentifier] NOT NULL,
		[LayoutLastModified]      [datetime] NOT NULL,
		[LayoutType]              [nvarchar](50) NULL,
		[LayoutCSS]               [nvarchar](max) NULL,
		[LayoutThumbnailGUID]     [uniqueidentifier] NULL,
		[LayoutZoneCount]         [int] NULL,
		[LayoutIsConvertible]     [bit] NULL
)  
ALTER TABLE [CMS_Layout]
	ADD
	CONSTRAINT [PK_CMS_Layout]
	PRIMARY KEY
	CLUSTERED
	([LayoutID])
	WITH FILLFACTOR=80
	
ALTER TABLE [CMS_Layout]
	ADD
	CONSTRAINT [DEFAULT_CMS_Layout_LayoutCode]
	DEFAULT ('<cms:CMSWebPartZone ZoneID="zoneA" runat="server" />') FOR [LayoutCode]
ALTER TABLE [CMS_Layout]
	ADD
	CONSTRAINT [DEFAULT_CMS_Layout_LayoutCodeName]
	DEFAULT ('') FOR [LayoutCodeName]
ALTER TABLE [CMS_Layout]
	ADD
	CONSTRAINT [DEFAULT_CMS_Layout_LayoutDisplayName]
	DEFAULT ('') FOR [LayoutDisplayName]
ALTER TABLE [CMS_Layout]
	ADD
	CONSTRAINT [DEFAULT_CMS_Layout_LayoutIsConvertible]
	DEFAULT ((0)) FOR [LayoutIsConvertible]
CREATE NONCLUSTERED INDEX [IX_CMS_Layout_LayoutDisplayName]
	ON [CMS_Layout] ([LayoutDisplayName])
	
