CREATE TABLE [CMS_Role] (
		[RoleID]                       [int] IDENTITY(1, 1) NOT NULL,
		[RoleDisplayName]              [nvarchar](100) NOT NULL,
		[RoleName]                     [nvarchar](100) NOT NULL,
		[RoleDescription]              [nvarchar](max) NULL,
		[SiteID]                       [int] NULL,
		[RoleGUID]                     [uniqueidentifier] NOT NULL,
		[RoleLastModified]             [datetime] NOT NULL,
		[RoleGroupID]                  [int] NULL,
		[RoleIsGroupAdministrator]     [bit] NULL,
		[RoleIsDomain]                 [bit] NULL
)  
ALTER TABLE [CMS_Role]
	ADD
	CONSTRAINT [PK_CMS_Role]
	PRIMARY KEY
	NONCLUSTERED
	([RoleID])
	WITH FILLFACTOR=80
	
CREATE NONCLUSTERED INDEX [IX_CMS_Role_RoleGroupID]
	ON [CMS_Role] ([RoleGroupID])
	
CREATE NONCLUSTERED INDEX [IX_CMS_Role_SiteID_RoleID]
	ON [CMS_Role] ([SiteID])
	
CREATE UNIQUE NONCLUSTERED INDEX [IX_CMS_Role_SiteID_RoleName]
	ON [CMS_Role] ([RoleName], [SiteID])
	
CREATE CLUSTERED INDEX [IX_CMS_Role_SiteID_RoleName_RoleDisplayName]
	ON [CMS_Role] ([SiteID])
	
ALTER TABLE [CMS_Role]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_Role_RoleGroupID_Community_Group]
	FOREIGN KEY ([RoleGroupID]) REFERENCES [Community_Group] ([GroupID])
ALTER TABLE [CMS_Role]
	CHECK CONSTRAINT [FK_CMS_Role_RoleGroupID_Community_Group]
ALTER TABLE [CMS_Role]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_Role_SiteID_CMS_SiteID]
	FOREIGN KEY ([SiteID]) REFERENCES [CMS_Site] ([SiteID])
ALTER TABLE [CMS_Role]
	CHECK CONSTRAINT [FK_CMS_Role_SiteID_CMS_SiteID]
