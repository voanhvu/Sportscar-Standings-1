CREATE TABLE [CMS_WorkflowStepUser] (
		[WorkflowStepUserID]      [int] IDENTITY(1, 1) NOT NULL,
		[StepID]                  [int] NOT NULL,
		[UserID]                  [int] NOT NULL,
		[StepSourcePointGUID]     [uniqueidentifier] NULL
) 
ALTER TABLE [CMS_WorkflowStepUser]
	ADD
	CONSTRAINT [PK_CMS_WorkflowStepUser]
	PRIMARY KEY
	NONCLUSTERED
	([WorkflowStepUserID])
	
CREATE UNIQUE CLUSTERED INDEX [IX_CMS_WorkflowStepUser_StepID_StepSourcePointGUID_UserID]
	ON [CMS_WorkflowStepUser] ([StepID], [StepSourcePointGUID], [UserID])
	
ALTER TABLE [CMS_WorkflowStepUser]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_WorkflowStepUser_StepID_CMS_WorkflowStep]
	FOREIGN KEY ([StepID]) REFERENCES [CMS_WorkflowStep] ([StepID])
ALTER TABLE [CMS_WorkflowStepUser]
	CHECK CONSTRAINT [FK_CMS_WorkflowStepUser_StepID_CMS_WorkflowStep]
ALTER TABLE [CMS_WorkflowStepUser]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_WorkflowStepUser_UserID_CMS_User]
	FOREIGN KEY ([UserID]) REFERENCES [CMS_User] ([UserID])
ALTER TABLE [CMS_WorkflowStepUser]
	CHECK CONSTRAINT [FK_CMS_WorkflowStepUser_UserID_CMS_User]
