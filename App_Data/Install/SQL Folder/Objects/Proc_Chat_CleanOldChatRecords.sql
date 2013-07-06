CREATE PROCEDURE [Proc_Chat_CleanOldChatRecords]
	@DaysOld INT
AS
BEGIN
	DECLARE @Now DATETIME
	SET @Now = GETDATE()
	DECLARE @MessagesDeleted INT
	DECLARE @RoomsDeleted INT
	DECLARE @UsersDeleted INT
	-- First: delete old messages
	DELETE CM 
	FROM Chat_Message AS CM 
	WHERE DATEDIFF(DD, CM.ChatMessageLastModified, @Now) > @DaysOld
	SET @MessagesDeleted = @@ROWCOUNT
	-- Second: delete unused rooms
	DELETE CR
	FROM Chat_Room CR
	WHERE CR.ChatRoomPrivate = 1 -- private rooms only
	AND NOT EXISTS (SELECT ChatMessageID FROM Chat_Message CM WHERE CM.ChatMessageRoomID = CR.ChatRoomID) -- without messages
	AND DATEDIFF(dd, CR.ChatRoomCreatedWhen, @Now) > @DaysOld -- was created more than @DaysOld days ago
	AND NOT EXISTS (
		SELECT ChatUserID 
		FROM Chat_RoomUser CRU
		LEFT JOIN Chat_User CU ON CU.ChatUserID = CRU.ChatRoomUserChatUserID
		WHERE (CU.ChatUserUserID IS NOT NULL AND CRU.ChatRoomUserAdminLevel > 0) -- without non anonymous users with more than 'None' permissions
		OR (CU.ChatUserUserID IS NULL AND (CRU.ChatRoomUserJoinTime IS NOT NULL OR DATEDIFF(dd, CRU.ChatRoomUserLeaveTime, @Now) < @DaysOld)) -- without anonymous users who are online or were online less than @DaysOld days ago
		) 
		
	SET @RoomsDeleted = @@ROWCOUNT
	-- Third: delete inactive anonymous users
	DELETE CU
	FROM Chat_User AS CU
	WHERE CU.ChatUserUserID IS NULL -- anonyms only
	AND NOT EXISTS (SELECT ChatMessageID FROM Chat_Message CM WHERE CM.ChatMessageUserID = CU.ChatUserID OR CM.ChatMessageRecipientID = CU.ChatUserID) -- without messages
	AND NOT EXISTS (SELECT ChatRoomID FROM Chat_Room CR WHERE CR.ChatRoomCreatedByChatUserID = CU.ChatUserID) -- user is not creator of any room
	AND NOT EXISTS (SELECT ChatOnlineUserID FROM Chat_OnlineUser COU WHERE COU.ChatOnlineUserChatUserID = CU.ChatUserID AND (COU.ChatOnlineUserJoinTime IS NOT NULL OR DATEDIFF(dd, COU.ChatOnlineUserLeaveTime, @Now) < @DaysOld)) -- user is not online and was online more than @DaysOld days ago
	
	SET @UsersDeleted = @@ROWCOUNT
	SELECT @MessagesDeleted AS MessagesDeleted, @RoomsDeleted AS RoomsDeleted, @UsersDeleted AS UsersDeleted
END
