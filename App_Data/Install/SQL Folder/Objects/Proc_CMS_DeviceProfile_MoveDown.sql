CREATE PROCEDURE [Proc_CMS_DeviceProfile_MoveDown]
	@ProfileID int
AS
BEGIN
	
	DECLARE @MaxProfileOrder int	
	SET @MaxProfileOrder = (SELECT TOP 1 ProfileOrder FROM CMS_DeviceProfile ORDER BY ProfileOrder DESC);		
	
	/* Move the next attachment up */	
	UPDATE CMS_DeviceProfile SET ProfileOrder = ProfileOrder - 1 WHERE ProfileOrder = ((SELECT ProfileOrder FROM CMS_DeviceProfile WHERE ProfileID = @ProfileID) + 1 )
		
	/* Move the current attachment down */
	UPDATE CMS_DeviceProfile SET ProfileOrder = ProfileOrder + 1 WHERE ProfileID = @ProfileID AND ProfileOrder < @MaxProfileOrder
END
