CREATE TABLE [CMS_CssStylesheet] (
		[StylesheetID]               [int] IDENTITY(1, 1) NOT NULL,
		[StylesheetDisplayName]      [nvarchar](200) NOT NULL,
		[StylesheetName]             [nvarchar](200) NOT NULL,
		[StylesheetText]             [nvarchar](max) NOT NULL,
		[StylesheetVersionGUID]      [nvarchar](50) NULL,
		[StylesheetGUID]             [uniqueidentifier] NOT NULL,
		[StylesheetLastModified]     [datetime] NOT NULL
)  
ALTER TABLE [CMS_CssStylesheet]
	ADD
	CONSTRAINT [PK_CMS_CssStylesheet]
	PRIMARY KEY
	NONCLUSTERED
	([StylesheetID])
	WITH FILLFACTOR=80
	
ALTER TABLE [CMS_CssStylesheet]
	ADD
	CONSTRAINT [DEFAULT_CMS_CssStyleSheet_StylesheetDisplayName]
	DEFAULT ('') FOR [StylesheetDisplayName]
ALTER TABLE [CMS_CssStylesheet]
	ADD
	CONSTRAINT [DEFAULT_CMS_CssStyleSheet_StylesheetName]
	DEFAULT ('') FOR [StylesheetName]
CREATE CLUSTERED INDEX [IX_CMS_CssStylesheet_StylesheetDisplayName]
	ON [CMS_CssStylesheet] ([StylesheetDisplayName])
	
CREATE NONCLUSTERED INDEX [IX_CMS_CssStylesheet_StylesheetName]
	ON [CMS_CssStylesheet] ([StylesheetName])
	
