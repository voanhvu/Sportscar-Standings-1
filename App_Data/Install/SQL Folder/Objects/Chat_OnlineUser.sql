CREATE TABLE [Chat_OnlineUser] (
		[ChatOnlineUserID]               [int] IDENTITY(1, 1) NOT NULL,
		[ChatOnlineUserSiteID]           [int] NOT NULL,
		[ChatOnlineUserLastChecking]     [datetime] NULL,
		[ChatOnlineUserChatUserID]       [int] NOT NULL,
		[ChatOnlineUserJoinTime]         [datetime] NULL,
		[ChatOnlineUserLeaveTime]        [datetime] NULL,
		[ChatOnlineUserToken]            [nvarchar](50) NULL,
		[ChatOnlineUserIsHidden]         [bit] NOT NULL
) 
ALTER TABLE [Chat_OnlineUser]
	ADD
	CONSTRAINT [PK_Chat_OnlineUser]
	PRIMARY KEY
	CLUSTERED
	([ChatOnlineUserID])
	
ALTER TABLE [Chat_OnlineUser]
	ADD
	CONSTRAINT [DEFAULT_Chat_OnlineUser_ChatOnlineUserIsHidden]
	DEFAULT ((0)) FOR [ChatOnlineUserIsHidden]
CREATE NONCLUSTERED INDEX [IX_Chat_OnlineUser_SiteID]
	ON [Chat_OnlineUser] ([ChatOnlineUserSiteID])
	
ALTER TABLE [Chat_OnlineUser]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_OnlineUser_Chat_User]
	FOREIGN KEY ([ChatOnlineUserChatUserID]) REFERENCES [Chat_User] ([ChatUserID])
	ON DELETE CASCADE
ALTER TABLE [Chat_OnlineUser]
	CHECK CONSTRAINT [FK_Chat_OnlineUser_Chat_User]
ALTER TABLE [Chat_OnlineUser]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_OnlineUser_CMS_Site]
	FOREIGN KEY ([ChatOnlineUserSiteID]) REFERENCES [CMS_Site] ([SiteID])
	ON DELETE CASCADE
ALTER TABLE [Chat_OnlineUser]
	CHECK CONSTRAINT [FK_Chat_OnlineUser_CMS_Site]
