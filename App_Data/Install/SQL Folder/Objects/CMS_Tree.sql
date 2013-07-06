CREATE TABLE [CMS_Tree] (
		[NodeID]                             [int] IDENTITY(1, 1) NOT NULL,
		[NodeAliasPath]                      [nvarchar](450) NOT NULL,
		[NodeName]                           [nvarchar](100) NOT NULL,
		[NodeAlias]                          [nvarchar](50) NOT NULL,
		[NodeClassID]                        [int] NOT NULL,
		[NodeParentID]                       [int] NOT NULL,
		[NodeLevel]                          [int] NOT NULL,
		[NodeACLID]                          [int] NULL,
		[NodeSiteID]                         [int] NOT NULL,
		[NodeGUID]                           [uniqueidentifier] NOT NULL,
		[NodeOrder]                          [int] NULL,
		[IsSecuredNode]                      [bit] NULL,
		[NodeCacheMinutes]                   [int] NULL,
		[NodeSKUID]                          [int] NULL,
		[NodeDocType]                        [nvarchar](max) NULL,
		[NodeHeadTags]                       [nvarchar](max) NULL,
		[NodeBodyElementAttributes]          [nvarchar](max) NULL,
		[NodeInheritPageLevels]              [nvarchar](200) NULL,
		[NodeChildNodesCount]                [int] NULL,
		[RequiresSSL]                        [int] NULL,
		[NodeLinkedNodeID]                   [int] NULL,
		[NodeOwner]                          [int] NULL,
		[NodeCustomData]                     [nvarchar](max) NULL,
		[NodeGroupID]                        [int] NULL,
		[NodeLinkedNodeSiteID]               [int] NULL,
		[NodeTemplateID]                     [int] NULL,
		[NodeWireframeTemplateID]            [int] NULL,
		[NodeWireframeComment]               [nvarchar](max) NULL,
		[NodeTemplateForAllCultures]         [bit] NULL,
		[NodeInheritPageTemplate]            [bit] NULL,
		[NodeWireframeInheritPageLevels]     [nvarchar](450) NULL,
		[NodeAllowCacheInFileSystem]         [bit] NULL
)  
ALTER TABLE [CMS_Tree]
	ADD
	CONSTRAINT [PK_CMS_Tree]
	PRIMARY KEY
	NONCLUSTERED
	([NodeID])
	WITH FILLFACTOR=80
	
ALTER TABLE [CMS_Tree]
	ADD
	CONSTRAINT [DEFAULT_CMS_Tree_NodeAllowCacheInFileSystem]
	DEFAULT ((0)) FOR [NodeAllowCacheInFileSystem]
ALTER TABLE [CMS_Tree]
	ADD
	CONSTRAINT [DEFAULT_CMS_Tree_NodeInheritPageTemplate]
	DEFAULT ((0)) FOR [NodeInheritPageTemplate]
ALTER TABLE [CMS_Tree]
	ADD
	CONSTRAINT [DEFAULT_CMS_Tree_NodeTemplateForAllCultures]
	DEFAULT ((0)) FOR [NodeTemplateForAllCultures]
CREATE NONCLUSTERED INDEX [CMS_Tree_NodeSiteID_NodeID_NodeClassID_NodeLinkedNodeID]
	ON [CMS_Tree] ([NodeSiteID])
	INCLUDE ([NodeID], [NodeClassID], [NodeLinkedNodeID])
	
CREATE NONCLUSTERED INDEX [IX_CMS_Tree_IsSecuredNode_RequiresSSL_NodeCacheMinutes]
	ON [CMS_Tree] ([IsSecuredNode], [RequiresSSL], [NodeCacheMinutes])
	WITH ( FILLFACTOR = 80)
	
CREATE NONCLUSTERED INDEX [IX_CMS_Tree_NodeACLID]
	ON [CMS_Tree] ([NodeACLID])
	
CREATE NONCLUSTERED INDEX [IX_CMS_Tree_NodeAliasPath]
	ON [CMS_Tree] ([NodeAliasPath])
	WITH ( FILLFACTOR = 80)
	
CREATE NONCLUSTERED INDEX [IX_CMS_Tree_NodeClassID]
	ON [CMS_Tree] ([NodeClassID])
	
CREATE NONCLUSTERED INDEX [IX_CMS_Tree_NodeGroupID]
	ON [CMS_Tree] ([NodeGroupID])
	
CREATE UNIQUE CLUSTERED INDEX [IX_CMS_Tree_NodeID]
	ON [CMS_Tree] ([NodeID])
	
CREATE NONCLUSTERED INDEX [IX_CMS_Tree_NodeID_NodeSiteID]
	ON [CMS_Tree] ([NodeID], [NodeSiteID])
	WITH ( FILLFACTOR = 80)
	
CREATE NONCLUSTERED INDEX [IX_CMS_Tree_NodeLevel]
	ON [CMS_Tree] ([NodeLevel])
	WITH ( FILLFACTOR = 80)
	
CREATE NONCLUSTERED INDEX [IX_CMS_Tree_NodeLinkedNodeID]
	ON [CMS_Tree] ([NodeLinkedNodeID])
	INCLUDE ([NodeID], [NodeClassID])
	
CREATE NONCLUSTERED INDEX [IX_CMS_Tree_NodeOwner]
	ON [CMS_Tree] ([NodeOwner])
	
CREATE NONCLUSTERED INDEX [IX_CMS_Tree_NodeParentID_NodeAlias_NodeName]
	ON [CMS_Tree] ([NodeParentID], [NodeAlias], [NodeName])
	WITH ( FILLFACTOR = 80)
	
CREATE UNIQUE NONCLUSTERED INDEX [IX_CMS_Tree_NodeSiteID_NodeGUID]
	ON [CMS_Tree] ([NodeSiteID], [NodeGUID])
	INCLUDE ([NodeID])
	WITH ( FILLFACTOR = 80)
	
CREATE NONCLUSTERED INDEX [IX_CMS_Tree_NodeSKUID]
	ON [CMS_Tree] ([NodeSKUID])
	
ALTER TABLE [CMS_Tree]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_Tree_CMS_Tree]
	FOREIGN KEY ([NodeID]) REFERENCES [CMS_Tree] ([NodeID])
ALTER TABLE [CMS_Tree]
	CHECK CONSTRAINT [FK_CMS_Tree_CMS_Tree]
ALTER TABLE [CMS_Tree]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_Tree_NodeACLID_CMS_ACL]
	FOREIGN KEY ([NodeACLID]) REFERENCES [CMS_ACL] ([ACLID])
ALTER TABLE [CMS_Tree]
	CHECK CONSTRAINT [FK_CMS_Tree_NodeACLID_CMS_ACL]
ALTER TABLE [CMS_Tree]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_Tree_NodeClassID_CMS_Class]
	FOREIGN KEY ([NodeClassID]) REFERENCES [CMS_Class] ([ClassID])
ALTER TABLE [CMS_Tree]
	CHECK CONSTRAINT [FK_CMS_Tree_NodeClassID_CMS_Class]
ALTER TABLE [CMS_Tree]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_Tree_NodeGroupID_Community_Group]
	FOREIGN KEY ([NodeGroupID]) REFERENCES [Community_Group] ([GroupID])
ALTER TABLE [CMS_Tree]
	CHECK CONSTRAINT [FK_CMS_Tree_NodeGroupID_Community_Group]
ALTER TABLE [CMS_Tree]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_Tree_NodeLinkedNodeID_CMS_Tree]
	FOREIGN KEY ([NodeLinkedNodeID]) REFERENCES [CMS_Tree] ([NodeID])
ALTER TABLE [CMS_Tree]
	CHECK CONSTRAINT [FK_CMS_Tree_NodeLinkedNodeID_CMS_Tree]
ALTER TABLE [CMS_Tree]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_Tree_NodeLinkedNodeSiteID_CMS_Site]
	FOREIGN KEY ([NodeLinkedNodeSiteID]) REFERENCES [CMS_Site] ([SiteID])
ALTER TABLE [CMS_Tree]
	CHECK CONSTRAINT [FK_CMS_Tree_NodeLinkedNodeSiteID_CMS_Site]
ALTER TABLE [CMS_Tree]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_Tree_NodeOwner_CMS_User]
	FOREIGN KEY ([NodeOwner]) REFERENCES [CMS_User] ([UserID])
ALTER TABLE [CMS_Tree]
	CHECK CONSTRAINT [FK_CMS_Tree_NodeOwner_CMS_User]
ALTER TABLE [CMS_Tree]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_Tree_NodeSiteID_CMS_Site]
	FOREIGN KEY ([NodeSiteID]) REFERENCES [CMS_Site] ([SiteID])
ALTER TABLE [CMS_Tree]
	CHECK CONSTRAINT [FK_CMS_Tree_NodeSiteID_CMS_Site]
ALTER TABLE [CMS_Tree]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_Tree_NodeSKUID_COM_SKU]
	FOREIGN KEY ([NodeSKUID]) REFERENCES [COM_SKU] ([SKUID])
ALTER TABLE [CMS_Tree]
	CHECK CONSTRAINT [FK_CMS_Tree_NodeSKUID_COM_SKU]
ALTER TABLE [CMS_Tree]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_Tree_NodeTemplateID_CMS_PageTemplate]
	FOREIGN KEY ([NodeTemplateID]) REFERENCES [CMS_PageTemplate] ([PageTemplateID])
ALTER TABLE [CMS_Tree]
	CHECK CONSTRAINT [FK_CMS_Tree_NodeTemplateID_CMS_PageTemplate]
ALTER TABLE [CMS_Tree]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_Tree_NodeWireframeTemplateID_CMS_PageTemplate]
	FOREIGN KEY ([NodeWireframeTemplateID]) REFERENCES [CMS_PageTemplate] ([PageTemplateID])
ALTER TABLE [CMS_Tree]
	CHECK CONSTRAINT [FK_CMS_Tree_NodeWireframeTemplateID_CMS_PageTemplate]
