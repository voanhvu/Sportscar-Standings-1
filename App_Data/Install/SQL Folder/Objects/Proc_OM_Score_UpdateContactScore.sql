CREATE PROCEDURE [Proc_OM_Score_UpdateContactScore]
@RuleID int,
 @WhereCond nvarchar(max),
 @ContactID int,
 @RuleExpiration datetime,
 @RuleValidUnits int,
 @RuleValidFor int
AS
BEGIN
DECLARE @ruleType int;
DECLARE @ruleScoreID int;
DECLARE @ruleValue int;
DECLARE @ruleParameter nvarchar(250);
DECLARE @ruleIsRecurring bit;
DECLARE @ruleSiteID int;
DECLARE @ruleMaxPoints int;
DECLARE @currentContactID int;
DECLARE @previousContactID int;
DECLARE @currentPoints int;
DECLARE @currentExpiration datetime;
DECLARE @expirationDate nvarchar(300);
DECLARE @timeRestriction nvarchar(300);
-- Exception handling
DECLARE @ErrorMessage NVARCHAR(4000);
DECLARE @ErrorNumber INT;
DECLARE @ErrorSeverity INT;
DECLARE @ErrorState INT;
DECLARE @maxValue int;
-- Get rule info
SELECT @ruleSiteID=[RuleSiteID], @ruleType=[RuleType], @ruleScoreID=[RuleScoreID], @ruleValue=[RuleValue], @ruleParameter=[RuleParameter], @ruleIsRecurring=[RuleIsRecurring],
@ruleMaxPoints=[RuleMaxPoints] FROM OM_Rule WHERE RuleID=@RuleID
------------------------------------------ Activity rule
IF @ruleType=0
BEGIN
    IF @ContactID=0 OR @ContactID IS NULL
    BEGIN
      -- Retrieve all contacts for specified condition
      SET @WhereCond = 'ContactMergedWithContactID IS NULL AND ContactSiteID=' + CAST(@ruleSiteID as varchar(15)) + ' AND (' + @WhereCond + ')
              AND ContactID NOT IN (SELECT ContactID FROM OM_ScoreContactRule WITH (UPDLOCK, HOLDLOCK) WHERE ScoreID = ' + CAST(@ruleScoreID as varchar(15)) + ' AND RuleID = ' + CAST(@RuleID as varchar(15)) + ')';
    END
    ELSE
    BEGIN
      -- Try to retrieve given contact for specified condition
      SET @WhereCond = 'ContactMergedWithContactID IS NULL AND ContactID=' + CAST(@ContactID as varchar(50)) + ' AND (' + @WhereCond + ')
      AND ContactID NOT IN (SELECT ContactID FROM OM_ScoreContactRule WITH (UPDLOCK, HOLDLOCK) WHERE ScoreID = ' + CAST(@ruleScoreID as varchar(15)) + ' AND RuleID = ' + CAST(@RuleID as varchar(15)) + ' AND ContactID=' + CAST(@ContactID as varchar(15)) + ')';
    END
    -- Prepare expiration date query
    SET @expirationDate =
    CASE @RuleValidUnits
       WHEN 0 THEN 'DATEADD(dd, ' + CAST(@RuleValidFor as varchar(50)) + ', MAX(ActivityCreated)) AS ActCreated'
       WHEN 1 THEN 'DATEADD(wk, ' + CAST(@RuleValidFor as varchar(50)) + ', MAX(ActivityCreated)) AS ActCreated'
       WHEN 2 THEN 'DATEADD(mm, ' + CAST(@RuleValidFor as varchar(50)) + ', MAX(ActivityCreated)) AS ActCreated'
       WHEN 3 THEN 'DATEADD(yy, ' + CAST(@RuleValidFor as varchar(50)) + ', MAX(ActivityCreated)) AS ActCreated'
       ELSE ISNULL('''' + CAST(@RuleExpiration as varchar(250)) + '''', 'NULL') + ' AS ActCreated'
    END;
    -- Prepare time restriction in the past for time interval activities
    SET @timeRestriction =
    CASE @RuleValidUnits
       WHEN 0 THEN 'ActivityCreated >= DATEADD(dd, -' + CAST(@RuleValidFor as varchar(50)) + ', GETDATE()) AND '
       WHEN 1 THEN 'ActivityCreated >= DATEADD(wk, -' + CAST(@RuleValidFor as varchar(50)) + ', GETDATE()) AND '
       WHEN 2 THEN 'ActivityCreated >= DATEADD(mm, -' + CAST(@RuleValidFor as varchar(50)) + ', GETDATE()) AND '
       WHEN 3 THEN 'ActivityCreated >= DATEADD(yy, -' + CAST(@RuleValidFor as varchar(50)) + ', GETDATE()) AND '
       ELSE ''
    END;
    -- Join additional table for page visit and landing page
    IF @ruleParameter='pagevisit' OR @ruleParameter='landingpage'
    BEGIN
      BEGIN TRY
		EXEC ('INSERT INTO OM_ScoreContactRule SELECT ' + @ruleScoreID + ', ContactID, ' + @RuleID + ', COUNT(ContactID)*' + @ruleValue + ', ' + @expirationDate + 
        ' FROM OM_Activity 
        INNER JOIN OM_Contact ON OM_Contact.ContactID=OM_Activity.ActivityActiveContactID 
        LEFT JOIN OM_PageVisit ON OM_Activity.ActivityID=OM_PageVisit.PageVisitActivityID ' +
        'WHERE ' + @timeRestriction + ' (' + @WhereCond + ') 
        GROUP BY ContactID ORDER BY ContactID');
      END TRY
      BEGIN CATCH
        -- Get error info
        SELECT @ErrorNumber = ERROR_NUMBER(), @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();
        
        IF @ErrorNumber = 8115   -- Is it arithmetic overflow error?
        BEGIN
          IF (@ruleValue >= 0)
      SET @maxValue = 2147483647;
          ELSE
             SET @maxValue = -2147483647;
          -- Set max value
          EXEC ('INSERT INTO OM_ScoreContactRule SELECT ' + @ruleScoreID + ', ContactID, ' + @RuleID + ', ' + @maxValue + ', ' + @expirationDate + 
          ' FROM OM_Activity INNER JOIN OM_Contact ON OM_Contact.ContactID=OM_Activity.ActivityActiveContactID LEFT JOIN OM_PageVisit ON OM_Activity.ActivityID=OM_PageVisit.PageVisitActivityID ' +
          'WHERE ' + @timeRestriction + ' (' + @WhereCond + ') GROUP BY ContactID ORDER BY ContactID');
        END
        ELSE
        BEGIN
          RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        END      
      END CATCH
    END
    ELSE
    BEGIN
      -- Join additional table for internal and external search 
      IF @ruleParameter='internalsearch' OR @ruleParameter='externalsearch'
      BEGIN
        BEGIN TRY
          EXEC ('INSERT INTO OM_ScoreContactRule SELECT ' + @ruleScoreID + ', ContactID, ' + @RuleID + ', COUNT(ContactID)*' + @ruleValue + ', ' + @expirationDate + 
          ' FROM OM_Activity INNER JOIN OM_Contact ON OM_Contact.ContactID=OM_Activity.ActivityActiveContactID LEFT JOIN OM_Search ON OM_Activity.ActivityID=OM_Search.SearchActivityID ' +
          'WHERE ' + @timeRestriction + ' (' + @WhereCond + ') GROUP BY ContactID ORDER BY ContactID');
        END TRY
        BEGIN CATCH
          -- Get error info
          SELECT @ErrorNumber = ERROR_NUMBER(), @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();
        
          IF @ErrorNumber = 8115   -- Is it arithmetic overflow error?
          BEGIN
            IF (@ruleValue >= 0)
               SET @maxValue = 2147483647;
            ELSE
               SET @maxValue = -2147483647;
            -- Set max value
            EXEC ('INSERT INTO OM_ScoreContactRule SELECT ' + @ruleScoreID + ', ContactID, ' + @RuleID + ', ' + @maxValue + ', ' + @expirationDate +             
            ' FROM OM_Activity INNER JOIN OM_Contact ON OM_Contact.ContactID=OM_Activity.ActivityActiveContactID LEFT JOIN OM_Search ON OM_Activity.ActivityID=OM_Search.SearchActivityID ' +
            'WHERE ' + @timeRestriction + ' (' + @WhereCond + ') GROUP BY ContactID ORDER BY ContactID');
          END
          ELSE
          BEGIN
            RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
          END      
        END CATCH         
      END
      ELSE
      BEGIN
        BEGIN TRY
          EXEC ('INSERT INTO OM_ScoreContactRule SELECT ' + @ruleScoreID + ', ContactID, ' + @RuleID + ', COUNT(ContactID)*' + @ruleValue + ', ' + @expirationDate +         
          ' FROM OM_Activity INNER JOIN OM_Contact ON OM_Contact.ContactID=OM_Activity.ActivityActiveContactID WHERE ' + @timeRestriction +
          ' (' + @WhereCond + ') GROUP BY ContactID ORDER BY ContactID');
        END TRY
        BEGIN CATCH
          -- Get error info
          SELECT @ErrorNumber = ERROR_NUMBER(), @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();
        
          IF @ErrorNumber = 8115   -- Is it arithmetic overflow error?
          BEGIN
            IF (@ruleValue >= 0)
               SET @maxValue = 2147483647;
            ELSE
               SET @maxValue = -2147483647;
            -- Set max value
            EXEC ('INSERT INTO OM_ScoreContactRule SELECT ' + @ruleScoreID + ', ContactID, ' + @RuleID + ', ' + @maxValue + ', ' + @expirationDate +                        
            ' FROM OM_Activity INNER JOIN OM_Contact ON OM_Contact.ContactID=OM_Activity.ActivityActiveContactID WHERE ' + @timeRestriction +
            ' (' + @WhereCond + ') GROUP BY ContactID ORDER BY ContactID');
          END
          ELSE
          BEGIN
            RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
          END      
        END CATCH
      END
    END
   
    -- Set (update) correct points for non-recurring activities
    IF @ruleIsRecurring=0
    BEGIN    
      UPDATE OM_ScoreContactRule SET Value = @ruleValue WHERE ScoreID = @ruleScoreID AND RuleID = @RuleID;
    END
    ELSE
    BEGIN
      IF (@ruleMaxPoints IS NOT NULL) AND (@ruleMaxPoints <> 0)
      BEGIN
         IF @ruleMaxPoints > 0
           UPDATE OM_ScoreContactRule SET Value = @ruleMaxPoints WHERE Value > @ruleMaxPoints AND ScoreID = @ruleScoreID AND RuleID = @RuleID;
         ELSE
           UPDATE OM_ScoreContactRule SET Value = @ruleMaxPoints WHERE Value < @ruleMaxPoints AND ScoreID = @ruleScoreID AND RuleID = @RuleID;
      END
    END
------------------------------------------ Attribute rule    
END ELSE IF @ruleType=1
BEGIN
    IF @ContactID=0 OR @ContactID IS NULL
    BEGIN
      -- Retrieve all contacts for specified condition
      EXEC ('INSERT INTO OM_ScoreContactRule SELECT ' + @ruleScoreID + ', ContactID, ' + @RuleID + ', ' + @ruleValue + ', NULL 
		FROM OM_Contact
		WHERE ContactMergedWithContactID IS NULL AND ContactSiteID=' + @ruleSiteID + ' AND (' + @WhereCond + ') 
			AND ContactID NOT IN (SELECT ContactID FROM OM_ScoreContactRule WITH (UPDLOCK, HOLDLOCK) WHERE ScoreID = ' + @ruleScoreID + ' AND RuleID = ' + @RuleID + ')
		ORDER BY ContactID');     
    END
    ELSE
    BEGIN
      -- Try to retrieve given contact for specified condition
      EXEC ('INSERT INTO OM_ScoreContactRule SELECT ' + @ruleScoreID + ', ContactID, ' + @RuleID + ', ' + @ruleValue + ', NULL 
		FROM OM_Contact
		WHERE ContactMergedWithContactID IS NULL AND ContactID=' + @ContactID + ' AND (' + @WhereCond + ')
			AND ContactID NOT IN (SELECT ContactID FROM OM_ScoreContactRule WITH (UPDLOCK, HOLDLOCK) WHERE ScoreID = ' + @ruleScoreID  + ' AND RuleID = ' +@RuleID + 'AND ContactID=' + @ContactID + ')');     
    END
END
END
