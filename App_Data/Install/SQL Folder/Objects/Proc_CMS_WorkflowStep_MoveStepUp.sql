CREATE PROCEDURE [Proc_CMS_WorkflowStep_MoveStepUp]
@StepID int
AS
BEGIN
/* Get the workflow ID */
	DECLARE @WorkflowID int
	SET @WorkflowID = (SELECT StepWorkflowID FROM CMS_WorkflowStep WHERE StepID = @StepID);
	/* Check out whether the step does not want to move before the edit step */
	DECLARE @MinStepOrder int
	SET @MinStepOrder = (SELECT StepOrder FROM CMS_WorkflowStep WHERE StepWorkflowID = @WorkflowID AND StepType = 2) + 1;
	
	/* Move the previous step(s) down */
	UPDATE CMS_WorkflowStep SET StepOrder = StepOrder + 1 WHERE StepOrder = (SELECT StepOrder FROM CMS_WorkflowStep WHERE StepID = @StepID) - 1 AND StepWorkflowID = @WorkflowID AND StepType NOT IN (2, 100, 101)
	/* Move the current step up */
	UPDATE CMS_WorkflowStep SET StepOrder = StepOrder - 1 WHERE StepID = @StepID AND StepOrder > @MinStepOrder
END
