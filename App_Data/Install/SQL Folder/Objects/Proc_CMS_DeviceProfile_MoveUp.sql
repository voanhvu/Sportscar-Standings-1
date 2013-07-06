CREATE PROCEDURE [Proc_CMS_DeviceProfile_MoveUp]
	@ProfileID int
AS
BEGIN
	/* Move the previous profile down */
	UPDATE CMS_DeviceProfile SET ProfileOrder = (ProfileOrder + 1)
		WHERE ProfileOrder = ((SELECT TOP 1 ProfileOrder FROM CMS_DeviceProfile WHERE ProfileID = @ProfileID) - 1 )
		
	/* Move the current profile up */
	UPDATE CMS_DeviceProfile SET ProfileOrder = ProfileOrder - 1 WHERE (ProfileID = @ProfileID) AND (ProfileOrder > 1)	
END
