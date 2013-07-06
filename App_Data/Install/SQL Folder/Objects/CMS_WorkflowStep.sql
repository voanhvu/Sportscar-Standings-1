CREATE TABLE [CMS_WorkflowStep] (
		[StepID]                               [int] IDENTITY(1, 1) NOT NULL,
		[StepDisplayName]                      [nvarchar](450) NOT NULL,
		[StepName]                             [nvarchar](440) NULL,
		[StepOrder]                            [int] NULL,
		[StepWorkflowID]                       [int] NOT NULL,
		[StepGUID]                             [uniqueidentifier] NOT NULL,
		[StepLastModified]                     [datetime] NOT NULL,
		[StepType]                             [int] NULL,
		[StepAllowReject]                      [bit] NULL,
		[StepDefinition]                       [nvarchar](max) NULL,
		[StepRolesSecurity]                    [int] NULL,
		[StepUsersSecurity]                    [int] NULL,
		[StepApprovedTemplateName]             [nvarchar](200) NULL,
		[StepRejectedTemplateName]             [nvarchar](200) NULL,
		[StepReadyforApprovalTemplateName]     [nvarchar](200) NULL,
		[StepSendApproveEmails]                [bit] NULL,
		[StepSendRejectEmails]                 [bit] NULL,
		[StepSendReadyForApprovalEmails]       [bit] NULL,
		[StepSendEmails]                       [bit] NULL,
		[StepAllowPublish]                     [bit] NULL,
		[StepActionID]                         [int] NULL,
		[StepActionParameters]                 [nvarchar](max) NULL,
		[StepWorkflowType]                     [int] NULL
)  
ALTER TABLE [CMS_WorkflowStep]
	ADD
	CONSTRAINT [PK_CMS_WorkflowStep]
	PRIMARY KEY
	NONCLUSTERED
	([StepID])
	WITH FILLFACTOR=80
	
CREATE CLUSTERED INDEX [IX_CMS_WorkflowStep_StepID_StepName]
	ON [CMS_WorkflowStep] ([StepID], [StepName])
	
CREATE UNIQUE NONCLUSTERED INDEX [IX_CMS_WorkflowStep_StepWorkflowID_StepName]
	ON [CMS_WorkflowStep] ([StepWorkflowID], [StepName])
	WITH ( FILLFACTOR = 80)
	
CREATE NONCLUSTERED INDEX [IX_CMS_WorkflowStep_StepWorkflowID_StepOrder]
	ON [CMS_WorkflowStep] ([StepWorkflowID], [StepOrder])
	
ALTER TABLE [CMS_WorkflowStep]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_WorkflowStep_StepActionID]
	FOREIGN KEY ([StepActionID]) REFERENCES [CMS_WorkflowAction] ([ActionID])
ALTER TABLE [CMS_WorkflowStep]
	CHECK CONSTRAINT [FK_CMS_WorkflowStep_StepActionID]
ALTER TABLE [CMS_WorkflowStep]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_WorkflowStep_StepWorkflowID]
	FOREIGN KEY ([StepWorkflowID]) REFERENCES [CMS_Workflow] ([WorkflowID])
ALTER TABLE [CMS_WorkflowStep]
	CHECK CONSTRAINT [FK_CMS_WorkflowStep_StepWorkflowID]
