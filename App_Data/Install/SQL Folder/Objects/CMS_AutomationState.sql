CREATE TABLE [CMS_AutomationState] (
		[StateID]               [int] IDENTITY(1, 1) NOT NULL,
		[StateStepID]           [int] NOT NULL,
		[StateObjectID]         [int] NOT NULL,
		[StateObjectType]       [nvarchar](100) NOT NULL,
		[StateActionStatus]     [nvarchar](450) NULL,
		[StateCreated]          [datetime] NULL,
		[StateLastModified]     [datetime] NULL,
		[StateWorkflowID]       [int] NOT NULL,
		[StateStatus]           [int] NULL,
		[StateSiteID]           [int] NULL,
		[StateUserID]           [int] NULL,
		[StateGUID]             [uniqueidentifier] NOT NULL,
		[StateCustomData]       [nvarchar](max) NULL
)  
ALTER TABLE [CMS_AutomationState]
	ADD
	CONSTRAINT [PK_CMS_AutomationState]
	PRIMARY KEY
	CLUSTERED
	([StateID])
	
ALTER TABLE [CMS_AutomationState]
	ADD
	CONSTRAINT [DEFAULT_CMS_AutomationState_StateGUID]
	DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [StateGUID]
ALTER TABLE [CMS_AutomationState]
	ADD
	CONSTRAINT [DEFAULT_CMS_AutomationState_StateWorkflowID]
	DEFAULT ((0)) FOR [StateWorkflowID]
CREATE NONCLUSTERED INDEX [IX_CMS_AutomationState_StateObjectID_StateObjectType]
	ON [CMS_AutomationState] ([StateObjectID], [StateObjectType])
	
CREATE NONCLUSTERED INDEX [IX_CMS_AutomationState_StateStepID]
	ON [CMS_AutomationState] ([StateStepID])
	
ALTER TABLE [CMS_AutomationState]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_AutomationState_StateSiteID_CMS_Site]
	FOREIGN KEY ([StateSiteID]) REFERENCES [CMS_Site] ([SiteID])
ALTER TABLE [CMS_AutomationState]
	CHECK CONSTRAINT [FK_CMS_AutomationState_StateSiteID_CMS_Site]
ALTER TABLE [CMS_AutomationState]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_AutomationState_StateStepID]
	FOREIGN KEY ([StateStepID]) REFERENCES [CMS_WorkflowStep] ([StepID])
ALTER TABLE [CMS_AutomationState]
	CHECK CONSTRAINT [FK_CMS_AutomationState_StateStepID]
ALTER TABLE [CMS_AutomationState]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_AutomationState_StateUserID_CMS_User]
	FOREIGN KEY ([StateUserID]) REFERENCES [CMS_User] ([UserID])
ALTER TABLE [CMS_AutomationState]
	CHECK CONSTRAINT [FK_CMS_AutomationState_StateUserID_CMS_User]
ALTER TABLE [CMS_AutomationState]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_AutomationState_StateWorkflowID]
	FOREIGN KEY ([StateWorkflowID]) REFERENCES [CMS_Workflow] ([WorkflowID])
ALTER TABLE [CMS_AutomationState]
	CHECK CONSTRAINT [FK_CMS_AutomationState_StateWorkflowID]
