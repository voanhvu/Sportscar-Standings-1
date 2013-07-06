---------------------------------------------------------------
--   Convert ShowInDevelopment UIElements   -------------------
--
--   Description: Convert "Show in development" UI Elements 
--                under SiteManager -> Development node 
---------------------------------------------------------------

DECLARE @resSiteMan INT;
SET @resSiteMan = (SELECT TOP 1 ResourceID FROM CMS_Resource WHERE ResourceName = 'CMS.SiteManager');

DECLARE @uielemCursor CURSOR;
SET @uielemCursor = CURSOR FOR SELECT ResourceName, ResourceDisplayName, ResourceURL, ResourceDescription FROM CMS_Resource WHERE ShowInDevelopment = 1 AND ResourceName NOT IN ('CMS.ABTest', 'CMS.AbuseReport', 'CMS.Administration', 'CMS.Badges', 'CMS.Badwords', 'CMS.BannedIP', 'cms.BannerManagement', 'CMS.Blog', 'CMS.Categories', 'CMS.Chat', 'CMS.Community', 'CMS.ContactManagement', 'CMS.Content', 'CMS.ContentPersonalization', 'CMS.CustomTables', 'CMS.Design', 'CMS.Desk', 'CMS.DeviceProfile', 'CMS.Ecommerce', 'CMS.EmailTemplates', 'CMS.EventLog', 'cms.eventmanager', 'CMS.FileImport', 'CMS.Form', 'CMS.Forums', 'CMS.Friends', 'CMS.GlobalPermissions', 'CMS.Groups', 'CMS.Localization', 'CMS.MediaDialog', 'CMS.MediaLibrary', 'CMS.Membership', 'CMS.MessageBoards', 'CMS.Messaging', 'CMS.MVTest', 'CMS.MyDesk', 'CMS.Newsletter', 'CMS.Notifications', 'CMS.OnlineMarketing', 'CMS.OnSiteEdit', 'CMS.Permissions', 'CMS.Polls', 'CMS.ProjectManagement', 'CMS.Reporting', 'CMS.Roles', 'CMS.ScheduledTasks', 'CMS.Scoring', 'CMS.SiteManager', 'CMS.Staging', 'CMS.Support', 'CMS.Tools', 'CMS.TranslationServices', 'CMS.UIPersonalization', 'CMS.Users', 'CMS.WebAnalytics', 'CMS.Widgets', 'CMS.WYSIWYGEditor');

DECLARE @currResName NVARCHAR(200);
DECLARE @currResDisName NVARCHAR(200);
DECLARE @currResUrl NVARCHAR(200);
DECLARE @currResDes NVARCHAR(4000);

DECLARE @parentElemID INT;
SET @parentElemID = (SELECT ElementID FROM CMS_UIElement WHERE ElementName = 'Development' AND ElementParentID IN (SELECT TOP 1 ElementID FROM CMS_UIElement WHERE ElementName = 'cmssitemanager'))

DECLARE @elemIDPath NVARCHAR(200); 
SET @elemIDPath = (SELECT ElementIDPath FROM CMS_UIElement WHERE ElementID = @parentElemID);

OPEN @uielemCursor
FETCH NEXT FROM @uielemCursor INTO @currResName, @currResDisName, @currResUrl, @currResDes;
WHILE @@FETCH_STATUS = 0
BEGIN

	IF (SUBSTRING(@currResName, 1, 4) = 'CMS.') BEGIN
		SET @currResName = SUBSTRING(@currResName, 5, LEN(@currResName));
	END

	IF (NOT EXISTS (SELECT ElementID FROM CMS_UIElement WHERE ElementResourceID = @resSiteMan AND ElementName = @currResName)) BEGIN

		DECLARE @newElemOrder INT; 
		SET @newElemOrder = (SELECT TOP 1 ElementOrder FROM CMS_UIElement WHERE ElementParentID = @parentElemID ORDER BY ElementOrder DESC) + 1;
	
		INSERT INTO CMS_UIElement (ElementDisplayName, ElementName, ElementCaption, ElementTargetUrl, ElementResourceID, ElementParentID, ElementLevel, ElementChildCount, ElementIDPath, ElementIsCustom, ElementLastModified, ElementGUID, ElementOrder) 
			VALUES (@currResDisName, @currResName, @currResDisName, @currResUrl, @resSiteMan, @parentElemID, 2, 0, @elemIDPath, 1, GETDATE(), NEWID(), @newElemOrder);
		
		DECLARE @newElemID INT; 
		SET @newElemID = scope_identity();
		
		DECLARE @elemIDLen INT; 
		SET @elemIDLen = LEN(CAST(@newElemID AS NVARCHAR(10)));
		
		UPDATE CMS_UIElement SET ElementIDPath = ElementIDPath + '/' + SUBSTRING('0000000', @elemIDLen, 10) + CAST(@newElemID AS NVARCHAR(10)) WHERE ElementID = @newElemID;
		
	END
		
	FETCH NEXT FROM @uielemCursor INTO @currResName, @currResDisName, @currResUrl, @currResDes;;
END
CLOSE @uielemCursor;
DEALLOCATE @uielemCursor;

---------------------------------------------------
-- END: Convert ShowInDevelopment UIElements  -----
---------------------------------------------------