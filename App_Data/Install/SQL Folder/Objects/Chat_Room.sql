CREATE TABLE [Chat_Room] (
		[ChatRoomID]                               [int] IDENTITY(1, 1) NOT NULL,
		[ChatRoomName]                             [nvarchar](100) NOT NULL,
		[ChatRoomDisplayName]                      [nvarchar](100) NOT NULL,
		[ChatRoomSiteID]                           [int] NULL,
		[ChatRoomEnabled]                          [bit] NOT NULL,
		[ChatRoomPrivate]                          [bit] NOT NULL,
		[ChatRoomAllowAnonym]                      [bit] NOT NULL,
		[ChatRoomCreatedWhen]                      [datetime] NOT NULL,
		[ChatRoomPassword]                         [nvarchar](100) NULL,
		[ChatRoomCreatedByChatUserID]              [int] NULL,
		[ChatRoomIsSupport]                        [bit] NOT NULL,
		[ChatRoomIsOneToOne]                       [bit] NOT NULL,
		[ChatRoomDescription]                      [nvarchar](500) NULL,
		[ChatRoomLastModification]                 [datetime] NOT NULL,
		[ChatRoomScheduledToDelete]                [datetime] NULL,
		[ChatRoomPrivateStateLastModification]     [datetime] NOT NULL,
		[ChatRoomGUID]                             [uniqueidentifier] NOT NULL
) 
ALTER TABLE [Chat_Room]
	ADD
	CONSTRAINT [PK_CMS_ChatRoom]
	PRIMARY KEY
	CLUSTERED
	([ChatRoomID])
	
ALTER TABLE [Chat_Room]
	ADD
	CONSTRAINT [DEFAULT_Chat_Room_ChatRoomGUID]
	DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ChatRoomGUID]
ALTER TABLE [Chat_Room]
	ADD
	CONSTRAINT [DEFAULT_Chat_Room_ChatRoomLastModification]
	DEFAULT ('10/19/2011 12:16:33 PM') FOR [ChatRoomLastModification]
ALTER TABLE [Chat_Room]
	ADD
	CONSTRAINT [DEFAULT_Chat_Room_ChatRoomPrivateStateLastModification]
	DEFAULT ('1/30/2012 4:36:47 PM') FOR [ChatRoomPrivateStateLastModification]
ALTER TABLE [Chat_Room]
	ADD
	CONSTRAINT [DEFAULT_CMS_ChatRoom_ChatRoomDisplayName]
	DEFAULT ('') FOR [ChatRoomDisplayName]
ALTER TABLE [Chat_Room]
	ADD
	CONSTRAINT [DEFAULT_CMS_ChatRoom_ChatRoomIsOneToOne]
	DEFAULT ((0)) FOR [ChatRoomIsOneToOne]
ALTER TABLE [Chat_Room]
	ADD
	CONSTRAINT [DEFAULT_CMS_ChatRoom_ChatRoomIsSupport]
	DEFAULT ((0)) FOR [ChatRoomIsSupport]
ALTER TABLE [Chat_Room]
	ADD
	CONSTRAINT [DEFAULT_CMS_ChatRoom_ChatRoomPrivate]
	DEFAULT ((0)) FOR [ChatRoomPrivate]
CREATE NONCLUSTERED INDEX [IX_Chat_Room_Enabled]
	ON [Chat_Room] ([ChatRoomEnabled])
	
CREATE NONCLUSTERED INDEX [IX_Chat_Room_IsSupport]
	ON [Chat_Room] ([ChatRoomIsSupport])
	
CREATE NONCLUSTERED INDEX [IX_Chat_Room_SiteID]
	ON [Chat_Room] ([ChatRoomSiteID])
	
ALTER TABLE [Chat_Room]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_Room_Chat_User]
	FOREIGN KEY ([ChatRoomCreatedByChatUserID]) REFERENCES [Chat_User] ([ChatUserID])
ALTER TABLE [Chat_Room]
	CHECK CONSTRAINT [FK_Chat_Room_Chat_User]
ALTER TABLE [Chat_Room]
	WITH CHECK
	ADD CONSTRAINT [FK_Chat_Room_CMS_Site]
	FOREIGN KEY ([ChatRoomSiteID]) REFERENCES [CMS_Site] ([SiteID])
	ON DELETE CASCADE
ALTER TABLE [Chat_Room]
	CHECK CONSTRAINT [FK_Chat_Room_CMS_Site]
