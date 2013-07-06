CREATE PROCEDURE [Proc_Newsletter_EmailTemplate_RemoveDependencies]
@ID int
AS
BEGIN
BEGIN TRANSACTION;
  
  -- Delete newsletter - e-mail template binding
  DELETE FROM Newsletter_EmailTemplateNewsletter WHERE TemplateID = @ID;
  
  COMMIT TRANSACTION;
END
