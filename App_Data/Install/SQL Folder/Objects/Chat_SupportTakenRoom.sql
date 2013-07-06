CREATE TABLE [Chat_SupportTakenRoom] (
		[ChatSupportTakenRoomID]                   [int] IDENTITY(1, 1) NOT NULL,
		[ChatSupportTakenRoomChatUserID]           [int] NULL,
		[ChatSupportTakenRoomRoomID]               [int] NOT NULL,
		[ChatSupportTakenRoomResolvedDateTime]     [datetime] NULL,
		[ChatSupportTakenRoomLastModification]     [datetime] NOT NULL
) 
ALTER TABLE [Chat_SupportTakenRoom]
	ADD
	CONSTRAINT [PK_Chat_SupportTakenRooms]
	PRIMARY KEY
	CLUSTERED
	([ChatSupportTakenRoomID])
	
ALTER TABLE [Chat_SupportTakenRoom]
	ADD
	CONSTRAINT [DEFAULT_Chat_SupportTakenRoom_ChatSupportTakenRoomLastModification]
	DEFAULT ('4/16/2012 5:11:30 PM') FOR [ChatSupportTakenRoomLastModification]
ALTER TABLE [Chat_SupportTakenRoom]
	ADD
	CONSTRAINT [DEFAULT_Chat_SupportTakenRoom_ChatSupportTakenRoomRoomID]
	DEFAULT ((0)) FOR [ChatSupportTakenRoomRoomID]
ALTER TABLE [Chat_SupportTakenRoom]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_SupportTakenRoom_Chat_Room]
	FOREIGN KEY ([ChatSupportTakenRoomRoomID]) REFERENCES [Chat_Room] ([ChatRoomID])
	ON DELETE CASCADE
ALTER TABLE [Chat_SupportTakenRoom]
	CHECK CONSTRAINT [FK_Chat_SupportTakenRoom_Chat_Room]
ALTER TABLE [Chat_SupportTakenRoom]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_SupportTakenRoom_Chat_User]
	FOREIGN KEY ([ChatSupportTakenRoomChatUserID]) REFERENCES [Chat_User] ([ChatUserID])
ALTER TABLE [Chat_SupportTakenRoom]
	CHECK CONSTRAINT [FK_Chat_SupportTakenRoom_Chat_User]
