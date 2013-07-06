CREATE PROCEDURE [Proc_OM_ContactGroup_RemoveDependencies]
@ID int
AS
BEGIN
SET NOCOUNT ON;
-- Contact group member
    DELETE FROM OM_ContactGroupMember WHERE ContactGroupMemberContactGroupID = @ID;
END
