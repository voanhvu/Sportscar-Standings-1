CREATE TABLE [Chat_SupportCannedResponse] (
		[ChatSupportCannedResponseID]             [int] IDENTITY(1, 1) NOT NULL,
		[ChatSupportCannedResponseChatUserID]     [int] NULL,
		[ChatSupportCannedResponseText]           [nvarchar](500) NOT NULL,
		[ChatSupportCannedResponseTagName]        [nvarchar](50) NOT NULL,
		[ChatSupportCannedResponseSiteID]         [int] NULL,
		[ChatSupportCannedResponseName]           [nvarchar](100) NOT NULL
) 
ALTER TABLE [Chat_SupportCannedResponse]
	ADD
	CONSTRAINT [PK_CMS_ChatSupportCannedResponse]
	PRIMARY KEY
	CLUSTERED
	([ChatSupportCannedResponseID])
	
ALTER TABLE [Chat_SupportCannedResponse]
	ADD
	CONSTRAINT [DEFAULT_CMS_ChatSupportCannedResponse_ChatSupportCannedResponseTagName]
	DEFAULT ('') FOR [ChatSupportCannedResponseTagName]
ALTER TABLE [Chat_SupportCannedResponse]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_SupportCannedResponse_Chat_User]
	FOREIGN KEY ([ChatSupportCannedResponseChatUserID]) REFERENCES [Chat_User] ([ChatUserID])
	ON DELETE CASCADE
ALTER TABLE [Chat_SupportCannedResponse]
	CHECK CONSTRAINT [FK_Chat_SupportCannedResponse_Chat_User]
ALTER TABLE [Chat_SupportCannedResponse]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_SupportCannedResponse_CMS_Site]
	FOREIGN KEY ([ChatSupportCannedResponseSiteID]) REFERENCES [CMS_Site] ([SiteID])
ALTER TABLE [Chat_SupportCannedResponse]
	CHECK CONSTRAINT [FK_Chat_SupportCannedResponse_CMS_Site]
