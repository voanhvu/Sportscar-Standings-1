CREATE TABLE [CMS_DeviceProfileLayout] (
		[DeviceProfileLayoutID]               [int] IDENTITY(1, 1) NOT NULL,
		[DeviceProfileID]                     [int] NOT NULL,
		[SourceLayoutID]                      [int] NOT NULL,
		[TargetLayoutID]                      [int] NOT NULL,
		[DeviceProfileLayoutGUID]             [uniqueidentifier] NOT NULL,
		[DeviceProfileLayoutLastModified]     [datetime] NOT NULL
) 
ALTER TABLE [CMS_DeviceProfileLayout]
	ADD
	CONSTRAINT [PK_CMS_DeviceProfileLayout]
	PRIMARY KEY
	CLUSTERED
	([DeviceProfileLayoutID])
	
