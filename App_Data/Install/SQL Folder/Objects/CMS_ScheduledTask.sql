CREATE TABLE [CMS_ScheduledTask] (
		[TaskID]                       [int] IDENTITY(1, 1) NOT NULL,
		[TaskName]                     [nvarchar](200) NOT NULL,
		[TaskDisplayName]              [nvarchar](200) NOT NULL,
		[TaskAssemblyName]             [nvarchar](200) NOT NULL,
		[TaskClass]                    [nvarchar](200) NULL,
		[TaskInterval]                 [nvarchar](1000) NOT NULL,
		[TaskData]                     [nvarchar](max) NOT NULL,
		[TaskLastRunTime]              [datetime] NULL,
		[TaskNextRunTime]              [datetime] NULL,
		[TaskProgress]                 [int] NULL,
		[TaskLastResult]               [nvarchar](max) NULL,
		[TaskEnabled]                  [bit] NOT NULL,
		[TaskSiteID]                   [int] NULL,
		[TaskDeleteAfterLastRun]       [bit] NULL,
		[TaskServerName]               [nvarchar](100) NULL,
		[TaskGUID]                     [uniqueidentifier] NOT NULL,
		[TaskLastModified]             [datetime] NOT NULL,
		[TaskExecutions]               [int] NULL,
		[TaskResourceID]               [int] NULL,
		[TaskRunInSeparateThread]      [bit] NULL,
		[TaskUseExternalService]       [bit] NULL,
		[TaskAllowExternalService]     [bit] NULL,
		[TaskLastExecutionReset]       [datetime] NULL,
		[TaskCondition]                [nvarchar](400) NULL,
		[TaskRunIndividually]          [bit] NULL,
		[TaskUserID]                   [int] NULL,
		[TaskType]                     [int] NULL,
		[TaskObjectType]               [nvarchar](100) NULL,
		[TaskObjectID]                 [int] NULL
)  
ALTER TABLE [CMS_ScheduledTask]
	ADD
	CONSTRAINT [PK_CMS_ScheduledTask]
	PRIMARY KEY
	NONCLUSTERED
	([TaskID])
	WITH FILLFACTOR=80
	
ALTER TABLE [CMS_ScheduledTask]
	ADD
	CONSTRAINT [DEFAULT_CMS_ScheduledTask_TaskAllowExternalService]
	DEFAULT ((0)) FOR [TaskAllowExternalService]
CREATE CLUSTERED INDEX [IX_CMS_ScheduledTask_TaskNextRunTime_TaskEnabled_TaskServerName]
	ON [CMS_ScheduledTask] ([TaskNextRunTime], [TaskEnabled], [TaskServerName])
	WITH ( FILLFACTOR = 80)
	
CREATE NONCLUSTERED INDEX [IX_CMS_ScheduledTask_TaskSiteID_TaskDisplayName]
	ON [CMS_ScheduledTask] ([TaskSiteID], [TaskDisplayName])
	WITH ( FILLFACTOR = 80)
	
ALTER TABLE [CMS_ScheduledTask]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_ScheduledTask_TaskResourceID_CMS_Resource]
	FOREIGN KEY ([TaskResourceID]) REFERENCES [CMS_Resource] ([ResourceID])
ALTER TABLE [CMS_ScheduledTask]
	CHECK CONSTRAINT [FK_CMS_ScheduledTask_TaskResourceID_CMS_Resource]
ALTER TABLE [CMS_ScheduledTask]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_ScheduledTask_TaskSiteID_CMS_Site]
	FOREIGN KEY ([TaskSiteID]) REFERENCES [CMS_Site] ([SiteID])
ALTER TABLE [CMS_ScheduledTask]
	CHECK CONSTRAINT [FK_CMS_ScheduledTask_TaskSiteID_CMS_Site]
ALTER TABLE [CMS_ScheduledTask]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_ScheduledTask_TaskUserID_CMS_User]
	FOREIGN KEY ([TaskUserID]) REFERENCES [CMS_User] ([UserID])
ALTER TABLE [CMS_ScheduledTask]
	CHECK CONSTRAINT [FK_CMS_ScheduledTask_TaskUserID_CMS_User]
