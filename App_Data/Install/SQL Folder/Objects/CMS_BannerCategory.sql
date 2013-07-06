CREATE TABLE [CMS_BannerCategory] (
		[BannerCategoryID]               [int] IDENTITY(1, 1) NOT NULL,
		[BannerCategoryName]             [nvarchar](100) NOT NULL,
		[BannerCategoryDisplayName]      [nvarchar](200) NOT NULL,
		[BannerCategorySiteID]           [int] NULL,
		[BannerCategoryGuid]             [uniqueidentifier] NOT NULL,
		[BannerCategoryLastModified]     [datetime] NOT NULL,
		[BannerCategoryEnabled]          [bit] NOT NULL
) 
ALTER TABLE [CMS_BannerCategory]
	ADD
	CONSTRAINT [PK__CMS_BannerCategory]
	PRIMARY KEY
	CLUSTERED
	([BannerCategoryID])
	
ALTER TABLE [CMS_BannerCategory]
	ADD
	CONSTRAINT [DEFAULT_CMS_BannerCategory_BannerCategoryDisplayName]
	DEFAULT ('') FOR [BannerCategoryDisplayName]
ALTER TABLE [CMS_BannerCategory]
	ADD
	CONSTRAINT [DEFAULT_CMS_BannerCategory_BannerCategoryEnabled]
	DEFAULT ((1)) FOR [BannerCategoryEnabled]
ALTER TABLE [CMS_BannerCategory]
	ADD
	CONSTRAINT [DEFAULT_CMS_BannerCategory_BannerCategoryGuid]
	DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [BannerCategoryGuid]
ALTER TABLE [CMS_BannerCategory]
	ADD
	CONSTRAINT [DEFAULT_CMS_BannerCategory_BannerCategoryLastModified]
	DEFAULT ('1/1/1970 12:00:00 AM') FOR [BannerCategoryLastModified]
ALTER TABLE [CMS_BannerCategory]
	ADD
	CONSTRAINT [DEFAULT_CMS_BannerCategory_BannerCategoryName]
	DEFAULT ('') FOR [BannerCategoryName]
CREATE UNIQUE NONCLUSTERED INDEX [IX_CMS_BannerCategory_BannerCategoryName_BannerCategorySiteID]
	ON [CMS_BannerCategory] ([BannerCategoryName], [BannerCategorySiteID])
	
ALTER TABLE [CMS_BannerCategory]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_BannerCategory_CMS_Site]
	FOREIGN KEY ([BannerCategorySiteID]) REFERENCES [CMS_Site] ([SiteID])
ALTER TABLE [CMS_BannerCategory]
	CHECK CONSTRAINT [FK_CMS_BannerCategory_CMS_Site]
