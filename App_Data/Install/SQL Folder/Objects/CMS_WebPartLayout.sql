CREATE TABLE [CMS_WebPartLayout] (
		[WebPartLayoutID]               [int] IDENTITY(1, 1) NOT NULL,
		[WebPartLayoutCodeName]         [nvarchar](200) NOT NULL,
		[WebPartLayoutDisplayName]      [nvarchar](200) NOT NULL,
		[WebPartLayoutDescription]      [nvarchar](max) NULL,
		[WebPartLayoutCode]             [nvarchar](max) NULL,
		[WebPartLayoutVersionGUID]      [nvarchar](50) NULL,
		[WebPartLayoutWebPartID]        [int] NOT NULL,
		[WebPartLayoutGUID]             [uniqueidentifier] NOT NULL,
		[WebPartLayoutLastModified]     [datetime] NOT NULL,
		[WebPartLayoutCSS]              [nvarchar](max) NULL
)  
ALTER TABLE [CMS_WebPartLayout]
	ADD
	CONSTRAINT [PK_CMS_WebPartLayout]
	PRIMARY KEY
	NONCLUSTERED
	([WebPartLayoutID])
	WITH FILLFACTOR=80
	
ALTER TABLE [CMS_WebPartLayout]
	ADD
	CONSTRAINT [DEFAULT_CMS_WebPartLayout_WebPartLayoutCodeName]
	DEFAULT ('') FOR [WebPartLayoutCodeName]
ALTER TABLE [CMS_WebPartLayout]
	ADD
	CONSTRAINT [DEFAULT_CMS_WebPartLayout_WebPartLayoutDisplayName]
	DEFAULT ('') FOR [WebPartLayoutDisplayName]
CREATE CLUSTERED INDEX [IX_CMS_WebPartLayout_WebPartLayoutWebPartID_WebPartLayoutCodeName]
	ON [CMS_WebPartLayout] ([WebPartLayoutWebPartID], [WebPartLayoutCodeName])
	
ALTER TABLE [CMS_WebPartLayout]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_WebPartLayout_WebPartLayoutWebPartID_CMS_WebPart]
	FOREIGN KEY ([WebPartLayoutWebPartID]) REFERENCES [CMS_WebPart] ([WebPartID])
ALTER TABLE [CMS_WebPartLayout]
	CHECK CONSTRAINT [FK_CMS_WebPartLayout_WebPartLayoutWebPartID_CMS_WebPart]
