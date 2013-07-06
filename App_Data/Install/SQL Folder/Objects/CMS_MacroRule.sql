CREATE TABLE [CMS_MacroRule] (
		[MacroRuleID]                  [int] IDENTITY(1, 1) NOT NULL,
		[MacroRuleName]                [nvarchar](200) NOT NULL,
		[MacroRuleText]                [nvarchar](1000) NOT NULL,
		[MacroRuleParameters]          [nvarchar](max) NULL,
		[MacroRuleResourceName]        [nvarchar](100) NULL,
		[MacroRuleLastModified]        [datetime] NOT NULL,
		[MacroRuleGUID]                [uniqueidentifier] NOT NULL,
		[MacroRuleCondition]           [nvarchar](max) NOT NULL,
		[MacroRuleDisplayName]         [nvarchar](500) NOT NULL,
		[MacroRuleIsCustom]            [bit] NULL,
		[MacroRuleRequiresContext]     [bit] NOT NULL,
		[MacroRuleDescription]         [nvarchar](450) NULL
)  
ALTER TABLE [CMS_MacroRule]
	ADD
	CONSTRAINT [PK_CMS_MacroRule]
	PRIMARY KEY
	CLUSTERED
	([MacroRuleID])
	
ALTER TABLE [CMS_MacroRule]
	ADD
	CONSTRAINT [DEFAULT_CMS_MacroRule_MacroRuleDisplayName]
	DEFAULT ('') FOR [MacroRuleDisplayName]
ALTER TABLE [CMS_MacroRule]
	ADD
	CONSTRAINT [DEFAULT_CMS_MacroRule_MacroRuleGUID]
	DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [MacroRuleGUID]
ALTER TABLE [CMS_MacroRule]
	ADD
	CONSTRAINT [DEFAULT_CMS_MacroRule_MacroRuleIsCustom]
	DEFAULT ((0)) FOR [MacroRuleIsCustom]
ALTER TABLE [CMS_MacroRule]
	ADD
	CONSTRAINT [DEFAULT_CMS_MacroRule_MacroRuleLastModified]
	DEFAULT ('5/1/2012 8:46:33 AM') FOR [MacroRuleLastModified]
ALTER TABLE [CMS_MacroRule]
	ADD
	CONSTRAINT [DEFAULT_CMS_MacroRule_MacroRuleRequiresContext]
	DEFAULT ((0)) FOR [MacroRuleRequiresContext]
