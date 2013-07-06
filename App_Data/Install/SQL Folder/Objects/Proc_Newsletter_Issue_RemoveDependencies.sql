CREATE PROCEDURE [Proc_Newsletter_Issue_RemoveDependencies]
@ID int
AS
BEGIN
SET NOCOUNT ON;
-- Get IDs of all variants (children) and parent
DECLARE @tbl_int TABLE (id int)
INSERT INTO @tbl_int SELECT IssueID FROM Newsletter_NewsletterIssue WHERE IssueVariantOfIssueID = @ID
INSERT INTO @tbl_int SELECT @ID
BEGIN TRANSACTION;
-- Delete all relations to other tables for all issues (parent + children)
-- Newsletter_Emails
DELETE FROM Newsletter_Emails WHERE EmailNewsletterIssueID IN (SELECT id FROM @tbl_int);
-- Delete scheduled task for the issue
DELETE FROM CMS_ScheduledTask WHERE TaskID IN (SELECT IssueScheduledTaskID FROM Newsletter_NewsletterIssue WHERE IssueID IN (SELECT id FROM @tbl_int));
-- Delete scheduled task for A/B test winner selection
DELETE FROM CMS_ScheduledTask WHERE TaskID IN (SELECT TestWinnerScheduledTaskID FROM Newsletter_ABTest WHERE TestIssueID IN (SELECT id FROM @tbl_int));
-- Delete A/B test for the issue
DELETE FROM Newsletter_ABTest WHERE TestIssueID IN (SELECT id FROM @tbl_int);
-- Delete all attachments (meta files)
DELETE FROM CMS_MetaFile WHERE (MetaFileGroupName = 'Issue') AND (MetaFileObjectType = 'newsletter.issue'
OR MetaFileObjectType = 'newsletter.issuevariant') AND MetaFileObjectID IN (SELECT id FROM @tbl_int);
-- Delete children only (keep parent for calling process)
DELETE FROM Newsletter_NewsletterIssue WHERE IssueID IN (SELECT id FROM @tbl_int WHERE id <> @ID)
COMMIT TRANSACTION;
END
