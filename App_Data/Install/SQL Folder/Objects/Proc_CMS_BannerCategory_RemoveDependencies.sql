CREATE PROCEDURE [Proc_CMS_BannerCategory_RemoveDependencies] 
	@ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    DELETE FROM CMS_Banner WHERE BannerCategoryID = @ID
END
