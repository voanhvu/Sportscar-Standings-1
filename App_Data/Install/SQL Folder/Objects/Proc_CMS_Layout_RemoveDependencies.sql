-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Proc_CMS_Layout_RemoveDependencies]
	@ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION;
	-- CMS_PageTemplate
    UPDATE [CMS_PageTemplate] SET PageTemplateLayoutID = NULL WHERE PageTemplateLayoutID = @ID;
	-- CMS_DeviceProfileLayout
	DELETE FROM CMS_DeviceProfileLayout WHERE (SourceLayoutID = @ID) OR (TargetLayoutID = @ID);
	-- Custom device profile layout
	DELETE FROM CMS_TemplateDeviceLayout WHERE LayoutID = @ID;    
	COMMIT TRANSACTION;
END
