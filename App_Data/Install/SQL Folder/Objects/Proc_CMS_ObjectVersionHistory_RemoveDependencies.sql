CREATE PROCEDURE [Proc_CMS_ObjectVersionHistory_RemoveDependencies]
	@ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION;
    -- Update object settings
	UPDATE [CMS_ObjectSettings] SET [ObjectCheckedOutVersionHistoryID] = NULL WHERE [ObjectCheckedOutVersionHistoryID] = @ID;
	COMMIT TRANSACTION;
END
