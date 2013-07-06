CREATE TABLE [CMS_Banner] (
		[BannerID]               [int] IDENTITY(1, 1) NOT NULL,
		[BannerName]             [nvarchar](256) NOT NULL,
		[BannerDisplayName]      [nvarchar](256) NOT NULL,
		[BannerCategoryID]       [int] NOT NULL,
		[BannerEnabled]          [bit] NOT NULL,
		[BannerFrom]             [datetime] NULL,
		[BannerTo]               [datetime] NULL,
		[BannerGuid]             [uniqueidentifier] NOT NULL,
		[BannerLastModified]     [datetime] NOT NULL,
		[BannerType]             [int] NOT NULL,
		[BannerURL]              [nvarchar](2083) NOT NULL,
		[BannerBlank]            [bit] NOT NULL,
		[BannerWeight]           [float] NOT NULL,
		[BannerHitsLeft]         [int] NULL,
		[BannerClicksLeft]       [int] NULL,
		[BannerSiteID]           [int] NULL,
		[BannerContent]          [nvarchar](max) NOT NULL
)  
ALTER TABLE [CMS_Banner]
	ADD
	CONSTRAINT [PK__CMS_Banner]
	PRIMARY KEY
	CLUSTERED
	([BannerID])
	
ALTER TABLE [CMS_Banner]
	ADD
	CONSTRAINT [DEFAULT_cms_banner_BannerBlank]
	DEFAULT ((0)) FOR [BannerBlank]
ALTER TABLE [CMS_Banner]
	ADD
	CONSTRAINT [DEFAULT_cms_banner_BannerCategoryID]
	DEFAULT ((0)) FOR [BannerCategoryID]
ALTER TABLE [CMS_Banner]
	ADD
	CONSTRAINT [DEFAULT_CMS_Banner_BannerContent]
	DEFAULT ('') FOR [BannerContent]
ALTER TABLE [CMS_Banner]
	ADD
	CONSTRAINT [DEFAULT_cms_banner_BannerDisplayName]
	DEFAULT ('') FOR [BannerDisplayName]
ALTER TABLE [CMS_Banner]
	ADD
	CONSTRAINT [DEFAULT_CMS_Banner_BannerEnabled]
	DEFAULT ((1)) FOR [BannerEnabled]
ALTER TABLE [CMS_Banner]
	ADD
	CONSTRAINT [DEFAULT_cms_banner_BannerGuid]
	DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [BannerGuid]
ALTER TABLE [CMS_Banner]
	ADD
	CONSTRAINT [DEFAULT_cms_banner_BannerLastModified]
	DEFAULT ('1/1/1970 12:00:00 AM') FOR [BannerLastModified]
ALTER TABLE [CMS_Banner]
	ADD
	CONSTRAINT [DEFAULT_cms_banner_BannerName]
	DEFAULT ('') FOR [BannerName]
ALTER TABLE [CMS_Banner]
	ADD
	CONSTRAINT [DEFAULT_CMS_Banner_BannerType]
	DEFAULT ((0)) FOR [BannerType]
ALTER TABLE [CMS_Banner]
	ADD
	CONSTRAINT [DEFAULT_cms_banner_BannerWeight]
	DEFAULT ((5)) FOR [BannerWeight]
ALTER TABLE [CMS_Banner]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_Banner_CMS_BannerCategory]
	FOREIGN KEY ([BannerCategoryID]) REFERENCES [CMS_BannerCategory] ([BannerCategoryID])
ALTER TABLE [CMS_Banner]
	CHECK CONSTRAINT [FK_CMS_Banner_CMS_BannerCategory]
ALTER TABLE [CMS_Banner]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_Banner_CMS_Site]
	FOREIGN KEY ([BannerSiteID]) REFERENCES [CMS_Site] ([SiteID])
ALTER TABLE [CMS_Banner]
	CHECK CONSTRAINT [FK_CMS_Banner_CMS_Site]
