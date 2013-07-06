CREATE TABLE [Chat_User] (
		[ChatUserID]                   [int] IDENTITY(1, 1) NOT NULL,
		[ChatUserUserID]               [int] NULL,
		[ChatUserNickname]             [nvarchar](50) NOT NULL,
		[ChatUserLastModification]     [datetime] NOT NULL
) 
ALTER TABLE [Chat_User]
	ADD
	CONSTRAINT [PK_CMS_ChatUser]
	PRIMARY KEY
	CLUSTERED
	([ChatUserID])
	
ALTER TABLE [Chat_User]
	ADD
	CONSTRAINT [DEFAULT_Chat_User_ChatUserLastModification]
	DEFAULT ('2/20/2012 2:02:00 PM') FOR [ChatUserLastModification]
ALTER TABLE [Chat_User]
	ADD
	CONSTRAINT [DEFAULT_CMS_ChatUser_ChatUserNickname]
	DEFAULT ('') FOR [ChatUserNickname]
CREATE NONCLUSTERED INDEX [IX_Chat_User_UserID]
	ON [Chat_User] ([ChatUserUserID])
	
ALTER TABLE [Chat_User]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_User_CMS_User]
	FOREIGN KEY ([ChatUserUserID]) REFERENCES [CMS_User] ([UserID])
ALTER TABLE [Chat_User]
	CHECK CONSTRAINT [FK_Chat_User_CMS_User]
