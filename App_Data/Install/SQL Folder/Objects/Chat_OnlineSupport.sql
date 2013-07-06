CREATE TABLE [Chat_OnlineSupport] (
		[ChatOnlineSupportID]               [int] IDENTITY(1, 1) NOT NULL,
		[ChatOnlineSupportChatUserID]       [int] NOT NULL,
		[ChatOnlineSupportLastChecking]     [datetime] NOT NULL,
		[ChatOnlineSupportSiteID]           [int] NOT NULL,
		[ChatOnlineSupportToken]            [nvarchar](50) NULL
) 
ALTER TABLE [Chat_OnlineSupport]
	ADD
	CONSTRAINT [PK_Chat_OnlineSupport]
	PRIMARY KEY
	CLUSTERED
	([ChatOnlineSupportID])
	
CREATE NONCLUSTERED INDEX [IX_Chat_OnlineSupport_SiteID]
	ON [Chat_OnlineSupport] ([ChatOnlineSupportSiteID])
	
ALTER TABLE [Chat_OnlineSupport]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_OnlineSupport_Chat_User]
	FOREIGN KEY ([ChatOnlineSupportChatUserID]) REFERENCES [Chat_User] ([ChatUserID])
	ON DELETE CASCADE
ALTER TABLE [Chat_OnlineSupport]
	CHECK CONSTRAINT [FK_Chat_OnlineSupport_Chat_User]
ALTER TABLE [Chat_OnlineSupport]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_OnlineSupport_CMS_Site]
	FOREIGN KEY ([ChatOnlineSupportSiteID]) REFERENCES [CMS_Site] ([SiteID])
ALTER TABLE [Chat_OnlineSupport]
	CHECK CONSTRAINT [FK_Chat_OnlineSupport_CMS_Site]
