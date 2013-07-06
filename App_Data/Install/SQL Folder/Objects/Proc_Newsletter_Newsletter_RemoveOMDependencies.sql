CREATE PROCEDURE [Proc_Newsletter_Newsletter_RemoveOMDependencies]
@IssueIDs nvarchar(max)
AS
BEGIN
SET NOCOUNT ON;
DECLARE @tbl_string Table (ParsedString nvarchar(max))
DECLARE	@end Int,
        @start Int,
		@stringArray nvarchar(max)
SET @stringArray =  @IssueIDs + ','
SET @start=1
SET @end=1
WHILE @end<Len(@stringArray)
    BEGIN
        SET @end = CharIndex(',', @stringArray, @end)
        INSERT INTO @tbl_string
            SELECT
                Substring(@stringArray, @start, @end-@start)
        SET @start=@end+1
        SET @end = @end+1
    END
BEGIN TRANSACTION;
-- Newsletter_SubscriberLink
DELETE FROM Newsletter_SubscriberLink WHERE LinkID IN
  (SELECT LinkID FROM Newsletter_Link WHERE LinkIssueID IN (SELECT ParsedString FROM @tbl_string));
-- Newsletter_Link
DELETE FROM Newsletter_Link WHERE LinkIssueID IN (SELECT ParsedString FROM @tbl_string);
-- Newsletter_OpenedEmail
DELETE FROM Newsletter_OpenedEmail WHERE IssueID IN (SELECT ParsedString FROM @tbl_string);
COMMIT TRANSACTION;
END
