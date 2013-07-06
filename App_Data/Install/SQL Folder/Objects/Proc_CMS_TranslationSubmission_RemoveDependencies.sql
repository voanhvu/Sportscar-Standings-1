-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Proc_CMS_TranslationSubmission_RemoveDependencies]
	@ID int
AS
BEGIN
  DELETE FROM CMS_TranslationSubmissionItem WHERE SubmissionItemSubmissionID = @ID;
END
