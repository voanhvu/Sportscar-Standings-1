CREATE TABLE [CMS_FormRole] (
		[FormID]     [int] NOT NULL,
		[RoleID]     [int] NOT NULL
) 
ALTER TABLE [CMS_FormRole]
	ADD
	CONSTRAINT [PK_CMS_FormRole]
	PRIMARY KEY
	CLUSTERED
	([FormID], [RoleID])
	WITH FILLFACTOR=80
	
ALTER TABLE [CMS_FormRole]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_FormRole_FormID_CMS_Form]
	FOREIGN KEY ([FormID]) REFERENCES [CMS_Form] ([FormID])
ALTER TABLE [CMS_FormRole]
	CHECK CONSTRAINT [FK_CMS_FormRole_FormID_CMS_Form]
ALTER TABLE [CMS_FormRole]
	WITH CHECK
	ADD CONSTRAINT [FK_CMS_FormRole_RoleID_CMS_Role]
	FOREIGN KEY ([RoleID]) REFERENCES [CMS_Role] ([RoleID])
ALTER TABLE [CMS_FormRole]
	CHECK CONSTRAINT [FK_CMS_FormRole_RoleID_CMS_Role]