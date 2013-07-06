CREATE PROCEDURE [Proc_CMS_User_RemoveOMDependencies]
@ID int,
@SubscriberIDs nvarchar(max)
AS
BEGIN
SET NOCOUNT ON;
DECLARE @tbl_string Table (ParsedString nvarchar(max))
DECLARE	@end Int,
        @start Int,
		@stringArray nvarchar(max)
SET @stringArray =  @SubscriberIDs + ','
SET @start=1
SET @end=1
WHILE @end<Len(@stringArray)
    BEGIN
        SET @end = CharIndex(',', @stringArray, @end)
        INSERT INTO @tbl_string
            SELECT
                Substring(@stringArray, @start, @end-@start)
        SET @start=@end+1
        SET @end = @end+1
    END
BEGIN TRANSACTION;
-- Delete contact membership
DELETE FROM [OM_Membership] WHERE [RelatedID] = @ID AND [MemberType] = 0;
-- Update contact/account owner relation
UPDATE [OM_Contact] SET [ContactOwnerUserID] = NULL WHERE [ContactOwnerUserID] = @ID;
UPDATE [OM_Account] SET [AccountOwnerUserID] = NULL WHERE [AccountOwnerUserID] = @ID;
-- Delete newsletter openes/clicks made by the user's subscribers
DELETE FROM [Newsletter_OpenedEmail] WHERE SubscriberID IN (SELECT ParsedString FROM @tbl_string);
DELETE FROM [Newsletter_SubscriberLink] WHERE SubscriberID IN (SELECT ParsedString FROM @tbl_string);
COMMIT TRANSACTION;
END
