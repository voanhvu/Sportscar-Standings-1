CREATE PROCEDURE [Proc_CMS_DeviceProfile_InitOrders]
AS
BEGIN
	/* Declare the cursor to loop through the table */
	DECLARE @profileCursor CURSOR;
    SET @profileCursor = CURSOR FOR SELECT ProfileID, ProfileOrder FROM CMS_DeviceProfile ORDER BY ProfileOrder, ProfileID;
    
	DECLARE @currentIndex int, @currentProfileOrder int, @currentProfileID int;
	SET @currentIndex = 1;
	
	/* Loop through the table */
	OPEN @profileCursor
	FETCH NEXT FROM @profileCursor INTO @currentProfileID, @currentProfileOrder;
	WHILE @@FETCH_STATUS = 0
	BEGIN
		/* Set the attachments' index if different */
		IF @currentProfileOrder IS NULL OR @currentProfileOrder <> @currentIndex
			UPDATE CMS_DeviceProfile SET ProfileOrder = @currentIndex WHERE ProfileID = @currentProfileID;
			
		/* Get next record */
		SET @currentIndex = @currentIndex + 1;
		FETCH NEXT FROM @profileCursor INTO @currentProfileID, @currentProfileOrder;
	END
	CLOSE @profileCursor;
	DEALLOCATE @profileCursor;
END
