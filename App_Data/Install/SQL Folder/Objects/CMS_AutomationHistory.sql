CREATE TABLE [CMS_AutomationHistory] (
		[HistoryID]                        [int] IDENTITY(1, 1) NOT NULL,
		[HistoryStepID]                    [int] NULL,
		[HistoryStepName]                  [nvarchar](440) NULL,
		[HistoryStepDisplayName]           [nvarchar](450) NOT NULL,
		[HistoryStepType]                  [int] NULL,
		[HistoryTargetStepID]              [int] NULL,
		[HistoryTargetStepName]            [nvarchar](440) NULL,
		[HistoryTargetStepDisplayName]     [nvarchar](450) NULL,
		[HistoryTargetStepType]            [int] NULL,
		[HistoryApprovedByUserID]          [int] NULL,
		[HistoryApprovedWhen]              [datetime] NULL,
		[HistoryComment]                   [nvarchar](max) NULL,
		[HistoryTransitionType]            [int] NULL,
		[HistoryWorkflowID]                [int] NOT NULL,
		[HistoryRejected]                  [bit] NULL,
		[HistoryWasRejected]               [bit] NOT NULL,
		[HistoryStateID]                   [int] NOT NULL
)  
ALTER TABLE [CMS_AutomationHistory]
	ADD
	CONSTRAINT [PK_CMS_AutomationHistory]
	PRIMARY KEY
	CLUSTERED
	([HistoryID])
	
ALTER TABLE [CMS_AutomationHistory]
	ADD
	CONSTRAINT [DEFAULT_CMS_AutomationHistory_HistoryRejected]
	DEFAULT ((0)) FOR [HistoryRejected]
ALTER TABLE [CMS_AutomationHistory]
	ADD
	CONSTRAINT [DEFAULT_CMS_AutomationHistory_HistoryStateID]
	DEFAULT ((0)) FOR [HistoryStateID]
ALTER TABLE [CMS_AutomationHistory]
	ADD
	CONSTRAINT [DEFAULT_CMS_AutomationHistory_HistoryStepDisplayName]
	DEFAULT ('') FOR [HistoryStepDisplayName]
ALTER TABLE [CMS_AutomationHistory]
	ADD
	CONSTRAINT [DEFAULT_CMS_AutomationHistory_HistoryWasRejected]
	DEFAULT ((0)) FOR [HistoryWasRejected]
ALTER TABLE [CMS_AutomationHistory]
	ADD
	CONSTRAINT [DEFAULT_CMS_AutomationHistory_HistoryWorkflowID]
	DEFAULT ((0)) FOR [HistoryWorkflowID]
CREATE NONCLUSTERED INDEX [IX_CMS_AutomationHistory_HistoryApprovedByUserID]
	ON [CMS_AutomationHistory] ([HistoryApprovedByUserID])
	
CREATE NONCLUSTERED INDEX [IX_CMS_AutomationHistory_HistoryApprovedWhen]
	ON [CMS_AutomationHistory] ([HistoryApprovedWhen])
	
CREATE NONCLUSTERED INDEX [IX_CMS_AutomationHistory_HistoryStepID]
	ON [CMS_AutomationHistory] ([HistoryStepID])
	
ALTER TABLE [CMS_AutomationHistory]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_AutomationHistory_HistoryApprovedByUserID]
	FOREIGN KEY ([HistoryApprovedByUserID]) REFERENCES [CMS_User] ([UserID])
ALTER TABLE [CMS_AutomationHistory]
	CHECK CONSTRAINT [FK_CMS_AutomationHistory_HistoryApprovedByUserID]
ALTER TABLE [CMS_AutomationHistory]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_AutomationHistory_HistoryStateID]
	FOREIGN KEY ([HistoryStateID]) REFERENCES [CMS_AutomationState] ([StateID])
ALTER TABLE [CMS_AutomationHistory]
	CHECK CONSTRAINT [FK_CMS_AutomationHistory_HistoryStateID]
ALTER TABLE [CMS_AutomationHistory]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_AutomationHistory_HistoryStepID]
	FOREIGN KEY ([HistoryStepID]) REFERENCES [CMS_WorkflowStep] ([StepID])
ALTER TABLE [CMS_AutomationHistory]
	CHECK CONSTRAINT [FK_CMS_AutomationHistory_HistoryStepID]
ALTER TABLE [CMS_AutomationHistory]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_AutomationHistory_HistoryTargetStepID]
	FOREIGN KEY ([HistoryTargetStepID]) REFERENCES [CMS_WorkflowStep] ([StepID])
ALTER TABLE [CMS_AutomationHistory]
	CHECK CONSTRAINT [FK_CMS_AutomationHistory_HistoryTargetStepID]
ALTER TABLE [CMS_AutomationHistory]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_AutomationHistory_HistoryWorkflowID]
	FOREIGN KEY ([HistoryWorkflowID]) REFERENCES [CMS_Workflow] ([WorkflowID])
ALTER TABLE [CMS_AutomationHistory]
	CHECK CONSTRAINT [FK_CMS_AutomationHistory_HistoryWorkflowID]
