CREATE TABLE [CMS_WorkflowAction] (
		[ActionID]                 [int] IDENTITY(1, 1) NOT NULL,
		[ActionDisplayName]        [nvarchar](200) NOT NULL,
		[ActionName]               [nvarchar](200) NOT NULL,
		[ActionParameters]         [nvarchar](max) NULL,
		[ActionDescription]        [nvarchar](max) NULL,
		[ActionAssemblyName]       [nvarchar](200) NOT NULL,
		[ActionClass]              [nvarchar](200) NOT NULL,
		[ActionResourceID]         [int] NULL,
		[ActionThumbnailGUID]      [uniqueidentifier] NULL,
		[ActionGUID]               [uniqueidentifier] NOT NULL,
		[ActionLastModified]       [datetime] NOT NULL,
		[ActionEnabled]            [bit] NOT NULL,
		[ActionAllowedObjects]     [nvarchar](max) NULL,
		[ActionIconGUID]           [uniqueidentifier] NULL,
		[ActionWorkflowType]       [int] NULL
)  
ALTER TABLE [CMS_WorkflowAction]
	ADD
	CONSTRAINT [PK_CMS_WorkflowAction]
	PRIMARY KEY
	CLUSTERED
	([ActionID])
	
ALTER TABLE [CMS_WorkflowAction]
	ADD
	CONSTRAINT [DEFAULT_CMS_WorkflowAction_ActionEnabled]
	DEFAULT ((1)) FOR [ActionEnabled]
ALTER TABLE [CMS_WorkflowAction]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_WorkflowAction_ActionResourceID]
	FOREIGN KEY ([ActionResourceID]) REFERENCES [CMS_Resource] ([ResourceID])
ALTER TABLE [CMS_WorkflowAction]
	CHECK CONSTRAINT [FK_CMS_WorkflowAction_ActionResourceID]
