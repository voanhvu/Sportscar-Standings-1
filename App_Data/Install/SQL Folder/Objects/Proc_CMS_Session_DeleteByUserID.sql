CREATE PROCEDURE [Proc_CMS_Session_DeleteByUserID]
	@SessionUserID int
AS
BEGIN
	DELETE FROM CMS_Session WHERE SessionUserID = @SessionUserID	
END
