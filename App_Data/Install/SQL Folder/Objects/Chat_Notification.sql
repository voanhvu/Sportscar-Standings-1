CREATE TABLE [Chat_Notification] (
		[ChatNotificationID]               [int] IDENTITY(1, 1) NOT NULL,
		[ChatNotificationSenderID]         [int] NOT NULL,
		[ChatNotificationReceiverID]       [int] NOT NULL,
		[ChatNotificationIsRead]           [bit] NOT NULL,
		[ChatNotificationType]             [int] NOT NULL,
		[ChatNotificationRoomID]           [int] NULL,
		[ChatNotificationSendDateTime]     [datetime] NOT NULL,
		[ChatNotificationReadDateTime]     [datetime] NULL,
		[ChatNotificationSiteID]           [int] NULL
) 
ALTER TABLE [Chat_Notification]
	ADD
	CONSTRAINT [PK_CMS_ChatNotification]
	PRIMARY KEY
	CLUSTERED
	([ChatNotificationID])
	
ALTER TABLE [Chat_Notification]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_Notification_Chat_Room]
	FOREIGN KEY ([ChatNotificationRoomID]) REFERENCES [Chat_Room] ([ChatRoomID])
	ON DELETE CASCADE
ALTER TABLE [Chat_Notification]
	CHECK CONSTRAINT [FK_Chat_Notification_Chat_Room]
ALTER TABLE [Chat_Notification]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_Notification_Chat_User-Receiver]
	FOREIGN KEY ([ChatNotificationReceiverID]) REFERENCES [Chat_User] ([ChatUserID])
ALTER TABLE [Chat_Notification]
	CHECK CONSTRAINT [FK_Chat_Notification_Chat_User-Receiver]
ALTER TABLE [Chat_Notification]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_Notification_Chat_User-Sender]
	FOREIGN KEY ([ChatNotificationSenderID]) REFERENCES [Chat_User] ([ChatUserID])
	ON DELETE CASCADE
ALTER TABLE [Chat_Notification]
	CHECK CONSTRAINT [FK_Chat_Notification_Chat_User-Sender]
ALTER TABLE [Chat_Notification]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_Notification_CMS_Site]
	FOREIGN KEY ([ChatNotificationSiteID]) REFERENCES [CMS_Site] ([SiteID])
ALTER TABLE [Chat_Notification]
	CHECK CONSTRAINT [FK_Chat_Notification_CMS_Site]
