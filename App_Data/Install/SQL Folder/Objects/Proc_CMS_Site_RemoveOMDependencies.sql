CREATE PROCEDURE [Proc_CMS_Site_RemoveOMDependencies]
@ID int,
@IssueIDs nvarchar(max)
AS
BEGIN
SET NOCOUNT ON;
DECLARE @tbl_string Table (ParsedString nvarchar(max))
DECLARE	@end Int,
        @start Int,
		@stringArray nvarchar(max)
SET @stringArray =  @IssueIDs + ','
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
-- Newsletter_SubscriberLink
DELETE FROM Newsletter_SubscriberLink WHERE LinkID IN
  (SELECT LinkID FROM Newsletter_Link WHERE LinkIssueID IN (SELECT ParsedString FROM @tbl_string));
-- Newsletter_Link
DELETE FROM Newsletter_Link WHERE LinkIssueID IN (SELECT ParsedString FROM @tbl_string);
-- Newsletter_OpenedEmail
DELETE FROM Newsletter_OpenedEmail WHERE IssueID IN (SELECT ParsedString FROM @tbl_string);
-- SCORING
-- delete [OM_ScoreContactRule] dependencies
DELETE FROM [OM_ScoreContactRule] WHERE ScoreID IN (SELECT ScoreID FROM [OM_Score] WHERE ScoreSiteID = @ID);
-- delete [OM_Rule]
DELETE FROM [OM_Rule] WHERE RuleSiteID = @ID;
-- delete [OM_Score]
DELETE FROM [OM_Score] WHERE ScoreSiteID = @ID;
-- CONTACT MANAGEMENT
DELETE FROM [OM_PageVisit] WHERE [PageVisitActivityID] IN (SELECT [ActivityID] FROM [OM_Activity] WHERE ActivitySiteID = @ID)
DELETE FROM [OM_Search] WHERE [SearchActivityID] IN (SELECT [ActivityID] FROM [OM_Activity] WHERE [ActivitySiteID] = @ID);
DELETE FROM [OM_Activity] WHERE [ActivitySiteID] = @ID
DELETE FROM [OM_ContactGroupMember] WHERE [ContactGroupMemberContactGroupID] IN (SELECT [ContactGroupID] FROM [OM_ContactGroup] WHERE [ContactGroupSiteID] = @ID);
DELETE FROM [OM_ContactGroup] WHERE [ContactGroupSiteID] = @ID;
-- delete all acount-contact relations for account from this site
DELETE FROM [OM_AccountContact] WHERE [AccountID] IN (SELECT [AccountID] FROM [OM_Account] WHERE [AccountSiteID]=@ID);
DELETE FROM [OM_AccountContact] WHERE [ContactID] IN (SELECT [ContactID] FROM [OM_Contact] WHERE [ContactSiteID]=@ID);
DELETE FROM [OM_Account] WHERE [AccountSiteID] = @ID;   
-- delete all membership relations for contact from this site
DELETE FROM [OM_Membership] WHERE [ActiveContactID] IN (SELECT [ContactID] FROM [OM_Contact] WHERE [ContactSiteID]=@ID);
DELETE FROM [OM_Membership] WHERE [OriginalContactID] IN (SELECT [ContactID] FROM [OM_Contact] WHERE [ContactSiteID]=@ID);
DELETE FROM [OM_IP] WHERE [IPActiveContactID] IN (SELECT [ContactID] FROM [OM_Contact] WHERE [ContactSiteID]=@ID); 
DELETE FROM [OM_IP] WHERE [IPOriginalContactID] IN (SELECT [ContactID] FROM [OM_Contact] WHERE [ContactSiteID]=@ID); 
DELETE FROM [OM_UserAgent] WHERE [UserAgentActiveContactID] IN (SELECT [ContactID] FROM [OM_Contact] WHERE [ContactSiteID]=@ID); 
DELETE FROM [OM_UserAgent] WHERE [UserAgentOriginalContactID] IN (SELECT [ContactID] FROM [OM_Contact] WHERE [ContactSiteID]=@ID);   
DELETE FROM [OM_Contact] WHERE [ContactSiteID] = @ID;
-- delete [OM_AccountStatus] dependencies
DELETE FROM [OM_AccountStatus] WHERE [AccountStatusSiteID] = @ID    
-- delete [OM_ContactStatus] dependencies
DELETE FROM OM_ContactStatus WHERE [ContactStatusSiteID] = @ID    
-- delete [OM_ContactRole] dependencies
DELETE FROM OM_ContactRole WHERE [ContactRoleSiteID] = @ID
COMMIT TRANSACTION;
END
