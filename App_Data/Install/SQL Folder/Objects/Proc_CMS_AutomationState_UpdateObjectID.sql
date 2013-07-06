CREATE PROCEDURE [Proc_CMS_AutomationState_UpdateObjectID]
	@oldObjectID int,
	@newObjectID int,
	@objectType nvarchar(200)
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE CMS_AutomationState SET StateObjectID = @newObjectID WHERE StateObjectID = @oldObjectID AND StateObjectType = @objectType
END
