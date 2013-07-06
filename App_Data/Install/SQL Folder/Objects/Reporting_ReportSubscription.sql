CREATE TABLE [Reporting_ReportSubscription] (
		[ReportSubscriptionID]               [int] IDENTITY(1, 1) NOT NULL,
		[ReportSubscriptionReportID]         [int] NOT NULL,
		[ReportSubscriptionInterval]         [nvarchar](1000) NOT NULL,
		[ReportSubscriptionCondition]        [nvarchar](max) NULL,
		[ReportSubscriptionEnabled]          [bit] NOT NULL,
		[ReportSubscriptionParameters]       [nvarchar](max) NULL,
		[ReportSubscriptionGUID]             [uniqueidentifier] NOT NULL,
		[ReportSubscriptionLastModified]     [datetime] NOT NULL,
		[ReportSubscriptionSubject]          [nvarchar](200) NULL,
		[ReportSubscriptionGraphID]          [int] NULL,
		[ReportSubscriptionTableID]          [int] NULL,
		[ReportSubscriptionValueID]          [int] NULL,
		[ReportSubscriptionUserID]           [int] NOT NULL,
		[ReportSubscriptionEmail]            [nvarchar](400) NOT NULL,
		[ReportSubscriptionOnlyNonEmpty]     [bit] NOT NULL,
		[ReportSubscriptionLastPostDate]     [datetime] NULL,
		[ReportSubscriptionNextPostDate]     [datetime] NULL,
		[ReportSubscriptionSiteID]           [int] NOT NULL,
		[ReportSubscriptionSettings]         [nvarchar](max) NULL
)  
ALTER TABLE [Reporting_ReportSubscription]
	ADD
	CONSTRAINT [PK_Reporting_ReportSubscription]
	PRIMARY KEY
	CLUSTERED
	([ReportSubscriptionID])
	
ALTER TABLE [Reporting_ReportSubscription]
	ADD
	CONSTRAINT [DEFAULT_Reporting_ReportSubscription_ReportSubscriptionEnabled]
	DEFAULT ((1)) FOR [ReportSubscriptionEnabled]
ALTER TABLE [Reporting_ReportSubscription]
	ADD
	CONSTRAINT [DEFAULT_Reporting_ReportSubscription_ReportSubscriptionInterval]
	DEFAULT ('') FOR [ReportSubscriptionInterval]
ALTER TABLE [Reporting_ReportSubscription]
	ADD
	CONSTRAINT [DEFAULT_Reporting_ReportSubscription_ReportSubscriptionLastModified]
	DEFAULT ('3/9/2012 11:17:19 AM') FOR [ReportSubscriptionLastModified]
ALTER TABLE [Reporting_ReportSubscription]
	ADD
	CONSTRAINT [DEFAULT_Reporting_ReportSubscription_ReportSubscriptionOnlyNonEmpty]
	DEFAULT ((1)) FOR [ReportSubscriptionOnlyNonEmpty]
CREATE NONCLUSTERED INDEX [IX_Reporting_ReportSubscription_ReportSubscriptionGraphID]
	ON [Reporting_ReportSubscription] ([ReportSubscriptionGraphID])
	
CREATE NONCLUSTERED INDEX [IX_Reporting_ReportSubscription_ReportSubscriptionReportID]
	ON [Reporting_ReportSubscription] ([ReportSubscriptionReportID])
	
CREATE NONCLUSTERED INDEX [IX_Reporting_ReportSubscription_ReportSubscriptionSiteID]
	ON [Reporting_ReportSubscription] ([ReportSubscriptionSiteID])
	
CREATE NONCLUSTERED INDEX [IX_Reporting_ReportSubscription_ReportSubscriptionTableID]
	ON [Reporting_ReportSubscription] ([ReportSubscriptionTableID])
	
CREATE NONCLUSTERED INDEX [IX_Reporting_ReportSubscription_ReportSubscriptionValueID]
	ON [Reporting_ReportSubscription] ([ReportSubscriptionValueID])
	
ALTER TABLE [Reporting_ReportSubscription]
	WITH CHECK
	ADD CONSTRAINT [FK_Reporting_ReportSubscription_ReportSubscriptionGraphID_Reporting_ReportGraph]
	FOREIGN KEY ([ReportSubscriptionGraphID]) REFERENCES [Reporting_ReportGraph] ([GraphID])
ALTER TABLE [Reporting_ReportSubscription]
	CHECK CONSTRAINT [FK_Reporting_ReportSubscription_ReportSubscriptionGraphID_Reporting_ReportGraph]
ALTER TABLE [Reporting_ReportSubscription]
	WITH CHECK
	ADD CONSTRAINT [FK_Reporting_ReportSubscription_ReportSubscriptionReportID_Reporting_Report]
	FOREIGN KEY ([ReportSubscriptionReportID]) REFERENCES [Reporting_Report] ([ReportID])
ALTER TABLE [Reporting_ReportSubscription]
	CHECK CONSTRAINT [FK_Reporting_ReportSubscription_ReportSubscriptionReportID_Reporting_Report]
ALTER TABLE [Reporting_ReportSubscription]
	WITH CHECK
	ADD CONSTRAINT [FK_Reporting_ReportSubscription_ReportSubscriptionSiteID_CMS_Site]
	FOREIGN KEY ([ReportSubscriptionSiteID]) REFERENCES [CMS_Site] ([SiteID])
ALTER TABLE [Reporting_ReportSubscription]
	CHECK CONSTRAINT [FK_Reporting_ReportSubscription_ReportSubscriptionSiteID_CMS_Site]
ALTER TABLE [Reporting_ReportSubscription]
	WITH CHECK
	ADD CONSTRAINT [FK_Reporting_ReportSubscription_ReportSubscriptionTableID_Reporting_ReportTable]
	FOREIGN KEY ([ReportSubscriptionTableID]) REFERENCES [Reporting_ReportTable] ([TableID])
ALTER TABLE [Reporting_ReportSubscription]
	CHECK CONSTRAINT [FK_Reporting_ReportSubscription_ReportSubscriptionTableID_Reporting_ReportTable]
ALTER TABLE [Reporting_ReportSubscription]
	WITH CHECK
	ADD CONSTRAINT [FK_Reporting_ReportSubscription_ReportSubscriptionUserID_CMS_User]
	FOREIGN KEY ([ReportSubscriptionUserID]) REFERENCES [CMS_User] ([UserID])
ALTER TABLE [Reporting_ReportSubscription]
	CHECK CONSTRAINT [FK_Reporting_ReportSubscription_ReportSubscriptionUserID_CMS_User]
ALTER TABLE [Reporting_ReportSubscription]
	WITH CHECK
	ADD CONSTRAINT [FK_Reporting_ReportSubscription_ReportSubscriptionValueID_Reporting_ReportValue]
	FOREIGN KEY ([ReportSubscriptionValueID]) REFERENCES [Reporting_ReportValue] ([ValueID])
ALTER TABLE [Reporting_ReportSubscription]
	CHECK CONSTRAINT [FK_Reporting_ReportSubscription_ReportSubscriptionValueID_Reporting_ReportValue]
