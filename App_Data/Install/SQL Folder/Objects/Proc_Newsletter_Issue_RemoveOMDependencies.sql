CREATE PROCEDURE [Proc_Newsletter_Issue_RemoveOMDependencies]
@ID int
AS
BEGIN
SET NOCOUNT ON;
-- Get IDs of all variants (children) and parent
DECLARE @tbl_int TABLE (id int)
INSERT INTO @tbl_int SELECT IssueID FROM Newsletter_NewsletterIssue WHERE IssueVariantOfIssueID = @ID
INSERT INTO @tbl_int SELECT @ID
BEGIN TRANSACTION;
-- Newsletter_SubscriberLink
DELETE FROM Newsletter_SubscriberLink WHERE LinkID IN
    (SELECT LinkID FROM Newsletter_Link WHERE LinkIssueID IN (SELECT id FROM @tbl_int));
-- Newsletter_Link
DELETE FROM Newsletter_Link WHERE LinkIssueID IN (SELECT id FROM @tbl_int);
-- Newsletter_OpenedEmail
DELETE FROM Newsletter_OpenedEmail WHERE IssueID IN (SELECT id FROM @tbl_int);
COMMIT TRANSACTION;
END
