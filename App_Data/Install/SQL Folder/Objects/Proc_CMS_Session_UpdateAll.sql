CREATE PROCEDURE [Proc_CMS_Session_UpdateAll]
	 @WhereCond nvarchar(max),
	 @SetColumns nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	EXEC ('UPDATE CMS_Session SET ' + @SetColumns + ' WHERE ' + @WhereCond);
END
