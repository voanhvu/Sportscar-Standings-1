CREATE TABLE [Chat_InitiatedChatRequest] (
		[InitiatedChatRequestID]                      [int] IDENTITY(1, 1) NOT NULL,
		[InitiatedChatRequestUserID]                  [int] NULL,
		[InitiatedChatRequestContactID]               [int] NULL,
		[InitiatedChatRequestRoomID]                  [int] NOT NULL,
		[InitiatedChatRequestState]                   [int] NOT NULL,
		[InitiatedChatRequestInitiatorName]           [nvarchar](100) NOT NULL,
		[InitiatedChatRequestInitiatorChatUserID]     [int] NOT NULL,
		[InitiatedChatRequestLastModification]        [datetime] NOT NULL
) 
ALTER TABLE [Chat_InitiatedChatRequest]
	ADD
	CONSTRAINT [PK_Chat_InitiatedChatRequest]
	PRIMARY KEY
	CLUSTERED
	([InitiatedChatRequestID])
	
ALTER TABLE [Chat_InitiatedChatRequest]
	ADD
	CONSTRAINT [DEFAULT_Chat_InitiatedChatRequest_InitiatedChatRequestState]
	DEFAULT ((1)) FOR [InitiatedChatRequestState]
ALTER TABLE [Chat_InitiatedChatRequest]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_InitiatedChatRequest_Chat_Room]
	FOREIGN KEY ([InitiatedChatRequestRoomID]) REFERENCES [Chat_Room] ([ChatRoomID])
	ON DELETE CASCADE
ALTER TABLE [Chat_InitiatedChatRequest]
	CHECK CONSTRAINT [FK_Chat_InitiatedChatRequest_Chat_Room]
ALTER TABLE [Chat_InitiatedChatRequest]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_InitiatedChatRequest_Chat_User]
	FOREIGN KEY ([InitiatedChatRequestInitiatorChatUserID]) REFERENCES [Chat_User] ([ChatUserID])
ALTER TABLE [Chat_InitiatedChatRequest]
	CHECK CONSTRAINT [FK_Chat_InitiatedChatRequest_Chat_User]
ALTER TABLE [Chat_InitiatedChatRequest]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_InitiatedChatRequest_CMS_User]
	FOREIGN KEY ([InitiatedChatRequestUserID]) REFERENCES [CMS_User] ([UserID])
ALTER TABLE [Chat_InitiatedChatRequest]
	CHECK CONSTRAINT [FK_Chat_InitiatedChatRequest_CMS_User]
