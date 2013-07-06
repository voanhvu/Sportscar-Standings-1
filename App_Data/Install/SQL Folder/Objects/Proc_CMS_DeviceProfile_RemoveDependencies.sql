-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Proc_CMS_DeviceProfile_RemoveDependencies]
	-- Add the parameters for the stored procedure here
	@ID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    BEGIN TRANSACTION;
	-- CMS_DeviceProfileLayout
	DELETE FROM CMS_DeviceProfileLayout WHERE DeviceProfileID = @ID;
	-- Custom device profile layout
	DELETE FROM CMS_TemplateDeviceLayout WHERE ProfileID = @ID;    
	COMMIT TRANSACTION;
END
