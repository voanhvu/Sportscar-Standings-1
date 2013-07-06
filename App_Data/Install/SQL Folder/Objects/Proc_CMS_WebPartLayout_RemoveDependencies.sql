-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Proc_CMS_WebPartLayout_RemoveDependencies]	
	@ID INT
AS
BEGIN
	 UPDATE CMS_Widget SET WidgetLayoutID = NULL WHERE WidgetLayoutID = @ID
END
