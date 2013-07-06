CREATE TABLE [Newsletter_EmailTemplateNewsletter] (
		[TemplateID]       [int] NOT NULL,
		[NewsletterID]     [int] NOT NULL
) 
ALTER TABLE [Newsletter_EmailTemplateNewsletter]
	ADD
	CONSTRAINT [PK_Newsletter_EmailTemplateNewsletter]
	PRIMARY KEY
	CLUSTERED
	([TemplateID], [NewsletterID])
	
ALTER TABLE [Newsletter_EmailTemplateNewsletter]
	WITH CHECK
	ADD CONSTRAINT [FK_Newsletter_EmailTemplateNewsletter_Newsletter_EmailTemplate]
	FOREIGN KEY ([TemplateID]) REFERENCES [Newsletter_EmailTemplate] ([TemplateID])
ALTER TABLE [Newsletter_EmailTemplateNewsletter]
	CHECK CONSTRAINT [FK_Newsletter_EmailTemplateNewsletter_Newsletter_EmailTemplate]
ALTER TABLE [Newsletter_EmailTemplateNewsletter]
	WITH CHECK
	ADD CONSTRAINT [FK_Newsletter_EmailTemplateNewsletter_Newsletter_Newsletter]
	FOREIGN KEY ([NewsletterID]) REFERENCES [Newsletter_Newsletter] ([NewsletterID])
ALTER TABLE [Newsletter_EmailTemplateNewsletter]
	CHECK CONSTRAINT [FK_Newsletter_EmailTemplateNewsletter_Newsletter_Newsletter]
