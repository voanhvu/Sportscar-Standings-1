CREATE TABLE [CMS_TranslationSubmission] (
		[SubmissionID]                       [int] IDENTITY(1, 1) NOT NULL,
		[SubmissionName]                     [nvarchar](200) NOT NULL,
		[SubmissionTicket]                   [nvarchar](200) NULL,
		[SubmissionStatus]                   [int] NOT NULL,
		[SubmissionServiceID]                [int] NOT NULL,
		[SubmissionSourceCulture]            [nvarchar](10) NOT NULL,
		[SubmissionTargetCulture]            [nvarchar](10) NOT NULL,
		[SubmissionPriority]                 [int] NOT NULL,
		[SubmissionDeadline]                 [datetime] NULL,
		[SubmissionInstructions]             [nvarchar](500) NULL,
		[SubmissionLastModified]             [datetime] NOT NULL,
		[SubmissionGUID]                     [uniqueidentifier] NOT NULL,
		[SubmissionSiteID]                   [int] NULL,
		[SubmissionPrice]                    [float] NULL,
		[SubmissionStatusMessage]            [nvarchar](max) NULL,
		[SubmissionTranslateAttachments]     [bit] NULL,
		[SubmissionItemCount]                [int] NOT NULL,
		[SubmissionDate]                     [datetime] NOT NULL,
		[SubmissionWordCount]                [int] NULL,
		[SubmissionCharCount]                [int] NULL,
		[SubmissionSubmittedByUserID]        [int] NULL
)  
ALTER TABLE [CMS_TranslationSubmission]
	ADD
	CONSTRAINT [PK_CMS_TranslationSubmission]
	PRIMARY KEY
	CLUSTERED
	([SubmissionID])
	
CREATE NONCLUSTERED INDEX [IX_CMS_TranslationSubmission]
	ON [CMS_TranslationSubmission] ([SubmissionID])
	
ALTER TABLE [CMS_TranslationSubmission]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_TranslationSubmission_CMS_TranslationService]
	FOREIGN KEY ([SubmissionServiceID]) REFERENCES [CMS_TranslationService] ([TranslationServiceID])
ALTER TABLE [CMS_TranslationSubmission]
	CHECK CONSTRAINT [FK_CMS_TranslationSubmission_CMS_TranslationService]
ALTER TABLE [CMS_TranslationSubmission]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_TranslationSubmission_CMS_User]
	FOREIGN KEY ([SubmissionSubmittedByUserID]) REFERENCES [CMS_User] ([UserID])
ALTER TABLE [CMS_TranslationSubmission]
	CHECK CONSTRAINT [FK_CMS_TranslationSubmission_CMS_User]
