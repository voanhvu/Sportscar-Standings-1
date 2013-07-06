CREATE PROCEDURE [Proc_OM_Account_UpdatePrimaryContact]
	@OldContactID int,
	@NewContactID int
AS
BEGIN
	SET NOCOUNT ON;
    UPDATE OM_Account SET AccountPrimaryContactID = @NewContactID WHERE AccountPrimaryContactID = @OldContactID;
	UPDATE OM_Account SET AccountSecondaryContactID = @NewContactID WHERE AccountSecondaryContactID = @OldContactID;
END
