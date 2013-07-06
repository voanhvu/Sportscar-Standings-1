SET IDENTITY_INSERT [CMS_Query] ON
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (2051, N'selectAllowedPageTemplates', 0, N'SELECT CMS_PageTemplate.* FROM CMS_PageTemplate INNER JOIN CMS_PageTemplateSite ON CMS_PageTemplate.PageTemplateID = CMS_PageTemplateSite.PageTemplateID INNER JOIN CMS_PageTemplateCategory ON CMS_PageTemplate.PageTemplateCategoryID = CMS_PageTemplateCategory.CategoryID WHERE (CMS_PageTemplateSite.SiteID = @SiteID) AND (CMS_PageTemplateCategory.CategoryDisplayName <> ''ad-hoc'') AND ((@CategoryID=0) OR (CMS_PageTemplate.PageTemplateCategoryID = @CategoryID)) ORDER BY ##ORDERBY##', 0, 157, 0, '20101005 10:27:14', 'f9557146-fb1c-4f96-bcb9-cb04409fcfe5', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (685, N'selectSubCategories', 0, N'SELECT COUNT(CategoryID) AS Expr1 FROM CMS_WebPartCategory WHERE (CategoryParentID = @ID)', 0, 424, 0, '20101005 10:59:10', 'e7370ed9-885e-4a26-a0b4-4ef23ae4fb67', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (493, N'selectcultures', 0, N'SELECT CMS_Culture.*, CMS_SiteCulture.SiteID FROM CMS_Culture LEFT OUTER JOIN CMS_SiteCulture ON CMS_SiteCulture.CultureID = CMS_Culture.CultureID AND (CMS_SiteCulture.SiteID = @siteID OR CMS_SiteCulture.SiteID IS NULL) ORDER BY ##ORDERBY##', 0, 52, 0, '20101005 11:14:22', '9d404013-afe8-48f0-8c21-ea0f300aa6ad', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11118, N'SelectForOptionIDWeight', 0, N'SELECT   TOP 1 *
FROM         COM_ShippingCost
WHERE     (ShippingCostMinWeight <= @Weight) AND (ShippingCostShippingOptionID = @ShippingOptionID)
ORDER BY ShippingCostMinWeight DESC', 0, 2461, 0, '20101018 10:47:42', 'd3d48e96-4c8a-4859-828b-c5b244e87ce3', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11145, N'selectconversion', 0, N'SELECT ##COLUMNS## FROM Analytics_Statistics WHERE ##WHERE## GROUP BY StatisticsObjectName', 0, 1366, 0, '20101022 09:40:43', '2c602f05-ba39-4d32-92b9-8166224a9841', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (4647, N'selectbydocumentidnobinary', 0, N'SELECT ##TOPN## AttachmentID, AttachmentName, AttachmentExtension, AttachmentSize, AttachmentMimeType, AttachmentImageWidth, AttachmentImageHeight, AttachmentDocumentID, AttachmentGUID, AttachmentLastHistoryID, AttachmentSiteID, AttachmentLastModified,AttachmentIsUnsorted, AttachmentOrder, AttachmentGroupGUID, AttachmentFormGUID, AttachmentDocumentID, AttachmentTitle, AttachmentDescription, AttachmentCustomData FROM CMS_Attachment WHERE AttachmentDocumentID = @AttachmentDocumentID', 0, 504, 0, '20101104 12:49:43', '1dcec97c-d8dc-45d3-b41d-d8b3ef2b2afc', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (8788, N'getlastversionwithoutbinary', 0, N'SELECT TOP 1 AttachmentHistoryID, AttachmentName, AttachmentExtension, AttachmentSize, AttachmentMimeType, AttachmentImageWidth, AttachmentImageHeight, AttachmentDocumentID, AttachmentGUID, AttachmentIsUnsorted, AttachmentOrder, AttachmentGroupGUID, AttachmentTitle, AttachmentDescription, AttachmentCustomData FROM CMS_AttachmentHistory WHERE AttachmentGUID = @AttachmentGUID AND AttachmentHistoryID IN (SELECT AttachmentHistoryID FROM CMS_VersionAttachment WHERE VersionHistoryID IN (SELECT VersionHistoryID FROM CMS_VersionHistory WHERE NodeSiteID=@SiteID)) ORDER BY AttachmentHistoryID DESC', 0, 516, 0, '20101104 13:34:37', '728b28b8-13f3-4836-b83e-bb8b903dafcc', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (4920, N'selectbyguidnobinary', 0, N'SELECT MetaFileID, MetaFileObjectID, MetaFileObjectType, MetaFileGroupName, MetaFileName, MetaFileExtension, MetaFileSize, MetaFileMimeType, MetaFileImageWidth, MetaFileImageHeight, MetaFileGUID, MetaFileLastModified, [MetaFileTitle], [MetaFileDescription], [MetaFileCustomData] FROM CMS_MetaFile WHERE [MetaFileGUID] = @Guid', 0, 1527, 0, '20101111 17:45:31', '777c6aae-2485-486d-ac82-21e4dc332731', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11640, N'selecttranslated', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_CMS_ResourceTranslated_Joined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1650, 0, '20101126 09:33:05', '558a5c26-db6e-4856-9570-6221e47dd484', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (8818, N'selectattachmentsversions', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_CMS_Tree_Joined_Versions_Attachments WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 144, 0, '20101126 14:24:36', 'f5cf2412-8e57-433f-ac9a-f2abbe2d0661', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11652, N'markrecipientdelete', 0, N'UPDATE Messaging_Message SET [MessageRecipientDeleted] = 1 WHERE ##WHERE##', 0, 1593, 0, '20101129 21:10:45', '1d971b35-73b2-43a5-9680-7fd778389231', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11653, N'marksenderdelete', 0, N'UPDATE Messaging_Message SET [MessageSenderDeleted] = 1 WHERE ##WHERE##', 0, 1593, 0, '20101129 21:10:53', 'c7ed5613-80b6-4b4b-b950-28f543e055eb', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (7194, N'selectDocumentsTags', 0, N'SELECT ##TOPN## CMS_Tag.TagID, TagName, COUNT(DocumentID) AS TagCount FROM CMS_DocumentTag JOIN CMS_Tag ON CMS_DocumentTag.TagID = CMS_Tag.TagID JOIN CMS_TagGroup ON CMS_Tag.TagGroupID = CMS_TagGroup.TagGroupID WHERE (DocumentID IN (SELECT DocumentID FROM View_CMS_Tree_Joined WHERE ##WHERE##)) GROUP BY CMS_Tag.TagID, TagName ORDER BY ##ORDERBY##', 0, 1738, 0, '20101202 14:48:48', '88d1f935-648f-4c08-855c-0f85c8dc2cf7', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11798, N'GetProjectProgress', 1, N'Proc_PM_Project_GetProjectProgress', 0, 2742, 0, '20101213 11:31:20', 'c69e5868-c9ee-44fa-878b-3e8571668db3', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11800, N'removedependencies', 1, N'Proc_PM_Project_RemoveDependencies', 1, 2742, 0, '20101213 11:32:21', 'a0fb918d-70fe-4fc4-aa60-5d90a49272dc', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11801, N'ResetProjectOrder', 1, N'Proc_PM_Project_ResetProjectOrder', 0, 2742, 0, '20101213 11:32:37', 'a50453eb-7dee-4c9f-bbbb-243b5b9a0bea', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11802, N'selectalljoined', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_PM_ProjectStatus_Joined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2742, 0, '20101213 11:33:11', '04c0d848-7028-4d46-a173-8ea0bfc0c8dc', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11820, N'movedown', 1, N'Proc_PM_ProjectStatus_MoveDown', 1, 2744, 0, '20101213 11:59:22', '3dae1b87-f55f-4d2b-b23e-e39845d9cbd7', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11821, N'moveup', 1, N'Proc_PM_ProjectStatus_MoveUp', 1, 2744, 0, '20101213 11:59:40', '5af38d17-fdb6-42d2-95c1-7b8d562f0afc', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11819, N'initstatusorder', 1, N'Proc_PM_ProjectStatus_InitOrders', 1, 2744, 0, '20101213 12:00:23', '8cac0ae1-b9a1-4fda-9383-61071bb13247', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11831, N'getoverduetasks', 0, N'SELECT PM_ProjectTask.* 
FROM PM_ProjectTask 
INNER JOIN PM_ProjectTaskStatus ON PM_ProjectTask.ProjectTaskStatusID = PM_ProjectTaskStatus.TaskStatusID
WHERE
  (TaskStatusIsFinished = 0) AND
  (ProjectTaskDueDate < @Date) AND
  (ProjectTaskAssignedToUserID > 0) AND
  ((ProjectTaskNotificationSent IS NULL) OR (ProjectTaskNotificationSent = 0))', 0, 2745, 0, '20101213 12:11:00', 'f147dfea-4a32-4055-b666-81f9fea68596', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11832, N'GetTasksCount', 0, N'Select COUNT (ProjectTaskID) FROM PM_ProjectTask WHERE ##WHERE##', 0, 2745, 0, '20101213 12:11:24', 'd9bcce48-c6ca-4b4e-9529-b84e4d318e62', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11833, N'inittaskorder', 1, N'Proc_PM_ProjectTask_InitOrders', 1, 2745, 0, '20101213 12:11:39', '04356d02-c89c-41f7-89f3-2ae7d825663d', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11834, N'movedown', 1, N'Proc_PM_ProjectTask_MoveDown', 1, 2745, 0, '20101213 12:12:11', '201eea9c-b38b-499e-94d6-065d6bbec607', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11835, N'moveup', 1, N'Proc_PM_ProjectTask_MoveUp', 1, 2745, 0, '20101213 12:12:27', '02276ea6-0517-41a2-bc5d-89dd9488c47a', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11836, N'selectalljoined', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_PM_ProjectTaskStatus_Joined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2745, 0, '20101213 12:12:57', 'e9477f94-8104-4eb4-9726-95754de40d39', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11845, N'cleardefaults', 0, N'UPDATE PM_ProjectTaskPriority SET TaskPriorityDefault = 0', 0, 2746, 0, '20101213 12:19:11', '34bf29d2-af34-4a53-9259-bf829571b15b', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11846, N'initpriorityorder', 1, N'Proc_PM_ProjectTaskPriority_InitOrders', 1, 2746, 0, '20101213 12:19:43', '3497a0a2-9dff-4b52-874f-1b5549729fb7', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11847, N'movedown', 1, N'Proc_PM_ProjectTaskPriority_MoveDown', 1, 2746, 0, '20101213 12:20:04', 'c58a006d-9224-41de-8817-26a51184bf6f', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11848, N'moveup', 1, N'Proc_PM_ProjectTaskPriority_MoveUp', 1, 2746, 0, '20101213 12:20:18', '9b15a53d-ac8c-42cb-9e3a-37c5b6745eac', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11858, N'initstatusorder', 1, N'Proc_PM_ProjectTaskStatus_InitOrders', 1, 2747, 0, '20101213 12:27:52', 'c19b1a66-edea-4d34-8d54-0d390191a82e', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11859, N'movedown', 1, N'Proc_PM_ProjectTaskStatus_MoveDown', 1, 2747, 0, '20101213 12:28:14', '20ee573f-4b97-46f0-bade-6a8f1d447c6b', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11860, N'moveup', 1, N'Proc_PM_ProjectTaskStatus_MoveUp', 1, 2747, 0, '20101213 12:28:29', '0dfbce4c-daec-477a-98c2-b22d433269fe', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11656, N'markunread', 0, N'UPDATE Messaging_Message SET [MessageIsRead] = 0 WHERE ##WHERE##', 0, 1593, 0, '20110105 09:01:43', '5fb7ad92-0361-40b8-a475-000b676a5ad2', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11655, N'markread', 0, N'UPDATE Messaging_Message SET [MessageRead] = @MessageRead WHERE ##WHERE## AND MessageRead IS NULL;UPDATE Messaging_Message SET [MessageIsRead] = NULL WHERE ##WHERE##', 0, 1593, 0, '20110105 10:37:45', '84bf136a-752a-48af-b40d-25c52347edaf', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (813, N'selectbyguidnobinary', 0, N'SELECT ##TOPN## AttachmentID, AttachmentName, AttachmentExtension, AttachmentSize, AttachmentMimeType, AttachmentImageWidth, AttachmentImageHeight, AttachmentDocumentID, AttachmentGUID, AttachmentLastHistoryID, AttachmentSiteID, AttachmentLastModified,AttachmentIsUnsorted, AttachmentOrder, AttachmentGroupGUID, AttachmentFormGUID, AttachmentDocumentID, AttachmentHash, AttachmentTitle, AttachmentDescription, AttachmentCustomData FROM CMS_Attachment WHERE AttachmentGUID = @AttachmentGUID AND AttachmentSiteID = @AttachmentSiteID', 0, 504, 0, '20110112 11:35:56', 'ef0f16d5-c50e-4df4-9f10-5fe5d753d7d7', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (9046, N'getsearchposts', 0, N'SELECT ##TOPN## Forums_ForumPost.*, ForumSiteID FROM Forums_ForumPost LEFT JOIN Forums_Forum ON ForumID = PostForumID WHERE ##WHERE## ORDER BY PostId', 0, 1123, 0, '20110113 10:55:09', '1a9a7d55-f30e-4436-ae3c-c00db048a20d', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (2541, N'SelectAllWithPost', 0, N'SELECT ##TOPN## ##COLUMNS## FROM [Forums_ForumSubscription] LEFT JOIN [Forums_ForumPost] ON Forums_ForumPost.PostId = Forums_ForumSubscription.SubscriptionPostID WHERE SubscriptionForumID = @ForumID AND(##WHERE##) ORDER BY ##ORDERBY##', 0, 1124, 0, '20110113 10:59:38', '8136333d-4594-4636-bce7-654174d8a3ba', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (7922, N'selectalljoined', 0, N'SELECT ##TOPN## Forums_UserFavorites.*,Forums_ForumPost.PostForumID, Forums_ForumPost.PostIdPath FROM Forums_UserFavorites
LEFT JOIN Forums_ForumPost ON Forums_ForumPost.PostId = Forums_UserFavorites.PostID WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1913, 0, '20110113 11:01:19', 'd8a10e04-de6b-49a8-b27b-312bc4b1de9d', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12199, N'getGlobalRolePermissionMatrix', 0, N'SELECT ##TOPN## Matrix.##COLUMNS##, CASE WHEN CMS_RolePermission.RoleID IS NULL THEN 0 ELSE 1 END AS Allowed FROM (SELECT CMS_Permission.PermissionID,  
CMS_Permission.PermissionOrder, CMS_Permission.PermissionDisplayName, CMS_Permission.PermissionName, CMS_Permission.ClassID, CMS_Permission.ResourceID,CMS_Permission.PermissionDescription, CMS_Role.RoleID, CMS_Role.Rolename, CMS_Role.RoleDisplayName FROM CMS_Permission, CMS_Role WHERE (CMS_Permission.PermissionDisplayInMatrix = @DisplayInMatrix OR ((@DisplayInMatrix=1) AND (CMS_Permission.PermissionDisplayInMatrix IS NULL))) AND ResourceID = @ID AND RoleID IN (SELECT RoleID FROM CMS_Role WHERE ##WHERE## AND (SiteID IS NULL)) ) Matrix LEFT JOIN CMS_RolePermission ON (Matrix.PermissionID = CMS_RolePermission.PermissionID AND CMS_RolePermission.RoleID = Matrix.RoleID) ORDER BY ##ORDERBY##', 0, 131, 0, '20110117 18:06:42', 'ebb02283-7f23-4a95-a4d3-426f4e90f2bc', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (9819, N'getResourcePermissionMatrix', 0, N'SELECT ##TOPN## Matrix.##COLUMNS##, CASE WHEN CMS_RolePermission.RoleID IS NULL THEN 0 ELSE 1 END AS Allowed FROM (SELECT CMS_Permission.PermissionID,  
CMS_Permission.PermissionOrder, CMS_Permission.PermissionDisplayName, CMS_Permission.PermissionName, CMS_Permission.ClassID, CMS_Permission.ResourceID,CMS_Permission.PermissionDescription, CMS_Role.RoleID, CMS_Role.Rolename, CMS_Role.RoleDisplayName FROM CMS_Permission, CMS_Role WHERE (CMS_Permission.PermissionDisplayInMatrix = @DisplayInMatrix OR ((@DisplayInMatrix=1) AND (CMS_Permission.PermissionDisplayInMatrix IS NULL))) AND ResourceID = @ID AND RoleID IN (SELECT RoleID FROM CMS_Role WHERE ##WHERE## AND ((@SiteID = 0 AND SiteID is NULL) OR SiteID = @SiteID)) ) Matrix LEFT JOIN CMS_RolePermission ON (Matrix.PermissionID = CMS_RolePermission.PermissionID AND CMS_RolePermission.RoleID = Matrix.RoleID) ORDER BY ##ORDERBY##', 0, 131, 0, '20110118 08:58:15', 'eda40db5-e8b1-4c74-beae-eb332c8a5ddd', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (9820, N'getClassPermissionMatrix', 0, N'SELECT ##TOPN## Matrix.##COLUMNS##, ''Allowed'' = CASE WHEN CMS_RolePermission.RoleID IS NULL THEN 0 ELSE 1 END FROM (SELECT CMS_Permission.PermissionID, 
CMS_Permission.PermissionOrder, CMS_Permission.PermissionDisplayName, CMS_Permission.PermissionName, CMS_Permission.ClassID, CMS_Permission.ClassID AS ResourceID,CMS_Permission.PermissionDescription, CMS_Role.RoleID, CMS_Role.Rolename, CMS_Role.RoleDisplayName FROM CMS_Permission, CMS_Role WHERE (CMS_Permission.PermissionDisplayInMatrix = @DisplayInMatrix OR ((@DisplayInMatrix=1) AND (CMS_Permission.PermissionDisplayInMatrix IS NULL))) AND ClassID = @ID AND RoleID IN (SELECT RoleID FROM CMS_Role WHERE ##WHERE## AND ((SiteID IS NULL AND @SiteID =0) OR SiteID = @SiteID)) ) Matrix LEFT JOIN CMS_RolePermission ON (Matrix.PermissionID = CMS_RolePermission.PermissionID AND CMS_RolePermission.RoleID = Matrix.RoleID) ORDER BY ##ORDERBY##', 0, 131, 0, '20110118 09:55:57', 'b4f22ef9-ac6e-4198-829f-3af1f2364f23', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12309, N'getroleusers', 1, N'Proc_Newsletter_Subscriber_GetRoleUsers', 0, 908, 0, '20110124 11:43:05', '6c5a6628-2fe5-4fc2-a9dc-ef45c810d966', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12310, N'selectAllSettingsRoles', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_CMS_UserSettingsRole_Joined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 59, 0, '20110126 14:53:13', '73e17c68-7537-403d-8c12-dc1683e196d9', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (340, N'selectrequiredroles', 0, N'SELECT * FROM CMS_Role WHERE RoleID IN (SELECT RoleID FROM View_CMS_RoleResourcePermission_Joined WHERE PermissionName=@PermissionName AND ResourceName=@ResourceName) AND (SiteID=@SiteID OR SiteID IS NULL)', 0, 134, 0, '20110207 18:13:36', '34fc482a-6ec6-4ee6-9d89-c67d311f34a9', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (339, N'selectrequiredroles', 0, N'SELECT * FROM CMS_Role WHERE RoleID IN (SELECT RoleID FROM CMS_RolePermission WHERE PermissionID IN (SELECT PermissionID FROM CMS_Permission WHERE ClassID=@ClassID AND PermissionName=@PermissionName)) AND (SiteID=@SiteID OR SiteID IS NULL)', 0, 145, 0, '20110208 11:49:11', 'f2dac7f2-dcb7-419a-b627-7efded496b36', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (10546, N'GetRolePermissionMatrix', 0, N'SELECT ##TOPN## Matrix.##COLUMNS##, CASE WHEN CMS_RolePermission.RoleID IS NULL THEN 0 ELSE 1 END AS Allowed, @PermissionID AS PermissionID, @PermissionDisplayName AS PermissionDisplayName FROM (SELECT CMS_Role.RoleID, CMS_Role.Rolename, CMS_Role.RoleDisplayName FROM CMS_Role WHERE RoleID IN (SELECT RoleID FROM CMS_Role WHERE ##WHERE## AND ((@SiteID = 0 AND SiteID IS NULL) OR SiteID = @SiteID))) Matrix LEFT JOIN CMS_RolePermission ON ( CMS_RolePermission.RoleID = Matrix.RoleID AND CMS_RolePermission.PermissionID = @PermissionID) ORDER BY ##ORDERBY##', 0, 131, 0, '20110215 11:52:21', '2298bc40-90dd-4188-8879-c2625db621e1', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12441, N'getactiveserverids', 0, N'SELECT CMS_SMTPServer.ServerID FROM CMS_SMTPServer INNER JOIN CMS_SMTPServerSite ON CMS_SMTPServer.ServerID = CMS_SMTPServerSite.ServerID WHERE ServerEnabled = 1 AND SiteID = @SiteID ORDER BY CMS_SMTPServer.ServerID', 0, 2804, 0, '20110217 14:58:53', '56a70d47-984b-47be-8b2b-cea7122b54a2', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12404, N'deletebindings', 0, N'DELETE FROM CMS_SMTPServerSite WHERE ServerID = @ServerID', 0, 2805, 0, '20110217 14:59:15', 'd2cdb486-0452-40b4-9552-9ffbc17a4dcc', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12476, N'selectallwithmembership', 0, N'SELECT ##TOPN## ##COLUMNS## FROM [View_Membership_MembershipUser_Joined] WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2820, 0, '20110228 13:05:25', '0a8bba1a-2518-4fa6-9375-05e60a374956', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12489, N'selectuserrole', 0, N'SELECT ##TOPN## ##COLUMNS## FROM [View_CMS_UserRole_Joined] WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 109, 0, '20110228 13:23:45', 'd345dc8f-310e-42fb-956a-c0de8a00817a', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12538, N'removedependencies', 1, N'Proc_CMS_Membership_RemoveDependencies', 0, 2785, 0, '20110303 12:56:43', 'aaad303c-737e-42c6-a095-c40713c1670a', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12548, N'removedependencies', 1, N'Proc_CMS_WebPartContainer_RemoveDependencies', 0, 929, 0, '20110307 09:48:45', 'd97c3939-e297-4f68-9861-b1276104ebc5', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12549, N'removedependencies', 1, N'Proc_CMS_WebFarmServer_RemoveDependencies', 0, 1093, 0, '20110307 09:50:20', '642372bb-03a6-4ff9-ba3b-392127afde65', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12550, N'removedependencies', 1, N'Proc_CMS_WebFarmTask_RemoveDependencies', 0, 1094, 0, '20110307 09:51:05', 'b1d60fe0-a587-4c9d-833e-e98dd9188a46', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12551, N'removedependencies', 1, N'Proc_CMS_Role_RemoveDependencies', 0, 56, 0, '20110307 09:52:03', '008a870b-9111-4a83-82ad-19771a2d2aaa', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12552, N'removedependencies', 1, N'Proc_CMS_User_RemoveDependencies', 0, 59, 0, '20110307 09:53:33', 'd271ea22-8f88-48b9-b5e5-0d496f00cf4a', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12553, N'removedependencies', 1, N'Proc_CMS_SearchIndex_RemoveDependencies', 0, 2043, 0, '20110307 09:54:29', '99349c99-ee5c-44df-b089-559f23a13f8c', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12563, N'SelectOlderVersions', 0, N'SELECT ##COLUMNS## FROM CMS_ObjectVersionHistory WHERE VersionObjectID = @ObjectID AND VersionObjectType = @ObjectType AND VersionID NOT IN (SELECT ##TOPN## VersionID FROM CMS_ObjectVersionHistory WHERE VersionObjectID = @ObjectID AND VersionObjectType = @ObjectType ORDER BY VersionID DESC)', 0, 2828, 0, '20110307 15:13:20', 'a0cbaeca-8b6d-47e5-9bfa-8224aa60b28a', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12571, N'changeobjectid', 0, N'UPDATE CMS_ObjectVersionHistory SET VersionObjectID = @NewObjectID WHERE VersionObjectID = @OriginalObjectID AND VersionObjectType = @ObjectType', 0, 2828, 0, '20110308 13:21:00', '9deace2f-1f63-491d-9957-f9be0d27ea41', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (7619, N'selectnobinary', 0, N'SELECT [MetaFileID], [MetaFileObjectID], [MetaFileObjectType], [MetaFileGroupName], [MetaFileName], [MetaFileExtension], [MetaFileSize], [MetaFileMimeType], [MetaFileImageWidth], [MetaFileImageHeight], [MetaFileGUID], [MetaFileLastModified], [MetaFileSiteID], [MetaFileTitle], [MetaFileDescription], [MetaFileCustomData] FROM CMS_MetaFile WHERE [MetaFileID] = @ID', 0, 1527, 0, '20081229 09:07:12', 'b944b047-6373-43df-b3ac-6bfc48c37cf2', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (5215, N'selectallnobinary', 0, N'SELECT ##TOPN## [MetaFileID], [MetaFileObjectID], [MetaFileObjectType], [MetaFileGroupName], [MetaFileName], [MetaFileExtension], [MetaFileSize], [MetaFileMimeType], [MetaFileImageWidth], [MetaFileImageHeight], [MetaFileGUID], [MetaFileLastModified], [MetaFileSiteID], [MetaFileTitle], [MetaFileDescription], [MetaFileCustomData] ##COLUMNS## FROM CMS_MetaFile WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1527, 0, '20110214 21:47:07', 'a4575f5c-0287-4224-9a35-82769e6ff369', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12597, N'CheckEnabledOptions', 0, N'SELECT TOP 1 SKUID 
FROM COM_SKU
WHERE SKUOptionCategoryID IN
(
  SELECT c.CategoryID 
  FROM COM_SKUOptionCategory AS sc LEFT OUTER JOIN COM_OptionCategory AS c ON (sc.CategoryID = c.CategoryID)
  WHERE sc.SKUID = @SKUID AND c.CategoryEnabled = 1
)
AND SKUEnabled = 1', 0, 1159, 0, '20110316 16:53:21', '5b090173-2352-40df-977f-28edde55bb40', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11799, N'isauthorizedperproject', 0, N'SELECT PM_ProjectRolePermission.ProjectID, PM_ProjectRolePermission.RoleID, 
PM_ProjectRolePermission.PermissionID, CMS_Permission.PermissionName FROM 
PM_ProjectRolePermission INNER JOIN CMS_Permission ON CMS_Permission.PermissionID =
 PM_ProjectRolePermission.PermissionID WHERE (PM_ProjectRolePermission.ProjectID =
  @ProjectID) AND ((PM_ProjectRolePermission.RoleID IN (
      SELECT RoleID FROM View_CMS_UserRoleMembershipRole WHERE (SiteID IS NULL OR SiteID = @SiteID) AND (UserID =@UserID) AND
       (ValidTo IS NULL OR ValidTo > @ValidTo))
   )
    OR (PM_ProjectRolePermission.RoleID IN (SELECT CMS_Role.RoleID FROM CMS_Role WHERE RoleName IN 
    (##GENERICROLES##) AND CMS_Role.SiteID=@SiteID)))', 0, 2742, 0, '20110325 10:21:19', '7b3c6328-c36f-484d-89e6-ff83a29045f9', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12793, N'selectfromview', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_OM_Account_Joined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2837, 0, '20110401 10:44:13', '5cf88ac3-8cc2-44a4-91be-6c17afe39525', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12445, N'selectlastvalidrate', 0, N'SELECT ExchangeRateValue 
FROM COM_CurrencyExchangeRate INNER JOIN COM_ExchangeTable ON COM_CurrencyExchangeRate.ExchangeTableID = COM_ExchangeTable.ExchangeTableID 
WHERE ((ExchangeRateToCurrencyID = @CurrencyID) AND (ISNULL(COM_ExchangeTable.ExchangeTableSiteID, 0) = @SiteID) AND ((ExchangeTableValidFrom <= @CurrentDate) OR (ExchangeTableValidFrom IS NULL)) AND ((ExchangeTableValidTo >= @CurrentDate) OR (ExchangeTableValidTo IS NULL))) 
ORDER BY ExchangeTableValidFrom DESC, CASE WHEN ExchangeTableValidTo IS NULL THEN 2 ELSE 1 END, ExchangeTableValidTo', 0, 1202, 0, '20110401 13:56:32', '3bae8d74-46c7-4da3-892b-69e982067153', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11654, N'deleteall', 0, N'DELETE FROM Messaging_Message WHERE ##WHERE## AND (MessageRecipientDeleted = 1) AND (MessageSenderDeleted = 1)', 0, 1593, 1, '20110407 09:50:51', '18776c73-1a60-4818-b0d1-4eeff52e3ee3', 0, 1, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (2981, N'selectallWithExchangeRate', 0, N'SELECT * FROM COM_Currency WHERE CurrencyID IN (SELECT ExchangeRateToCurrencyID FROM COM_CurrencyExchangeRate WHERE COM_CurrencyExchangeRate.ExchangeTableID = @TableID) AND (CurrencyEnabled = 1) AND (ISNULL(CurrencySiteID, 0) = @SiteID)', 0, 1143, 0, '20110407 14:03:03', 'e12a3863-f3fb-4e15-af29-ddbff0889a52', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (4152, N'selecttree', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_CMS_Tree_Joined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 144, 0, '20110413 00:15:02', '0855b378-64da-4093-a680-707bbf6b3349', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (4153, N'selecttreeversions', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_CMS_Tree_Joined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 144, 0, '20110413 00:37:43', '7b3edbd9-6857-49a2-843f-31b6d9fbcf64', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12909, N'checkdependencies', 0, N'SELECT AccountStatusID 
FROM OM_AccountStatus
WHERE AccountStatusID IN 
  (SELECT AccountStatusID FROM OM_Account  WHERE AccountStatusID = @ID)', 0, 2840, 0, '20110421 17:03:19', '5135c023-702f-4124-a023-11ed0a3daa69', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (686, N'selectpageinfo', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_PageInfo WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 143, 0, '20110422 09:30:50', '294567cf-f826-471c-8eb2-01443e243beb', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12888, N'selectcountforsites', 0, N'SELECT EmailSiteID, COUNT(EmailSiteID) as EmailCount FROM CMS_Email WHERE ##WHERE## GROUP BY EmailSiteID', 0, 1809, 0, '20110422 11:20:17', 'df7584a7-8f89-4d64-96e6-fc792a0919d0', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12910, N'removedependencies', 1, N'Proc_OM_Contact_RemoveDependencies', 1, 2841, 0, '20110422 13:24:24', '66d46ca0-798f-4401-89a5-ba348c9f5df6', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12911, N'selectDocumentsAdvanced', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_CMS_Tree_Joined
LEFT JOIN CMS_WorkflowStep ON View_CMS_Tree_Joined.DocumentWorkflowStepID=CMS_WorkflowStep.StepID
LEFT JOIN CMS_Culture ON View_CMS_Tree_Joined.DocumentCulture = CMS_Culture.CultureCode
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 144, 0, '20110422 14:36:36', '54042032-d8d6-494f-9f12-21a2a42be936', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (7566, N'selectroles', 0, N'SELECT ##TOPN## ##COLUMNS## FROM 
(
  SELECT CMS_Role.*, ValidTo FROM CMS_Role JOIN CMS_UserRole ON CMS_Role.RoleID = CMS_UserRole.RoleID WHERE  UserID = @UserID
  UNION ALL
  SELECT *,NULL FROM CMS_Role  WHERE RoleName IN (##GENERICROLES##) 
) 
AS X WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 59, 0, '20110427 13:22:15', 'ca5aa200-7fe1-4c51-82a5-b41e97889bf1', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (10326, N'selectAllUserDocuments', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_CMS_UserDocuments WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 144, 0, '20110504 17:48:07', '4b4953f4-639a-46c0-a8f3-91719fba3b8f', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12839, N'selectfromcontactview', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_OM_AccountContact_ContactJoined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2848, 0, '20110510 10:13:14', 'e5c99dce-662d-4714-b2bc-f0048c13d13b', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13010, N'selectfromaccountview', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_OM_AccountContact_AccountJoined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2848, 0, '20110510 10:19:12', 'af4052e1-6ce2-4469-a5d5-0dc70570e6c6', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13011, N'removedependencies', 1, N'Proc_OM_Activity_RemoveDependencies', 0, 2854, 0, '20110511 14:17:42', 'd993f079-eebf-4d88-abb6-62473e1e2931', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13041, N'selectlog', 0, N'SELECT ##TOPN## ##COLUMNS## FROM Staging_SyncLog INNER JOIN Staging_Server ON Staging_SyncLog.SyncLogServerID = Staging_Server.ServerID
INNER JOIN Staging_Task ON Staging_SyncLog.SyncLogTaskID = Staging_Task.TaskID
WHERE (TaskID = @TaskID OR @TaskID = 0) AND (ServerID = @ServerID OR @ServerID = 0) AND ##WHERE## ORDER BY ##ORDERBY##', 0, 2886, 0, '20110515 19:28:53', '6a295ecf-328a-4e3d-8295-a8161cfea571', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13061, N'removedependencies', 1, N'Proc_Integration_Task_RemoveDependencies', 0, 2885, 0, '20110518 18:17:10', '80c0fceb-11d6-4b11-8e32-5b14c69f8525', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13040, N'removedependencies', 1, N'Proc_Integration_Connector_RemoveDependencies', 0, 2884, 0, '20110518 18:17:20', '70a29941-0d8f-4fe6-a6e9-a2e6af5ac159', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13075, N'setidpath', 0, N'UPDATE [CMS_Category] SET  [CategoryIDPath] = @Path WHERE [CategoryID] = @ID', 0, 1721, 0, '20110519 16:01:15', 'bea19964-b508-4a02-877f-00845a509b2c', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13076, N'logexitpage', 0, N'IF ((SELECT COUNT(*) FROM [Analytics_ExitPages] WHERE ExitPageLastModified < @Date) >= 0)
BEGIN
    DELETE FROM [Analytics_ExitPages] WHERE SessionIdentificator = @SessionID
    INSERT INTO [Analytics_ExitPages] ([SessionIdentificator], [ExitPageNodeID], [ExitPageLastModified], [ExitPageSiteID], [ExitPageCulture]) VALUES (@SessionID, @NodeID, @Date, @SiteID, @Culture)
END', 1, 1366, 0, '20110520 15:46:02', '843ace51-9c16-4148-af62-402104631b04', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13079, N'deleteselected', 0, N'DELETE FROM CMS_EmailUser WHERE ##WHERE##', 1, 1926, 0, '20110522 21:19:49', 'c7adbc9e-d62e-40b5-9733-b498dd675714', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13081, N'selectexitpages', 0, N'SELECT ##TOPN## ##COLUMNS## FROM [Analytics_ExitPages] WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1366, 0, '20110523 14:09:46', '5caae63f-9d54-4d66-9cfa-e0b41d1ab5df', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13082, N'removeexitpages', 0, N'DELETE FROM [Analytics_ExitPages] WHERE ##WHERE##', 0, 1366, 0, '20110523 14:12:48', 'd34a6e96-3fd0-462e-8a6f-30b303139b8c', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13091, N'removechildversions', 1, N'Proc_CMS_Class_RemoveChildVersions', 0, 145, 0, '20110524 16:38:55', '26f1bd02-12c7-470e-a682-825c13d2b26c', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13092, N'removechildversions', 1, N'Proc_CMS_Site_RemoveChildVersions', 0, 52, 0, '20110524 17:13:09', 'afbabb00-5464-428f-a1e9-ad2d9272c244', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13094, N'removechildversions', 1, N'Proc_Reporting_ReportCategory_RemoveChildVersions', 0, 1431, 0, '20110524 18:10:12', '18192925-fe6d-44d5-9df1-e77eddbcc919', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13107, N'resetaccountmaincontacts', 0, N'UPDATE OM_Account SET [AccountPrimaryContactID] = NULL WHERE [AccountPrimaryContactID] ##WHERE##;UPDATE OM_Account SET [AccountSecondaryContactID] = NULL WHERE [AccountSecondaryContactID] ##WHERE##', 0, 2848, 0, '20110526 13:10:18', '91bde9ee-4799-46ad-bdd4-8db5dd481780', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (440, N'selectdocumentstobepublished', 0, N'SELECT VersionHistoryID FROM CMS_VersionHistory WHERE WasPublishedFrom IS NULL AND ((PublishFrom IS NULL OR (PublishFrom IS NOT NULL AND PublishFrom <= @DateNow)) AND (PublishTo IS NULL OR (PublishTo IS NOT NULL AND PublishTo >= @DateNow))) AND ToBePublished = 1 AND NodeSiteID = @NodeSiteID ORDER BY PublishFrom', 0, 214, 0, '20110527 09:50:29', '2f0ee8ce-a253-4469-ab3c-4b6364e317bf', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (11811, N'getPermissionMatrix', 0, N'SELECT ##TOPN## Matrix.##COLUMNS##, CASE WHEN PM_ProjectRolePermission.RoleID IS NULL THEN 0 ELSE 1 END AS Allowed 
FROM 
  (
    SELECT CMS_Permission.PermissionID, CMS_Permission.PermissionDisplayName, CMS_Permission.PermissionName, CMS_Permission.PermissionDescription, CMS_Role.RoleID, CMS_Role.Rolename, CMS_Role.RoleDisplayName , CMS_Role.SiteID
    FROM CMS_Permission, CMS_Role 
    WHERE 
      ResourceID = @ID AND 
      RoleID IN (
        SELECT RoleID 
        FROM CMS_Role 
        WHERE
          ##WHERE## AND
          (SiteID IS NULL OR SiteID = @SiteID)
      )
  ) Matrix
  LEFT JOIN PM_ProjectRolePermission ON (Matrix.PermissionID = PM_ProjectRolePermission.PermissionID AND PM_ProjectRolePermission.RoleID = Matrix.RoleID AND PM_ProjectRolePermission.ProjectID = @ProjectID)
ORDER BY ##ORDERBY##', 0, 2743, 0, '20110527 16:48:06', '37bed004-408f-4714-aea7-73d1ec7256d6', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (9194, N'getPermissionMatrix', 0, N'SELECT ##TOPN## Matrix.##COLUMNS##, CASE WHEN CMS_WidgetRole.RoleID IS NULL THEN 0 ELSE 1 END AS Allowed FROM 
(SELECT CMS_Permission.PermissionID, CMS_Permission.PermissionDisplayName, CMS_Permission.PermissionName, CMS_Permission.PermissionDescription, 
CMS_Role.RoleID, CMS_Role.Rolename, CMS_Role.RoleDisplayName FROM CMS_Permission, CMS_Role WHERE ResourceID = @ID AND RoleID IN (SELECT RoleID FROM
CMS_Role WHERE ##WHERE## AND ((@SiteID = 0 AND SiteID IS NULL) OR SiteID = @SiteID))) Matrix LEFT JOIN CMS_WidgetRole ON (Matrix.PermissionID = CMS_WidgetRole.PermissionID
AND CMS_WidgetRole.RoleID = Matrix.RoleID AND CMS_WidgetRole.WidgetID = @WidgetID) ORDER BY ##ORDERBY##', 0, 2199, 0, '20110530 12:05:23', '1a8f6835-55a4-4f6d-959c-49dba76cc2d1', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13110, N'removechildversions', 1, N'Proc_Newsletter_Newsletter_RemoveChildVersions', 0, 913, 0, '20110530 13:37:43', 'c7ea2776-9cf9-4b2d-aa15-b6496018f40a', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13093, N'removechildversions', 1, N'Proc_Reporting_Report_RemoveChildVersions', 0, 1338, 0, '20110530 13:44:05', '20a6b62f-99f0-4255-9461-7c1fab919d47', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (9282, N'UpdateChildPaths', 1, N'Proc_CMS_PageTemplateCategory_UpdateChildPaths', 0, 405, 0, '20110603 10:38:57', '3699d623-d276-4646-8eed-273e6c2b972d', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13126, N'selectfromaccountview', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_OM_ContactGroupMember_AccountJoined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2852, 0, '20110603 11:11:28', '0b7c2bc9-e8e0-42a9-ab48-84a22bd0ea88', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13131, N'selectnobinary', 0, N'SELECT [AvatarID], [AvatarName], [AvatarFileName], [AvatarFileExtension], [AvatarType], [AvatarIsCustom], [AvatarGUID], [AvatarLastModified], [AvatarMimeType], [AvatarFileSize], [AvatarImageHeight], [AvatarImageWidth], [DefaultMaleUserAvatar], [DefaultFemaleUserAvatar], [DefaultGroupAvatar], [DefaultUserAvatar] FROM CMS_Avatar WHERE [AvatarID] = @ID', 0, 1750, 0, '20110607 08:54:16', 'dc58512a-eb9c-42b7-9e57-805a9712ea71', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (6369, N'selectallnobinary', 0, N'SELECT ##TOPN## [AvatarID], [AvatarName], [AvatarFileName], [AvatarFileExtension], [AvatarType], [AvatarIsCustom], [AvatarGUID], [AvatarLastModified], [AvatarMimeType], [AvatarFileSize], [AvatarImageHeight], [AvatarImageWidth], [DefaultMaleUserAvatar], [DefaultFemaleUserAvatar], [DefaultGroupAvatar], [DefaultUserAvatar] ##COLUMNS## FROM CMS_Avatar WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1750, 0, '20110607 08:54:16', '16f35b14-65e9-4fe5-be8f-1d0c917c3021', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (5216, N'selectallnobinary', 0, N'SELECT ##TOPN## [SavedGraphID], [SavedGraphSavedReportID], [SavedGraphGUID], [SavedGraphMimeType], [SavedGraphLastModified] ##COLUMNS## FROM Reporting_SavedGraph WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1349, 0, '20110607 08:54:39', '638a5e00-dc41-4c77-b6fe-1cd71527a040', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (7618, N'selectallnobinary', 0, N'SELECT ##TOPN## [AttachmentID], [AttachmentFileName], [AttachmentFileExtension], [AttachmentGUID], [AttachmentLastModified], [AttachmentMimeType], [AttachmentFileSize], [AttachmentImageHeight], [AttachmentImageWidth], [AttachmentPostID], [AttachmentSiteID] ##COLUMNS## FROM Forums_Attachment WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1912, 0, '20110607 08:55:36', '547c28c6-a985-4a54-a1c8-9322bbabab36', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (7615, N'selectnobinary', 0, N'SELECT [AttachmentID], [AttachmentName], [AttachmentExtension], [AttachmentSize], [AttachmentMimeType], [AttachmentGUID], [AttachmentLastModified], [AttachmentContentID], [AttachmentSiteID] FROM CMS_EmailAttachment WHERE [AttachmentID] = @ID', 0, 1790, 0, '20110607 08:55:51', 'a19dc9e1-5c7a-4fc7-8695-692e4702b1f2', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (7616, N'selectallnobinary', 0, N'SELECT ##TOPN## [AttachmentID], [AttachmentName], [AttachmentExtension], [AttachmentSize], [AttachmentMimeType], [AttachmentGUID], [AttachmentLastModified], [AttachmentContentID], [AttachmentSiteID] ##COLUMNS## FROM CMS_EmailAttachment WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1790, 0, '20110607 08:55:51', '3e4ace97-04ee-40a9-84e9-1bc59e6c6d49', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13142, N'removedependencies', 1, N'Proc_CMS_Country_RemoveDependencies', 0, 1125, 0, '20110608 13:20:25', '22a2f5c7-511f-45d6-861d-dbed33f029e8', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13153, N'selectfrommembershipview', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_OM_Account_MembershipJoined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2837, 0, '20110609 14:02:34', '0824b36a-27a6-464a-986d-15941fc71c10', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13176, N'selectconnectors', 0, N'SELECT DISTINCT ##TOPN## ConnectorName FROM View_Integration_Task_Joined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2887, 0, '20110613 15:44:37', '97bc5437-581a-498f-aa53-48d208194082', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13177, N'selectlist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_CMS_DocumentAlias_Joined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1719, 0, '20110615 10:07:32', '1fd90b0b-08a6-4798-89e4-a25529412776', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (2766, N'selectlist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_COM_Customer_Joined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1157, 0, '20110615 10:46:30', 'c5b8ff49-36ba-4886-a170-b38953d8ac0c', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (5347, N'selectlist', 0, N'SELECT CMS_PageTemplateCategory.*, (SELECT COUNT(PageTemplateID) FROM CMS_PageTemplate WHERE CMS_PageTemplate.PageTemplateCategoryID=CMS_PageTemplateCategory.CategoryID) AS PageTemplateCount FROM CMS_PageTemplateCategory WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 405, 0, '20110615 10:48:01', '64b959d5-ca01-4aab-a467-ad473346e0ff', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12585, N'selectlist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_CMS_ObjectVersionHistoryUser_Joined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2828, 0, '20110615 10:48:43', 'fd90c0e5-6957-4e47-a62a-01e885b3d33c', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13059, N'selectlist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_Integration_Task_Joined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2885, 0, '20110615 10:49:13', '29e295ea-e2ac-4993-9f1c-64b4f77e2405', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (9711, N'getboardlist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM Board_Board 
JOIN View_CMS_Tree_Joined ON (BoardDocumentID = DocumentID) AND (NodeLinkedNodeID IS NULL) AND ##WHERE##', 0, 1788, 0, '20110616 09:33:31', '94fdff4e-1ff3-48a5-bfb5-e4135250b5aa', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13213, N'generatesampledata', 1, N'Proc_Analytics_GenerateSampleData', 0, 1366, 0, '20110616 11:53:31', '61ba281e-f1c9-4e13-a742-63cea3f226f1', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13214, N'moverelations', 1, N'Proc_OM_Contact_MoveRelations', 0, 2841, 0, '20110617 10:49:47', '0ee0127b-30d6-4c42-bb90-5a5a06225c08', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13215, N'splitrelations', 1, N'Proc_OM_Contact_SplitRelations', 0, 2841, 0, '20110620 09:56:24', '1b5b3dc8-e314-416c-8626-ae895ab02fa5', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13216, N'duplicaterelations', 1, N'Proc_OM_Contact_DuplicateRelations', 0, 2841, 0, '20110620 13:13:13', '4cf8d785-5a1c-4014-91f2-0e86654e0ff6', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13217, N'removedependencies', 1, N'Proc_Integration_Synchronization_RemoveDependencies', 0, 2887, 0, '20110620 14:17:53', '86c59225-9de9-4d57-ad8d-67fa49f99de8', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13055, N'deleteallconversioncampaign', 0, N'DELETE FROM Analytics_ConversionCampaign WHERE ##WHERE##', 0, 2890, 0, '20110621 15:33:06', '83faa88e-37f0-46f4-933c-b671fae3552b', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13237, N'getlastlogged', 0, N'SELECT TOP 1 ContactID
FROM OM_Contact 
LEFT JOIN OM_Activity ON OM_Activity.ActivityActiveContactID = OM_Contact.ContactID 
WHERE ##WHERE##
GROUP BY ContactID, ActivityCreated
ORDER BY ActivityCreated DESC', 0, 2841, 0, '20110623 16:44:11', '92440064-2f7a-4569-b94d-5307970fd606', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13238, N'getmostactive', 0, N'SELECT TOP 1 ContactID, COUNT(*) AS Number
FROM OM_Contact 
LEFT JOIN OM_Activity ON OM_Activity.ActivityActiveContactID = OM_Contact.ContactID 
WHERE ##WHERE##
GROUP BY ContactID
ORDER BY Number DESC', 0, 2841, 0, '20110623 17:07:10', '352a6e23-6e01-4d01-bdb3-0152cd70b5d9', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13250, N'removerelationship', 1, N'Proc_OM_Membership_RemoveRelationship', 0, 2853, 0, '20110628 08:07:26', '46331292-e85c-4b52-a0c4-dea9505a108d', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13252, N'updatemerged', 1, N'Proc_OM_Activity_UpdateMerged', 0, 2854, 0, '20110628 12:59:06', '57fd3380-c42c-4f11-9a84-345c8a0a82d1', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13271, N'removedependencies', 0, N'UPDATE OM_Contact SET ContactStatusID = NULL WHERE ContactStatusID = @ID;', 0, 2843, 0, '20110710 19:02:59', '78cbc11b-9944-4545-bd0f-5853c87e9fd2', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13272, N'removedependencies', 0, N'UPDATE OM_AccountContact SET ContactRoleID = NULL WHERE ContactRoleID = @ID;', 0, 2844, 0, '20110710 19:04:13', '69df3780-6aba-4a19-aa94-07f77b3b33ff', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13278, N'processlog', 0, N'INSERT INTO OM_Search ([SearchActivityID], [SearchProvider], [SearchKeywords] ) VALUES ( @SearchActivityID, @SearchProvider, @SearchKeywords); SELECT SCOPE_IDENTITY() AS [SearchID]', 0, 2860, 0, '20110713 12:53:37', '4748d086-29df-4701-b5fd-f0294cfabdce', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13282, N'GetStatisticsBoundaries', 0, N'SELECT MIN(HitsStartTime) AS DateFrom, MAX (HitsStartTime) AS DateTo FROM Analytics_DayHits
WHERE ##WHERE##', 0, 1366, 0, '20110714 11:07:07', 'cf28fb86-bcc9-4610-b2d0-8afea9c96370', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13299, N'addaccountcontacts', 1, N'Proc_OM_ContactGroupMember_UpdateMembersForAccount', 0, 2852, 0, '20110718 09:56:08', 'df4b15ee-7fc4-4d0e-9103-d565e17b42a1', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13276, N'processlog', 0, N'INSERT INTO OM_PageVisit ([PageVisitDetail], [PageVisitActivityID], [PageVisitABVariantName], [PageVisitMVTCombinationName] ) VALUES ( @PageVisitDetail, @PageVisitActivityID, @PageVisitABVariantName, @PageVisitMVTCombinationName); SELECT SCOPE_IDENTITY() AS [PageVisitID]', 0, 2858, 0, '20110718 19:44:27', 'b741ea2d-a4cf-4bcf-90a2-160f624abc05', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13311, N'removeaccountcontacts', 1, N'Proc_OM_ContactGroupMember_RemoveAccountContacts', 0, 2852, 0, '20110718 21:05:01', 'acde2e0d-d917-42c8-a27d-d39dee5aa299', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13342, N'addcontactintoaccount', 1, N'Proc_OM_ContactGroupMember_AddContactIntoAccount', 0, 2852, 0, '20110718 22:08:43', 'e6c57f0b-126b-4857-8529-851ac99e6c06', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13343, N'removecontactsfromaccount', 1, N'Proc_OM_ContactGroupMember_RemoveContactsFromAccount', 0, 2852, 0, '20110719 00:12:44', '8a0a0f00-00da-4c3a-adb7-0bba8d976001', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13344, N'RenameCampaignStatistics', 0, N'UPDATE Analytics_Statistics SET StatisticsCode = ''campconversion;''+@NewName 
WHERE StatisticsCode = ''campconversion;''+@OldName AND StatisticsSiteID = @SiteID
UPDATE Analytics_Statistics SET StatisticsObjectName = @NewName 
WHERE StatisticsCode = ''campaign'' AND StatisticsObjectName = @OldName AND StatisticsSiteID = @SiteID', 0, 2890, 0, '20110719 13:23:48', '66b1cb13-d594-4326-a41e-9f6382594290', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13350, N'RenameConversionStatistics', 0, N'UPDATE Analytics_Statistics SET StatisticsObjectName = @NewName WHERE StatisticsObjectName = @OldName AND StatisticsSiteID = @SiteID AND StatisticsCode = ''conversion''
UPDATE Analytics_Statistics SET StatisticsObjectName = @NewName WHERE  StatisticsCode LIKE ''abconversion;%'' AND StatisticsSiteID = @SiteID AND StatisticsObjectName = @OldName
UPDATE Analytics_Statistics SET StatisticsObjectName = @NewName WHERE  StatisticsCode LIKE ''mvtconversion;%'' AND StatisticsSiteID = @SiteID AND StatisticsObjectName = @OldName
UPDATE Analytics_Statistics SET StatisticsObjectName = @NewName WHERE  StatisticsCode LIKE ''campconversion;%'' AND StatisticsSiteID = @SiteID AND StatisticsObjectName = @OldName', 0, 2889, 0, '20110719 15:39:22', '529a9c1a-e6ce-4005-b406-e9547c3c30e2', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13270, N'removedependencies', 0, N'UPDATE OM_Account SET AccountStatusID = NULL WHERE AccountStatusID = @ID;', 0, 2840, 0, '20110719 16:32:40', '2210c241-0e7c-44a0-a279-5a9253282849', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13354, N'checkdependencies', 0, N'SELECT TOP 1 OrderItemSKUFileID FROM COM_OrderItemSKUFile WHERE FileID = @ID', 1, 2910, 0, '20110721 16:39:20', '4c1209f0-2953-48f3-9763-cdaa70b69236', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13355, N'removedependencies', 1, N'Proc_COM_OrderItem_RemoveDependencies', 1, 1161, 0, '20110721 17:00:21', '5b2ad551-c837-4f58-bad0-f9528b49378b', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13356, N'updatelastlogon', 0, N'UPDATE OM_Contact SET [ContactLastLogon]=@timestamp WHERE ContactID=@ContactID', 0, 2841, 0, '20110722 14:16:22', 'c0b1a820-16b5-4903-9a95-110e34587550', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13358, N'deleteoldermajorversions', 0, N'DELETE FROM CMS_ObjectVersionHistory WHERE VersionModifiedWhen < (SELECT MIN(VersionModifiedWhen) FROM (SELECT ##TOPN## VersionModifiedWhen FROM CMS_ObjectVersionHistory WHERE VersionObjectType LIKE @ObjectType AND VersionObjectID = @ObjectID AND VersionNumber LIKE N''%.0'' ORDER BY VersionModifiedWhen DESC) sub) AND VersionObjectType LIKE @ObjectType AND VersionObjectID = @ObjectID', 0, 2828, 0, '20110726 13:25:21', '7495bd9c-76ae-42b6-a930-27ae98093240', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13359, N'deleteolderminorversions', 0, N'DELETE FROM CMS_ObjectVersionHistory WHERE VersionModifiedWhen < (SELECT MIN(VersionModifiedWhen) FROM (SELECT ##TOPN## VersionModifiedWhen FROM CMS_ObjectVersionHistory WHERE VersionObjectType LIKE @ObjectType AND VersionObjectID = @ObjectID AND VersionNumber NOT LIKE N''%.0'' ORDER BY VersionModifiedWhen DESC) sub) AND VersionObjectType LIKE @ObjectType AND VersionObjectID = @ObjectID AND VersionNumber NOT LIKE N''%.0''', 0, 2828, 0, '20110726 13:27:33', '6eaa76f7-9bf3-4f2e-8d67-5ba4f93f1a19', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (7241, N'selectDocumentsCategories', 0, N'WITH AllData (CategoryID, CategoryDisplayName, CategoryName, CategoryCount, CategoryNamePath, CategoryIDPath, CategoryUserID, CategorySiteID, CategoryParentID)
AS
(
SELECT CMS_Category.CategoryID, CMS_Category.CategoryDisplayName, CMS_Category.CategoryName, count(DocumentID) as CategoryCount, CMS_Category.CategoryNamePath, CMS_Category.CategoryIDPath, CMS_Category.CategoryUserID, CMS_Category.CategorySiteID, CMS_Category.CategoryParentID
FROM CMS_Category INNER JOIN CMS_DocumentCategory ON CMS_Category.CategoryID = CMS_DocumentCategory.CategoryID WHERE (DocumentID IN (SELECT DocumentID FROM View_CMS_Tree_Joined WHERE ##WHERE## 
GROUP BY CMS_Category.CategoryID, CMS_Category.CategoryDisplayName, CMS_Category.CategoryName, CMS_Category.CategoryNamePath, CMS_Category.CategoryIDPath, CMS_Category.CategoryUserID, CMS_Category.CategorySiteID, CMS_Category.CategoryParentID
)
SELECT ##TOPN## CategoryID, CategoryDisplayName, CategoryName, CategoryCount, CategoryNamePath, CategoryIDPath, CategoryUserID, CategorySiteID, CategoryParentID 
FROM AllData AS cats
WHERE NOT EXISTS (SELECT CategoryID FROM AllData WHERE CategoryParentID = cats.CategoryID)
ORDER BY ##ORDERBY##', 0, 1721, 0, '20110728 15:18:03', '683ce131-02ae-4dce-b0bd-7706b04565bf', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13269, N'selectallwithdetails', 0, N'SELECT COM_OrderItemSKUFile.*, COM_SKUFile.FileName, COM_SKUFile.FilePath, COM_OrderItem.OrderItemSKUName, COM_OrderItem.OrderItemValidTo, COM_Order.OrderSiteID
FROM COM_OrderItemSKUFile
JOIN COM_SKUFile ON COM_SKUFile.FileID = COM_OrderItemSKUFile.FileID
JOIN COM_OrderItem ON COM_OrderItem.OrderItemID = COM_OrderItemSKUFile.OrderItemID
JOIN COM_Order ON COM_Order.OrderID = COM_OrderItem.OrderItemOrderID
WHERE (##WHERE##)
ORDER BY (##ORDERBY##)', 0, 2911, 0, '20110801 11:53:05', 'a805c371-de3f-40d6-97d8-e724b5fc867e', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13279, N'selectexpiring', 0, N'SELECT COM_OrderItem.*, COM_OrderItemSKUFile.Token, COM_SKUFile.FileName, COM_SKU.SKUProductType, COM_Order.OrderSiteID, COM_Customer.CustomerID, COM_Customer.CustomerEmail
FROM COM_OrderItem
JOIN COM_OrderItemSKUFile ON COM_OrderItemSKUFile.OrderItemID = COM_OrderItem.OrderItemID
JOIN COM_SKUFile ON COM_SKUFile.FileID = COM_OrderItemSKUFile.FileID
JOIN COM_SKU ON COM_SKU.SKUID = COM_OrderItem.OrderItemSKUID
JOIN COM_Order ON COM_Order.OrderID = COM_OrderItem.OrderItemOrderID
JOIN COM_Customer ON COM_Customer.CustomerID = COM_Order.OrderCustomerID
WHERE ((DATEDIFF(day, GETDATE(), COM_OrderItem.OrderItemValidTo) BETWEEN 0 AND @Days)
AND ((@OnlyWithSendNotification = 0) OR (COM_OrderItem.OrderItemSendNotification = 1))
AND ((@SiteID = 0) OR (COM_Order.OrderSiteID = @SiteID))
AND (##WHERE##))
ORDER BY (##ORDERBY##)', 0, 1161, 0, '20110801 17:40:31', '323d75ab-5bf1-4f9e-9c37-256417991334', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13248, N'selectexpiring', 0, N'SELECT CMS_MembershipUser.*, CMS_Membership.MembershipDisplayName, CMS_Membership.MembershipSiteID, CMS_User.Email
FROM CMS_MembershipUser
JOIN CMS_Membership ON CMS_Membership.MembershipID = CMS_MembershipUser.MembershipID
JOIN CMS_User ON CMS_User.UserID = CMS_MembershipUser.UserID
WHERE ((DATEDIFF(day, GETDATE(), CMS_MembershipUser.ValidTo) BETWEEN 0 AND @Days)
AND (ISNULL(CMS_Membership.MembershipSiteID, 0) = @SiteID)
AND ((@OnlyWithSendNotification = 0) OR (CMS_MembershipUser.SendNotification = 1))
AND (##WHERE##))
ORDER BY (##ORDERBY##)', 0, 2820, 0, '20110801 20:03:05', 'aa8ced47-9d9b-42fe-81ce-d4fc6c80382f', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13175, N'removedependencies', 1, N'Proc_OM_ContactGroup_RemoveDependencies', 1, 2850, 0, '20110803 18:30:12', '9b0d30d4-df6a-4a3d-8c98-c2f0aae7ee2c', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13428, N'fetchtask', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_Integration_Task_Joined WHERE (SynchronizationConnectorID=@SynchronizationConnectorID) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 2885, 0, '20110816 11:19:23', 'a9dbfb11-685c-4a07-b8d5-e91fe92eb284', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13472, N'recalculate', 1, N'Proc_OM_Score_UpdateContactScore', 0, 2940, 0, '20110818 08:45:48', '1a42a18a-62c2-437a-a2f2-221f666b2938', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13473, N'deletescorecontactrule', 0, N'DELETE FROM OM_ScoreContactRule WHERE ##WHERE##', 0, 2940, 0, '20110818 09:23:17', '55431bde-d0f6-4f78-af50-77eda104e583', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13489, N'removedependencies', 1, N'Proc_OM_Rule_RemoveDependencies', 0, 2920, 0, '20110818 18:16:35', 'cc428fa3-cc3d-4dfd-8f6f-f7ea697473f9', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13481, N'removedependencies', 1, N'Proc_OM_Score_RemoveDependencies', 1, 2940, 0, '20110818 19:46:45', 'c633e63f-6b05-4d5e-b3cb-1d62746f4815', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13499, N'selectdonations', 0, N'SELECT ##TOPN## ##COLUMNS## FROM COM_OrderItem
JOIN COM_SKU ON COM_SKU.SKUID = COM_OrderItem.OrderItemSKUID
JOIN COM_Order ON COM_Order.OrderID = COM_OrderItem.OrderItemOrderID
JOIN COM_Customer ON COM_Customer.CustomerID = COM_Order.OrderCustomerID
WHERE (COM_SKU.SKUProductType = ''DONATION'') AND (##WHERE##)
ORDER BY ##ORDERBY##', 0, 1161, 0, '20110825 09:35:05', 'cc0e5b79-7555-4fb7-bf9e-208982d7da30', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13682, N'selectfromscorecontactrule', 0, N'SELECT ##TOPN## ##COLUMNS## FROM [OM_ScoreContactRule] WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2940, 0, '20110901 15:54:33', '20894bca-1019-43b2-9b38-3c245677758d', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13694, N'setcontactsintoaccount', 1, N'Proc_OM_AccountContact_ContactsIntoAccount', 0, 2848, 0, '20110906 20:17:17', '4e407fe9-cfa5-4636-adcf-78efaae068d5', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13695, N'setaccountsintocontact', 1, N'Proc_OM_AccountContact_AccountsIntoContact', 0, 2848, 0, '20110906 20:55:30', '89e7e075-f73e-4e8b-b26c-77f32e79ee8e', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13696, N'GetUserMemberships', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_Membership JOIN CMS_MembershipUser ON CMS_Membership.MembershipID = CMS_MembershipUser.MembershipID WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2785, 0, '20110913 16:43:06', '7004880a-723b-442c-a132-6c61eafd05b5', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13704, N'UpdateAfterImport', 1, N'Proc_CMS_UIElement_UpdateAfterImport', 0, 2195, 0, '20110914 13:54:42', 'd97f2177-f6ca-4299-bb4a-3711457c0385', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13125, N'selectfromcontactview', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_OM_ContactGroupMember_ContactJoined WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2852, 0, '20110915 13:06:39', '080df39f-decb-4ab5-b3ce-a650b015f6ae', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (7614, N'selectnobinary', 0, N'SELECT [AttachmentHistoryID], [AttachmentName], [AttachmentExtension], [AttachmentSize], [AttachmentMimeType], [AttachmentImageWidth], [AttachmentImageHeight], [AttachmentDocumentID], [AttachmentGUID], [AttachmentIsUnsorted], [AttachmentOrder], [AttachmentGroupGUID], [AttachmentHash], [AttachmentTitle], [AttachmentDescription], [AttachmentCustomData], [AttachmentLastModified] FROM CMS_AttachmentHistory WHERE [AttachmentHistoryID] = @ID', 0, 516, 0, '20111006 02:12:00', '6dca814d-eab1-4cc6-b24d-474fd593027b', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (5213, N'selectallnobinary', 0, N'SELECT ##TOPN## [AttachmentHistoryID], [AttachmentName], [AttachmentExtension], [AttachmentSize], [AttachmentMimeType], [AttachmentImageWidth], [AttachmentImageHeight], [AttachmentDocumentID], [AttachmentGUID], [AttachmentIsUnsorted], [AttachmentOrder], [AttachmentGroupGUID], [AttachmentHash], [AttachmentTitle], [AttachmentDescription], [AttachmentCustomData], [AttachmentLastModified] ##COLUMNS## FROM CMS_AttachmentHistory WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 516, 0, '20111006 02:12:00', '0763b004-18de-4da5-bb7d-744cffaac363', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (4648, N'selectnobinary', 0, N'SELECT [AttachmentID], [AttachmentName], [AttachmentExtension], [AttachmentSize], [AttachmentMimeType], [AttachmentImageWidth], [AttachmentImageHeight], [AttachmentDocumentID], [AttachmentGUID], [AttachmentLastHistoryID], [AttachmentSiteID], [AttachmentLastModified], [AttachmentIsUnsorted], [AttachmentOrder], [AttachmentGroupGUID], [AttachmentFormGUID], [AttachmentHash], [AttachmentTitle], [AttachmentDescription], [AttachmentCustomData] FROM CMS_Attachment WHERE [AttachmentID] = @ID', 0, 504, 0, '20111006 02:13:44', '50e47a93-57e8-4d37-8af2-6478c50095db', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (5058, N'selectallnobinary', 0, N'SELECT ##TOPN## [AttachmentID], [AttachmentName], [AttachmentExtension], [AttachmentSize], [AttachmentMimeType], [AttachmentImageWidth], [AttachmentImageHeight], [AttachmentDocumentID], [AttachmentGUID], [AttachmentLastHistoryID], [AttachmentSiteID], [AttachmentLastModified], [AttachmentIsUnsorted], [AttachmentOrder], [AttachmentGroupGUID], [AttachmentFormGUID], [AttachmentHash], [AttachmentTitle], [AttachmentDescription], [AttachmentCustomData] ##COLUMNS## FROM CMS_Attachment WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 504, 0, '20111006 02:13:44', '58eaa6b7-7a49-4f7f-b09b-65f8b2ca64ed', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13038, N'SelectWithViews', 0, N'SELECT ##COLUMNS## FROM 
(SELECT Analytics_Conversion.*,StatisticsObjectName, SUM (HitsCount) AS HitsCount,SUM(HitsValue) AS HitsValues FROM
Analytics_Conversion 
LEFT JOIN Analytics_Statistics ON StatisticsCode = ''conversion'' AND StatisticsObjectName = ConversionName
LEFT JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
WHERE ##WHERE## GROUP BY ConversionLastModified,ConversionSiteID,
ConversionGUID,ConversionDescription,ConversionName,ConversionID,ConversionDisplayName,StatisticsObjectName ORDER BY ##ORDERBY##) AS X', 0, 2889, 0, '20111006 14:27:16', 'e221cdc3-e275-4b70-9b1f-24dede283e80', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13357, N'selectbyrelatedidandtype', 0, N'SELECT ActiveContactID AS ContactID FROM OM_Membership m WHERE m.RelatedID=@RelatedID AND m.MemberType=@MemberType AND EXISTS(SELECT ContactID FROM OM_Contact WHERE ContactID=m.ActiveContactID AND ContactSiteID=@SiteID AND ##WHERE##) ORDER BY ActiveContactID', 0, 2853, 0, '20111014 09:47:01', '429cd783-9ee2-4e07-9c1d-5ae0f08a5360', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (3366, N'selectallofsite', 0, N'SELECT * FROM Polls_Poll WHERE (PollID IN (SELECT PollID FROM Polls_PollSite WHERE SiteID=@SiteID) OR PollID IN (SELECT PollID FROM Polls_Poll WHERE PollSiteID=@SiteID)) ORDER BY ##ORDERBY##', 0, 1330, 0, '20111020 16:39:33', 'cd685f8b-8216-461a-8acf-9e9570cca3b4', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12973, N'removeanalyticsdata', 0, N'DECLARE @Year1Start datetime;
    DECLARE @Year1End datetime;
    DECLARE @Year2Start datetime;
    DECLARE @Year2End datetime;
    
    DECLARE @Week1Start datetime;
    DECLARE @Week1End datetime;
    DECLARE @Week2Start datetime;
    DECLARE @Week2End datetime;
    
    DECLARE @Month1Start datetime;
    DECLARE @Month1End datetime;
    DECLARE @Month2Start datetime;
    DECLARE @Month2End datetime;
    		
	-- Trim years
	SET @Year1Start = {%DatabaseSchema%}.Func_Analytics_DateTrim (@From ,''year'');
	SET @Year1End = {%DatabaseSchema%}.Func_Analytics_EndDateTrim (@From ,''year'');
	SET @Year2Start = {%DatabaseSchema%}.Func_Analytics_DateTrim (@To ,''year'');
	SET @Year2End = {%DatabaseSchema%}.Func_Analytics_EndDateTrim (@To ,''year'');	
	
	-- Trim months
	SET @Month1Start = {%DatabaseSchema%}.Func_Analytics_DateTrim (@From ,''month'');
	SET @Month1End = {%DatabaseSchema%}.Func_Analytics_EndDateTrim (@From ,''month'');
	SET @Month2Start = {%DatabaseSchema%}.Func_Analytics_DateTrim (@To ,''month'');
	SET @Month2End = {%DatabaseSchema%}.Func_Analytics_EndDateTrim (@To ,''month'');	
	
	-- Trim week
	SET @Week1Start = {%DatabaseSchema%}.Func_Analytics_DateTrim (@From ,''week'');
	SET @Week1End = {%DatabaseSchema%}.Func_Analytics_EndDateTrim (@From ,''week'');
	SET @Week2Start = {%DatabaseSchema%}.Func_Analytics_DateTrim (@To ,''week'');
	SET @Week2End = {%DatabaseSchema%}.Func_Analytics_EndDateTrim (@To ,''week'');	
SET NOCOUNT ON;
	DECLARE @HitsStatID int;
	DECLARE @Cnt int;
	DECLARE @CntL int;
	DECLARE @CntM int;
	DECLARE @CntR int;
       	DECLARE @ValL int;
	DECLARE @ValM int;
	DECLARE @ValR int;
	DECLARE @hitsID int;
	DECLARE @hitsCount int;
        DECLARE @hitsValue int;
	DECLARE mycursor CURSOR FOR SELECT HitsStatisticsID FROM Analytics_Statistics, Analytics_DayHits
		  WHERE (StatisticsSiteID=@SiteID OR @SiteID = 0) AND  (##WHERE##) AND
		  StatisticsID=HitsStatisticsID AND HitsStartTime >= @From AND
		  @To >= HitsEndTime
	OPEN mycursor;
	FETCH NEXT FROM mycursor INTO @HitsStatID
	WHILE @@FETCH_STATUS = 0
	BEGIN
-- WEEKS
    IF (@Week1End < @To)
    BEGIN
        SET @CntL = 0;
		SELECT @CntL = SUM(HitsCount),@ValL = SUM(HitsValue) FROM Analytics_Statistics, Analytics_DayHits
			  WHERE (##WHERE##) AND StatisticsID=HitsStatisticsID AND
		              HitsStartTime >= @From AND @Week1End >= HitsEndTime AND StatisticsID = @HitsStatID
		GROUP BY StatisticsID, StatisticsObjectName, StatisticsObjectID, StatisticsObjectCulture, HitsStatisticsID
		SET @hitsID = 0;
		SELECT @hitsID = HitsID, @hitsCount = HitsCount,@hitsValue = HitsValue FROM [Analytics_WeekHits]
		WHERE HitsStatisticsID=@HitsStatID AND HitsStartTime>=@Week1Start AND HitsEndTime<=@Week1End;
		IF @hitsID > 0
		BEGIN
			UPDATE [Analytics_WeekHits] SET HitsCount=(@hitsCount-@CntL), HitsValue=(@hitsValue-@ValL) WHERE HitsID=@hitsID;
		END;
    END
    IF (@Week2Start > @From)
    BEGIN
        SET @CntR = 0;
		SELECT @CntR = SUM(HitsCount),@ValR = SUM(HitsValue) FROM Analytics_Statistics, Analytics_DayHits
			  WHERE (##WHERE##) AND StatisticsID=HitsStatisticsID AND
              HitsStartTime >= @Week2Start AND @To >= HitsEndTime AND
              StatisticsID = @HitsStatID
		GROUP BY StatisticsID, StatisticsObjectName, StatisticsObjectID, StatisticsObjectCulture, HitsStatisticsID
		SET @hitsID = 0;
		SELECT @hitsID = HitsID, @hitsCount = HitsCount,@hitsValue = HitsValue FROM [Analytics_WeekHits]
		WHERE HitsStatisticsID=@HitsStatID AND HitsStartTime>=@Week2Start AND HitsEndTime<=@Week2End;
		IF @hitsID > 0
		BEGIN
			UPDATE [Analytics_WeekHits] SET HitsCount=(@hitsCount-@CntR),HitsValue=(@hitsValue-@ValR) WHERE HitsID=@hitsID;
		END;
    END
    IF (@Week1Start <= @From AND @To <= @Week1End)
    BEGIN
        SET @CntM = 0;
		SELECT @CntM = SUM(HitsCount),@ValM = SUM(HitsValue) FROM Analytics_Statistics, Analytics_DayHits
			  WHERE (##WHERE##)  AND StatisticsID=HitsStatisticsID AND
              HitsStartTime >= @From AND @To >= HitsEndTime AND
              StatisticsID = @HitsStatID
		GROUP BY StatisticsID, StatisticsObjectName, StatisticsObjectID, StatisticsObjectCulture, HitsStatisticsID
		SET @hitsID = 0;
		SELECT @hitsID = HitsID, @hitsCount = HitsCount,@hitsValue = HitsValue  FROM [Analytics_WeekHits]
		WHERE HitsStatisticsID=@HitsStatID AND HitsStartTime>=@Week1Start AND HitsEndTime<=@Week1End;
		IF @hitsID > 0
		BEGIN
			UPDATE [Analytics_WeekHits] SET HitsCount=(@hitsCount-@CntM),HitsValue=(@hitsValue-@ValM) WHERE HitsID=@hitsID;
		END;
    END;
-- MONTHS
    IF (@Month1End < @To)
    BEGIN
        SET @CntL = 0;
		SELECT @CntL = SUM(HitsCount),@ValL = SUM(HitsValue) FROM Analytics_Statistics, Analytics_DayHits
			  WHERE (##WHERE##)  AND StatisticsID=HitsStatisticsID AND
              HitsStartTime >= @From AND @Month1End >= HitsEndTime AND
              StatisticsID = @HitsStatID
		GROUP BY StatisticsID, StatisticsObjectName, StatisticsObjectID, StatisticsObjectCulture, HitsStatisticsID
		SET @hitsID = 0;
		SELECT @hitsID = HitsID, @hitsCount = HitsCount,@hitsValue = HitsValue FROM [Analytics_MonthHits]
		WHERE HitsStatisticsID=@HitsStatID AND HitsStartTime>=@Month1Start AND HitsEndTime<=@Month1End;
		IF @hitsID > 0
		BEGIN
			UPDATE [Analytics_MonthHits] SET HitsCount=(@hitsCount-@CntL),HitsValue=(@hitsValue-@ValL) WHERE HitsID=@hitsID;
		END;
    END
    IF (@Month2Start > @From)
    BEGIN
        SET @CntR = 0;
		SELECT @CntR = SUM(HitsCount),@ValR = SUM(HitsValue) FROM Analytics_Statistics, Analytics_DayHits
			  WHERE (##WHERE##)  AND StatisticsID=HitsStatisticsID AND
              HitsStartTime >= @Month2Start AND @To >= HitsEndTime AND
              StatisticsID = @HitsStatID
		GROUP BY StatisticsID, StatisticsObjectName, StatisticsObjectID, StatisticsObjectCulture, HitsStatisticsID
		SET @hitsID = 0;
		SELECT @hitsID = HitsID, @hitsCount = HitsCount,@hitsValue = HitsValue FROM [Analytics_MonthHits]
		WHERE HitsStatisticsID=@HitsStatID AND HitsStartTime>=@Month2Start AND HitsEndTime<=@Month2End;
		IF @hitsID > 0
		BEGIN
			UPDATE [Analytics_MonthHits] SET HitsCount=(@hitsCount-@CntR),HitsValue=(@hitsValue-@ValR) WHERE HitsID=@hitsID;
		END;
    END
    IF (@Month1Start <= @From AND @To <= @Month1End)
    BEGIN
        SET @CntM = 0;
		SELECT @CntM = SUM(HitsCount),@ValM = SUM(HitsValue) FROM Analytics_Statistics, Analytics_DayHits
			  WHERE (##WHERE##)  AND StatisticsID=HitsStatisticsID AND
              HitsStartTime >= @From AND @To >= HitsEndTime AND
              StatisticsID = @HitsStatID
		GROUP BY StatisticsID, StatisticsObjectName, StatisticsObjectID, StatisticsObjectCulture, HitsStatisticsID
		SET @hitsID = 0;
		SELECT @hitsID = HitsID, @hitsCount = HitsCount,@hitsValue = HitsValue FROM [Analytics_MonthHits]
		WHERE HitsStatisticsID=@HitsStatID AND HitsStartTime>=@Month1Start AND HitsEndTime<=@Month1End;
		IF @hitsID > 0
		BEGIN
			UPDATE [Analytics_MonthHits] SET HitsCount=(@hitsCount-@CntM),HitsValue=(@hitsValue-@ValM) WHERE HitsID=@hitsID;
		END;
    END;
-- YEARS
    IF (@Year1End < @To)
    BEGIN
        SET @CntL = 0;
		SELECT @CntL = SUM(HitsCount),@ValL = SUM(HitsValue) FROM Analytics_Statistics, Analytics_DayHits
			  WHERE (##WHERE##)  AND StatisticsID=HitsStatisticsID AND
              HitsStartTime >= @From AND @Year1End >= HitsEndTime AND
              StatisticsID = @HitsStatID
		GROUP BY StatisticsID, StatisticsObjectName, StatisticsObjectID, StatisticsObjectCulture, HitsStatisticsID
		SET @hitsID = 0;
		SELECT @hitsID = HitsID, @hitsCount = HitsCount,@hitsValue = HitsValue FROM [Analytics_YearHits]
		WHERE HitsStatisticsID=@HitsStatID AND HitsStartTime>=@Year1Start AND HitsEndTime<=@Year1End;
		IF @hitsID > 0
		BEGIN
			UPDATE [Analytics_YearHits] SET HitsCount=(@hitsCount-@CntL),HitsValue=(@hitsValue-@ValL) WHERE HitsID=@hitsID;
		END;
    END
    IF (@Year2Start > @From)
    BEGIN
        SET @CntR = 0;
		SELECT @CntR = SUM(HitsCount),@ValR = SUM(HitsValue) FROM Analytics_Statistics, Analytics_DayHits
			  WHERE (##WHERE##)  AND StatisticsID=HitsStatisticsID AND
              HitsStartTime >= @Year2Start AND @To >= HitsEndTime AND
              StatisticsID = @HitsStatID
		GROUP BY StatisticsID, StatisticsObjectName, StatisticsObjectID, StatisticsObjectCulture, HitsStatisticsID
		SET @hitsID = 0;
		SELECT @hitsID = HitsID, @hitsCount = HitsCount,@hitsValue = HitsValue FROM [Analytics_YearHits]
		WHERE HitsStatisticsID=@HitsStatID AND HitsStartTime>=@Year2Start AND HitsEndTime<=@Year2End;
		IF @hitsID > 0
		BEGIN
			UPDATE [Analytics_YearHits] SET HitsCount=(@hitsCount-@CntR),HitsValue=(@hitsValue-@ValR) WHERE HitsID=@hitsID;
		END;
    END
    IF (@Year1Start <= @From AND @To <= @Year1End)
    BEGIN
        SET @CntM = 0;
		SELECT @CntM = SUM(HitsCount),@ValM = SUM(HitsValue) FROM Analytics_Statistics, Analytics_DayHits
			  WHERE (##WHERE##)  AND StatisticsID=HitsStatisticsID AND
              HitsStartTime >= @From AND @To >= HitsEndTime AND
              StatisticsID = @HitsStatID
		GROUP BY StatisticsID, StatisticsObjectName, StatisticsObjectID, StatisticsObjectCulture, HitsStatisticsID
		SET @hitsID = 0;
		SELECT @hitsID = HitsID, @hitsCount = HitsCount,@hitsValue = HitsValue FROM [Analytics_YearHits]
		WHERE HitsStatisticsID=@HitsStatID AND HitsStartTime>=@Year1Start AND HitsEndTime<=@Year1End;
		IF @hitsID > 0
		BEGIN
			UPDATE [Analytics_YearHits] SET HitsCount=(@hitsCount-@CntM),HitsValue=(@hitsValue-@ValM) WHERE HitsID=@hitsID;
		END;
    END;
	    DELETE FROM [Analytics_HourHits] WHERE 
	      HitsStatisticsID=@HitsStatID AND HitsStartTime>=@From AND HitsEndTime<=@To;
	    DELETE FROM [Analytics_DayHits] WHERE 
	      HitsStatisticsID=@HitsStatID AND HitsStartTime>=@From AND HitsEndTime<=@To;
	    IF (@From <= @Week1End AND @Week2Start <= @To)
	    BEGIN
	    DELETE FROM [Analytics_WeekHits] WHERE 
	      HitsStatisticsID=@HitsStatID AND HitsStartTime>=@Week1End AND HitsEndTime<=@Week2Start;
	    END;
	    IF (@From <= @Month1End AND @Month2Start <= @To)
	    BEGIN
	    DELETE FROM [Analytics_MonthHits] WHERE 
	      HitsStatisticsID=@HitsStatID AND HitsStartTime>=@Month1End AND HitsEndTime<=@Month2Start;
	    END;    
	    IF (@From <= @Year1End AND @Year2Start <= @To)
	    BEGIN
	    DELETE FROM [Analytics_YearHits] WHERE 
	      HitsStatisticsID=@HitsStatID AND HitsStartTime>=@Year1End AND HitsEndTime<=@Year2Start;
	    END;    
		FETCH NEXT FROM mycursor INTO @HitsStatID
      END
	DEALLOCATE mycursor;
	-- Delete zero stats
	DELETE FROM [Analytics_HourHits] WHERE HitsCount <= 0
	DELETE FROM [Analytics_DayHits] WHERE HitsCount <= 0
	DELETE FROM [Analytics_MonthHits] WHERE HitsCount <= 0
	DELETE FROM [Analytics_WeekHits] WHERE HitsCount <= 0
	DELETE FROM [Analytics_YearHits] WHERE HitsCount <= 0
	DECLARE @stat TABLE (
	  StatisticsID int
	)
	-- Get stats ID with no stats
	INSERT INTO @stat SELECT StatisticsID FROM (
	(SELECT StatisticsID FROM [Analytics_Statistics] WHERE StatisticsID NOT IN (SELECT HitsStatisticsID FROM [Analytics_HourHits])) UNION
	(SELECT StatisticsID FROM [Analytics_Statistics] WHERE StatisticsID NOT IN (SELECT HitsStatisticsID FROM [Analytics_DayHits])) UNION
	(SELECT StatisticsID FROM [Analytics_Statistics] WHERE StatisticsID NOT IN (SELECT HitsStatisticsID FROM [Analytics_WeekHits])) UNION
	(SELECT StatisticsID FROM [Analytics_Statistics] WHERE StatisticsID NOT IN (SELECT HitsStatisticsID FROM [Analytics_MonthHits])) UNION
	(SELECT StatisticsID FROM [Analytics_Statistics] WHERE StatisticsID NOT IN (SELECT HitsStatisticsID FROM [Analytics_YearHits]))
	) as tab
	-- Remove dependencies
	DELETE FROM [Analytics_HourHits] WHERE HitsStatisticsID IN (SELECT StatisticsID FROM @stat)
	DELETE FROM [Analytics_DayHits] WHERE HitsStatisticsID IN (SELECT StatisticsID FROM @stat)
	DELETE FROM [Analytics_WeekHits] WHERE HitsStatisticsID IN (SELECT StatisticsID FROM @stat)
	DELETE FROM [Analytics_MonthHits] WHERE HitsStatisticsID IN (SELECT StatisticsID FROM @stat)
	DELETE FROM [Analytics_YearHits] WHERE HitsStatisticsID IN (SELECT StatisticsID FROM @stat)
	-- Remove master record
	DELETE FROM [Analytics_Statistics] WHERE StatisticsID IN (SELECT StatisticsID FROM @stat)', 0, 1366, 0, '20111027 13:43:52', 'ac926217-6c7e-4a18-ab63-b4fd67bd2b69', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13740, N'removeAllSiteAnalyticsData', 0, N'DELETE FROM Analytics_HourHits  WHERE HitsStatisticsID IN (
SELECT StatisticsID FROM Analytics_Statistics WHERE (##WHERE##) AND (StatisticsSiteID = @SiteID OR @SiteID = 0))    
DELETE FROM Analytics_DayHits  WHERE HitsStatisticsID IN (
SELECT StatisticsID FROM Analytics_Statistics WHERE (##WHERE##) AND (StatisticsSiteID = @SiteID OR @SiteID = 0))    
DELETE FROM Analytics_WeekHits  WHERE  HitsStatisticsID IN (
SELECT StatisticsID FROM Analytics_Statistics WHERE (##WHERE##) AND (StatisticsSiteID = @SiteID OR @SiteID = 0))    
DELETE FROM Analytics_MonthHits  WHERE HitsStatisticsID IN (
SELECT StatisticsID FROM Analytics_Statistics WHERE (##WHERE##) AND (StatisticsSiteID = @SiteID OR @SiteID = 0))    
DELETE FROM Analytics_YearHits  WHERE HitsStatisticsID IN (
SELECT StatisticsID FROM Analytics_Statistics WHERE (##WHERE##) AND (StatisticsSiteID = @SiteID OR @SiteID = 0))    
DELETE FROM Analytics_Statistics WHERE 
    StatisticsID NOT IN (SELECT HitsStatisticsID FROM Analytics_YearHits)   
AND StatisticsID NOT IN (SELECT HitsStatisticsID FROM Analytics_MonthHits)  
AND StatisticsID NOT IN (SELECT HitsStatisticsID FROM Analytics_WeekHits)   
AND StatisticsID NOT IN (SELECT HitsStatisticsID FROM Analytics_DayHits)  
AND StatisticsID NOT IN (SELECT HitsStatisticsID FROM Analytics_HourHits)', 0, 1366, 0, '20111027 13:44:51', '4e7cf950-c5cd-44e0-89fd-df65cb3f1754', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (2178, N'selectrecyclebin', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_VersionHistory LEFT JOIN CMS_Class ON CMS_Class.ClassID = VersionClassID
WHERE (VersionDeletedWhen IS NOT NULL) AND (NodeSiteID=@SiteID OR NodeSiteID IS NULL OR @SiteID = 0) AND ##WHERE## 
ORDER BY ##ORDERBY##', 0, 214, 0, '20111106 22:45:28', '686d7d53-3851-4958-868a-cc81e3cb31f7', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13895, N'ResetAllTasks', 0, N'UPDATE CMS_ScheduledTask SET TaskExecutions = 0 , TaskLastExecutionReset = @Now WHERE ##WHERE##', 0, 909, 0, '20111110 18:40:40', 'fc0e0e98-d7cc-48b2-bf6f-0f12bc513213', 0, NULL, NULL)
SET IDENTITY_INSERT [CMS_Query] OFF
