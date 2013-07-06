CREATE PROCEDURE [Proc_OM_Contact_RemoveCountryState]
	@countryID int,
	@stateIDs nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @query nvarchar(max);
	
	IF (DATALENGTH(@stateIDs)>0)
	BEGIN
		SET @query = 'UPDATE OM_Account SET AccountStateID=NULL WHERE AccountStateID IN (' + @stateIDs + ')'
		EXEC (@query)
		SET @query = 'UPDATE OM_Contact SET ContactStateID=NULL WHERE ContactStateID IN (' + @stateIDs + ')'
		EXEC (@query)
	END
	SET @query = 'UPDATE OM_Account SET AccountCountryID=NULL WHERE AccountCountryID='+CAST(@countryID AS NVARCHAR(max))
	EXEC (@query)
	SET @query = 'UPDATE OM_Contact SET ContactCountryID=NULL WHERE ContactCountryID='+CAST(@countryID AS NVARCHAR(max))
	EXEC (@query)
END
