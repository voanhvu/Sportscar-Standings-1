CREATE TABLE [CMS_TranslationService] (
		[TranslationServiceID]                       [int] IDENTITY(1, 1) NOT NULL,
		[TranslationServiceAssemblyName]             [nvarchar](200) NOT NULL,
		[TranslationServiceClassName]                [nvarchar](200) NOT NULL,
		[TranslationServiceName]                     [nvarchar](200) NOT NULL,
		[TranslationServiceDisplayName]              [nvarchar](200) NOT NULL,
		[TranslationServiceIsMachine]                [bit] NOT NULL,
		[TranslationServiceLastModified]             [datetime] NOT NULL,
		[TranslationServiceGUID]                     [uniqueidentifier] NOT NULL,
		[TranslationServiceEnabled]                  [bit] NOT NULL,
		[TranslationServiceSupportsInstructions]     [bit] NULL,
		[TranslationServiceSupportsPriority]         [bit] NULL,
		[TranslationServiceSupportsDeadline]         [bit] NULL,
		[TranslationServiceGenerateTargetTag]        [bit] NULL,
		[TranslationServiceParameter]                [nvarchar](1000) NULL
) 
ALTER TABLE [CMS_TranslationService]
	ADD
	CONSTRAINT [PK_CMS_TranslationService]
	PRIMARY KEY
	CLUSTERED
	([TranslationServiceID])
	
ALTER TABLE [CMS_TranslationService]
	ADD
	CONSTRAINT [DEFAULT_CMS_TranslationService_TranslationServiceGenerateTargetTag]
	DEFAULT ((0)) FOR [TranslationServiceGenerateTargetTag]
