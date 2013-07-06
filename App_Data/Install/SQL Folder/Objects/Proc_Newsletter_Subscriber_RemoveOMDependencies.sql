CREATE PROCEDURE [Proc_Newsletter_Subscriber_RemoveOMDependencies]
@ID int
AS
BEGIN
SET NOCOUNT ON;
BEGIN TRANSACTION;
-- OM_Membership
DELETE FROM OM_Membership WHERE RelatedID = @ID AND MemberType = 2; -- 2 = newsletter subscriber
-- Newsletter_SubscriberLink
DELETE FROM Newsletter_SubscriberLink WHERE SubscriberID = @ID;           
-- Newsletter_OpenedEmail
DELETE FROM Newsletter_OpenedEmail WHERE SubscriberID = @ID;
COMMIT TRANSACTION;
END
