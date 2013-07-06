CREATE PROCEDURE [Proc_CMS_WorkflowStep_RemoveDependencies]
	@ID int
AS
BEGIN
  -- Remove step roles
  DELETE FROM CMS_WorkflowStepRoles WHERE StepID = @ID;
  -- Remove step users
  DELETE FROM CMS_WorkflowStepUser WHERE StepID = @ID;
  -- Remove step transitions
  DELETE FROM CMS_WorkflowTransition WHERE TransitionStartStepID = @ID OR TransitionEndStepID = @ID;
  -- Clear the documents steps
  UPDATE CMS_Document SET DocumentWorkflowStepID = NULL WHERE DocumentWorkflowStepID = @ID;
  -- Clear step in workflow history
  UPDATE CMS_WorkflowHistory SET StepID = NULL WHERE StepID = @ID;
  UPDATE CMS_WorkflowHistory SET TargetStepID = NULL WHERE TargetStepID = @ID;
  -- Clear step in object workflow history
  UPDATE CMS_AutomationHistory SET HistoryStepID = NULL WHERE HistoryStepID = @ID;
  UPDATE CMS_AutomationHistory SET HistoryTargetStepID = NULL WHERE HistoryTargetStepID = @ID;
  -- Clear step in version history
  UPDATE CMS_VersionHistory SET VersionWorkflowStepID = NULL WHERE VersionWorkflowStepID = @ID;
END
