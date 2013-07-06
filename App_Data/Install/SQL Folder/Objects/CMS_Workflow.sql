CREATE TABLE [CMS_Workflow] (
		[WorkflowID]                               [int] IDENTITY(1, 1) NOT NULL,
		[WorkflowDisplayName]                      [nvarchar](450) NOT NULL,
		[WorkflowName]                             [nvarchar](450) NOT NULL,
		[WorkflowGUID]                             [uniqueidentifier] NOT NULL,
		[WorkflowLastModified]                     [datetime] NOT NULL,
		[WorkflowAutoPublishChanges]               [bit] NULL,
		[WorkflowUseCheckinCheckout]               [bit] NULL,
		[WorkflowType]                             [int] NULL,
		[WorkflowSendEmails]                       [bit] NULL,
		[WorkflowSendApproveEmails]                [bit] NULL,
		[WorkflowSendRejectEmails]                 [bit] NULL,
		[WorkflowSendPublishEmails]                [bit] NULL,
		[WorkflowSendArchiveEmails]                [bit] NULL,
		[WorkflowApprovedTemplateName]             [nvarchar](200) NULL,
		[WorkflowRejectedTemplateName]             [nvarchar](200) NULL,
		[WorkflowPublishedTemplateName]            [nvarchar](200) NULL,
		[WorkflowArchivedTemplateName]             [nvarchar](200) NULL,
		[WorkflowSendReadyForApprovalEmails]       [bit] NULL,
		[WorkflowReadyForApprovalTemplateName]     [nvarchar](200) NULL,
		[WorkflowNotificationTemplateName]         [nvarchar](200) NULL,
		[WorkflowAllowedObjects]                   [nvarchar](max) NULL,
		[WorkflowRecurrenceType]                   [int] NULL
)  
ALTER TABLE [CMS_Workflow]
	ADD
	CONSTRAINT [PK_CMS_Workflow]
	PRIMARY KEY
	NONCLUSTERED
	([WorkflowID])
	WITH FILLFACTOR=80
	
ALTER TABLE [CMS_Workflow]
	ADD
	CONSTRAINT [DEFAULT_CMS_Workflow_WorkflowAutoPublishChanges]
	DEFAULT ((0)) FOR [WorkflowAutoPublishChanges]
ALTER TABLE [CMS_Workflow]
	ADD
	CONSTRAINT [DEFAULT_CMS_Workflow_WorkflowDisplayName]
	DEFAULT ('') FOR [WorkflowDisplayName]
ALTER TABLE [CMS_Workflow]
	ADD
	CONSTRAINT [DEFAULT_CMS_Workflow_WorkflowName]
	DEFAULT ('') FOR [WorkflowName]
ALTER TABLE [CMS_Workflow]
	ADD
	CONSTRAINT [DEFAULT_CMS_Workflow_WorkflowSendApproveEmails]
	DEFAULT ((1)) FOR [WorkflowSendApproveEmails]
ALTER TABLE [CMS_Workflow]
	ADD
	CONSTRAINT [DEFAULT_CMS_Workflow_WorkflowSendArchiveEmails]
	DEFAULT ((1)) FOR [WorkflowSendArchiveEmails]
ALTER TABLE [CMS_Workflow]
	ADD
	CONSTRAINT [DEFAULT_CMS_Workflow_WorkflowSendPublishEmails]
	DEFAULT ((1)) FOR [WorkflowSendPublishEmails]
ALTER TABLE [CMS_Workflow]
	ADD
	CONSTRAINT [DEFAULT_CMS_Workflow_WorkflowSendReadyForApprovalEmails]
	DEFAULT ((1)) FOR [WorkflowSendReadyForApprovalEmails]
ALTER TABLE [CMS_Workflow]
	ADD
	CONSTRAINT [DEFAULT_CMS_Workflow_WorkflowSendRejectEmails]
	DEFAULT ((1)) FOR [WorkflowSendRejectEmails]
ALTER TABLE [CMS_Workflow]
	ADD
	CONSTRAINT [DEFAULT_CMS_Workflow_WorkflowUseCheckinCheckout]
	DEFAULT ((0)) FOR [WorkflowUseCheckinCheckout]
CREATE CLUSTERED INDEX [IX_CMS_Workflow_WorkflowDisplayName]
	ON [CMS_Workflow] ([WorkflowDisplayName])
	
