CREATE TABLE [CMS_WorkflowTransition] (
		[TransitionID]                  [int] IDENTITY(1, 1) NOT NULL,
		[TransitionStartStepID]         [int] NOT NULL,
		[TransitionEndStepID]           [int] NOT NULL,
		[TransitionType]                [int] NOT NULL,
		[TransitionLastModified]        [datetime] NOT NULL,
		[TransitionSourcePointGUID]     [uniqueidentifier] NULL,
		[TransitionWorkflowID]          [int] NOT NULL
) 
ALTER TABLE [CMS_WorkflowTransition]
	ADD
	CONSTRAINT [PK_CMS_WorkflowTransition]
	PRIMARY KEY
	CLUSTERED
	([TransitionID])
	
ALTER TABLE [CMS_WorkflowTransition]
	ADD
	CONSTRAINT [DEFAULT_CMS_WorkflowTransition_TransitionWorkflowID]
	DEFAULT ((0)) FOR [TransitionWorkflowID]
CREATE UNIQUE NONCLUSTERED INDEX [IX_CMS_WorkflowTransition_TransitionStartStepID_TransitionSourcePointGUID_TransitionEndStepID]
	ON [CMS_WorkflowTransition] ([TransitionStartStepID], [TransitionSourcePointGUID], [TransitionEndStepID])
	
ALTER TABLE [CMS_WorkflowTransition]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_WorkflowTransition_TransitionEndStepID_CMS_WorkflowStep]
	FOREIGN KEY ([TransitionEndStepID]) REFERENCES [CMS_WorkflowStep] ([StepID])
ALTER TABLE [CMS_WorkflowTransition]
	CHECK CONSTRAINT [FK_CMS_WorkflowTransition_TransitionEndStepID_CMS_WorkflowStep]
ALTER TABLE [CMS_WorkflowTransition]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_WorkflowTransition_TransitionStartStepID_CMS_WorkflowStep]
	FOREIGN KEY ([TransitionStartStepID]) REFERENCES [CMS_WorkflowStep] ([StepID])
ALTER TABLE [CMS_WorkflowTransition]
	CHECK CONSTRAINT [FK_CMS_WorkflowTransition_TransitionStartStepID_CMS_WorkflowStep]
ALTER TABLE [CMS_WorkflowTransition]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_WorkflowTransition_TransitionWorkflowID_CMS_Workflow]
	FOREIGN KEY ([TransitionWorkflowID]) REFERENCES [CMS_Workflow] ([WorkflowID])
ALTER TABLE [CMS_WorkflowTransition]
	CHECK CONSTRAINT [FK_CMS_WorkflowTransition_TransitionWorkflowID_CMS_Workflow]
