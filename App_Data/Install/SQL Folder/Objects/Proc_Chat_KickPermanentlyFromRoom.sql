CREATE PROCEDURE [Proc_Chat_KickPermanentlyFromRoom]
	@ChatRoomID INT,
	@ChatUserID INT
AS
BEGIN
	DECLARE @Now DATETIME
	SET @Now = GETDATE()
    UPDATE Chat_RoomUser 
	SET ChatRoomUserAdminLevel = 0,
		ChatRoomUserLastModification = @Now,
		ChatRoomUserLastChecking = NULL, 
		ChatRoomUserJoinTime = NULL, 
		ChatRoomUserLeaveTime = @Now
	WHERE ChatRoomUserChatUserID = @ChatUserID AND ChatRoomUserRoomID = @ChatRoomID
END
