CREATE TABLE [CMS_TranslationSubmissionItem] (
		[SubmissionItemID]                 [int] IDENTITY(1, 1) NOT NULL,
		[SubmissionItemSubmissionID]       [int] NOT NULL,
		[SubmissionItemSourceXLIFF]        [nvarchar](max) NULL,
		[SubmissionItemTargetXLIFF]        [nvarchar](max) NULL,
		[SubmissionItemObjectType]         [nvarchar](100) NOT NULL,
		[SubmissionItemObjectID]           [int] NOT NULL,
		[SubmissionItemGUID]               [uniqueidentifier] NOT NULL,
		[SubmissionItemLastModified]       [datetime] NOT NULL,
		[SubmissionItemName]               [nvarchar](200) NOT NULL,
		[SubmissionItemWordCount]          [int] NULL,
		[SubmissionItemCharCount]          [int] NULL,
		[SubmissionItemCustomData]         [nvarchar](max) NULL,
		[SubmissionItemTargetObjectID]     [int] NOT NULL,
		[SubmissionItemType]               [nvarchar](50) NULL
)  
ALTER TABLE [CMS_TranslationSubmissionItem]
	ADD
	CONSTRAINT [PK_CMS_TranslationSubmissionItem]
	PRIMARY KEY
	CLUSTERED
	([SubmissionItemID])
	
ALTER TABLE [CMS_TranslationSubmissionItem]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_TranslationSubmissionItem_CMS_TranslationSubmission]
	FOREIGN KEY ([SubmissionItemSubmissionID]) REFERENCES [CMS_TranslationSubmission] ([SubmissionID])
ALTER TABLE [CMS_TranslationSubmissionItem]
	CHECK CONSTRAINT [FK_CMS_TranslationSubmissionItem_CMS_TranslationSubmission]
