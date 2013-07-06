CREATE TABLE [CMS_ObjectWorkflowTrigger] (
		[TriggerID]                   [int] IDENTITY(1, 1) NOT NULL,
		[TriggerGUID]                 [uniqueidentifier] NOT NULL,
		[TriggerLastModified]         [datetime] NOT NULL,
		[TriggerType]                 [int] NOT NULL,
		[TriggerMacroCondition]       [nvarchar](max) NULL,
		[TriggerWorkflowID]           [int] NOT NULL,
		[TriggerSiteID]               [int] NULL,
		[TriggerDisplayName]          [nvarchar](450) NOT NULL,
		[TriggerObjectType]           [nvarchar](100) NOT NULL,
		[TriggerParameters]           [nvarchar](max) NULL,
		[TriggerTargetObjectType]     [nvarchar](100) NULL,
		[TriggerTargetObjectID]       [int] NULL
)  
ALTER TABLE [CMS_ObjectWorkflowTrigger]
	ADD
	CONSTRAINT [PK_CMS_ObjectWorkflowTrigger]
	PRIMARY KEY
	CLUSTERED
	([TriggerID])
	
ALTER TABLE [CMS_ObjectWorkflowTrigger]
	ADD
	CONSTRAINT [DEFAULT_CMS_ObjectWorkflowTrigger_TriggerDisplayName]
	DEFAULT ('') FOR [TriggerDisplayName]
ALTER TABLE [CMS_ObjectWorkflowTrigger]
	ADD
	CONSTRAINT [DEFAULT_CMS_ObjectWorkflowTrigger_TriggerObjectType]
	DEFAULT ('') FOR [TriggerObjectType]
ALTER TABLE [CMS_ObjectWorkflowTrigger]
	ADD
	CONSTRAINT [DEFAULT_CMS_ObjectWorkflowTrigger_TriggerType]
	DEFAULT ((0)) FOR [TriggerType]
ALTER TABLE [CMS_ObjectWorkflowTrigger]
	ADD
	CONSTRAINT [DEFAULT_CMS_ObjectWorkflowTrigger_TriggerWorkflowID]
	DEFAULT ((0)) FOR [TriggerWorkflowID]
ALTER TABLE [CMS_ObjectWorkflowTrigger]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_ObjectWorkflowTrigger_TriggerSiteID]
	FOREIGN KEY ([TriggerSiteID]) REFERENCES [CMS_Site] ([SiteID])
ALTER TABLE [CMS_ObjectWorkflowTrigger]
	CHECK CONSTRAINT [FK_CMS_ObjectWorkflowTrigger_TriggerSiteID]
ALTER TABLE [CMS_ObjectWorkflowTrigger]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_ObjectWorkflowTrigger_TriggerWorkflowID]
	FOREIGN KEY ([TriggerWorkflowID]) REFERENCES [CMS_Workflow] ([WorkflowID])
ALTER TABLE [CMS_ObjectWorkflowTrigger]
	CHECK CONSTRAINT [FK_CMS_ObjectWorkflowTrigger_TriggerWorkflowID]
