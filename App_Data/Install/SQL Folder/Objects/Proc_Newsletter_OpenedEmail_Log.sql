CREATE PROCEDURE [Proc_Newsletter_OpenedEmail_Log]
@SubscriberID int,
@IssueID int
AS
BEGIN
SET NOCOUNT ON;
IF (NOT @SubscriberID IS NULL AND NOT @IssueID IS NULL AND @SubscriberID>0 AND @IssueID>0)
    BEGIN
        DECLARE @OpenedWhen AS datetime
        SET @OpenedWhen = (SELECT OpenedWhen FROM Newsletter_OpenedEmail WHERE (IssueID = @IssueID AND SubscriberID = @SubscriberID))
        IF (@OpenedWhen IS NULL)
            BEGIN
                INSERT INTO Newsletter_OpenedEmail(SubscriberID, IssueID, OpenedWhen) VALUES (@SubscriberID, @IssueID, CURRENT_TIMESTAMP)
            END
        ELSE
			SET @IssueID = 0
	END
ELSE
	SET @IssueID = 0
	SELECT @IssueID
END
