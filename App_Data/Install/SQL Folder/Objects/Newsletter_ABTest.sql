CREATE TABLE [Newsletter_ABTest] (
		[TestID]                         [int] IDENTITY(1, 1) NOT NULL,
		[TestIssueID]                    [int] NOT NULL,
		[TestWinnerOption]               [int] NOT NULL,
		[TestSelectWinnerAfter]          [int] NULL,
		[TestWinnerIssueID]              [int] NULL,
		[TestWinnerSelected]             [datetime] NULL,
		[TestLastModified]               [datetime] NOT NULL,
		[TestGUID]                       [uniqueidentifier] NOT NULL,
		[TestWinnerScheduledTaskID]      [int] NULL,
		[TestSizePercentage]             [int] NOT NULL,
		[TestNumberPerVariantEmails]     [int] NULL
) 
ALTER TABLE [Newsletter_ABTest]
	ADD
	CONSTRAINT [PK_Newsletter_ABTest]
	PRIMARY KEY
	CLUSTERED
	([TestID])
	
ALTER TABLE [Newsletter_ABTest]
	ADD
	CONSTRAINT [DEFAULT_Newsletter_ABTest_TestLastModified]
	DEFAULT ('12/5/2011 4:56:38 PM') FOR [TestLastModified]
ALTER TABLE [Newsletter_ABTest]
	ADD
	CONSTRAINT [DEFAULT_Newsletter_ABTest_TestSizePercentage]
	DEFAULT ((0)) FOR [TestSizePercentage]
CREATE UNIQUE NONCLUSTERED INDEX [IX_Newsletter_ABTest_TestIssueID]
	ON [Newsletter_ABTest] ([TestIssueID])
	
CREATE NONCLUSTERED INDEX [IX_Newsletter_ABTest_TestWinnerIssueID]
	ON [Newsletter_ABTest] ([TestWinnerIssueID])
	
ALTER TABLE [Newsletter_ABTest]
	WITH CHECK
	ADD CONSTRAINT [FK_Newsletter_ABTest_Newsletter_NewsletterIssue]
	FOREIGN KEY ([TestIssueID]) REFERENCES [Newsletter_NewsletterIssue] ([IssueID])
ALTER TABLE [Newsletter_ABTest]
	CHECK CONSTRAINT [FK_Newsletter_ABTest_Newsletter_NewsletterIssue]
