SET IDENTITY_INSERT [CMS_WorkflowStep] ON
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (1, N'Edit', N'edit', 1, 1, '633c6b94-f891-4a37-ba9c-bd14f76bcde8', '20120528 16:38:11', 2, 1, N'<?xml version="1.0" encoding="utf-16"?>
<Step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <TimeoutEnabled>false</TimeoutEnabled>
  <TimeoutTarget>00000000-0000-0000-0000-000000000000</TimeoutTarget>
  <SourcePoints />
  <Position>
    <X>0</X>
    <Y>0</Y>
  </Position>
</Step>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, N'')
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (2, N'Published', N'published', 4, 1, '4391d9e9-5954-41d0-b082-fef4b09bcff3', '20111003 13:54:21', 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (20, N'Archived', N'archived', 5, 1, '9d987f6a-c420-49d8-aafd-898b7ec4ece9', '20111003 13:54:22', 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (5879, N'Edit', N'edit', NULL, 212, '60290d0b-ea07-4c0f-98b2-36b092a4f8b0', '20120614 17:21:18', 2, 0, N'<?xml version="1.0" encoding="utf-16"?>
<Step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <TimeoutEnabled>false</TimeoutEnabled>
  <TimeoutTarget>00000000-0000-0000-0000-000000000000</TimeoutTarget>
  <SourcePoints>
    <SourcePoint Guid="70204426-8569-464d-a2a5-7d062d4bd9e9">
      <Label>Standard</Label>
      <Type>0</Type>
      <StepRolesSecurity>0</StepRolesSecurity>
      <StepUsersSecurity>0</StepUsersSecurity>
    </SourcePoint>
  </SourcePoints>
  <Position>
    <X>230</X>
    <Y>2670</Y>
  </Position>
</Step>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'')
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (5880, N'Published', N'published', NULL, 212, '4d346d84-a8af-4333-bef9-dd6bd84a9fd3', '20120614 17:21:11', 100, NULL, N'<?xml version="1.0" encoding="utf-16"?>
<Step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <TimeoutEnabled>false</TimeoutEnabled>
  <TimeoutTarget>00000000-0000-0000-0000-000000000000</TimeoutTarget>
  <SourcePoints>
    <SourcePoint Guid="06e97b54-c45d-4225-ba7b-4c52676288ad">
      <Label>Standard</Label>
      <Type>0</Type>
      <StepRolesSecurity>0</StepRolesSecurity>
      <StepUsersSecurity>0</StepUsersSecurity>
    </SourcePoint>
  </SourcePoints>
  <Position>
    <X>770</X>
    <Y>2680</Y>
  </Position>
</Step>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'')
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (5881, N'Archived', N'archived', NULL, 212, '82696a71-5ddb-4eaf-9b0a-330a04d9eb18', '20120614 17:21:13', 101, 0, N'<?xml version="1.0" encoding="utf-16"?>
<Step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <TimeoutEnabled>false</TimeoutEnabled>
  <TimeoutTarget>00000000-0000-0000-0000-000000000000</TimeoutTarget>
  <SourcePoints>
    <SourcePoint Guid="ce7750ac-6481-4993-976f-20940f253fd3">
      <Label>Standard</Label>
      <Type>0</Type>
      <StepRolesSecurity>0</StepRolesSecurity>
      <StepUsersSecurity>0</StepUsersSecurity>
    </SourcePoint>
  </SourcePoints>
  <Position>
    <X>930</X>
    <Y>2680</Y>
  </Position>
</Step>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'')
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (5882, N'Send for translation', N'Send_for_translation', NULL, 212, 'b8a60f49-6d78-457d-8d84-a2c667c49d83', '20120709 08:58:17', 11, 1, N'<?xml version="1.0" encoding="utf-16"?>
<Step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <TimeoutEnabled>false</TimeoutEnabled>
  <TimeoutTarget>00000000-0000-0000-0000-000000000000</TimeoutTarget>
  <SourcePoints>
    <SourcePoint Guid="c71a1655-295d-4194-a751-910387cdbbd0">
      <Label>Standard</Label>
      <Type>0</Type>
      <StepRolesSecurity>0</StepRolesSecurity>
      <StepUsersSecurity>0</StepUsersSecurity>
    </SourcePoint>
  </SourcePoints>
  <Position>
    <X>550</X>
    <Y>2650</Y>
  </Position>
</Step>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 52, N'<Parameters><servicename>ManualTranslation</servicename><targetlanguage>en-US</targetlanguage><processbinary>False</processbinary><instructions></instructions><deadline>7;day</deadline><priority>1</priority></Parameters>')
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (5883, N'Approval', N'Standard', 47, 212, '64450a8e-550d-448f-9bfd-8a56c04c6336', '20120614 17:21:16', 3, 1, N'<?xml version="1.0" encoding="utf-16"?>
<Step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <TimeoutEnabled>false</TimeoutEnabled>
  <TimeoutInterval />
  <TimeoutTarget>00000000-0000-0000-0000-000000000000</TimeoutTarget>
  <SourcePoints>
    <SourcePoint Guid="9999619f-e6c0-47ab-968c-34a419b7186f">
      <Label>Standard</Label>
      <Text>Send for translation and publish</Text>
      <Tooltip>Sends the document for translation to the target languages and publishes this document.</Tooltip>
      <Condition />
      <Type>0</Type>
      <StepRolesSecurity>0</StepRolesSecurity>
      <StepUsersSecurity>0</StepUsersSecurity>
    </SourcePoint>
  </SourcePoints>
  <Position>
    <X>390</X>
    <Y>2670</Y>
  </Position>
</Step>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, N'')
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (5869, N'Edit', N'edit', NULL, 211, '5f104454-f5a2-4f02-ade9-de782987c275', '20120614 17:21:37', 2, 1, N'<?xml version="1.0" encoding="utf-16"?>
<Step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <TimeoutEnabled>true</TimeoutEnabled>
  <TimeoutInterval>minute;1/1/0001 12:00:00 AM;1;00:00:00;23:59:59.9999999;Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday</TimeoutInterval>
  <TimeoutTarget>feb7e072-bac9-4179-a122-9775791e343e</TimeoutTarget>
  <SourcePoints>
    <SourcePoint Guid="bfc73cd2-35bc-48d7-9bfb-804967b646ef">
      <Label>Standard</Label>
      <Type>0</Type>
      <StepRolesSecurity>0</StepRolesSecurity>
      <StepUsersSecurity>0</StepUsersSecurity>
    </SourcePoint>
    <SourcePoint xsi:type="TimeoutSourcePoint" Guid="feb7e072-bac9-4179-a122-9775791e343e">
      <Label>Timeout</Label>
      <Type>3</Type>
      <StepRolesSecurity>0</StepRolesSecurity>
      <StepUsersSecurity>0</StepUsersSecurity>
    </SourcePoint>
  </SourcePoints>
  <Position>
    <X>220</X>
    <Y>2600</Y>
  </Position>
</Step>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, N'')
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (5870, N'Published', N'published', NULL, 211, '491a9e56-ef97-4430-8ff1-184cde7022ae', '20120614 17:23:36', 100, NULL, N'<?xml version="1.0" encoding="utf-16"?>
<Step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <TimeoutEnabled>false</TimeoutEnabled>
  <TimeoutTarget>00000000-0000-0000-0000-000000000000</TimeoutTarget>
  <SourcePoints>
    <SourcePoint Guid="8c087fa0-3f27-4381-983c-8bce419c967e">
      <Label>Standard</Label>
      <Type>0</Type>
      <StepRolesSecurity>0</StepRolesSecurity>
      <StepUsersSecurity>0</StepUsersSecurity>
    </SourcePoint>
  </SourcePoints>
  <Position>
    <X>1220</X>
    <Y>2610</Y>
  </Position>
</Step>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'')
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (5871, N'Archived', N'archived', NULL, 211, '49c0826d-4cec-498e-8e9f-ab5c24f69740', '20120614 17:23:39', 101, 0, N'<?xml version="1.0" encoding="utf-16"?>
<Step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <TimeoutEnabled>false</TimeoutEnabled>
  <TimeoutTarget>00000000-0000-0000-0000-000000000000</TimeoutTarget>
  <SourcePoints>
    <SourcePoint Guid="742ffb8d-80d9-46be-a493-04b9dc901162">
      <Label>Standard</Label>
      <Type>0</Type>
      <StepRolesSecurity>0</StepRolesSecurity>
      <StepUsersSecurity>0</StepUsersSecurity>
    </SourcePoint>
  </SourcePoints>
  <Position>
    <X>1380</X>
    <Y>2610</Y>
  </Position>
</Step>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'')
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (5873, N'Import translation', N'Import_translation', NULL, 211, '626df3e9-b68a-42a5-9e05-74ec45e1f2aa', '20120614 17:23:25', 11, NULL, N'<?xml version="1.0" encoding="utf-16"?>
<Step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <TimeoutEnabled>false</TimeoutEnabled>
  <TimeoutTarget>00000000-0000-0000-0000-000000000000</TimeoutTarget>
  <SourcePoints>
    <SourcePoint Guid="271ec955-2630-4a0d-8070-2aa30db80065">
      <Label>Standard</Label>
      <Type>0</Type>
      <StepRolesSecurity>0</StepRolesSecurity>
      <StepUsersSecurity>0</StepUsersSecurity>
    </SourcePoint>
  </SourcePoints>
  <Position>
    <X>1020</X>
    <Y>2600</Y>
  </Position>
</Step>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 53, N'')
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (5874, N'Translation ready condition', N'Condition', NULL, 211, '0d4cea79-abcc-4a0c-a332-a24b42753a0e', '20120614 17:23:15', 6, 1, N'<?xml version="1.0" encoding="utf-16"?>
<Step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <TimeoutEnabled>false</TimeoutEnabled>
  <TimeoutTarget>00000000-0000-0000-0000-000000000000</TimeoutTarget>
  <SourcePoints>
    <SourcePoint xsi:type="ConditionSourcePoint" Guid="07001585-607e-4115-9ccf-90cdbd4c05a6">
      <Label>If translation is ready</Label>
      <Text>Import translation</Text>
      <Tooltip>If translation is ready, the document will be translated.</Tooltip>
      <Condition>{%Document.IsTranslationReady()|(user)administrator|(hash)997057ef82241efefa94a17c05b732d8ea5385154b8d65c57a9153534f9db8aa%}</Condition>
      <Type>1</Type>
      <StepRolesSecurity>0</StepRolesSecurity>
      <StepUsersSecurity>0</StepUsersSecurity>
    </SourcePoint>
    <SourcePoint xsi:type="ElseSourcePoint" Guid="7c1a3c8d-093c-4b93-bc7e-3f68ce3e1f1a">
      <Label>Else</Label>
      <Type>2</Type>
      <StepRolesSecurity>0</StepRolesSecurity>
      <StepUsersSecurity>0</StepUsersSecurity>
    </SourcePoint>
  </SourcePoints>
  <Position>
    <X>710</X>
    <Y>2600</Y>
  </Position>
</Step>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, N'')
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (5877, N'Wait 1 day', N'Wait', NULL, 211, '71b91db5-72c1-489c-9a87-b9825d0adbad', '20120615 07:32:26', 10, 1, N'<?xml version="1.0" encoding="utf-16"?>
<Step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <TimeoutEnabled>true</TimeoutEnabled>
  <TimeoutInterval>day;1/1/0001 12:00:00 AM;1;Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday</TimeoutInterval>
  <TimeoutTarget>00000000-0000-0000-0000-000000000000</TimeoutTarget>
  <SourcePoints>
    <SourcePoint Guid="da4480cb-cfdd-481e-a1a2-5c2b98e478f3">
      <Label>Standard</Label>
      <Text />
      <Tooltip />
      <Condition />
      <Type>0</Type>
      <StepRolesSecurity>0</StepRolesSecurity>
      <StepUsersSecurity>0</StepUsersSecurity>
    </SourcePoint>
  </SourcePoints>
  <Position>
    <X>440</X>
    <Y>2600</Y>
  </Position>
</Step>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, N'')
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (254, N'Edit', N'edit', 1, 46, '6d3da94a-c830-408a-9738-65bf1c593551', '20100907 10:37:52', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (255, N'Published', N'published', 2, 46, '931aa2e0-ae9d-4cd4-a07c-c01bd6dd4080', '20100907 10:37:52', 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [CMS_WorkflowStep] ([StepID], [StepDisplayName], [StepName], [StepOrder], [StepWorkflowID], [StepGUID], [StepLastModified], [StepType], [StepAllowReject], [StepDefinition], [StepRolesSecurity], [StepUsersSecurity], [StepApprovedTemplateName], [StepRejectedTemplateName], [StepReadyforApprovalTemplateName], [StepSendApproveEmails], [StepSendRejectEmails], [StepSendReadyForApprovalEmails], [StepSendEmails], [StepAllowPublish], [StepActionID], [StepActionParameters]) VALUES (256, N'Archived', N'archived', 3, 46, '8750289f-6686-4aa3-825c-b3cb89644fea', '20100907 10:37:52', 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [CMS_WorkflowStep] OFF
