CREATE TABLE [CMS_ClassMapping] (
		[MappingID]               [int] IDENTITY(1, 1) NOT NULL,
		[MappingClassID]          [int] NOT NULL,
		[MappingLastModified]     [datetime] NOT NULL,
		[MappingType]             [nvarchar](50) NOT NULL,
		[MappingData]             [nvarchar](max) NOT NULL,
		[MappingSiteID]           [int] NULL,
		[MappingName]             [nvarchar](100) NOT NULL,
		[MappingDisplayName]      [nvarchar](100) NOT NULL,
		[MappingGUID]             [uniqueidentifier] NOT NULL
)  
ALTER TABLE [CMS_ClassMapping]
	ADD
	CONSTRAINT [PK_CMS_ClassMapping]
	PRIMARY KEY
	CLUSTERED
	([MappingID])
	
ALTER TABLE [CMS_ClassMapping]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_ClassMapping_MappingClassID_CMS_Class]
	FOREIGN KEY ([MappingClassID]) REFERENCES [CMS_Class] ([ClassID])
ALTER TABLE [CMS_ClassMapping]
	CHECK CONSTRAINT [FK_CMS_ClassMapping_MappingClassID_CMS_Class]
ALTER TABLE [CMS_ClassMapping]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_ClassMapping_MappingSiteID_CMS_Site]
	FOREIGN KEY ([MappingSiteID]) REFERENCES [CMS_Site] ([SiteID])
ALTER TABLE [CMS_ClassMapping]
	CHECK CONSTRAINT [FK_CMS_ClassMapping_MappingSiteID_CMS_Site]
