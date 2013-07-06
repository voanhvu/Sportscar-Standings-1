CREATE PROCEDURE [Proc_OM_Contact_RemoveState]
	@ID int
AS
BEGIN
	BEGIN TRANSACTION;
	
	UPDATE OM_Contact SET ContactStateID=NULL WHERE ContactStateID=@ID
	UPDATE OM_Account SET AccountStateID=NULL WHERE AccountStateID=@ID
	
	COMMIT TRANSACTION;
END
