CREATE VIEW [View_PageInfo]
AS
SELECT        t .NodeID, t .NodeAliasPath, t .NodeName, t .NodeAlias, t .NodeClassID, t .NodeParentID, t .NodeLevel, t .NodeACLID, t .NodeSiteID, t .NodeGUID, t .NodeOrder, 
                         d .DocumentID, d .DocumentName, d .DocumentNamePath, d .DocumentPublishFrom, d .DocumentPublishTo, d .DocumentUrlPath, d .DocumentCulture, 
                         d .DocumentPageTitle, d .DocumentPageKeyWords, d .DocumentPageDescription, d .DocumentMenuCaption, d .DocumentPageTemplateID, c.ClassName, 
                         d .DocumentContent, d .DocumentStylesheetID, t .IsSecuredNode, d .DocumentMenuRedirectUrl, d .DocumentMenuJavascript, t .NodeCacheMinutes, t .NodeSKUID, 
                         t .NodeDocType, t .NodeHeadTags, t .NodeInheritPageLevels, d .DocumentMenuItemInactive, d .DocumentMenuStyle, d .DocumentMenuItemHideInNavigation, 
                         t .NodeChildNodesCount, t .NodeBodyElementAttributes, t .RequiresSSL, t .NodeLinkedNodeID, t .NodeOwner, d .DocumentMenuClass, 
                         d .DocumentCheckedOutVersionHistoryID, d .DocumentPublishedVersionHistoryID, d .DocumentWorkflowStepID, s.StepName, d .DocumentExtensions, 
                         d .DocumentCampaign, t .NodeGroupID, d .DocumentWebParts, d .DocumentGroupWebParts, d .DocumentTrackConversionName, d .DocumentConversionValue, 
                         t .NodeLinkedNodeSiteID, d .DocumentWorkflowCycleGUID, d .DocumentGUID, s.StepType, d .DocumentSearchExcluded, t .NodeTemplateID, 
                         t .NodeWireframeTemplateID, t .NodeTemplateForAllCultures, t .NodeInheritPageTemplate, t .NodeWireframeInheritPageLevels, 
                         t .NodeAllowCacheInFileSystem, d.DocumentLogVisitActivity
FROM            CMS_Tree t INNER JOIN
                         CMS_Document d ON t .NodeID = d .DocumentNodeID INNER JOIN
                         CMS_Class c ON t .NodeClassID = c.ClassID LEFT OUTER JOIN
                         CMS_WorkflowStep s ON d .DocumentWorkflowStepID = s.StepID
UNION ALL
SELECT        t .NodeID, t .NodeAliasPath, t .NodeName, t .NodeAlias, t .NodeClassID, t .NodeParentID, t .NodeLevel, t .NodeACLID, t .NodeSiteID, t .NodeGUID, t .NodeOrder, 
                         d .DocumentID, d .DocumentName, d .DocumentNamePath, d .DocumentPublishFrom, d .DocumentPublishTo, d .DocumentUrlPath, d .DocumentCulture, 
                         d .DocumentPageTitle, d .DocumentPageKeyWords, d .DocumentPageDescription, d .DocumentMenuCaption, d .DocumentPageTemplateID, c.ClassName, 
                         d .DocumentContent, d .DocumentStylesheetID, t .IsSecuredNode, d .DocumentMenuRedirectUrl, d .DocumentMenuJavascript, t .NodeCacheMinutes, t .NodeSKUID, 
                         t .NodeDocType, t .NodeHeadTags, t .NodeInheritPageLevels, d .DocumentMenuItemInactive, d .DocumentMenuStyle, d .DocumentMenuItemHideInNavigation, 
                         t .NodeChildNodesCount, t .NodeBodyElementAttributes, t .RequiresSSL, t .NodeLinkedNodeID, t .NodeOwner, d .DocumentMenuClass, 
                         d .DocumentCheckedOutVersionHistoryID, d .DocumentPublishedVersionHistoryID, d .DocumentWorkflowStepID, s.StepName, d .DocumentExtensions, 
                         d .DocumentCampaign, t .NodeGroupID, d .DocumentWebParts, d .DocumentGroupWebParts, d .DocumentTrackConversionName, d .DocumentConversionValue, 
                         t .NodeLinkedNodeSiteID, d .DocumentWorkflowCycleGUID, d .DocumentGUID, s.StepType, d .DocumentSearchExcluded, t .NodeTemplateID, 
                         t .NodeWireframeTemplateID, t .NodeTemplateForAllCultures, t .NodeInheritPageTemplate, t .NodeWireframeInheritPageLevels, 
                         t .NodeAllowCacheInFileSystem, d.DocumentLogVisitActivity
FROM            CMS_Tree t INNER JOIN
                         CMS_Document d ON t .NodeLinkedNodeID = d .DocumentNodeID INNER JOIN
                         CMS_Class c ON t .NodeClassID = c.ClassID LEFT OUTER JOIN
                         CMS_WorkflowStep s ON d .DocumentWorkflowStepID = s.StepID
GO
