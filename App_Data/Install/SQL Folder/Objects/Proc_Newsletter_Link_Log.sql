CREATE PROCEDURE [Proc_Newsletter_Link_Log]
@LinkID int,
@SubscriberID int,
@IsContactGroup bit
AS
BEGIN
SET NOCOUNT ON;
  BEGIN TRANSACTION
  
  IF (NOT @LinkID IS NULL AND NOT @SubscriberID IS NULL)
    BEGIN
      -- Increment click counters
      DECLARE @LinkTotalClicks AS int
      SET @LinkTotalClicks = (SELECT COALESCE(LinkTotalClicks, 0) FROM Newsletter_Link WHERE LinkID = @LinkID)
      SET @LinkTotalClicks = @LinkTotalClicks + 1
      UPDATE Newsletter_Link SET LinkTotalClicks = @LinkTotalClicks WHERE LinkID = @LinkID
      -- Do not increment clicks for contact group subscriber, clicks are obtained from activities
      IF (@IsContactGroup = 0)
		BEGIN
			DECLARE @Clicks AS int
			SET @Clicks = (SELECT Clicks FROM Newsletter_SubscriberLink WHERE LinkID = @LinkID AND SubscriberID = @SubscriberID)
			IF (NOT @Clicks IS NULL)
			BEGIN
				SET @Clicks = @Clicks + 1
				UPDATE Newsletter_SubscriberLink SET Clicks = @Clicks WHERE LinkID = @LinkID AND SubscriberID = @SubscriberID
			END
			ELSE
				INSERT INTO Newsletter_SubscriberLink VALUES (@SubscriberID, @LinkID, 1)
		END
      -- Return URL of the link
      SELECT LinkTarget FROM Newsletter_Link WHERE LinkID = @LinkID
    END
  COMMIT TRANSACTION
END
