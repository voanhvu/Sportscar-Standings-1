CREATE TABLE [CMS_ObjectSettings] (
		[ObjectSettingsID]                     [int] IDENTITY(1, 1) NOT NULL,
		[ObjectTags]                           [nvarchar](max) NULL,
		[ObjectCheckedOutByUserID]             [int] NULL,
		[ObjectCheckedOutWhen]                 [datetime] NULL,
		[ObjectCheckedOutVersionHistoryID]     [int] NULL,
		[ObjectWorkflowStepID]                 [int] NULL,
		[ObjectPublishedVersionHistoryID]      [int] NULL,
		[ObjectSettingsObjectID]               [int] NOT NULL,
		[ObjectSettingsObjectType]             [nvarchar](100) NOT NULL,
		[ObjectComments]                       [nvarchar](max) NULL,
		[ObjectWorkflowSendEmails]             [bit] NULL
)  
ALTER TABLE [CMS_ObjectSettings]
	ADD
	CONSTRAINT [PK_CMS_ObjectSettings]
	PRIMARY KEY
	CLUSTERED
	([ObjectSettingsID])
	
ALTER TABLE [CMS_ObjectSettings]
	ADD
	CONSTRAINT [DEFAULT_CMS_ObjectSettings_ObjectSettingsObjectID]
	DEFAULT ((0)) FOR [ObjectSettingsObjectID]
ALTER TABLE [CMS_ObjectSettings]
	ADD
	CONSTRAINT [DEFAULT_CMS_ObjectSettings_ObjectSettingsObjectType]
	DEFAULT ('') FOR [ObjectSettingsObjectType]
ALTER TABLE [CMS_ObjectSettings]
	ADD
	CONSTRAINT [DEFAULT_CMS_ObjectSettings_ObjectWorkflowSendEmails]
	DEFAULT ((1)) FOR [ObjectWorkflowSendEmails]
CREATE UNIQUE NONCLUSTERED INDEX [IX_CMS_ObjectSettings_ObjectSettingsObjectType_ObjectSettingsObjectID]
	ON [CMS_ObjectSettings] ([ObjectSettingsObjectID], [ObjectSettingsObjectType])
	
ALTER TABLE [CMS_ObjectSettings]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_ObjectSettings_ObjectCheckedOutByUserID_CMS_User]
	FOREIGN KEY ([ObjectCheckedOutByUserID]) REFERENCES [CMS_User] ([UserID])
ALTER TABLE [CMS_ObjectSettings]
	CHECK CONSTRAINT [FK_CMS_ObjectSettings_ObjectCheckedOutByUserID_CMS_User]
ALTER TABLE [CMS_ObjectSettings]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_ObjectSettings_ObjectCheckedOutVersionHistoryID_CMS_ObjectVersionHistory]
	FOREIGN KEY ([ObjectCheckedOutVersionHistoryID]) REFERENCES [CMS_ObjectVersionHistory] ([VersionID])
ALTER TABLE [CMS_ObjectSettings]
	CHECK CONSTRAINT [FK_CMS_ObjectSettings_ObjectCheckedOutVersionHistoryID_CMS_ObjectVersionHistory]
ALTER TABLE [CMS_ObjectSettings]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_ObjectSettings_ObjectPublishedVersionHistoryID_CMS_ObjectVersionHistory]
	FOREIGN KEY ([ObjectPublishedVersionHistoryID]) REFERENCES [CMS_ObjectVersionHistory] ([VersionID])
ALTER TABLE [CMS_ObjectSettings]
	CHECK CONSTRAINT [FK_CMS_ObjectSettings_ObjectPublishedVersionHistoryID_CMS_ObjectVersionHistory]
ALTER TABLE [CMS_ObjectSettings]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_ObjectSettings_ObjectWorkflowStepID_CMS_WorkflowStep]
	FOREIGN KEY ([ObjectWorkflowStepID]) REFERENCES [CMS_WorkflowStep] ([StepID])
ALTER TABLE [CMS_ObjectSettings]
	CHECK CONSTRAINT [FK_CMS_ObjectSettings_ObjectWorkflowStepID_CMS_WorkflowStep]
