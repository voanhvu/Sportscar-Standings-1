CREATE TABLE [CMS_DeviceProfile] (
		[ProfileID]                [int] IDENTITY(1, 1) NOT NULL,
		[ProfileName]              [nvarchar](100) NOT NULL,
		[ProfileDisplayName]       [nvarchar](200) NOT NULL,
		[ProfileOrder]             [int] NULL,
		[ProfileMacro]             [nvarchar](max) NULL,
		[ProfileUserAgents]        [nvarchar](max) NULL,
		[ProfileDevices]           [nvarchar](200) NULL,
		[ProfileEnabled]           [bit] NOT NULL,
		[ProfilePreviewWidth]      [int] NULL,
		[ProfileIconGUID]          [uniqueidentifier] NULL,
		[ProfilePreviewHeight]     [int] NULL,
		[ProfileGUID]              [uniqueidentifier] NULL,
		[ProfileLastModified]      [datetime] NULL
)  
ALTER TABLE [CMS_DeviceProfile]
	ADD
	CONSTRAINT [PK_CMS_DeviceProfile]
	PRIMARY KEY
	CLUSTERED
	([ProfileID])
	
ALTER TABLE [CMS_DeviceProfile]
	ADD
	CONSTRAINT [DEFAULT_CMS_DeviceProfile_ProfileEnabled]
	DEFAULT ((1)) FOR [ProfileEnabled]
ALTER TABLE [CMS_DeviceProfile]
	ADD
	CONSTRAINT [DEFAULT_CMS_DeviceProfile_ProfileName]
	DEFAULT ('') FOR [ProfileName]
