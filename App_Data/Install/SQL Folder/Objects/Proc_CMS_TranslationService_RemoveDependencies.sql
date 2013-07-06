-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Proc_CMS_TranslationService_RemoveDependencies]
	@ID int
AS
BEGIN
  DELETE FROM CMS_TranslationSubmissionItem WHERE SubmissionItemSubmissionID IN (SELECT SubmissionID FROM CMS_TranslationSubmission WHERE SubmissionServiceID = @ID);
  DELETE FROM CMS_TranslationSubmission WHERE SubmissionServiceID = @ID
END
