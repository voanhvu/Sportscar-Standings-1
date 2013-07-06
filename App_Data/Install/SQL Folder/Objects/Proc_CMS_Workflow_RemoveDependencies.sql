CREATE PROCEDURE [Proc_CMS_Workflow_RemoveDependencies]
@ID int
AS
BEGIN
-- Remove workflow users
  DELETE FROM CMS_WorkflowUser WHERE WorkflowID = @ID;
  -- Remove step roles
  DELETE FROM CMS_WorkflowStepRoles WHERE StepID IN (SELECT StepID FROM CMS_WorkflowStep WHERE StepWorkflowID = @ID);
  -- Remove step users
  DELETE FROM CMS_WorkflowStepUser WHERE StepID IN (SELECT StepID FROM CMS_WorkflowStep WHERE StepWorkflowID = @ID);
  -- Clear the documents steps
  UPDATE CMS_Document SET DocumentWorkflowStepID = NULL WHERE DocumentWorkflowStepID IN (SELECT StepID FROM CMS_WorkflowStep WHERE StepWorkflowID = @ID);
  -- Clear workflow history
  UPDATE CMS_WorkflowHistory SET HistoryWorkflowID = NULL WHERE HistoryWorkflowID = @ID;
  UPDATE CMS_WorkflowHistory SET StepID = NULL WHERE StepID IN (SELECT StepID FROM CMS_WorkflowStep WHERE StepWorkflowID = @ID);
  UPDATE CMS_WorkflowHistory SET TargetStepID = NULL WHERE TargetStepID IN (SELECT StepID FROM CMS_WorkflowStep WHERE StepWorkflowID = @ID);
  -- Clear object workflow history
  DELETE FROM CMS_AutomationHistory WHERE HistoryWorkflowID = @ID;
  DELETE FROM CMS_AutomationState WHERE StateWorkflowID = @ID;
  -- Clear steps within version history
  UPDATE CMS_VersionHistory SET VersionWorkflowStepID = NULL WHERE VersionWorkflowStepID IN (SELECT StepID FROM CMS_WorkflowStep WHERE StepWorkflowID = @ID);
  -- Clear workflow information within version history
  UPDATE CMS_VersionHistory SET VersionWorkflowID = NULL WHERE VersionWorkflowID = @ID;
  -- Remove transitions
  DELETE FROM CMS_WorkflowTransition WHERE TransitionWorkflowID = @ID;
  -- Remove steps
  DELETE FROM CMS_WorkflowStep WHERE StepWorkflowID = @ID;
  -- Remove scopes
  DELETE FROM CMS_WorkflowScope WHERE ScopeWorkflowID = @ID;
  -- Remove triggers
  DELETE FROM CMS_ObjectWorkflowTrigger WHERE TriggerWorkflowID = @ID;
END
