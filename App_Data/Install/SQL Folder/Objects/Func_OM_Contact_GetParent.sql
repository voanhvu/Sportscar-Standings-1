-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [Func_OM_Contact_GetParent]  
(
	@contactID int
)
RETURNS int
AS
BEGIN
    DECLARE @result int;
    DECLARE @parentID int;
    SET @parentID = (SELECT ContactGlobalContactID FROM OM_Contact WHERE ContactID = @contactID)
    IF (@parentID IS NULL)
        SET @result = @contactID
    ELSE
        SET @result = dbo.Func_OM_Contact_GetParent(@parentID)
    RETURN @result  
END
