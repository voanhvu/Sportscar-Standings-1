SET IDENTITY_INSERT [CMS_Query] ON
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12744, N'SelectMembershipUserRoles', 0, N'SELECT DISTINCT ##TOPN## Y.RoleID,Y.RoleName,Y.SiteID,Y.UserID,Y.ValidTo,Y.RoleGroupID FROM
(
   SELECT DISTINCT  * FROM
   (
     SELECT CMS_Role.RoleID,CMS_Role.RoleName,CMS_Role.SiteID,CMS_UserRole.UserID,CMS_UserRole.ValidTo,CMS_Role.RoleGroupID,''user'' AS ''RoleType'' FROM CMS_Role
     INNER JOIN CMS_UserRole ON CMS_UserRole.RoleID = CMS_Role.RoleID  
     UNION ALL 
     SELECT CMS_Role.RoleID,CMS_Role.RoleName,CMS_Role.SiteID,CMS_MembershipUser.UserID,CMS_MembershipUser.ValidTo,CMS_Role.RoleGroupID,''membership'' AS ''RoleType'' FROM CMS_Role
     INNER JOIN CMS_MembershipRole ON CMS_MembershipRole.RoleID = CMS_Role.RoleID
     INNER JOIN CMS_MembershipUser ON CMS_MembershipUser.MembershipID= CMS_MembershipRole.MembershipID
     UNION ALL
     SELECT CMS_Role.RoleID,CMS_Role.RoleName,CMS_Role.SiteID,@UserID,NULL,CMS_Role.RoleGroupID,''user'' AS ''RoleType'' FROM CMS_Role  WHERE RoleName IN (##GENERICROLES##) 
   ) AS  X 
  WHERE ##WHERE## AND X.UserID = @UserID) 
  AS Y 
 ORDER BY ##ORDERBY##', 0, 59, 0, '20111111 12:03:27', '14d2e080-c4e9-4eb0-8a21-99f22668c592', 0, 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13906, N'removedependencies', 1, N'Proc_CMS_State_RemoveDependencies', 0, 1126, 0, '20111121 16:47:20', 'b4c8a49e-d4bc-4377-a2db-cd9cc18354e3', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13938, N'removedependencies', 1, N'Proc_Newsletter_EmailTemplate_RemoveDependencies', 0, 905, 0, '20111124 10:59:03', 'e6d521e2-9aa8-4eb2-84d4-e2dc84f07eb6', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (2765, N'selectolderversions', 0, N'SELECT ##COLUMNS## FROM CMS_VersionHistory WHERE DocumentID = @DocumentID AND VersionHistoryID NOT IN (SELECT TOP ##WHERE## VersionHistoryID FROM CMS_VersionHistory WHERE DocumentID = @DocumentID ORDER BY VersionHistoryID DESC) AND VersionHistoryID NOT IN (SELECT DocumentPublishedVersionHistoryID FROM CMS_Document WHERE DocumentID = @DocumentID AND DocumentPublishedVersionHistoryID IS NOT NULL)', 0, 214, 0, '20111205 10:35:33', '74975d5b-755b-4d38-a8ab-995d6950a1e4', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13892, N'RemoveDependencies', 1, N'Proc_CMS_WebPartLayout_RemoveDependencies', 0, 1514, 0, '20111205 15:26:01', 'e329e009-6633-4853-8a89-c3d4a049d0db', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (14004, N'SelectAllNodes', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_DocumentAlias LEFT JOIN Analytics_Campaign ON AliasCampaign = CampaignName AND CampaignSiteID = AliasSiteID
LEFT JOIN CMS_Tree ON AliasNodeID = NodeID LEFT JOIN CMS_Class ON NodeClassID = ClassID LEFT JOIN CMS_Site ON AliasSiteID=SiteID
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1719, 0, '20111207 13:39:15', '9638271d-1f6c-4701-ac36-d84d4b8a6e4d', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (10115, N'selectpreviousnext', 0, N'DECLARE @EventList TABLE (EventID INT, RN INT);
 INSERT INTO @EventList (EventID, RN) SELECT EventID, ROW_NUMBER() OVER (ORDER BY ##ORDERBY##) AS RN FROM View_CMS_EventLog_Joined WHERE ##WHERE##;
 DECLARE @num INT; SET @num = (SELECT RN FROM @EventList WHERE EventID = @EventID);
 SELECT EventID, RN, @num AS BASE_RN FROM @EventList WHERE RN IN (@num - 1, @num + 1)', 0, 140, 0, '20111209 12:01:52', 'eb7f068b-8130-4075-b36d-d0f716568842', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (10116, N'selectpreviousnext', 0, N'DECLARE @EmailList TABLE (EmailID INT, RN INT);
 INSERT INTO @EmailList (EmailID, RN) SELECT EmailID, ROW_NUMBER() OVER (ORDER BY ##ORDERBY##) AS RN FROM CMS_Email WHERE ##WHERE##;
 DECLARE @num INT; SET @num = (SELECT RN FROM @EmailList WHERE EmailID = @EmailID);
 SELECT EmailID, RN, @num AS BASE_RN FROM @EmailList WHERE RN IN (@num - 1, @num + 1)', 0, 1809, 0, '20111209 12:02:25', '6501ee6c-4456-4e50-8083-faa64caf6c0f', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (14028, N'removestate', 1, N'Proc_OM_Contact_RemoveState', 1, 2841, 0, '20111213 13:32:41', '23fb5867-5e7d-4aac-8484-48b408e39942', 0, 0, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (14029, N'removecountrystate', 1, N'Proc_OM_Contact_RemoveCountryState', 1, 2841, 0, '20111213 13:34:22', '1c9d462c-c929-4a82-a94e-1b88a8a77b97', 0, 0, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18211, N'getalloweditems', 0, N'SELECT ##COLUMNS## FROM View_CMS_ACLItem_ItemsAndOperators WHERE ##WHERE##', 0, 3039, 0, '20100906 14:45:33', 'd93bfebe-1cbe-4031-b84e-8df999d7cdf2', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18214, N'selectaclitemsandoperators', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_CMS_ACLItem_ItemsAndOperators WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 3039, 0, '20090902 13:18:00', 'cbd681b4-d7ce-4c82-89c7-0c5ad9ca4dbb', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18215, N'selectaclitemsbyaclidanduserid', 0, N'SELECT  DISTINCT X.Allowed,X.Denied,X.ValidTo,X.ACLID
 FROM (
 SELECT CMS_ACLItem.Allowed,CMS_ACLItem.Denied, null AS ''ValidTo'',CMS_ACL.ACLID
  FROM CMS_ACL INNER JOIN CMS_ACLItem ON CMS_ACLItem.ACLID = CMS_ACL.ACLID   
  WHERE
    --User  
      (CMS_ACLItem.UserID IN (SELECT CMS_User.UserID FROM CMS_User JOIN CMS_UserSite ON CMS_User.UserID = CMS_UserSite.UserID
                         WHERE CMS_User.UserID = @UserID AND CMS_UserSite.SiteID = @SiteID )    
    -- Specific roles        
        OR CMS_ACLItem.RoleID IN (SELECT RoleID FROM CMS_Role WHERE RoleName IN (##GENERICROLES##))
       )   
    -- Membership
  UNION ALL
  SELECT  DISTINCT CMS_ACLItem.Allowed,CMS_ACLItem.Denied, UserRole.ValidTo,CMS_ACL.ACLID
    FROM CMS_ACL INNER JOIN CMS_ACLItem ON CMS_ACLItem.ACLID = CMS_ACL.ACLID  
    INNER JOIN  [View_CMS_UserRoleMembershipRole] AS UserRole ON UserRole.RoleID = CMS_ACLItem.RoleID        
      WHERE (UserRole.ValidTo  > @Date OR UserRole.ValidTo IS NULL)
        AND (UserRole.SiteID = @SiteID OR UserRole.SiteID IS NULL)   
        AND UserRole.UserID = @UserID      
   ) AS X
   WHERE ##WHERE##', 0, 3039, 0, '20110331 18:19:00', '12e0b3bc-a73b-4b76-9307-fcaee609b019', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18217, N'selectbyaclidandroleid', 0, N'SELECT ##COLUMNS## FROM CMS_ACLItem WHERE ACLID = @ACLID AND RoleID = @RoleID', 0, 3039, 0, '20091110 13:10:18', '24a64974-4536-4a24-99ec-a15a04b458ec', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18218, N'selectbyaclidanduserid', 0, N'SELECT ##COLUMNS## FROM CMS_ACLItem WHERE ACLID = @ACLID AND UserID = @UserID', 0, 3039, 0, '20091110 13:10:24', '8d10b507-9ec0-4fa6-ba60-4143e7d66923', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12308, N'selectUniqueDocumentNames', 0, N'SELECT DocumentName = CASE WHEN DocumentLastVersionName IS NOT NULL THEN DocumentLastVersionName ELSE DocumentName END
FROM View_CMS_Tree_Joined 
WHERE NodeParentID = @NodeParentID AND DocumentCulture = @DocumentCulture AND (##WHERE##)', 0, 143, 0, '20111214 11:42:11', 'c644d0f6-ee77-4805-ac9d-0de427887256', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (6032, N'selectall', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_DocumentAlias LEFT JOIN Analytics_Campaign ON AliasCampaign = CampaignName
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1719, 1, '20111219 10:42:31', 'b9d9dee7-cc40-498c-bf8d-bb941afc1405', 0, 1, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18392, N'removecustomer', 1, N'Proc_OM_Contact_RemoveCustomer', 1, 2841, 0, '20120125 10:46:10', 'f6eae787-2e3f-400a-8809-64ec6a8d4387', 0, 0, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18395, N'removedependencies', 1, N'Proc_CMS_TranslationSubmission_RemoveDependencies', 0, 3061, 0, '20120126 13:07:47', '7de4e37f-78a2-43b3-8d87-78ba4351685e', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (40, N'selectbyname', 0, N'SELECT CMS_Role.* FROM CMS_Role 
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 56, 0, '20120202 11:14:48', '7a60dc16-2456-4f5c-8120-54094eae5ad2', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18420, N'selectsubmissiondocuments', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_CMS_Tree_Joined WHERE DocumentID IN (SELECT SubmissionItemObjectID FROM CMS_TranslationSubmissionItem WHERE SubmissionItemSubmissionID = @SubmissionID)', 0, 3061, 0, '20120203 14:57:02', '324d2371-cccb-4802-9d3d-dcdb6a1dfe01', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (8480, N'smartsearchattachments', 0, N'SELECT ##TOPN## SUM(RANK) AS [Score], DocumentID, SiteName, NodeID, NodeAliasPath, DocumentCulture, NodeClassID, ClassName, NodeACLID, NodeSiteID, NodeLinkedNodeID, NodeOwner
FROM CMS_Attachment INNER JOIN
CONTAINSTABLE(CMS_Attachment, AttachmentBinary, ##SEARCH## ) AS KEY_TBL ON CMS_Attachment.AttachmentID = KEY_TBL.[KEY] INNER JOIN
View_CMS_Tree_Joined ON View_CMS_Tree_Joined.DocumentID = CMS_Attachment.AttachmentDocumentID
WHERE (Published = 1) AND (##WHERE##) 
GROUP BY DocumentID, SiteName, NodeID, NodeAliasPath, DocumentCulture, NodeClassID, ClassName, NodeACLID, NodeSiteID, NodeLinkedNodeID, NodeOwner  ORDER BY ##ORDERBY##', 0, 1095, 1, '20120216 08:50:22', '80834b50-0ab4-445e-99a4-775df7a1a2e3', 0, 1, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12858, N'removedependencies', 1, N'Proc_OM_Account_RemoveDependencies', 1, 2837, 1, '20120225 14:41:51', '3562cf21-e98a-4909-b910-84e7c41aa1b7', 0, 1, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18634, N'decrementclicksleft', 0, N'UPDATE [CMS_Banner] SET [BannerClicksLeft] = [BannerClicksLeft] - 1 WHERE [BannerID] = @BannerID', 0, 3128, 0, '20120302 16:19:30', '1a618572-22ca-4be0-8bd4-7f62e67a7c98', 0, 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18635, N'getrandombanner', 1, N'Proc_CMS_BannerManagement_GetRandomBanner', 0, 3128, 0, '20120302 16:19:30', '4f7e0d5e-fddd-4810-aa18-379c2058608a', 0, 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (4772, N'selectrequiredusers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM [View_CMS_User] WHERE UserID IN (SELECT UserID FROM [View_CMS_UserRoleMembershipRole] 
WHERE (ValidTo IS NULL OR ValidTo > @Now) AND RoleID IN (SELECT RoleID FROM CMS_Role WHERE RoleID IN 
(SELECT RoleID FROM CMS_RolePermission WHERE PermissionID IN
(SELECT PermissionID FROM CMS_Permission WHERE PermissionName=@PermissionName AND ResourceID IN 
(SELECT ResourceID FROM CMS_Resource WHERE ResourceName=@ResourceName))) AND (SiteID=@SiteID OR SiteID IS NULL))) AND (##WHERE##) ORDER BY ##ORDERBY##', 0, 134, 0, '20120308 12:27:35', '7b8e41c9-671c-48b4-92bc-445444c02f3c', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18638, N'updateclicksleft', 0, N'UPDATE [CMS_Banner] SET [BannerClicksLeft] = ISNULL([CMS_Banner].[BannerClicksLeft], 0) + @Count WHERE [CMS_Banner].[BannerID] = @BannerID', 1, 3128, 0, '20120312 05:20:19', 'de88bf19-8e70-4d47-be0b-486e6cb67ece', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18639, N'updatehitsleft', 0, N'UPDATE [CMS_Banner] SET [BannerHitsLeft] = ISNULL([CMS_Banner].[BannerHitsLeft], 0) + @Count WHERE [CMS_Banner].[BannerID] = @BannerID', 1, 3128, 0, '20120312 05:20:33', '61a5c070-78de-4e08-9edd-7b5e606401ed', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18666, N'removerelations', 1, N'Proc_OM_Contact_RemoveRelations', 0, 2841, 0, '20120314 14:35:37', '71faca76-d33d-4f70-bc20-f04957ee5f06', 0, 0, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18667, N'selecttransformationcode', 0, N'SELECT TransformationCode FROM CMS_Transformation WHERE (TransformationName = @ChatTransformationName)', 0, 3140, 1, '20110728 16:53:18', '998ed571-feb8-4ad7-927d-239a9b382724', 0, 1, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18676, N'CloseNotification', 0, N'--DECLARE @NotificationID INT
--SET @NotificationID = 271
  
UPDATE [Chat_Notification]
SET ChatNotificationIsRead = 1, ChatNotificationReadDateTime = GETDATE()
WHERE ChatNotificationID = @NotificationID AND ChatNotificationIsRead = 0', 0, 3142, 0, '20120315 18:13:23', '11d7ca9f-aab7-4c60-b2d2-d84dfd6200ba', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18679, N'GetUnreadNotificationsUntil', 0, N'--DECLARE @ReceiverID INT
--SET @ReceiverID = 413
--DECLARE @UntilWhen DATETIME
--SET @UntilWhen = GETDATE() --DATEADD(month, -100, getdate())
SELECT * FROM Chat_Notification
WHERE ChatNotificationReceiverID = @ReceiverID AND ChatNotificationSendDateTime <= @UntilWhen AND ChatNotificationIsRead = 0', 0, 3142, 0, '20120315 18:13:23', '244f2b53-c05e-42b2-ac34-3d70b8a99329', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18688, N'cleanonlinesupport', 0, N'--DECLARE @InactiveForSeconds INT
--SET @InactiveForSeconds = 30
DELETE 
FROM Chat_OnlineSupport
WHERE DATEADD(ss, @InactiveForSeconds, ChatOnlineSupportLastChecking) < GETDATE()
SELECT @@ROWCOUNT', 0, 3143, 0, '20120315 18:13:23', 'b4087c8b-52a8-4899-977a-e98f285ece72', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18698, N'CleanOnlineUsers', 1, N'Proc_Chat_CleanOnlineUsers', 0, 3144, 0, '20120315 18:13:23', '0006936c-f52a-44a1-8a68-750ef3c5ea38', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18703, N'login', 1, N'Proc_Chat_LoginToChat', 0, 3144, 0, '20120315 18:13:23', '37e00909-6b85-43ed-81b8-3f7cf7a829e2', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18704, N'logout', 1, N'Proc_Chat_Logout', 0, 3144, 0, '20120315 18:13:23', '5db8208e-16bc-4916-8003-dde35f115569', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18711, N'updatelastchecking', 0, N'--DECLARE @LastCheckingDateTime DATETIME
--SET @LastCheckingDateTime = GETDATE()
--DECLARE @SiteID INT
--SET @SiteID = 4
--DECLARE @ChatUserID INT
--SET @ChatUserID = 90
UPDATE Chat_OnlineUser 
SET ChatOnlineUserLastChecking = GETDATE()
WHERE ChatOnlineUserSiteID = @SiteID AND ChatOnlineUserChatUserID = @ChatUserID', 0, 3144, 0, '20120315 18:13:23', '6e064768-7578-4980-b5b7-f5bced9414d4', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18717, N'Store', 1, N'Proc_Chat_StorePopupWindowSettings', 0, 3145, 0, '20120315 18:13:23', 'd8e71eaf-3961-464d-84da-0c78354fe13d', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18720, N'ChangeChatRoom', 1, N'Proc_Chat_ChangeChatRoom', 0, 3146, 0, '20120315 18:13:23', 'd1b3d5d9-ffbb-4e25-b851-f7441d371504', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18721, N'CleanOldChatRecords', 1, N'[Proc_Chat_CleanOldChatRecords]', 0, 3146, 0, '20120315 18:13:23', '36d6a259-83ad-44f3-9bad-0e62a06b96b0', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18725, N'disableroom', 1, N'Proc_Chat_DisableRoom', 0, 3146, 0, '20120315 18:13:23', '37cbf9e4-d3b9-4934-9ad3-ed9496d0ee97', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18726, N'enableroom', 0, N'UPDATE Chat_Room
SET ChatRoomEnabled = 1, ChatRoomLastModification = GETDATE()
WHERE ChatRoomID = @ChatRoomID', 0, 3146, 0, '20120315 18:13:23', 'a50e043a-1390-4e76-9c91-363bb8b91de5', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18728, N'safedelete', 1, N'Proc_Chat_SafeDeleteRoom', 0, 3146, 0, '20120315 18:13:23', '2a2aa9ea-b039-48c4-8d7e-488d9c10d430', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18743, N'CleanOnlineUsersInRoom', 1, N'Proc_Chat_CleanOnlineUsersInRoom', 0, 3148, 0, '20120315 18:13:23', '41962e68-2394-417c-a90c-5ca3b3dfce0d', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18746, N'getallonlineusersinroom', 0, N'--DECLARE @RoomID Int = 223
SELECT [CRU_OUTER].ChatRoomUserAdminLevel,
	[CU].*, 
	(CASE
		WHEN [CRU_OUTER].[ChatRoomUserJoinTime] IS NULL THEN 0
		ELSE 1
	END) AS [IsOnline],
    (CASE 
        WHEN [CRU_OUTER].[ChatRoomUserLastModification] > [CU].[ChatUserLastModification] THEN [CRU_OUTER].[ChatRoomUserLastModification]
        ELSE [CU].[ChatUserLastModification]
     END) AS [LastChange]
FROM (
    SELECT [CRU].*, 
        (CASE 
            WHEN [CR].[ChatRoomPrivate] = 1 THEN 1
            ELSE 2
         END) AS [raisedPrivilegiesValue] -- Value of admin level considered as raised privilegies in this room (Join in private and Admin in public rooms)
    FROM [Chat_RoomUser] AS [CRU]
    INNER JOIN [Chat_Room] AS [CR] ON [CR].[ChatRoomID] = [CRU].[ChatRoomUserRoomID]
    ) AS [CRU_OUTER]
INNER JOIN [Chat_User] AS [CU] ON [CU].[ChatUserID] = [CRU_OUTER].[ChatRoomUserChatUserID]
WHERE 
	[CRU_OUTER].[ChatRoomUserRoomID] = @RoomID AND -- Filter to specified room
	([CRU_OUTER].[ChatRoomUserJoinTime] IS NOT NULL OR -- Get online users
		([CRU_OUTER].[ChatRoomUserAdminLevel] >= [CRU_OUTER].[raisedPrivilegiesValue] AND -- Or users who has raised privilegies
			([CU].[ChatUserUserID] IS NOT NULL OR -- But are non anonymous
				EXISTS(SELECT [COU].ChatOnlineUserID 
					FROM [Chat_OnlineUser] AS [COU]
					WHERE [COU].[ChatOnlineUserChatUserID] = [CRU_OUTER].[ChatRoomUserChatUserID] AND [COU].[ChatOnlineUserJoinTime] IS NOT NULL
					) -- Or online (on whatever site) anonymous 
			)
		)
	)', 0, 3148, 0, '20120315 18:13:23', '20272794-72aa-43e3-bdca-23cf444a96b3', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18748, N'getonlineuserscounts', 0, N'-- DECLARE @SiteID INT
-- SET @SiteID = 4
SELECT
	RoomID,
	OnlineUsersCount,
	CASE WHEN MaxJoinTime > MaxLeaveTime THEN MaxJoinTime ELSE ISNULL(MaxLeaveTime, MaxJoinTime) END AS LastChange
FROM
(
	SELECT 
		CRU.ChatRoomUserRoomID AS RoomID, 
		(SELECT 
			COUNT(CRU2.ChatRoomUserID) 
			FROM Chat_RoomUser AS CRU2 
			WHERE CRU2.ChatRoomUserRoomID = CRU.ChatRoomUserRoomID AND CRU2.ChatRoomUserJoinTime IS NOT NULL
		) AS OnlineUsersCount, 
		MAX(ChatRoomUserJoinTime) AS MaxJoinTime, MAX(ChatRoomUserLeaveTime) AS MaxLeaveTime
	FROM Chat_RoomUser AS CRU
	LEFT JOIN Chat_Room AS CR ON CRU.ChatRoomUserRoomID = CR.ChatRoomID
	WHERE CR.ChatRoomSiteID IS NULL OR CR.ChatRoomSiteID = @SiteID
	GROUP BY CRU.ChatRoomUserRoomID
) AS t1', 0, 3148, 0, '20120315 18:13:23', '91e301e2-c2c9-423e-ad3b-8fcad58ef189', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18749, N'GetRoomsWhereChatUserIsOnline', 0, N'--DECLARE @ChatUserID INT
--SET @ChatUserID = 398
SELECT CRU.ChatRoomUserRoomID
FROM Chat_RoomUser CRU
WHERE CRU.ChatRoomUserChatUserID = @ChatUserID AND CRU.ChatRoomUserJoinTime IS NOT NULL', 0, 3148, 0, '20120315 18:13:23', 'b7de0512-98dd-43d0-befe-7d388315c173', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18750, N'getsecondchatuseridinonetooneroom', 0, N'--DECLARE @RoomID INT
--SET @RoomID = 218
--DECLARE @CurrentChatUserID INT
--SET @CurrentChatUserID = 399
SELECT CRU.*
FROM Chat_RoomUser CRU
WHERE CRU.ChatRoomUserRoomID = @RoomID
AND CRU.ChatRoomUserChatUserID <> @CurrentChatUserID', 0, 3148, 0, '20120315 18:13:23', 'ff90573a-c8c4-4c39-8ee6-287b67b7ed4a', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18751, N'IncreaseChatAdminLevel', 1, N'Proc_Chat_IncreaseChatAdminLevel', 0, 3148, 0, '20120315 18:13:23', '0ab4207b-963f-4778-8225-0fe746816e8c', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18753, N'KickPermanentlyFromRoom', 1, N'Proc_Chat_KickPermanentlyFromRoom', 0, 3148, 0, '20120315 18:13:23', 'bca3cd8b-8393-4b1f-9d4e-38708dd88037', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18754, N'kickuser', 0, N'DECLARE @Now DATETIME
SET @Now = GETDATE()
UPDATE [Chat_RoomUser] 
SET [ChatRoomUserKickExpiration] = @KickExpiration, [ChatRoomUserJoinTime] = NULL, ChatRoomUserLastChecking = NULL, [ChatRoomUserLeaveTime] = @Now, ChatRoomUserLastModification = @Now
WHERE [ChatRoomUserRoomID] = @RoomID AND [ChatRoomUserChatUserID] = @ChatUserID', 0, 3148, 0, '20120315 18:13:23', '1dc667f3-bc3b-409d-9e11-6283f0fe7b8f', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18756, N'selectadmins', 0, N'--DECLARE @SiteID INT
--SET @SiteID = 4
SELECT CRU.ChatRoomUserRoomID AS RoomID, CRU.ChatRoomUserChatUserID AS ChatUserID, CRU.ChatRoomUserAdminLevel AS AdminLevel, CRU.ChatRoomUserLastModification AS LastChange
FROM Chat_Room AS CR
RIGHT JOIN Chat_RoomUser AS CRU ON CRU.ChatRoomUserRoomID = CR.ChatRoomID
WHERE (CR.ChatRoomSiteID IS NULL OR CR.ChatRoomSiteID = @SiteID)
AND CR.ChatRoomEnabled = 1
AND CR.ChatRoomPrivate = 1
AND CR.ChatRoomIsOneToOne = 0', 0, 3148, 0, '20120315 18:13:23', '35c05f48-34d9-4e3c-84af-6594f983e26a', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18757, N'selectadminstates', 0, N'--DECLARE @ChatUserID INT
--SET @ChatUserID = 406
SELECT CRU.ChatRoomUserRoomID AS RoomID, CRU.ChatRoomUserAdminLevel AS AdminLevel, CRU.ChatRoomUserLastModification AS LastChange, CR.ChatRoomIsOneToOne
FROM Chat_Room AS CR
RIGHT JOIN Chat_RoomUser AS CRU ON CRU.ChatRoomUserRoomID = CR.ChatRoomID
WHERE CRU.ChatRoomUserChatUserID = @ChatUserID', 0, 3148, 0, '20120315 18:13:23', '76a44fd4-47e9-4905-9b3b-c79689730096', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18759, N'selectlatestonlineusers', 0, N'--DECLARE @ChangedSince DateTime = ''2012-01-01 14:37:39.649''
--DECLARE @RoomID Int = 690
SELECT [CRU_OUTER].[ChatRoomUserAdminLevel], [CU].[ChatUserID], [CU].[ChatUserUserID], [CU].[ChatUserNickname], [CU].[ChatUserLastModification], 
	(CASE
		WHEN [CRU_OUTER].[ChatRoomUserJoinTime] IS NULL THEN 0
		ELSE 1
	END) AS [IsOnline],
    (CASE 
        WHEN [CRU_OUTER].[ChatRoomUserLastModification] > [CU].[ChatUserLastModification] THEN [CRU_OUTER].[ChatRoomUserLastModification]
        ELSE [CU].[ChatUserLastModification]
     END) AS [LastChange], 
    (CASE 
        WHEN [CRU_OUTER].[ChatRoomUserJoinTime] IS NOT NULL THEN 0 -- User is online -> NOT REMOVE
        WHEN [CRU_OUTER].[ChatRoomUserAdminLevel] < [CRU_OUTER].[raisedPrivilegiesValue] THEN 1 -- User''s privilegies are not considered as raised -> REMOVE
        WHEN [CU].[ChatUserUserID] IS NOT NULL THEN 0 -- User is non anonymous -> NOT REMOVE
        WHEN EXISTS(
            SELECT [COU].ChatOnlineUserID
            FROM [Chat_OnlineUser] AS [COU]
            WHERE ([COU].[ChatOnlineUserChatUserID] = [CRU_OUTER].[ChatRoomUserChatUserID]) AND ([COU].[ChatOnlineUserJoinTime] IS NOT NULL)
            ) THEN 0 -- User is online in a chat -> NOT REMOVE
        ELSE 1 -- Else -> REMOVE
     END) AS [IsRemoved]
FROM (
    SELECT [CRU].*, 
        (CASE 
            WHEN [CR].[ChatRoomPrivate] = 1 THEN 1
            ELSE 2
         END) AS [raisedPrivilegiesValue] -- Value of admin level considered as raised privilegies in this room (Join in private and Admin in public rooms)
    FROM [Chat_RoomUser] AS [CRU]
    INNER JOIN [Chat_Room] AS [CR] ON [CR].[ChatRoomID] = [CRU].[ChatRoomUserRoomID]
    ) AS [CRU_OUTER]
INNER JOIN [Chat_User] AS [CU] ON [CU].[ChatUserID] = [CRU_OUTER].[ChatRoomUserChatUserID]
WHERE ([CRU_OUTER].[ChatRoomUserRoomID] = @RoomID) AND -- Filter only to specified room
(([CRU_OUTER].[ChatRoomUserLastModification] > @ChangedSince) OR ([CU].[ChatUserLastModification] > @ChangedSince)) -- Filter to changed rows only
--DECLARE @RoomID INT
--SET @RoomID = 223
--DECLARE @ChangedSince DATETIME
--SET @ChangedSince = dateadd(d,-1,GETDATE())
--SELECT
--  CU.*,
--  CRU.*,
--  CASE 
--	WHEN CRU.ChatRoomUserLastModification > CU.ChatUserLastModification THEN CRU.ChatRoomUserLastModification
--	ELSE CU.ChatUserLastModification
--  END AS LastChange
--FROM Chat_RoomUser AS CRU
--LEFT JOIN Chat_User AS CU ON CRU.ChatRoomUserChatUserID = CU.ChatUserID
--WHERE CRU.ChatRoomUserRoomID = @RoomID
--AND (@ChangedSince IS NULL 
--     OR CRU.ChatRoomUserLastModification > @ChangedSince
--     OR CU.ChatUserLastModification > @ChangedSince
--     )
--ORDER BY LastChange', 0, 3148, 0, '20120315 18:13:23', 'c84ea46e-ab15-4789-9eab-95590644cd0d', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18760, N'SetChatAdminLevel', 1, N'Proc_Chat_SetChatAdminLevel', 0, 3148, 0, '20120315 18:13:23', '2ddff315-d16b-444e-a433-d3e268bc55cb', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18763, N'updatelastchecking', 0, N'--DECLARE @RoomID INT;
--SET @RoomID = 5;
--DECLARE @ChatUserID INT;
--SET @ChatUserID = 10;
UPDATE [Chat_RoomUser] SET [ChatRoomUserLastChecking] = GETDATE()
WHERE [ChatRoomUserRoomID] = @RoomID AND [ChatRoomUserChatUserID] = @ChatUserID AND [ChatRoomUserJoinTime] IS NOT NULL;
SELECT @@ROWCOUNT;', 1, 3148, 0, '20120315 18:13:23', '9c71f9f6-17f5-44e7-8a27-5e79b82ed99a', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18764, N'userjoinroom', 1, N'Proc_Chat_JoinRoom', 0, 3148, 0, '20120315 18:13:23', '6e3c09b1-e5b5-46f2-8c83-367c491dabc1', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18765, N'userleaveroom', 1, N'Proc_Chat_LeaveRoom', 0, 3148, 0, '20120315 18:13:23', '7ee0ed3d-3431-423f-b793-1955e6642fb7', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18771, N'selectbychatuserid', 0, N'--DECLARE @ChatUserID INT
--SET @ChatUserID = 398
--DECLARE @SiteID INT
--SET @SiteID = 4
SELECT CSCR.*
FROM Chat_SupportCannedResponse  AS CSCR
WHERE CSCR.ChatSupportCannedResponseChatUserID = @ChatUserID OR 
(CSCR.ChatSupportCannedResponseChatUserID IS NULL AND (CSCR.ChatSupportCannedResponseSiteID IS NULL OR CSCR.ChatSupportCannedResponseSiteID = @SiteID))', 0, 3149, 0, '20120315 18:13:23', '2972ecf3-52d3-46f8-9aeb-18c3be9d5234', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18797, N'selectusersnicknamecount', 0, N'--DECLARE @Nickname VARCHAR(500)
--SET @Nickname = ''guest_739''
--DECLARE @IncludeAnonyms INTEGER
--SET @IncludeAnonyms = 1
--DECLARE @ExcludeChatUserID INTEGER
--SET @ExcludeChatUserID = 1189
SELECT COUNT(*)
FROM [Chat_User] AS CU
WHERE CU.ChatUserNickname = @Nickname AND -- find users with specified nickname
	(@ExcludeChatUserID IS NULL OR ChatUserID <> @ExcludeChatUserID) AND -- exclude specified ID (ID of current user most of the times)
	((ChatUserUserID IS NOT NULL) OR ((@IncludeAnonyms = 1) AND (ChatUserUserID IS NULL) AND EXISTS (SELECT * FROM Chat_OnlineUser AS COU WHERE CU.ChatUserID = COU.ChatOnlineUserChatUserID AND COU.ChatOnlineUserJoinTime IS NOT NULL))) -- find only non-anonym users or anonym users who are online', 0, 3152, 0, '20120315 18:13:23', 'c9728e59-d6f3-41aa-a684-0154c4442e52', 0, NULL, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18800, N'massdelete', 1, N'Proc_OM_Contact_MassDelete', 0, 2841, 0, '20120322 12:48:47', '245987bc-84be-40c9-a1ae-76f42c057a37', 0, 0, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18801, N'massdelete', 1, N'Proc_OM_Account_MassDelete', 0, 2837, 0, '20120322 12:52:54', '523a8840-6a26-497f-aac1-6a21c3c11487', 0, 0, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18803, N'moveprofiledown', 1, N'Proc_CMS_DeviceProfile_MoveDown', 0, 3153, 0, '20120327 23:53:43', 'ef03cf2a-6578-464e-a68a-a0a458af4634', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18804, N'moveprofileup', 1, N'Proc_CMS_DeviceProfile_MoveUp', 0, 3153, 0, '20120327 23:54:01', 'f0c71ec1-9090-4f71-bdcf-180372d2cbec', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18805, N'initorders', 0, N'Proc_CMS_DeviceProfile_InitOrders', 0, 3153, 0, '20120327 23:58:55', 'e29048d7-7cc2-4877-980b-573350de9f38', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18808, N'removesourcepointdependencies', 1, N'Proc_CMS_WorkflowStep_RemoveSourcePointDependencies', 1, 172, 0, '20120329 10:14:19', 'cb2de6ce-4b8a-4c41-9359-21f436525623', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18707, N'selectallonlineusers', 0, N'--DECLARE @SiteID INT
--SET @SiteID = 4
	  
SELECT
  CU.*,
  COU.ChatOnlineUserLastChecking AS LastChecking,
  COU.ChatOnlineUserIsHidden AS IsHidden,
  CASE
	WHEN ChatOnlineUserJoinTime >= COALESCE(ChatOnlineUserLeaveTime, 0) AND ChatOnlineUserJoinTime >= COALESCE(ChatUserLastModification, 0) THEN ChatOnlineUserJoinTime
	WHEN ChatOnlineUserLeaveTime >= COALESCE(ChatUserLastModification, 0) THEN ChatOnlineUserLeaveTime
	ELSE ChatUserLastModification
  END AS LastChange
FROM Chat_OnlineUser AS COU
LEFT JOIN Chat_User AS CU ON COU.ChatOnlineUserChatUserID = CU.ChatUserID
WHERE COU.ChatOnlineUserSiteID = @SiteID
AND COU.ChatOnlineUserJoinTime IS NOT NULL
ORDER BY LastChange', 0, 3144, 0, '20120330 02:47:06', '4c302b77-3eaf-4daf-832e-f9515dd6ce0e', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18708, N'selectlatestonlineusers', 0, N'--DECLARE @SiteID INT
--SET @SiteID = 4
--DECLARE @ChangedSince DATETIME
--SET @ChangedSince = DATEADD(d, -1, getdate())
	  
SELECT
  CU.*,
  COU.ChatOnlineUserLastChecking AS LastChecking,
  COU.ChatOnlineUserIsHidden AS IsHidden,
  CASE
	WHEN ChatOnlineUserJoinTime >= COALESCE(ChatOnlineUserLeaveTime, 0) AND ChatOnlineUserJoinTime >= COALESCE(ChatUserLastModification, 0) THEN ChatOnlineUserJoinTime
	WHEN ChatOnlineUserLeaveTime >= COALESCE(ChatUserLastModification, 0) THEN ChatOnlineUserLeaveTime
	ELSE ChatUserLastModification
  END AS LastChange
FROM Chat_OnlineUser AS COU
LEFT JOIN Chat_User AS CU ON COU.ChatOnlineUserChatUserID = CU.ChatUserID
WHERE COU.ChatOnlineUserSiteID = @SiteID
AND (@ChangedSince IS NULL 
	 OR COU.ChatOnlineUserJoinTime > @ChangedSince
	 OR COU.ChatOnlineUserLeaveTime > @ChangedSince
	 OR CU.ChatUserLastModification > @ChangedSince
	 )
ORDER BY LastChange', 0, 3144, 0, '20120330 02:56:22', 'bf807da4-b131-44fd-a851-342f367f60ae', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12459, N'removefromwebanalytics', 1, N'Proc_OM_RemoveDataFromWebAnalytics', 0, 2491, 0, '20120404 13:55:20', 'bb5dbaca-b9a2-4c87-bcf1-02081f94e073', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13348, N'RenameABTestStatistics', 0, N'UPDATE Analytics_Statistics SET StatisticsCode = ''abconversion;''+@NewName + '';'' + SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))  
WHERE StatisticsCode LIKE ''abconversion;''+ @OldName +'';%'' AND StatisticsSiteID = @SiteID', 0, 2491, 0, '20120404 13:55:24', 'a781fb52-81ea-4553-872a-62638425c738', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13409, N'initorders', 1, N'Proc_OM_PersonalizationVariant_InitOrders', 1, 2921, 0, '20120404 13:56:12', '3ec9d4ea-f3f6-4879-a016-5fd1a404c907', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13410, N'movedown', 1, N'Proc_OM_PersonalizationVariant_MoveDown', 1, 2921, 0, '20120404 13:56:16', '66b062a2-18eb-4ed9-8d60-5e508568734a', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13411, N'moveup', 1, N'Proc_OM_PersonalizationVariant_MoveUp', 1, 2921, 0, '20120404 13:56:21', 'fa87e9c2-5255-413d-b7a3-ecc0706f756d', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12912, N'EnableCombinations', 1, N'Proc_OM_EnableMVTCombinations', 1, 2808, 0, '20120404 13:56:53', '87b86d08-c6f7-4ccb-ac3c-a08e42e9c294', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12804, N'GetCombinationsWithoutWebpart', 0, N'IF (@MVTVariantDocumentID = 0)
BEGIN
  SET @MVTVariantDocumentID = NULL;
END
SELECT *
FROM OM_MVTCombination
WHERE
  (MVTCombinationPageTemplateID = @MVTCombinationPageTemplateID)
  AND 
  ((MVTCombinationDocumentID IS NULL) OR (MVTCombinationDocumentID = COALESCE(@MVTVariantDocumentID, MVTCombinationDocumentID)))
  AND
  MVTCombinationID NOT IN
  (
    SELECT MVTCombinationID
    FROM OM_MVTCombinationVariation
    WHERE
      MVTVariantID IN
      (
        SELECT MVTVariantID
        FROM OM_MVTVariant
        WHERE
          MVTVariantInstanceGUID = @MVTVariantInstanceGUID
      )
  )', 0, 2808, 0, '20120404 13:56:58', '90b9f171-34af-4b2a-ace2-e27bfbead909', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13267, N'GetCombinationsWithoutZone', 0, N'IF (@MVTVariantDocumentID = 0)
BEGIN
  SET @MVTVariantDocumentID = NULL;
END
SELECT *
FROM OM_MVTCombination
WHERE
  (MVTCombinationPageTemplateID = @MVTCombinationPageTemplateID)
  AND
  ((MVTCombinationDocumentID IS NULL) OR (MVTCombinationDocumentID = COALESCE(@MVTVariantDocumentID, MVTCombinationDocumentID)))
  AND
  MVTCombinationID NOT IN
  (
    SELECT MVTCombinationID
    FROM OM_MVTCombinationVariation
    WHERE
      MVTVariantID IN
      (
        SELECT MVTVariantID
        FROM OM_MVTVariant
        WHERE
          (MVTVariantZoneID = @MVTVariantZoneID) AND
          (MVTVariantPageTemplateID= @MVTCombinationPageTemplateID)
      )
  )', 0, 2808, 0, '20120404 13:57:02', 'de03c60d-09f6-4c92-93a3-0940cf7378be', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12803, N'CombineCombinationVariation', 1, N'Proc_OM_CombineMVTCombinationVariation', 1, 2814, 0, '20120404 13:57:20', 'f184d45e-8004-4c44-90de-d1d2c121a3da', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13349, N'RenameMVTestStatistics', 0, N'UPDATE Analytics_Statistics SET StatisticsCode = ''mvtconversion;''+@NewName + '';'' + SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@OldName+'';'')+1,LEN (StatisticsCode))
WHERE StatisticsCode LIKE ''mvtconversion;''+ @OldName +'';%'' AND StatisticsSiteID = @SiteID', 0, 2806, 0, '20120404 13:57:35', '0c4e8931-ab86-4a52-9225-2b5a32cfaef2', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12450, N'selectwithhits', 0, N'SELECT ##COLUMNS##
  FROM (SELECT MVTestName, MVTestDisplayName, MVTestSiteID, MVTestID, MVTestCulture, MVTestPage, MVTestOpenFrom, MVTestOpenTo, MVTestEnabled, MVTestConversions, SUM (HitsValue) AS HitsValue,
   HitsStartTime,HitsEndTime  FROM OM_MVTest
JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;''+ MVTestName+ '';%''
JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
GROUP BY MVTestName, MVTestDisplayName, MVTestID, MVTestCulture, MVTestPage, MVTestOpenFrom, MVTestOpenTo, MVTestEnabled, MVTestConversions, MVTestSiteID
,HitsStartTime,HitsEndTime
) AS X
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2806, 0, '20120404 13:57:39', 'd0fd7003-2fa4-41f9-b5ef-3af800c23d1b', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13232, N'SelectWithHitsDays', 0, N'SELECT ##COLUMNS##
  FROM (SELECT MVTestName, MVTestDisplayName, MVTestSiteID, MVTestID, MVTestCulture, MVTestPage, MVTestOpenFrom, MVTestOpenTo, MVTestEnabled, SUM(HitsCount) AS MVTestConversions, SUM (HitsValue) AS HitsValue
   FROM OM_MVTest
JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;''+ MVTestName+ '';%''
JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
WHERE HitsStartTime >= @From AND HitsEndTime <= @To
GROUP BY MVTestName, MVTestDisplayName, MVTestID, MVTestCulture, MVTestPage, MVTestOpenFrom, MVTestOpenTo, MVTestEnabled, MVTestConversions, MVTestSiteID
) AS X
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2806, 0, '20120404 13:57:44', '7baa84a9-1d13-4a16-ae4a-2215757cd1c9', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13233, N'SelectWithHitsHours', 0, N'SELECT ##COLUMNS##
  FROM (SELECT MVTestName, MVTestDisplayName, MVTestSiteID, MVTestID, MVTestCulture, MVTestPage, MVTestOpenFrom, MVTestOpenTo, MVTestEnabled, SUM(HitsCount) AS MVTestConversions, SUM (HitsValue) AS HitsValue
   FROM OM_MVTest
JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;''+ MVTestName+ '';%''
JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
WHERE HitsStartTime >= @From AND HitsEndTime <= @To
GROUP BY MVTestName, MVTestDisplayName, MVTestID, MVTestCulture, MVTestPage, MVTestOpenFrom, MVTestOpenTo, MVTestEnabled, MVTestConversions, MVTestSiteID
) AS X
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2806, 0, '20120404 13:57:52', '6b2ce4de-5f24-4b8c-9c3b-38c40ed52203', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13235, N'SelectWithHitsMonths', 0, N'SELECT ##COLUMNS##
  FROM (SELECT MVTestName, MVTestDisplayName, MVTestSiteID, MVTestID, MVTestCulture, MVTestPage, MVTestOpenFrom, MVTestOpenTo, MVTestEnabled, SUM(HitsCount) AS MVTestConversions, SUM (HitsValue) AS HitsValue
   FROM OM_MVTest
JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;''+ MVTestName+ '';%''
JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
WHERE HitsStartTime >= @From AND HitsEndTime <= @To
GROUP BY MVTestName, MVTestDisplayName, MVTestID, MVTestCulture, MVTestPage, MVTestOpenFrom, MVTestOpenTo, MVTestEnabled, MVTestConversions, MVTestSiteID
) AS X
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2806, 0, '20120404 13:57:57', 'b51901e1-f7c7-45af-9a76-565cedc48e2b', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13234, N'SelectWithHitsWeeks', 0, N'SELECT ##COLUMNS##
  FROM (SELECT MVTestName, MVTestDisplayName, MVTestSiteID, MVTestID, MVTestCulture, MVTestPage, MVTestOpenFrom, MVTestOpenTo, MVTestEnabled, SUM(HitsCount) AS MVTestConversions, SUM (HitsValue) AS HitsValue
   FROM OM_MVTest
JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;''+ MVTestName+ '';%''
JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
WHERE HitsStartTime >= @From AND HitsEndTime <= @To
GROUP BY MVTestName, MVTestDisplayName, MVTestID, MVTestCulture, MVTestPage, MVTestOpenFrom, MVTestOpenTo, MVTestEnabled, MVTestConversions, MVTestSiteID
) AS X
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2806, 0, '20120404 13:58:03', '76516176-ba4d-413a-ba6c-b433e2f5eac3', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13236, N'SelectWithHitsYears', 0, N'SELECT ##COLUMNS##
  FROM (SELECT MVTestName, MVTestDisplayName, MVTestSiteID, MVTestID, MVTestCulture, MVTestPage, MVTestOpenFrom, MVTestOpenTo, MVTestEnabled, SUM(HitsCount) AS MVTestConversions, SUM (HitsValue) AS HitsValue
   FROM OM_MVTest
JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;''+ MVTestName+ '';%''
JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
WHERE HitsStartTime >= @From AND HitsEndTime <= @To
GROUP BY MVTestName, MVTestDisplayName, MVTestID, MVTestCulture, MVTestPage, MVTestOpenFrom, MVTestOpenTo, MVTestEnabled, MVTestConversions, MVTestSiteID
) AS X
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2806, 0, '20120404 13:58:11', 'eb4ecd07-d3a1-49e7-a5f8-d159da2fd72b', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12805, N'removedependencies', 1, N'Proc_OM_MVTVariant_RemoveDependencies', 1, 2807, 0, '20120404 13:58:31', '4b398e7f-0804-4b0e-8e04-ec496aaa2b74', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (14027, N'removeotherdependencies', 1, N'Proc_OM_ContactGroup_RemoveOtherDependencies', 1, 2850, 0, '20120406 13:51:13', 'edbd974d-83d4-4ed8-a533-21d599777749', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18867, N'cleanoldinitiatedchatrequests', 1, N'Proc_Chat_CleanOldInitiatedChatRequests', 0, 3155, 0, '20120411 12:21:07', '5375f3ad-5e64-45e7-83e3-0b7a962dfe69', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (9204, N'CheckDependencies', 0, N'SELECT ##TOPN## DocumentNamePath, DocumentCulture, SiteName FROM View_CMS_Tree_Joined WHERE DocumentWorkflowStepID IN (SELECT StepID FROM CMS_WorkflowStep WHERE StepWorkflowID = @ID)', 0, 171, 0, '20120411 21:38:17', '70d8b10d-b486-4531-961a-d384e63eee2e', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (14018, N'CheckDependencies', 0, N'SELECT ##TOPN## DocumentNamePath, DocumentCulture, SiteName FROM View_CMS_Tree_Joined WHERE DocumentWorkflowStepID = @ID', 0, 172, 0, '20120411 21:38:37', 'aee752cc-d3f5-4ee6-80d6-b5e86736acf1', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18868, N'entersupport', 1, N'Proc_Chat_EnterSupport', 0, 3143, 0, '20120412 19:03:08', '2fd475e8-fa5a-4437-af11-87b74c19d89c', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18873, N'takeroom', 1, N'Proc_Chat_SupportTakeRoom', 0, 3151, 0, '20120416 16:54:36', 'a6405d3e-d170-4180-9083-9feb25e7b4ba', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18784, N'resolvetakenroom', 0, N'--DECLARE @RoomID INT
--SET @RoomID = 30
--DECLARE @ChatUserID INT
--SET @ChatUserID = 30
DECLARE @Now DATETIME
SET @Now = GETDATE()
UPDATE Chat_SupportTakenRoom 
SET [ChatSupportTakenRoomLastModification] = @Now, [ChatSupportTakenRoomResolvedDateTime] = @Now, [ChatSupportTakenRoomChatUserID] = NULL
WHERE [ChatSupportTakenRoomRoomID] = @RoomID AND [ChatSupportTakenRoomChatUserID] = @ChatUserID', 0, 3151, 0, '20120416 17:13:30', '3b50987c-8639-497a-9255-d194d67f2a29', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18874, N'updateallsessions', 1, N'Proc_CMS_Session_UpdateAll', 0, 59, 0, '20120417 19:39:52', '3613e17a-ebb8-4ab8-8508-c082e272e3fd', 0, 0, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18881, N'selectonlineusers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_Session WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 59, 0, '20120418 22:15:48', '9d505ec6-cbd9-4a8f-b99a-9799e00c4c59', 0, 0, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18882, N'deletesessionsforuser', 1, N'Proc_CMS_Session_DeleteByUserID', 0, 59, 0, '20120420 18:00:48', 'dcfa25e8-d71c-47c9-ba46-1cd2589c9ce6', 0, 0, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13683, N'selectdatajoined', 0, N'SELECT ##TOPN## ##COLUMNS## FROM OM_Score INNER JOIN OM_ScoreContactRule ON OM_Score.ScoreID=OM_ScoreContactRule.ScoreID WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2940, 0, '20120426 15:21:15', 'e0903bc9-dec4-484b-ba78-b39f27fa6144', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18898, N'removesessioncontact', 1, N'Proc_CMS_User_RemoveSessionContact', 0, 59, 0, '20120503 18:49:17', '1d9091e1-be43-4156-a92d-258068da5c1c', 0, 0, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18899, N'removedependencies', 1, N'Proc_CMS_TranslationService_RemoveDependencies', 0, 3045, 0, '20120504 14:19:50', '4b428cdc-32de-4e18-bdb5-7ad711b74474', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18902, N'removedependencies', 1, N'Proc_CMS_BannerCategory_RemoveDependencies', 0, 3129, 0, '20120511 14:01:25', '037ac228-6c4a-45c6-a831-1763411862eb', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (6072, N'selectByDocumentID', 0, N'SELECT ##TOPN## ##COLUMNS## FROM CMS_Category INNER JOIN CMS_DocumentCategory ON CMS_Category.CategoryID = CMS_DocumentCategory.CategoryID WHERE (CMS_DocumentCategory.DocumentID = @DocumentID) AND ##WHERE## ORDER BY ##ORDERBY##', 0, 1721, 0, '20120525 10:47:09', 'd867f859-ecf1-25ee-9bf8-258a97ef9812', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18906, N'smartsearchcategories', 0, N'SELECT ''DocumentCategoryIDs'', CategoryID, CategoryDisplayName FROM CMS_Category WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 1095, 1, '20120525 14:13:02', 'dec90067-788d-4350-a61b-5b02b159d13d', 0, 1, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (5417, N'clearsendingstatus', 0, N'/* Reset issu status from ''Preparing data'' to ''Ready for sending'' */
UPDATE Newsletter_NewsletterIssue SET IssueStatus = 1 WHERE IssueStatus = 2;
/* Reset sending status of emails of issues that have status ''Sending'' or ''Test phase'' */
UPDATE Newsletter_Emails SET EmailSending = NULL WHERE EmailSending = 1 AND EmailNewsletterIssueID IN (SELECT IssueID FROM Newsletter_NewsletterIssue WHERE IssueStatus = 4 OR IssueStatus = 3);', 0, 919, 0, '20120528 13:22:00', '4d044efe-1c53-4e8d-a5d4-0357b3a1f6ad', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13275, N'processlog', 0, N'IF ((SELECT ContactID FROM OM_Contact WHERE ContactID=@ActivityActiveContactID) IS NOT NULL)
BEGIN 
INSERT INTO OM_Activity ([ActivityActiveContactID], [ActivityOriginalContactID], [ActivityCreated], [ActivityType], [ActivityItemID], [ActivityItemDetailID], [ActivityValue], [ActivityURL], [ActivityTitle], [ActivityNodeID], [ActivitySiteID], [ActivityGUID], [ActivityIPAddress], [ActivityCampaign], [ActivityComment], [ActivityURLReferrer], [ActivityCulture] ) VALUES ( @ActivityActiveContactID, @ActivityOriginalContactID, @ActivityCreated, @ActivityType, @ActivityItemID, @ActivityItemDetailID, @ActivityValue, @ActivityURL, @ActivityTitle, @ActivityNodeID, @ActivitySiteID, @ActivityGUID, @ActivityIPAddress, @ActivityCampaign, @ActivityComment, @ActivityURLReferrer, @ActivityCulture); SELECT SCOPE_IDENTITY() AS [ActivityID] 
END', 0, 2854, 0, '20120529 19:18:28', 'b22e75c7-b596-4285-bfa2-3339d7ecadf2', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18870, N'leavesupport', 0, N'--DECLARE @ChatUserID INT;
DELETE FROM Chat_OnlineSupport WHERE ChatOnlineSupportChatUserID = @ChatUserID AND ChatOnlineSupportSiteID = @SiteID;', 0, 3143, 0, '20120604 15:46:31', 'ff33c2f0-dbf7-4a7c-bed7-78489f179c43', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18697, N'updatelastchecking', 0, N'UPDATE Chat_OnlineSupport 
SET [ChatOnlineSupportLastChecking] = GETDATE() 
WHERE [ChatOnlineSupportChatUserID] = @ChatUserID AND [ChatOnlineSupportSiteID] = @SiteID', 0, 3143, 0, '20120604 15:47:06', '4264a1bc-7a25-4253-a31c-8fb6019cb395', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (10371, N'selectcategoryreports', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_Reporting_CategoryReport_Joined WHERE
 ##WHERE##', 0, 1431, 0, '20120605 12:25:05', '15927e00-b32b-4c29-b6d5-c49f3545f440', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18818, N'selectchangedrequests', 0, N'--DECLARE @ChangedSince DATETIME = DATEADD(DAY, -2, GETDATE())
--DECLARE @ByUser BIT = 1
SELECT UserContactID, RoomID, InitiatorName, RequestState, 
    CASE WHEN RequestState = 1 AND MessagesLastModification > RequestLastModification THEN MessagesLastModification ELSE RequestLastModification END AS LastChange -- If request is not New (RequestState is not 1), always select RequestLastModification. Otherwise select bigger time.    
FROM
    (
    SELECT 
        CASE WHEN @ByUser = 1 THEN CICR.InitiatedChatRequestUserID ELSE CICR.InitiatedChatRequestContactID END AS UserContactID,
        CICR.InitiatedChatRequestRoomID AS RoomID, 
        CICR.InitiatedChatRequestInitiatorName AS InitiatorName, 
        CICR.InitiatedChatRequestState AS RequestState,
        CICR.InitiatedChatRequestLastModification AS RequestLastModification,
        MAX(CM.ChatMessageLastModified) AS MessagesLastModification
    FROM [Chat_InitiatedChatRequest] AS CICR
    LEFT JOIN [Chat_Message] AS CM ON CICR.InitiatedChatRequestRoomID = CM.ChatMessageRoomID
    WHERE CM.ChatMessageSystemMessageType = 0 AND (@ByUser = 1 AND CICR.InitiatedChatRequestUserID IS NOT NULL) OR (@ByUser = 0 AND CICR.InitiatedChatRequestContactID IS NOT NULL)
    GROUP BY CICR.InitiatedChatRequestRoomID, CICR.InitiatedChatRequestUserID, CICR.InitiatedChatRequestContactID, CICR.InitiatedChatRequestInitiatorName, CICR.InitiatedChatRequestState, CICR.InitiatedChatRequestLastModification
    ) AS TInner
WHERE MessagesLastModification > @ChangedSince OR RequestLastModification > @ChangedSince', 0, 3155, 0, '20120611 17:57:56', 'c34fd17b-2538-4f3f-8f32-bb17cda0888f', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18817, N'selectallrequests', 0, N'--DECLARE @ByUser BIT = 0
SELECT UserContactID, RoomID, InitiatorName, RequestState, 
    CASE WHEN RequestState = 1 AND MessagesLastModification > RequestLastModification THEN MessagesLastModification ELSE RequestLastModification END AS LastChange -- If request is not New (RequestState is not 1), always select RequestLastModification. Otherwise select bigger time.    
FROM
    (
    SELECT 
        CASE WHEN @ByUser = 1 THEN CICR.InitiatedChatRequestUserID ELSE CICR.InitiatedChatRequestContactID END AS UserContactID,
        CICR.InitiatedChatRequestRoomID AS RoomID, 
        CICR.InitiatedChatRequestInitiatorName AS InitiatorName, 
        CICR.InitiatedChatRequestState AS RequestState,
        CICR.InitiatedChatRequestLastModification AS RequestLastModification,
        MAX(CM.ChatMessageLastModified) AS MessagesLastModification
    FROM [Chat_InitiatedChatRequest] AS CICR
    LEFT JOIN [Chat_Message] AS CM ON CICR.InitiatedChatRequestRoomID = CM.ChatMessageRoomID
    WHERE CM.ChatMessageSystemMessageType = 0 AND (@ByUser = 1 AND CICR.InitiatedChatRequestUserID IS NOT NULL) OR (@ByUser = 0 AND CICR.InitiatedChatRequestContactID IS NOT NULL)
    GROUP BY CICR.InitiatedChatRequestRoomID, CICR.InitiatedChatRequestUserID, CICR.InitiatedChatRequestContactID, CICR.InitiatedChatRequestInitiatorName, CICR.InitiatedChatRequestState, CICR.InitiatedChatRequestLastModification
    ) AS TInner', 0, 3155, 0, '20120611 17:58:08', 'aae47ea2-e73b-4adc-87ef-eee7ccbfbb81', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18914, N'MoveTests', 0, N'UPDATE OM_MVTest SET MVTestPage = @NewAlias WHERE MVTestPage = @OldAlias AND MVTestSiteID = @SiteID', 0, 2806, 0, '20120620 17:19:45', '423be1eb-64d1-419b-84fc-2923d7bc18b6', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18925, N'selectall', 0, N'SELECT NULL', 0, NULL, 0, '20080313 09:35:00', '0ca9b418-70ad-4e74-8031-e6972bb855bf', 0, 0, NULL)
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18927, N'selectlist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM View_CMS_Query_List WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 161, 0, '20120622 15:15:58', '3cf5904d-8c0e-44fb-99a0-fb62d83b1e29', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18673, N'selectlatestmessages', 0, N'--DECLARE @ModifiedSince DATETIME
--SET @ModifiedSince = NULL
--DECLARE @TopN INT
--SET @TopN = 1000
--DECLARE @RoomID INT
--SET @RoomID = 431
SELECT 
*
FROM
(
	SELECT TOP (COALESCE(@TopN,3000))
	  CM.ChatMessageID AS MessageID,
	  CM.ChatMessageText AS MessageText,
	  CU.ChatUserNickname AS Nickname,
	  CURecipient.ChatUserNickname AS Recipient,
	  CM.ChatMessageCreatedWhen AS CreatedWhen,
	  CM.ChatMessageLastModified AS MessageLastModified,
	  CM.ChatMessageSystemMessageType AS SystemMessageType,
	  CM.ChatMessageRejected AS IsRejected,
	  CM.ChatMessageRecipientID AS RecipientID,
	  CM.ChatMessageUserID AS AuthorID
	FROM Chat_Message AS CM
	LEFT JOIN Chat_User AS CU ON CM.ChatMessageUserID = CU.ChatUserID
	LEFT JOIN Chat_User AS CURecipient ON CM.ChatMessageRecipientID = CURecipient.ChatUserID
	WHERE 
	CM.ChatMessageRoomID = @RoomID -- select messages which belong to this room
	AND (@ModifiedSince IS NULL OR ChatMessageLastModified > @ModifiedSince)
        AND ##WHERE##
	ORDER BY CM.ChatMessageLastModified DESC
) AS t1
ORDER BY t1.CreatedWhen', 0, 3141, 0, '20120625 15:43:50', '133a4956-a160-40cf-a49c-24f7945e39f2', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12311, N'selectwithhits', 0, N'SELECT ##COLUMNS##
  FROM (SELECT ABTestID,ABTestName, ABTestDisplayName, ABTestSiteID,  ABTestCulture, ABTestOriginalPage, ABTestOpenFrom, ABTestOpenTo, ABTestEnabled, ABTestConversions, SUM (HitsValue) AS HitsValue FROM OM_ABTest 
LEFT OUTER JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsCode LIKE ''abconversion;''+ ABTestName+ '';%'' 
LEFT OUTER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
GROUP BY ABTestName, ABTestDisplayName, ABTestID, ABTestCulture, ABTestOriginalPage, ABTestOpenFrom, ABTestOpenTo, ABTestEnabled, ABTestConversions, ABTestSiteID) AS X
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2491, 0, '20120704 09:51:02', '331dceff-75d7-4d49-9735-713b9b476771', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18681, N'InsertNotification', 1, N'Proc_Chat_InsertNotification', 0, 3142, 0, '20120718 15:18:47', '06a9bf82-027e-4b63-95a7-34a603694d58', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18937, N'updateprimarycontact', 1, N'Proc_OM_Account_UpdatePrimaryContact', 0, 2837, 0, '20120718 17:55:21', '288d2fa4-9e7c-4e06-8541-b3ed72106de5', 0, 0, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12892, N'selectfromview', 0, N'SELECT ##TOPN## ##COLUMNS## FROM
(SELECT *,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined,
ISNULL(OM_Contact.ContactAddress1,'''') + CASE WHEN (NULLIF(OM_Contact.ContactAddress1,'''') IS NULL) THEN '''' ELSE '', '' END +
ISNULL(OM_Contact.ContactAddress2,'''') + CASE WHEN (NULLIF(OM_Contact.ContactAddress2,'''') IS NULL) THEN '''' ELSE '', '' END +
ISNULL(OM_Contact.ContactCity, '''') AS ContactFullAddressJoined
FROM OM_Contact) as OM_Contact
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2841, 1, '20120719 18:16:09', '39a06158-cdec-4cfc-b486-2324acf702fa', 0, 1, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13154, N'selectmembershiplist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM
(
SELECT OM_Contact.*, OM_Membership.*,
  ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
  ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
  ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined,
  ISNULL(OM_Contact.ContactAddress1, '''') + CASE WHEN (NULLIF(OM_Contact.ContactAddress1,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactAddress2,'''') AS ContactFullAddressJoined
FROM OM_Contact INNER JOIN OM_Membership ON OM_Membership.ActiveContactID=OM_Contact.ContactID
) as tab
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2841, 1, '20120719 18:20:49', 'd9b4c376-677c-46be-8f29-9499e71fa160', 0, 1, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13295, N'selectglobalusers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID,ContactMergedWithContactID,
RelatedID, OM_Contact.ContactSiteID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID,1)) AND MemberType=0
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20120719 18:23:37', 'ce287108-ef57-4710-b18d-533b93bd31ef', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13291, N'selectcustomers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID, RelatedID, 
ContactMergedWithContactID, OM_Contact.ContactSiteID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
WHERE ActiveContactID=@ContactID AND MemberType=1) as tab
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20120719 18:24:14', 'd31e3523-f7a8-4bd3-b389-e59f05d19704', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13287, N'selectusers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID, ContactMergedWithContactID,
RelatedID, OM_Contact.ContactSiteID, 
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
WHERE ActiveContactID=@ContactID AND MemberType=0
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20120719 18:24:36', '70df014b-2fc8-4c03-99d1-6c803b87f353', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13289, N'selectsubscribers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID, ContactMergedWithContactID,
RelatedID, OM_Contact.ContactSiteID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
WHERE ActiveContactID=@ContactID AND MemberType=2) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20120719 18:25:05', '83cd706e-032a-4592-a511-9fa3976f7319', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13297, N'selectglobalcustomers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID, RelatedID,
ContactMergedWithContactID, OM_Contact.ContactSiteID, 
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1)) AND MemberType=1) as tab
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20120719 18:25:58', 'a837dbd3-bd0c-4769-bef6-9473761edc9c', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13296, N'selectglobalsubscribers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID, RelatedID, ContactMergedWithContactID, OM_Contact.ContactSiteID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID,1)) AND MemberType=2) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20120719 18:26:20', '973d4659-226f-4aa8-a3f8-d4678afc4183', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13286, N'selectmergedusers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID,ContactMergedWithContactID,
RelatedID, OM_Contact.ContactSiteID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
WHERE MemberType=0 AND OriginalContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID,1))) as tab
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20120719 18:27:22', '7d002bbf-5fcd-49a0-ac49-7f2d798d52c6', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13288, N'selectmergedsubscribers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID,ContactMergedWithContactID,
RelatedID, OM_Contact.ContactSiteID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
WHERE MemberType=2 AND OriginalContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1))) as tab
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20120719 18:27:48', '2382b826-2981-4667-b02c-1d360a38c843', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13290, N'selectmergedcustomers', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT ContactID, MembershipID, ActiveContactID, OriginalContactID, ContactMergedWithContactID, RelatedID, OM_Contact.ContactSiteID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Membership
INNER JOIN OM_Contact ON OM_Membership.OriginalContactID=OM_Contact.ContactID
WHERE MemberType=1 AND OriginalContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1))) as tab
WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2853, 0, '20120719 18:28:13', '7f104d1a-79f2-413b-b08e-430ee224ebab', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13315, N'selectpreviousnextmergedcontact', 0, N'DECLARE @list TABLE (ActivityID INT, RN INT);
 INSERT INTO @list (ActivityID, RN) SELECT ActivityID, ROW_NUMBER() OVER (ORDER BY ##ORDERBY##) AS RN FROM
(
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityOriginalContactID = OM_Contact.ContactID WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1))
) as tab
WHERE ##WHERE##;
DECLARE @num INT; SET @num = (SELECT RN FROM @list WHERE ActivityID = @ActivityID);
SELECT ActivityID, RN, @num AS BASE_RN FROM @list WHERE RN IN (@num - 1, @num + 1)', 0, 2854, 0, '20120719 18:29:15', 'bba2a660-78d9-4a06-8efe-55885184e2f9', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13273, N'selectactivitylist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
LEFT JOIN OM_Contact ON OM_Activity.ActivityActiveContactID = OM_Contact.ContactID
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2854, 0, '20120719 18:29:43', 'f8de6622-c9ae-43b8-a43d-13ea83f8b027', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13303, N'selectcontactactivitylist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityActiveContactID = OM_Contact.ContactID WHERE ActivityActiveContactID=@ContactID
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2854, 0, '20120719 18:30:07', '0f66e765-2dd3-4d37-81fe-0a988b3ee1bd', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (12906, N'selectpreviousnext', 0, N'DECLARE @list TABLE (ActivityID INT, RN INT);
 INSERT INTO @list (ActivityID, RN) SELECT ActivityID, ROW_NUMBER() OVER (ORDER BY ##ORDERBY##) AS RN FROM
(
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityActiveContactID = OM_Contact.ContactID
) as tab
WHERE ##WHERE##;
DECLARE @num INT; SET @num = (SELECT RN FROM @list WHERE ActivityID = @ActivityID);
SELECT ActivityID, RN, @num AS BASE_RN FROM @list WHERE RN IN (@num - 1, @num + 1)', 0, 2854, 0, '20120719 18:30:47', '749496a4-0915-4218-878c-9023f98bee50', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13314, N'selectpreviousnextcontact', 0, N'DECLARE @list TABLE (ActivityID INT, RN INT);
 INSERT INTO @list (ActivityID, RN) SELECT ActivityID, ROW_NUMBER() OVER (ORDER BY ##ORDERBY##) AS RN FROM
(
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityActiveContactID = OM_Contact.ContactID WHERE ActivityActiveContactID=@ContactID
) as tab
WHERE ##WHERE##;
DECLARE @num INT; SET @num = (SELECT RN FROM @list WHERE ActivityID = @ActivityID);
SELECT ActivityID, RN, @num AS BASE_RN FROM @list WHERE RN IN (@num - 1, @num + 1)', 0, 2854, 0, '20120719 18:31:11', 'd8f8fc9e-1761-426e-9642-89a1033269bd', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13301, N'selectcontactactivitymergedlist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityOriginalContactID = OM_Contact.ContactID WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1))
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2854, 0, '20120719 18:31:43', '52fc0b3b-2b8a-458a-abbd-613720b58026', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13302, N'selectcontactactivitygloballist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM (
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityActiveContactID = OM_Contact.ContactID WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1))
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2854, 0, '20120719 18:32:40', '835eab0d-e56c-409b-b23e-b2842c527fc0', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13316, N'selectpreviousnextglobalcontact', 0, N'DECLARE @list TABLE (ActivityID INT, RN INT);
 INSERT INTO @list (ActivityID, RN) SELECT ActivityID, ROW_NUMBER() OVER (ORDER BY ##ORDERBY##) AS RN FROM
(
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityActiveContactID = OM_Contact.ContactID WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1))
) as tab
WHERE ##WHERE##;
DECLARE @num INT; SET @num = (SELECT RN FROM @list WHERE ActivityID = @ActivityID);
SELECT ActivityID, RN, @num AS BASE_RN FROM @list WHERE RN IN (@num - 1, @num + 1)', 0, 2854, 0, '20120719 18:33:04', '4d6fc417-d1a2-4b0d-932a-00f35ddb40a5', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13274, N'selectmergedactivitylist', 0, N'SELECT ##TOPN## ##COLUMNS## FROM
(
SELECT OM_Activity.ActivityID, OM_Activity.ActivityTitle, OM_Activity.ActivityType,
OM_Activity.ActivityCreated, OM_Activity.ActivitySiteID,OM_Activity.ActivityIPAddress,
OM_Contact.ContactID, OM_Contact.ContactMergedWithContactID,
ISNULL(OM_Contact.ContactFirstName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactMiddleName, '''') + CASE WHEN (NULLIF(OM_Contact.ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
ISNULL(OM_Contact.ContactLastName, '''') AS ContactFullNameJoined
FROM OM_Activity
INNER JOIN OM_Contact ON OM_Activity.ActivityOriginalContactID = OM_Contact.ContactID
WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1))
) as tab
WHERE ##WHERE## ##ORDERBY##', 0, 2854, 0, '20120719 18:33:32', 'f307611f-e737-4bb2-836b-b360ba284ecd', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13298, N'selectglobalips', 0, N'SELECT ##TOPN## ##COLUMNS## FROM
(SELECT IPID, IPActiveContactID, IPOriginalContactID, IPAddress, IPCreated, ContactSiteID,
       ContactMergedWithContactID, ContactID, 
       ISNULL(ContactFirstName, '''') + CASE WHEN (NULLIF(ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
       ISNULL(ContactMiddleName, '''') + CASE WHEN (NULLIF(ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
       ISNULL(ContactLastName, '''') AS ContactFullName
FROM OM_IP LEFT JOIN OM_Contact ON OM_IP.IPOriginalContactID = OM_Contact.ContactID WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1))
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2855, 0, '20120719 18:35:00', '9ae2b619-93f9-4cb6-902c-5f375f619ae0', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13268, N'selectips', 0, N'SELECT ##TOPN## ##COLUMNS## FROM 
(SELECT IPAddress, IPID, IPActiveContactID, IPOriginalContactID, IPCreated, ContactSiteID,
       ContactID, ContactMergedWithContactID, 
       ISNULL(ContactFirstName, '''') + CASE WHEN (NULLIF(ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
       ISNULL(ContactMiddleName, '''') + CASE WHEN (NULLIF(ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
       ISNULL(ContactLastName, '''') AS ContactFullName
FROM OM_IP LEFT JOIN OM_Contact ON OM_IP.IPOriginalContactID = OM_Contact.ContactID WHERE IPActiveContactID=@ContactID
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2855, 0, '20120719 18:35:37', 'e4342746-fcbd-4b9f-a597-f59953baad86', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (13292, N'selectmergedips', 0, N'SELECT ##TOPN## ##COLUMNS## FROM
(SELECT IPID, IPActiveContactID, IPOriginalContactID, IPAddress, IPCreated, ContactSiteID, ContactMergedWithContactID,
       ContactID, 
       ISNULL(ContactFirstName, '''') + CASE WHEN (NULLIF(ContactFirstName,'''') IS NULL) THEN '''' ELSE '' '' END +
       ISNULL(ContactMiddleName, '''') + CASE WHEN (NULLIF(ContactMiddleName,'''') IS NULL) THEN '''' ELSE '' '' END +
       ISNULL(ContactLastName, '''') AS ContactFullName
FROM OM_IP LEFT JOIN OM_Contact ON OM_IP.IPOriginalContactID = OM_Contact.ContactID WHERE ContactID IN (SELECT * FROM Func_OM_Contact_GetChildren(@ContactID, 1))
) as tab WHERE ##WHERE## ORDER BY ##ORDERBY##', 0, 2855, 0, '20120719 18:36:39', '4775c521-83cb-47a2-af03-be3ec88810fa', 0, NULL, N'CMSOMConnectionString')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18733, N'selectchangedsupportrooms', 0, N'--DECLARE @LastChange DATETIME
--SET @LastChange = ''2012-06-12 11:37:02.130'' --  DATEADD(DAY, -1, GETDATE()) -- ''2012-04-25 16:01:35.963'' -- NULL
--DECLARE @SiteID INT
--SET @SiteID = 136;
----SET @LastChange = NULL --DATEADD(DAY, -1, GETDATE())
WITH RoomsWithAllMessages
AS
(
    SELECT 
        Chat_Room.*, 
        Chat_SupportTakenRoom.* , 
        (SELECT MAX(ChatMessageLastModified) FROM Chat_Message WHERE ChatMessageRoomID = ChatRoomID) AS LastMessageModification,
        (SELECT MAX(ChatMessageLastModified)
            FROM Chat_Message 
            WHERE ChatMessageRoomID = ChatRoomID AND ChatMessageUserID = ChatSupportTakenRoomChatUserID
        ) AS LastSupporterMessage
    FROM Chat_Room
    LEFT JOIN Chat_SupportTakenRoom ON ChatRoomID = ChatSupportTakenRoomRoomID
    WHERE 
        ChatRoomIsSupport = 1 AND 
        ChatRoomEnabled = 1 AND
        (ChatRoomSiteID IS NULL OR ChatRoomSiteID = @SiteID)
)
SELECT *
FROM
(
    SELECT 
        ChatRoomID, 
        ChatRoomDisplayName, 
        COUNT(ChatMessageID) AS UnreadMessagesCount, 
        ChatSupportTakenRoomChatUserID AS TakenByChatUserID,
        ChatSupportTakenRoomLastModification AS TakenStateLastChange,
        CASE
	        WHEN COALESCE(ChatSupportTakenRoomLastModification, 0) >= COALESCE(LastMessageModification, 0) THEN ChatSupportTakenRoomLastModification
	        ELSE LastMessageModification
        END AS LastChange
    FROM RoomsWithAllMessages
    -- CountedMessages - filtered unread messages  
    LEFT JOIN Chat_Message ON ChatMessageRoomID = ChatRoomID AND
        -- count only non-system messages:
        ChatMessageSystemMessageType = 0 AND
        -- count only messages newer than ResolvedDateTime:
        (ChatSupportTakenRoomResolvedDateTime IS NULL OR ChatSupportTakenRoomResolvedDateTime < ChatMessageLastModified) AND
        -- if room is taken, count only messages older then taken date time
        (ChatSupportTakenRoomChatUserID IS NULL OR ChatSupportTakenRoomLastModification < ChatMessageLastModified) AND
        -- do not count messages older than supporter last message  
        (LastSupporterMessage IS NULL OR LastSupporterMessage < ChatMessageLastModified)
    GROUP BY ChatRoomID, ChatRoomDisplayName, ChatSupportTakenRoomChatUserID, ChatSupportTakenRoomLastModification, LastMessageModification
    ) AS T
-- if @LastChange is NULL (it is the first request), return rooms with unread messages and taken rooms. Otherwise return changed rooms (new message or taken state changed)
WHERE (@LastChange IS NULL AND (UnreadMessagesCount > 0 OR TakenByChatUserID IS NOT NULL)) OR (@LastChange IS NOT NULL AND LastChange > @LastChange)', 0, 3146, 0, '20120719 21:20:27', 'df695cdf-2c96-4323-97c9-e5ae7861402e', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18566, N'CheckDependencies', 0, N'SELECT ##TOPN## StepDisplayName, WorkflowDisplayName FROM CMS_WorkflowStep INNER JOIN CMS_Workflow ON CMS_WorkflowStep.StepWorkflowID = CMS_Workflow.WorkflowID WHERE StepActionID = @ID', 0, 3077, 0, '20120723 07:00:19', 'b7bcf199-ace3-4860-b33f-dd5148e7d21f', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18939, N'update', 0, N'-- ChatMessageLastModified has to be set to SQL Server time because of synchronization across web farms
UPDATE Chat_Message 
SET 
[ChatMessageCreatedWhen] = @ChatMessageCreatedWhen, 
[ChatMessageIPAddress] = @ChatMessageIPAddress, 
[ChatMessageUserID] = @ChatMessageUserID, 
[ChatMessageRoomID] = @ChatMessageRoomID, 
[ChatMessageRejected] = @ChatMessageRejected, 
[ChatMessageLastModified] = GETDATE(), 
[ChatMessageText] = @ChatMessageText, 
[ChatMessageSystemMessageType] = @ChatMessageSystemMessageType, 
[ChatMessageRecipientID] = @ChatMessageRecipientID 
WHERE 
[ChatMessageID] = @ChatMessageID', 0, 3141, 0, '20120725 17:11:35', '8bba4268-0081-49b0-8761-488097551055', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18941, N'update', 0, N'-- InitiatedChatRequestLastModification has to be set to SQL Server time because of synchronization across web farms
UPDATE Chat_InitiatedChatRequest 
SET 
[InitiatedChatRequestUserID] = @InitiatedChatRequestUserID, 
[InitiatedChatRequestContactID] = @InitiatedChatRequestContactID, 
[InitiatedChatRequestRoomID] = @InitiatedChatRequestRoomID, 
[InitiatedChatRequestState] = @InitiatedChatRequestState, 
[InitiatedChatRequestInitiatorName] = @InitiatedChatRequestInitiatorName, 
[InitiatedChatRequestInitiatorChatUserID] = @InitiatedChatRequestInitiatorChatUserID, 
[InitiatedChatRequestLastModification] = GETDATE() 
WHERE 
[InitiatedChatRequestID] = @InitiatedChatRequestID', 0, 3155, 0, '20120725 17:14:25', '456af3bf-4741-4bba-9eca-7ee96fc45657', 0, NULL, N'')
INSERT INTO [CMS_Query] ([QueryID], [QueryName], [QueryTypeID], [QueryText], [QueryRequiresTransaction], [ClassID], [QueryIsLocked], [QueryLastModified], [QueryGUID], [QueryLoadGeneration], [QueryIsCustom], [QueryConnectionString]) VALUES (18943, N'update', 0, N'-- ChatRoomLastModification has to be set to SQL Server time because of synchronization across web farms
UPDATE Chat_Room 
SET 
[ChatRoomName] = @ChatRoomName, 
[ChatRoomDisplayName] = @ChatRoomDisplayName, 
[ChatRoomSiteID] = @ChatRoomSiteID, 
[ChatRoomEnabled] = @ChatRoomEnabled, 
[ChatRoomPrivate] = @ChatRoomPrivate, 
[ChatRoomAllowAnonym] = @ChatRoomAllowAnonym, 
[ChatRoomCreatedWhen] = @ChatRoomCreatedWhen, 
[ChatRoomPassword] = @ChatRoomPassword, 
[ChatRoomCreatedByChatUserID] = @ChatRoomCreatedByChatUserID, 
[ChatRoomIsSupport] = @ChatRoomIsSupport, 
[ChatRoomIsOneToOne] = @ChatRoomIsOneToOne, 
[ChatRoomDescription] = @ChatRoomDescription, 
[ChatRoomLastModification] = GETDATE(), 
[ChatRoomScheduledToDelete] = @ChatRoomScheduledToDelete, 
[ChatRoomPrivateStateLastModification] = @ChatRoomPrivateStateLastModification, 
[ChatRoomGUID] = @ChatRoomGUID 
WHERE 
[ChatRoomID] = @ChatRoomID', 0, 3146, 0, '20120725 17:16:40', '01349a51-a44e-4886-8a25-ce307baa50de', 0, NULL, N'')
SET IDENTITY_INSERT [CMS_Query] OFF
