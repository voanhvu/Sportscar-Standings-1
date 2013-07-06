CREATE PROCEDURE [Proc_Newsletter_GetEmailAddressCount]
@NewsletterID int,
@BounceLimit int
AS
BEGIN
DECLARE @tmp int;
 DECLARE @total int;
    SET @total = 0;
    SELECT @tmp=COUNT(Subscription.SubscriberID)
	FROM Newsletter_SubscriberNewsletter AS Subscription
	    INNER JOIN
	    Newsletter_Subscriber AS Subscriber ON Subscription.SubscriberID = Subscriber.SubscriberID
	WHERE (NewsletterID = @NewsletterID) AND (Subscription.SubscriptionApproved = 1 OR Subscription.SubscriptionApproved IS NULL)
        AND (Subscription.SubscriptionEnabled = 1 OR Subscription.SubscriptionEnabled IS NULL) AND
		(Subscriber.SubscriberType IS NULL) AND (@BounceLimit <= 0 OR Subscriber.SubscriberBounces IS NULL OR Subscriber.SubscriberBounces < @BounceLimit)
	IF (@tmp IS NOT NULL) SET @total = @total + @tmp;
	SELECT @tmp=COUNT(Subscription.SubscriberID)
	FROM (Newsletter_SubscriberNewsletter AS Subscription INNER JOIN Newsletter_Subscriber AS Subscriber ON Subscription.SubscriberID = Subscriber.SubscriberID)
		LEFT OUTER JOIN CMS_User ON Subscriber.SubscriberRelatedID = CMS_User.UserID
    WHERE NewsletterID = @NewsletterID AND (Subscription.SubscriptionApproved = 1 OR Subscription.SubscriptionApproved IS NULL)
         AND (Subscription.SubscriptionEnabled = 1 OR Subscription.SubscriptionEnabled IS NULL) AND
		(Subscriber.SubscriberType = 'cms.user') AND (@BounceLimit <= 0 OR Subscriber.SubscriberBounces IS NULL OR Subscriber.SubscriberBounces < @BounceLimit) AND
		NOT (CMS_User.Email IS NULL OR CMS_User.Email = '')
	IF (@tmp IS NOT NULL) SET @total = @total + @tmp;
    SELECT @tmp=COUNT(Subscription.SubscriberID)
	FROM Newsletter_SubscriberNewsletter AS Subscription INNER JOIN Newsletter_Subscriber AS Subscriber ON Subscription.SubscriberID = Subscriber.SubscriberID
    WHERE NewsletterID = @NewsletterID AND (Subscription.SubscriptionApproved = 1 OR Subscription.SubscriptionApproved IS NULL)
         AND (Subscription.SubscriptionEnabled = 1 OR Subscription.SubscriptionEnabled IS NULL) AND
		(Subscriber.SubscriberType = 'om.contact') AND (@BounceLimit <= 0 OR Subscriber.SubscriberBounces IS NULL OR Subscriber.SubscriberBounces < @BounceLimit)
	IF (@tmp IS NOT NULL) SET @total = @total + @tmp;
		
	SELECT @tmp=COUNT(Subscription.SubscriberID)
	FROM (Newsletter_SubscriberNewsletter AS Subscription INNER JOIN Newsletter_Subscriber AS Subscriber ON Subscription.SubscriberID = Subscriber.SubscriberID)
		LEFT OUTER JOIN
		View_CMS_UserSettingsRole_Joined AS UserInfo ON Subscriber.SubscriberRelatedID = UserInfo.RoleID
    WHERE NewsletterID = @NewsletterID AND (Subscription.SubscriptionApproved = 1 OR Subscription.SubscriptionApproved IS NULL)
        AND (Subscription.SubscriptionEnabled = 1 OR Subscription.SubscriptionEnabled IS NULL) AND
		(Subscriber.SubscriberType = 'cms.role') AND (@BounceLimit <= 0 OR UserInfo.UserBounces IS NULL OR UserInfo.UserBounces < @BounceLimit) AND
		NOT (UserInfo.Email IS NULL OR UserInfo.Email = '') 
	IF (@tmp IS NOT NULL) SET @total = @total + @tmp;
SELECT @total
END
