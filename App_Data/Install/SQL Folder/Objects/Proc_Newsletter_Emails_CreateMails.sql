CREATE PROCEDURE [Proc_Newsletter_Emails_CreateMails]
@NewsletterIssueID int,
@NewsletterID int,
@SiteID int,
@MonitoringEnabled bit,
@BounceLimit int
AS
BEGIN
SET NOCOUNT ON;
BEGIN TRANSACTION
	
IF (@MonitoringEnabled = 0)
	BEGIN
		SET @BounceLimit = 0
	END
-- Create newsletter email queue items for approved and active clasic subscribers
INSERT INTO Newsletter_Emails (EmailNewsletterIssueID, EmailSubscriberID, EmailSiteID, EmailSending, EmailGUID, EmailAddress)
	SELECT @NewsletterIssueID, Subscription.SubscriberID, @SiteID, 1, NEWID(), Subscriber.SubscriberEmail
	FROM Newsletter_SubscriberNewsletter AS Subscription
		INNER JOIN
		Newsletter_Subscriber AS Subscriber ON Subscription.SubscriberID = Subscriber.SubscriberID
	WHERE (NewsletterID = @NewsletterID) AND (Subscription.SubscriptionApproved = 1 OR Subscription.SubscriptionApproved IS NULL) AND
        (Subscription.SubscriptionEnabled = 1 OR Subscription.SubscriptionEnabled IS NULL) AND
		(Subscriber.SubscriberType IS NULL) AND (Subscriber.SubscriberBounces IS NULL OR (@BounceLimit <= 0 AND Subscriber.SubscriberBounces < 2147483647) OR Subscriber.SubscriberBounces < @BounceLimit) AND
		NOT EXISTS (SELECT EmailAddress FROM Newsletter_Emails WHERE EmailNewsletterIssueID = @NewsletterIssueID AND EmailAddress = Subscriber.SubscriberEmail)
	ORDER BY Subscription.SubscriberID
   
-- Create newsletter email queue items for approved and active user subscribers
INSERT INTO Newsletter_Emails (EmailNewsletterIssueID, EmailSubscriberID, EmailSiteID, EmailSending, EmailGUID, EmailAddress)
	SELECT @NewsletterIssueID, Subscription.SubscriberID, @SiteID, 1, NEWID(), CMS_User.Email
	FROM (Newsletter_SubscriberNewsletter AS Subscription INNER JOIN Newsletter_Subscriber AS Subscriber ON Subscription.SubscriberID = Subscriber.SubscriberID)
		LEFT OUTER JOIN CMS_User ON Subscriber.SubscriberRelatedID = CMS_User.UserID
	WHERE NewsletterID = @NewsletterID AND (Subscription.SubscriptionApproved = 1 OR Subscription.SubscriptionApproved IS NULL) AND
        (Subscription.SubscriptionEnabled = 1 OR Subscription.SubscriptionEnabled IS NULL) AND
		(Subscriber.SubscriberType = 'cms.user') AND (Subscriber.SubscriberBounces IS NULL OR (@BounceLimit <= 0 AND Subscriber.SubscriberBounces < 2147483647) OR Subscriber.SubscriberBounces < @BounceLimit) AND
		NOT (CMS_User.Email IS NULL OR CMS_User.Email = '') AND
		NOT EXISTS (SELECT EmailAddress FROM Newsletter_Emails WHERE EmailNewsletterIssueID = @NewsletterIssueID AND EmailAddress = CMS_User.Email)
	ORDER BY Subscription.SubscriberID
	
-- Create newsletter email queue items for approved and active role subscribers
INSERT INTO Newsletter_Emails (EmailNewsletterIssueID, EmailSubscriberID, EmailSiteID, EmailSending, EmailGUID, EmailUserID, EmailAddress)
	SELECT @NewsletterIssueID, Subscription.SubscriberID, @SiteID, 1, NEWID(), UserInfo.UserID, UserInfo.Email
	FROM (Newsletter_SubscriberNewsletter AS Subscription INNER JOIN Newsletter_Subscriber AS Subscriber ON Subscription.SubscriberID = Subscriber.SubscriberID)
		LEFT OUTER JOIN
		View_CMS_UserSettingsRole_Joined AS UserInfo ON Subscriber.SubscriberRelatedID = UserInfo.RoleID
	WHERE NewsletterID = @NewsletterID AND (Subscription.SubscriptionApproved = 1 OR Subscription.SubscriptionApproved IS NULL) AND
        (Subscription.SubscriptionEnabled = 1 OR Subscription.SubscriptionEnabled IS NULL) AND
		(Subscriber.SubscriberType = 'cms.role') AND (UserInfo.UserBounces IS NULL OR (@BounceLimit <= 0 AND UserInfo.UserBounces < 2147483647) OR UserInfo.UserBounces < @BounceLimit) AND
		NOT (UserInfo.Email IS NULL OR UserInfo.Email = '') AND
		NOT EXISTS (SELECT EmailAddress FROM Newsletter_Emails WHERE EmailNewsletterIssueID = @NewsletterIssueID AND EmailAddress = UserInfo.Email)
	ORDER BY Subscription.SubscriberID
-- Reset sending status so the sending may start	
UPDATE Newsletter_Emails SET EmailSending = NULL WHERE EmailNewsletterIssueID = @NewsletterIssueID
COMMIT TRANSACTION;
END
