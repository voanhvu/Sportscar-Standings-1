CREATE PROCEDURE [Proc_CMS_AutomationState_RemoveDependencies]
@ID int
AS
BEGIN
  -- Remove object workflow history
  DELETE FROM CMS_AutomationHistory WHERE HistoryStateID = @ID;
END
