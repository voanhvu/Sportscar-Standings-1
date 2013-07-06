CREATE TABLE [CMS_TemplateDeviceLayout] (
		[TemplateDeviceLayoutID]     [int] IDENTITY(1, 1) NOT NULL,
		[PageTemplateID]             [int] NOT NULL,
		[ProfileID]                  [int] NOT NULL,
		[LayoutID]                   [int] NULL,
		[LayoutCode]                 [nvarchar](max) NULL,
		[LayoutType]                 [nvarchar](50) NULL,
		[LayoutCSS]                  [nvarchar](max) NULL,
		[LayoutLastModified]         [datetime] NOT NULL,
		[LayoutGUID]                 [uniqueidentifier] NOT NULL,
		[LayoutVersionGUID]          [nvarchar](50) NULL
)  
ALTER TABLE [CMS_TemplateDeviceLayout]
	ADD
	CONSTRAINT [PK_CMS_TemplateDeviceLayout]
	PRIMARY KEY
	CLUSTERED
	([TemplateDeviceLayoutID])
	
ALTER TABLE [CMS_TemplateDeviceLayout]
	ADD
	CONSTRAINT [DEFAULT_CMS_TemplateDeviceLayout_LayoutGUID]
	DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [LayoutGUID]
ALTER TABLE [CMS_TemplateDeviceLayout]
	ADD
	CONSTRAINT [DEFAULT_CMS_TemplateDeviceLayout_LayoutLastModified]
	DEFAULT ('7/31/2012 12:10:49 PM') FOR [LayoutLastModified]
CREATE NONCLUSTERED INDEX [IX_CMS_TemplateDeviceLayout_LayoutID]
	ON [CMS_TemplateDeviceLayout] ([LayoutID])
	
CREATE UNIQUE NONCLUSTERED INDEX [IX_CMS_TemplateDeviceLayout_PageTemplateID_ProfileID]
	ON [CMS_TemplateDeviceLayout] ([PageTemplateID], [ProfileID])
	
ALTER TABLE [CMS_TemplateDeviceLayout]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_TemplateDeviceLayout_LayoutID_CMS_Layout]
	FOREIGN KEY ([LayoutID]) REFERENCES [CMS_Layout] ([LayoutID])
ALTER TABLE [CMS_TemplateDeviceLayout]
	CHECK CONSTRAINT [FK_CMS_TemplateDeviceLayout_LayoutID_CMS_Layout]
ALTER TABLE [CMS_TemplateDeviceLayout]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_TemplateDeviceLayout_PageTemplateID_CMS_PageTemplate]
	FOREIGN KEY ([PageTemplateID]) REFERENCES [CMS_PageTemplate] ([PageTemplateID])
ALTER TABLE [CMS_TemplateDeviceLayout]
	CHECK CONSTRAINT [FK_CMS_TemplateDeviceLayout_PageTemplateID_CMS_PageTemplate]
ALTER TABLE [CMS_TemplateDeviceLayout]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_TemplateDeviceLayout_ProfileID_CMS_DeviceProfile]
	FOREIGN KEY ([ProfileID]) REFERENCES [CMS_DeviceProfile] ([ProfileID])
ALTER TABLE [CMS_TemplateDeviceLayout]
	CHECK CONSTRAINT [FK_CMS_TemplateDeviceLayout_ProfileID_CMS_DeviceProfile]
