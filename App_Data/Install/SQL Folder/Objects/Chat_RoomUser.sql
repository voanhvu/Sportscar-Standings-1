CREATE TABLE [Chat_RoomUser] (
		[ChatRoomUserID]                   [int] IDENTITY(1, 1) NOT NULL,
		[ChatRoomUserRoomID]               [int] NOT NULL,
		[ChatRoomUserChatUserID]           [int] NOT NULL,
		[ChatRoomUserLastChecking]         [datetime] NULL,
		[ChatRoomUserKickExpiration]       [datetime] NULL,
		[ChatRoomUserJoinTime]             [datetime] NULL,
		[ChatRoomUserLeaveTime]            [datetime] NULL,
		[ChatRoomUserAdminLevel]           [int] NOT NULL,
		[ChatRoomUserLastModification]     [datetime] NOT NULL
) 
ALTER TABLE [Chat_RoomUser]
	ADD
	CONSTRAINT [PK_CMS_ChatRoomUser]
	PRIMARY KEY
	CLUSTERED
	([ChatRoomUserID])
	
ALTER TABLE [Chat_RoomUser]
	ADD
	CONSTRAINT [DEFAULT_Chat_RoomUser_ChatRoomUserLastModification]
	DEFAULT ('11/10/2011 3:29:00 PM') FOR [ChatRoomUserLastModification]
ALTER TABLE [Chat_RoomUser]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_RoomUser_Chat_Room]
	FOREIGN KEY ([ChatRoomUserRoomID]) REFERENCES [Chat_Room] ([ChatRoomID])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [Chat_RoomUser]
	CHECK CONSTRAINT [FK_Chat_RoomUser_Chat_Room]
ALTER TABLE [Chat_RoomUser]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_RoomUser_Chat_User]
	FOREIGN KEY ([ChatRoomUserChatUserID]) REFERENCES [Chat_User] ([ChatUserID])
	ON DELETE CASCADE
ALTER TABLE [Chat_RoomUser]
	CHECK CONSTRAINT [FK_Chat_RoomUser_Chat_User]
