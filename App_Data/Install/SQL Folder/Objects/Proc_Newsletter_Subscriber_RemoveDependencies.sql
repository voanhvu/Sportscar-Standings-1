CREATE PROCEDURE [Proc_Newsletter_Subscriber_RemoveDependencies]
@ID int
AS
BEGIN
-- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;
  
  BEGIN TRANSACTION;
  
  -- Newsletter_SubscriberNewsletter
    DELETE FROM Newsletter_SubscriberNewsletter WHERE SubscriberID = @ID; 
  
  -- Newsletter_Emails
	DELETE FROM Newsletter_Emails WHERE EmailSubscriberID = @ID;
    
  COMMIT TRANSACTION;
END
