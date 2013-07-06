CREATE TABLE [Chat_PopupWindowSettings] (
		[ChatPopupWindowSettingsID]           [int] IDENTITY(1, 1) NOT NULL,
		[MessageTransformationName]           [nvarchar](255) NOT NULL,
		[ErrorTransformationName]             [nvarchar](255) NOT NULL,
		[ErrorClearTransformationName]        [nvarchar](255) NOT NULL,
		[UserTransformationName]              [nvarchar](255) NOT NULL,
		[ChatPopupWindowSettingsHashCode]     [int] NOT NULL
) 
ALTER TABLE [Chat_PopupWindowSettings]
	ADD
	CONSTRAINT [PK_Chat_PopupWindowSettings]
	PRIMARY KEY
	CLUSTERED
	([ChatPopupWindowSettingsID])
	
ALTER TABLE [Chat_PopupWindowSettings]
	ADD
	CONSTRAINT [DEFAULT_Chat_PopupWindowSettings_ChatPopupWindowSettingsHashCode]
	DEFAULT ((0)) FOR [ChatPopupWindowSettingsHashCode]
