CREATE PROCEDURE [Proc_OM_ContactGroup_RemoveOtherDependencies]
	@contactGroupID int,
	@scheduledTaskID int
AS
BEGIN
	SET NOCOUNT ON;
    
-- Scheduled task of dynamic contact groups
    DELETE FROM CMS_ScheduledTask WHERE TaskID = @scheduledTaskID;
-- Contact group newsletter and its bindings
    -- Newsletter_SubscriberNewsletter
    DELETE FROM Newsletter_SubscriberNewsletter WHERE SubscriberID = (SELECT SubscriberID FROM Newsletter_Subscriber WHERE SubscriberRelatedID = @contactGroupID AND SubscriberType LIKE 'om.contactgroup');
    -- Newsletter_Emails
    DELETE FROM Newsletter_Emails WHERE EmailSubscriberID = (SELECT SubscriberID FROM Newsletter_Subscriber WHERE SubscriberRelatedID = @contactGroupID AND SubscriberType LIKE 'om.contactgroup');
    -- Newsletter_Subscriber
    DELETE FROM Newsletter_Subscriber WHERE SubscriberRelatedID = @contactGroupID AND SubscriberType LIKE 'om.contactgroup';
END
