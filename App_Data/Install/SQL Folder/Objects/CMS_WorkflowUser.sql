CREATE TABLE [CMS_WorkflowUser] (
		[WorkflowID]     [int] NOT NULL,
		[UserID]         [int] NOT NULL
) 
ALTER TABLE [CMS_WorkflowUser]
	ADD
	CONSTRAINT [PK_CMS_WorkflowUser_1]
	PRIMARY KEY
	CLUSTERED
	([WorkflowID], [UserID])
	
ALTER TABLE [CMS_WorkflowUser]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_WorkflowUser_UserID_CMS_User]
	FOREIGN KEY ([UserID]) REFERENCES [CMS_User] ([UserID])
ALTER TABLE [CMS_WorkflowUser]
	CHECK CONSTRAINT [FK_CMS_WorkflowUser_UserID_CMS_User]
ALTER TABLE [CMS_WorkflowUser]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_WorkflowUser_WorkflowID_CMS_Workflow]
	FOREIGN KEY ([WorkflowID]) REFERENCES [CMS_Workflow] ([WorkflowID])
ALTER TABLE [CMS_WorkflowUser]
	CHECK CONSTRAINT [FK_CMS_WorkflowUser_WorkflowID_CMS_Workflow]
