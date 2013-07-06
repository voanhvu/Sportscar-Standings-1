CREATE TABLE [Chat_Message] (
		[ChatMessageID]                    [int] IDENTITY(1, 1) NOT NULL,
		[ChatMessageCreatedWhen]           [datetime] NOT NULL,
		[ChatMessageIPAddress]             [nvarchar](max) NOT NULL,
		[ChatMessageUserID]                [int] NULL,
		[ChatMessageRoomID]                [int] NOT NULL,
		[ChatMessageRejected]              [bit] NOT NULL,
		[ChatMessageLastModified]          [datetime] NOT NULL,
		[ChatMessageText]                  [nvarchar](max) NOT NULL,
		[ChatMessageSystemMessageType]     [int] NOT NULL,
		[ChatMessageRecipientID]           [int] NULL
)  
ALTER TABLE [Chat_Message]
	ADD
	CONSTRAINT [PK_CMS_ChatMessage]
	PRIMARY KEY
	CLUSTERED
	([ChatMessageID])
	
ALTER TABLE [Chat_Message]
	ADD
	CONSTRAINT [DEFAULT_CMS_ChatMessage_ChatMessageCreatedWhen]
	DEFAULT ('7/25/2011 2:47:18 PM') FOR [ChatMessageCreatedWhen]
ALTER TABLE [Chat_Message]
	ADD
	CONSTRAINT [DEFAULT_CMS_ChatMessage_ChatMessageIPAddress]
	DEFAULT ('') FOR [ChatMessageIPAddress]
ALTER TABLE [Chat_Message]
	ADD
	CONSTRAINT [DEFAULT_CMS_ChatMessage_ChatMessageLastModified]
	DEFAULT ('8/3/2011 11:24:54 AM') FOR [ChatMessageLastModified]
ALTER TABLE [Chat_Message]
	ADD
	CONSTRAINT [DEFAULT_CMS_ChatMessage_ChatMessageRejected]
	DEFAULT ((0)) FOR [ChatMessageRejected]
ALTER TABLE [Chat_Message]
	ADD
	CONSTRAINT [DEFAULT_CMS_ChatMessage_ChatMessageRoomID]
	DEFAULT ((0)) FOR [ChatMessageRoomID]
ALTER TABLE [Chat_Message]
	ADD
	CONSTRAINT [DEFAULT_CMS_ChatMessage_ChatMessageSystemMessageType]
	DEFAULT ((0)) FOR [ChatMessageSystemMessageType]
ALTER TABLE [Chat_Message]
	ADD
	CONSTRAINT [DEFAULT_CMS_ChatMessage_ChatMessageText]
	DEFAULT ('') FOR [ChatMessageText]
CREATE NONCLUSTERED INDEX [IX_Chat_Message_ChatMessageLastModified]
	ON [Chat_Message] ([ChatMessageLastModified])
	
CREATE NONCLUSTERED INDEX [IX_Chat_Message_ChatMessageRoomID]
	ON [Chat_Message] ([ChatMessageRoomID])
	
CREATE NONCLUSTERED INDEX [IX_Chat_Message_ChatMessageSystemMessageType]
	ON [Chat_Message] ([ChatMessageSystemMessageType])
	
ALTER TABLE [Chat_Message]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_Message_Chat_Room]
	FOREIGN KEY ([ChatMessageRoomID]) REFERENCES [Chat_Room] ([ChatRoomID])
	ON DELETE CASCADE
ALTER TABLE [Chat_Message]
	CHECK CONSTRAINT [FK_Chat_Message_Chat_Room]
ALTER TABLE [Chat_Message]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_Message_Chat_User-Recipient]
	FOREIGN KEY ([ChatMessageRecipientID]) REFERENCES [Chat_User] ([ChatUserID])
ALTER TABLE [Chat_Message]
	CHECK CONSTRAINT [FK_Chat_Message_Chat_User-Recipient]
ALTER TABLE [Chat_Message]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_Message_Chat_User-Sender]
	FOREIGN KEY ([ChatMessageUserID]) REFERENCES [Chat_User] ([ChatUserID])
	ON DELETE CASCADE
ALTER TABLE [Chat_Message]
	CHECK CONSTRAINT [FK_Chat_Message_Chat_User-Sender]
