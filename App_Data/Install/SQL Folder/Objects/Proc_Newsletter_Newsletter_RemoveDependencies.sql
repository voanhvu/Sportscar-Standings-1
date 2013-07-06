CREATE PROCEDURE [Proc_Newsletter_Newsletter_RemoveDependencies]
@ID int
AS
BEGIN
SET NOCOUNT ON;
  
BEGIN TRANSACTION;
-- Newsletter_Emails
DELETE FROM Newsletter_Emails WHERE EmailNewsletterIssueID IN
  (SELECT IssueID FROM Newsletter_NewsletterIssue WHERE IssueNewsletterID = @ID);
  
-- CMS_ScheduledTask
DELETE FROM CMS_ScheduledTask WHERE TaskID IN (SELECT IssueScheduledTaskID FROM Newsletter_NewsletterIssue WHERE IssueNewsletterID = @ID);
-- Delete scheduled task for A/B test winner selection
DELETE FROM CMS_ScheduledTask WHERE TaskID IN (SELECT TestWinnerScheduledTaskID FROM Newsletter_ABTest WHERE TestIssueID IN (SELECT IssueID FROM Newsletter_NewsletterIssue WHERE IssueNewsletterID = @ID));
-- Newsletter_ABTest
DELETE FROM Newsletter_ABTest WHERE TestIssueID IN
  (SELECT IssueID FROM Newsletter_NewsletterIssue WHERE IssueNewsletterID = @ID);
  
-- Newsletter_NewsletterIssue
DELETE FROM Newsletter_NewsletterIssue WHERE IssueNewsletterID = @ID;
-- Newsletter issue metafile attachments
DELETE FROM CMS_MetaFile WHERE MetaFileObjectType='newsletter.issue' AND MetaFileGroupName='Issue' AND MetaFileSiteID=(SELECT NewsletterSiteID FROM Newsletter_Newsletter WHERE NewsletterID=@ID)
  AND NOT MetaFileObjectID IN (SELECT IssueID FROM Newsletter_NewsletterIssue);
-- Newsletter_SubscriberNewsletter
DELETE FROM Newsletter_SubscriberNewsletter WHERE NewsletterID = @ID;
-- Newsletter e-mail template binding
DELETE FROM Newsletter_EmailTemplateNewsletter WHERE NewsletterID = @ID;
COMMIT TRANSACTION;
END
