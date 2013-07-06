SET IDENTITY_INSERT [Reporting_ReportTable] ON
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (102, N'table', N'table', N'DECLARE @PaveViews TABLE
(
  DocumentNamePath NVARCHAR(500),
  Pageviews INT,
  Percents DECIMAL(10,2)  
)
DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT @Sum =   
  SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND StatisticsObjectCulture = DocumentCulture 
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
 AND (HitsEndTime <= @ToDate)
INSERT INTO @PaveViews (DocumentNamePath,pageViews,percents)
SELECT TOP 100
 CASE
  WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName
  ELSE DocumentNamePath
 END , SUM(HitsCount), (SUM(HitsCount)/@Sum)*100
 FROM Analytics_Statistics
 INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND StatisticsObjectCulture = DocumentCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY [DocumentNamePath] DESC
 
  
 SELECT DocumentNamePath AS ''{$general.documentname$}'',pageviews AS  ''{$reports_filedownloads_Day.hits_header$}'',
   CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_filedownloads_Day.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 55, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'ba4442d3-5e9f-43b1-b13f-6d2ab3625737', '20120323 11:13:41', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (103, N'table', N'table', N'DECLARE @PaveViews TABLE
(
  DocumentNamePath NVARCHAR(500),
  Pageviews INT,
  Percents DECIMAL(10,2)  
)
DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT @Sum =   
  SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND StatisticsObjectCulture = DocumentCulture 
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
 AND (HitsEndTime <= @ToDate)
INSERT INTO @PaveViews (DocumentNamePath,pageViews,percents)
SELECT TOP 100
 CASE
  WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName
  ELSE DocumentNamePath
 END , SUM(HitsCount), (SUM(HitsCount)/@Sum)*100
 FROM Analytics_Statistics
 INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND StatisticsObjectCulture = DocumentCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY [DocumentNamePath] DESC
 
  
 SELECT DocumentNamePath AS ''{$general.documentname$}'',pageviews AS  ''{$reports_filedownloads_Month.hits_header$}'',
   CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_filedownloads_Month.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 56, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '380150e3-442f-4ea7-a543-c8fd77d7bf6d', '20120323 11:13:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (104, N'table', N'table', N'DECLARE @PaveViews TABLE
(
  DocumentNamePath NVARCHAR(500),
  Pageviews INT,
  Percents DECIMAL(10,2)  
)
DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT @Sum =   
  SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND StatisticsObjectCulture = DocumentCulture 
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
 AND (HitsEndTime <= @ToDate)
INSERT INTO @PaveViews (DocumentNamePath,pageViews,percents)
SELECT TOP 100
 CASE
  WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName
  ELSE DocumentNamePath
 END , SUM(HitsCount), (SUM(HitsCount)/@Sum)*100
 FROM Analytics_Statistics
 INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND StatisticsObjectCulture = DocumentCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY [DocumentNamePath] DESC
 
  
 SELECT DocumentNamePath AS ''{$general.documentname$}'',pageviews AS  ''{$reports_filedownloads_Year.hits_header$}'',
   CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_filedownloads_Year.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 57, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '1ff97f22-6fbb-46d9-b102-ec2e00efccc3', '20120323 11:13:28', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (105, N'table', N'table', N'DECLARE @PaveViews TABLE
(
  DocumentNamePath NVARCHAR(500),
  Pageviews INT,
  Percents DECIMAL(10,2)  
)
DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT @Sum =   
  SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND StatisticsObjectCulture = DocumentCulture 
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
 AND (HitsEndTime <= @ToDate)
INSERT INTO @PaveViews (DocumentNamePath,pageViews,percents)
SELECT TOP 100
 CASE
  WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName
  ELSE DocumentNamePath
 END , SUM(HitsCount), (SUM(HitsCount)/@Sum)*100
 FROM Analytics_Statistics
 INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND StatisticsObjectCulture = DocumentCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY [DocumentNamePath] DESC
 
  
 SELECT DocumentNamePath AS ''{$general.documentname$}'',pageviews AS  ''{$reports_filedownloads_Hour.hits_header$}'',
   CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_filedownloads_Hour.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 58, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '8127bec1-8f00-48ee-b356-4acbd72bd6ce', '20120323 11:13:45', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (106, N'RecentlyModifiedDocsTable', N'Recently modified docs table', N'Select DocumentName AS ''Document name'', NodeAliasPath AS ''Document alias path'', DocumentModifiedWhen AS ''Last modification date'', FirstName + '' ''  + LastName + '' ('' + UserName +'')'' AS ''Last modified by'', StepDisplayName AS ''Current workflow step''  FROM View_CMS_Tree_Joined LEFT JOIN CMS_User ON View_CMS_Tree_Joined.DocumentModifiedByUserID=CMS_User.UserID LEFT JOIN CMS_WorkflowStep ON View_CMS_Tree_Joined.DocumentWorkflowStepID = CMS_WorkflowStep.StepID Where (DocumentModifiedWhen >= @ModifiedSince) AND (NodeSiteID=@CMSContextCurrentSiteID) ORDER BY DocumentModifiedWhen DESC', 0, 50, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid></skinid><querynorecordtext>No recently modified documents found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '84b838bf-a8e2-4852-a784-c7c99d0f2941', '20120323 11:13:45', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (107, N'table', N'table', N'DECLARE @PaveViews TABLE
(
  DocumentNamePath NVARCHAR(500),
  ObjectID INT,
  Pageviews INT,
  Percents DECIMAL(10,2),
  Average INT  
)
DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT @Sum =   
  SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID  AND StatisticsObjectCulture = DocumentCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
 AND (HitsEndTime <= @ToDate)
INSERT INTO @PaveViews (DocumentNamePath,objectID,pageViews,percents)
SELECT TOP 100
 CASE
  WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName
  ELSE DocumentNamePath
 END , StatisticsObjectID, SUM(HitsCount), (SUM(HitsCount)/@Sum)*100
 FROM Analytics_Statistics
 INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND StatisticsObjectCulture = DocumentCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName,StatisticsObjectID
 ORDER BY SUM(HitsCount) DESC
 
 UPDATE @PaveViews SET Average = (SELECT SUM(HitsValue)/SUM(HitsCount) FROM Analytics_DayHits JOIN
      Analytics_Statistics ON HitsStatisticsID = StatisticsID
      WHERE HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate AND StatisticsObjectID = objectID
        AND StatisticsCode =''avgtimeonpage'' AND StatisticsSiteID = @CMSContextCurrentSiteID
       )
 
 SELECT DocumentNamePath AS ''{$reports_pageviews_Day.path_header$}'',pageviews AS  ''{$reports_pageviews_Day.hits_header$}'',
      CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_pageviews.percent_header$}'', ISNULL(CONVERT(varchar, DATEADD(s, average, 0), 108),''00:00:00'') AS ''{$reports_pageviews.average$}''
  
   FROM @PaveViews ORDER BY PageViews DESC', 0, 59, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '47f63e99-8a64-49c9-ad7e-4be17f5c9151', '20120323 11:13:41', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (108, N'table', N'table', N'DECLARE @PaveViews TABLE
(
  DocumentNamePath NVARCHAR(500),
  ObjectID INT,
  Pageviews INT,
  Percents DECIMAL(10,2),
  Average INT  
)
DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT @Sum =   
  SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID  AND StatisticsObjectCulture = DocumentCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
 AND (HitsEndTime <= @ToDate)
INSERT INTO @PaveViews (DocumentNamePath,objectID,pageViews,percents)
SELECT TOP 100
 CASE
  WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName
  ELSE DocumentNamePath
 END , StatisticsObjectID, SUM(HitsCount), (SUM(HitsCount)/@Sum)*100
 FROM Analytics_Statistics
 INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND StatisticsObjectCulture = DocumentCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName,StatisticsObjectID
 ORDER BY SUM(HitsCount) DESC
 
 UPDATE @PaveViews SET Average = (SELECT SUM(HitsValue)/SUM(HitsCount) FROM Analytics_MonthHits JOIN
      Analytics_Statistics ON HitsStatisticsID = StatisticsID
      WHERE HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate AND StatisticsObjectID = objectID
        AND StatisticsCode =''avgtimeonpage'' AND StatisticsSiteID = @CMSContextCurrentSiteID
       )
 
 SELECT DocumentNamePath AS ''{$reports_pageviews_Month.path_header$}'',pageviews AS  ''{$reports_pageviews_Month.hits_header$}'',
      CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_pageviews.percent_header$}'', ISNULL(CONVERT(varchar, DATEADD(s, average, 0), 108),''00:00:00'') AS ''{$reports_pageviews.average$}''
  
   FROM @PaveViews ORDER BY PageViews DESC', 0, 60, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '978ecb24-c417-468d-a901-c4c298a8b02a', '20120323 11:13:46', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (109, N'CheckedOutDocsTable', N'Checked out docs table', N'Select DocumentName AS ''Document name'', NodeAliasPath AS ''Document alias path'', FirstName + '' '' + LastName + '' ('' +UserName+'')'' AS ''Checked out by'', DocumentCheckedOutWhen AS ''Checked out on'', FirstName + '' ''  + LastName + '' ('' + UserName +'')'' AS ''Last modified by'', StepDisplayName AS ''Current workflow step'' FROM View_CMS_Tree_Joined LEFT JOIN CMS_User ON CMS_User.UserID = View_CMS_Tree_Joined.DocumentCheckedOutByUserID  LEFT JOIN CMS_WorkflowStep ON View_CMS_Tree_Joined.DocumentWorkflowStepID = CMS_WorkflowStep.StepID  Where (DocumentCheckedOutByUserID IS NOT NULL) AND (NodeSiteID=@CMSContextCurrentSiteID) ORDER BY DocumentCheckedOutWhen DESC', 0, 51, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid></skinid><querynorecordtext>No checked out documents found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', 'b25b33ab-cdda-4018-b0bf-7cfcaaad651e', '20120323 11:13:28', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (110, N'table', N'table', N'DECLARE @PaveViews TABLE
(
  DocumentNamePath NVARCHAR(500),
  ObjectID INT,
  Pageviews INT,
  Percents DECIMAL(10,2),
  Average INT  
)
DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT @Sum =   
  SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID  AND StatisticsObjectCulture = DocumentCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
 AND (HitsEndTime <= @ToDate)
INSERT INTO @PaveViews (DocumentNamePath,objectID,pageViews,percents)
SELECT TOP 100
 CASE
  WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName
  ELSE DocumentNamePath
 END , StatisticsObjectID, SUM(HitsCount), (SUM(HitsCount)/@Sum)*100
 FROM Analytics_Statistics
 INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND StatisticsObjectCulture = DocumentCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName,StatisticsObjectID
 ORDER BY SUM(HitsCount) DESC
 
 UPDATE @PaveViews SET Average = (SELECT SUM(HitsValue)/SUM(HitsCount) FROM Analytics_YearHits JOIN
      Analytics_Statistics ON HitsStatisticsID = StatisticsID
      WHERE HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate AND StatisticsObjectID = objectID
        AND StatisticsCode =''avgtimeonpage'' AND StatisticsSiteID = @CMSContextCurrentSiteID
       )
 
 SELECT DocumentNamePath AS ''{%reports_pageviews_Year.path_header|(user)administrator|(hash)d66beb8f201f42caea0a337ebfbdbd917c1e9111e7ecaa77e2107ce0c1ae73a7%}'',pageviews AS  ''{%reports_pageviews_Year.hits_header|(user)administrator|(hash)8a2a5689eacfa95163548da3937bf001d838a34ff8736e8cd7a05feb5d2a43c0%}'',
      CAST (Percents AS NVARCHAR(10))+''%'' AS ''{%reports_pageviews.percent_header|(user)administrator|(hash)dba93bfef4f8d996a390078d753fef4d4a58d30025c9522593867f5730b3a318%}'', ISNULL(CONVERT(varchar, DATEADD(s, average, 0), 108),''00:00:00'') AS ''{%reports_pageviews.average|(user)administrator|(hash)8600aa707c15b139338016412acd99b992341939dbf1e4bd2b5d70e47839167a%}''
  
   FROM @PaveViews ORDER BY PageViews DESC', 0, 61, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'e33dd959-8cfe-4dee-ae4e-e1fef7055e59', '20120323 11:13:46', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (111, N'ExpiredDocsTable', N'Expired docs table', N'Select DocumentName AS ''Document name'', NodeAliasPath AS ''Document alias path'', DocumentPublishTo AS ''Expiration date'', FirstName + '' ''  + LastName + '' ('' + UserName +'')'' AS ''Last modified by'', StepDisplayName AS ''Current workflow step'' FROM View_CMS_Tree_Joined LEFT JOIN CMS_User ON View_CMS_Tree_Joined.DocumentModifiedByUserID=CMS_User.UserID LEFT JOIN CMS_WorkflowStep ON View_CMS_Tree_Joined.DocumentWorkflowStepID = CMS_WorkflowStep.StepID Where (DocumentPublishTo IS NOT NULL) AND (DocumentPublishTo < @CMSContextCurrentTime) AND (NodeSiteID=@CMSContextCurrentSiteID) ORDER BY DocumentPublishTo DESC', 0, 52, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid></skinid><querynorecordtext>No expired documents found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '305d166c-9965-4076-8ba1-0eb3535815b8', '20120323 11:13:46', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (112, N'ArchivedDocsTable', N'Archived docs table', N'Select DocumentName AS ''Document name'', NodeAliasPath AS ''Document alias path'', FirstName + '' ''  + LastName + '' ('' + UserName +'')'' AS ''Last modified by'', StepDisplayName AS ''Current workflow step'' FROM View_CMS_Tree_Joined LEFT JOIN CMS_User ON View_CMS_Tree_Joined.DocumentModifiedByUserID=CMS_User.UserID LEFT JOIN CMS_WorkflowStep ON View_CMS_Tree_Joined.DocumentWorkflowStepID = CMS_WorkflowStep.StepID WHERE (DocumentWorkflowStepID IN (SELECT StepID From CMS_WorkflowStep WHERE StepType=101) AND (NodeSiteID=@CMSContextCurrentSiteID)) ORDER BY NodeAliasPath', 0, 53, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid></skinid><querynorecordtext>No archived documents found</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>True</subscriptionenabled><pagesize>10</pagesize></customdata>', 'eaff66b0-76df-4898-98c2-f04f748a4bfe', '20120807 15:48:26', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (113, N'DocsWaitingForApproval', N'Docs waiting for approval', N'Select DocumentName AS ''Document name'', NodeAliasPath AS ''Document alias path'', FirstName + '' ''  + LastName + '' ('' + UserName +'')'' AS ''Last modified by'', StepDisplayName AS ''Current workflow step'' FROM View_CMS_Tree_Joined_Versions LEFT JOIN CMS_User ON View_CMS_Tree_Joined_Versions.DocumentModifiedByUserID=CMS_User.UserID LEFT JOIN CMS_WorkflowStep ON View_CMS_Tree_Joined_Versions.DocumentWorkflowStepID = CMS_WorkflowStep.StepID WHERE View_CMS_Tree_Joined_Versions.DocumentWorkflowStepID IN (SELECT StepID FROM CMS_WorkflowStep WHERE (StepType NOT IN (6, 11, 100, 101))) AND (NodeSiteID=@CMSContextCurrentSiteID) ORDER BY NodeAliasPath', 0, 54, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid></skinid><querynorecordtext>No waiting documents found</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>True</subscriptionenabled><pagesize>10</pagesize></customdata>', '15feabe3-d47c-4a6b-8345-1b87c7b3e576', '20120807 16:02:57', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (114, N'table', N'table', N'DECLARE @PaveViews TABLE
(
  DocumentNamePath NVARCHAR(500),
  ObjectID INT,
  Pageviews INT,
  Percents DECIMAL(10,2),
  Average INT  
)
DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT @Sum =   
  SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID  AND StatisticsObjectCulture = DocumentCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
 AND (HitsEndTime <= @ToDate)
INSERT INTO @PaveViews (DocumentNamePath,objectID,pageViews,percents)
SELECT TOP 100
 CASE
  WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName
  ELSE DocumentNamePath
 END , StatisticsObjectID, SUM(HitsCount), (SUM(HitsCount)/@Sum)*100
 FROM Analytics_Statistics
 INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND StatisticsObjectCulture = DocumentCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName,StatisticsObjectID
 ORDER BY SUM(HitsCount) DESC
 
 UPDATE @PaveViews SET Average = (SELECT SUM(HitsValue)/SUM(HitsCount) FROM Analytics_HourHits JOIN
      Analytics_Statistics ON HitsStatisticsID = StatisticsID
      WHERE HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate AND StatisticsObjectID = objectID
        AND StatisticsCode =''avgtimeonpage'' AND StatisticsSiteID = @CMSContextCurrentSiteID
       )
 
 SELECT DocumentNamePath AS ''{$reports_pageviews_Hour.path_header$}'',pageviews AS  ''{$reports_pageviews_Hour.hits_header$}'',
      CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_pageviews.percent_header$}'', ISNULL(CONVERT(varchar, DATEADD(s, average, 0), 108),''00:00:00'') AS ''{$reports_pageviews.average$}''
  
   FROM @PaveViews ORDER BY PageViews DESC', 0, 62, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '079ba574-57b1-4d4f-8615-66c576439f55', '20120323 11:13:49', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (115, N'TableDayPageNotFound', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_pagenotfound_day.name_header$}'', 
 SUM(HitsCount) AS ''{$reports_pagenotfound_day.hits_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName) 
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName 
 ORDER BY SUM(HitsCount) DESC', 0, 63, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'fca58f03-6c62-41f6-9bce-67bdb3974abc', '20120323 11:13:45', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (116, N'TableMonthPageNotFound', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_pagenotfound_month.name_header$}'', 
 SUM(HitsCount) AS ''{$reports_pagenotfound_month.hits_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName)  
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName 
 ORDER BY SUM(HitsCount) DESC', 0, 64, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '36733865-50cb-4775-b1fb-bf5cee65114a', '20120323 11:13:46', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (117, N'TableYearPageNotFound', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100 StatisticsObjectName AS ''{$reports_pagenotfound_year.name_header$}'', SUM(HitsCount) AS ''{$reports_pagenotfound_year.hits_header$}'' FROM 
Analytics_Statistics, Analytics_YearHits WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 65, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>True</subscriptionenabled><pagesize>10</pagesize></customdata>', 'afaa4805-20b0-44cd-98f9-a3083c3b2413', '20120323 11:13:41', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (118, N'TableHourPageNotFound', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_pagenotfound_hour.path_header$}'', 
 SUM(HitsCount) AS ''{$reports_pagenotfound_hour.hits_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName) 
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 66, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'b426ae01-fe3b-4e96-baed-94ac4cd431a3', '20120323 11:13:41', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (119, N'table', N'table', N'DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT @Sum = 
 SUM(HitsCount)  FROM
Analytics_Statistics, Analytics_DayHits WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
 AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
 (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
SELECT TOP 100 StatisticsObjectName AS ''{$reports_referrals_day.name_header$}'', 
SUM(HitsCount) AS ''{$reports_referrals_day.hits_header$}'',
CAST (CAST ((SUM(HitsCount) / @Sum) *100 AS DECIMAL(10,2)) AS NVARCHAR(8)) +''%'' AS ''{$reports_referrals_day.percent_header$}''
  FROM
 Analytics_Statistics, Analytics_DayHits WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
 AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
 (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 67, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '4959a779-0ec7-46e0-8c11-1a35f10905ff', '20120323 11:13:41', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (120, N'table', N'table', N'DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT @Sum = 
 SUM(HitsCount)  FROM
Analytics_Statistics, Analytics_MonthHits WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
 AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
 (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
SELECT TOP 100 StatisticsObjectName AS ''{$reports_referrals_month.name_header$}'', 
SUM(HitsCount) AS ''{$reports_referrals_month.hits_header$}'',
CAST (CAST ((SUM(HitsCount) / @Sum) *100 AS DECIMAL(10,2)) AS NVARCHAR(8)) +''%'' AS ''{$reports_referrals_month.percent_header$}''
  FROM
 Analytics_Statistics, Analytics_MonthHits WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
 AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
 (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 68, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'ab4b39b9-326c-4f7f-a8a7-7c92f0ca2726', '20120323 11:13:46', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (121, N'table', N'table', N'DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT @Sum = 
 SUM(HitsCount)  FROM
Analytics_Statistics, Analytics_YearHits WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
 AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
 (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
SELECT TOP 100 StatisticsObjectName AS ''{$reports_referrals_year.name_header$}'', 
SUM(HitsCount) AS ''{$reports_referrals_year.hits_header$}'',
CAST (CAST ((SUM(HitsCount) / @Sum) *100 AS DECIMAL(10,2)) AS NVARCHAR(8)) +''%'' AS ''{$reports_referrals_year.percent_header$}''
  FROM
 Analytics_Statistics, Analytics_YearHits WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
 AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
 (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 69, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '5a96924b-ed83-484a-a84f-bc6d08da0181', '20120323 11:13:46', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (122, N'table', N'table', N'DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT @Sum = 
 SUM(HitsCount)  FROM
Analytics_Statistics, Analytics_HourHits WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
 AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
 (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
SELECT TOP 100 StatisticsObjectName AS ''{$reports_referrals_hour.name_header$}'', 
SUM(HitsCount) AS ''{$reports_referrals_hour.hits_header$}'',
CAST (CAST ((SUM(HitsCount) / @Sum) *100 AS DECIMAL(10,2)) AS NVARCHAR(8)) +''%'' AS ''{$reports_referrals_hour.percent_header$}''
  FROM
 Analytics_Statistics, Analytics_HourHits WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
 AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
 (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 70, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '4d6192d9-9a19-448b-b70b-61526c7a3a4a', '20120323 11:13:46', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (132, N'table', N'table', N'SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
DECLARE @myselection TABLE (
   DocumentNamePath varchar(400),
   StatisticsObjectCulture varchar(400),
   Count float   
);
DECLARE @countedAll TABLE (
   Counted float   
);
INSERT INTO @myselection
  SELECT TOP 100
  CASE WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName ELSE DocumentNamePath END,
  StatisticsObjectCulture ,
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectCulture, DocumentNamePath, StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC
  
INSERT INTO @countedAll
  SELECT
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)   
 SELECT DocumentNamePath AS ''{$general.documentname$}'',
 StatisticsObjectCulture AS   ''{$general.culture$}'',
 Count AS ''{$reports_filedownloads_Day.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2))AS NVARCHAR(10))+''%'' as ''{$reports_filedownloads_Day.hits_percent_header$}''
 FROM @myselection', 0, 86, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'd2acff50-77c9-4f7e-aca1-8170a88c86f8', '20120323 11:13:41', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (134, N'table', N'table', N'SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
DECLARE @myselection TABLE (
   DocumentNamePath varchar(400),
   StatisticsObjectCulture varchar(400),
   Count float   
);
DECLARE @countedAll TABLE (
   Counted float   
);
INSERT INTO @myselection
  SELECT TOP 100
  CASE WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName ELSE DocumentNamePath END,
  StatisticsObjectCulture ,
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectCulture, DocumentNamePath, StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC
  
INSERT INTO @countedAll
  SELECT
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)   
 SELECT DocumentNamePath AS ''{$general.documentname$}'',
 StatisticsObjectCulture AS   ''{$general.culture$}'',
 Count AS ''{$reports_filedownloads_Month.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2))AS NVARCHAR(10))+''%'' as ''{$reports_filedownloads_Month.hits_percent_header$}''
 FROM @myselection', 0, 87, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'eb1dac2c-12b2-4e9e-be41-1d7156cafbc1', '20120323 11:13:45', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (135, N'table', N'table', N'SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
DECLARE @myselection TABLE (
   DocumentNamePath varchar(400),
   StatisticsObjectCulture varchar(400),
   Count float   
);
DECLARE @countedAll TABLE (
   Counted float   
);
INSERT INTO @myselection
  SELECT TOP 100
  CASE WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName ELSE DocumentNamePath END,
  StatisticsObjectCulture ,
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectCulture, DocumentNamePath, StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC
  
INSERT INTO @countedAll
  SELECT
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)   
 SELECT DocumentNamePath AS ''{$general.documentname$}'',
 StatisticsObjectCulture AS   ''{$general.culture$}'',
 Count AS ''{$reports_filedownloads_Year.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2))AS NVARCHAR(10))+''%'' as ''{$reports_filedownloads_Year.hits_percent_header$}''
 FROM @myselection', 0, 88, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '563dce7e-3087-4103-bce7-94d7aa0a3b9a', '20120323 11:13:49', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (136, N'table', N'table', N'SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
DECLARE @myselection TABLE (
   DocumentNamePath varchar(400),
   StatisticsObjectCulture varchar(400),
   Count float   
);
DECLARE @countedAll TABLE (
   Counted float   
);
INSERT INTO @myselection
  SELECT TOP 100
  CASE WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName ELSE DocumentNamePath END,
  StatisticsObjectCulture ,
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectCulture, DocumentNamePath, StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC
  
INSERT INTO @countedAll
  SELECT
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)   
 SELECT DocumentNamePath AS ''{$general.documentname$}'',
 StatisticsObjectCulture AS   ''{$general.culture$}'',
 Count AS ''{$reports_filedownloads_Hour.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2))AS NVARCHAR(10))+''%'' as ''{$reports_filedownloads_Hour.hits_percent_header$}''
 FROM @myselection', 0, 89, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'd32f6ee1-7c21-411c-b4b7-75ce8e36360e', '20120323 11:13:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (137, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
DECLARE @myselection TABLE (
   DocumentNamePath varchar(400),
   ObjectID INT,
   Culture varchar(400),
   Count float,
   Average int
);
DECLARE @countedAll TABLE (
   Counted float   
);
INSERT INTO @myselection (DocumentNamePath,ObjectID,Culture,Count)
  SELECT TOP 100
  CASE WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName ELSE DocumentNamePath END,
  StatisticsObjectID,StatisticsObjectCulture , 
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectCulture, DocumentNamePath, StatisticsObjectName, StatisticsObjectID
  ORDER BY SUM(HitsCount) DESC
  
INSERT INTO @countedAll
  SELECT
  SUM(HitsCount) AS Counted
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
 UPDATE @myselection SET Average = (SELECT SUM (HitsValue) / SUM (HitsCount) FROM Analytics_HourHits JOIN
      Analytics_Statistics ON HitsStatisticsID = StatisticsID
      WHERE HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate AND ObjectID = StatisticsObjectID
        AND StatisticsCode =''avgtimeonpage'' AND StatisticsSiteID = @CMSContextCurrentSiteID
        AND culture = Analytics_Statistics.StatisticsObjectCulture
       )       
 SELECT DocumentNamePath AS ''{$reports_pageviews_Day.path_header$}'',
 culture AS   ''{$general.culture$}'',
 Count AS ''{$reports_pageviews_Day.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2))AS NVARCHAR(10))+''%'' AS ''{$reports_pageviews_Day.hits_percent_header$}'',
 ISNULL(CONVERT(varchar, DATEADD(s, average, 0), 108),''00:00:00'') AS ''{$reports_pageviews.average$}''
 FROM @myselection', 0, 90, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', 'd088e963-ff55-404f-92c3-19f0976e5ca5', '20120323 11:13:41', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (138, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
DECLARE @myselection TABLE (
   DocumentNamePath varchar(400),
   ObjectID INT,
   Culture varchar(400),
   Count float,
   Average int
);
DECLARE @countedAll TABLE (
   Counted float   
);
INSERT INTO @myselection (DocumentNamePath,ObjectID,Culture,Count)
  SELECT TOP 100
  CASE WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName ELSE DocumentNamePath END,
  StatisticsObjectID,StatisticsObjectCulture , 
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectCulture, DocumentNamePath, StatisticsObjectName, StatisticsObjectID
  ORDER BY SUM(HitsCount) DESC
  
INSERT INTO @countedAll
  SELECT
  SUM(HitsCount) AS Counted
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
 UPDATE @myselection SET Average = (SELECT SUM (HitsValue) / SUM (HitsCount) FROM Analytics_HourHits JOIN
      Analytics_Statistics ON HitsStatisticsID = StatisticsID
      WHERE HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate AND ObjectID = StatisticsObjectID
        AND StatisticsCode =''avgtimeonpage'' AND StatisticsSiteID = @CMSContextCurrentSiteID
        AND culture = Analytics_Statistics.StatisticsObjectCulture
       )       
 SELECT DocumentNamePath AS ''{$reports_pageviews_Month.path_header$}'',
 culture AS   ''{$general.culture$}'',
 Count AS ''{$reports_pageviews_Month.hits_header$}'',
CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2))AS NVARCHAR(10))+''%'' AS ''{$reports_pageviews_Month.hits_percent_header$}'',
 ISNULL(CONVERT(varchar, DATEADD(s, average, 0), 108),''00:00:00'') AS ''{$reports_pageviews.average$}''
 FROM @myselection', 0, 91, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '555720dc-dfd8-42f7-a93b-90b57f61bcd4', '20120323 11:13:41', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (139, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
DECLARE @myselection TABLE (
   DocumentNamePath varchar(400),
   ObjectID INT,
   Culture varchar(400),
   Count float,
   Average int
);
DECLARE @countedAll TABLE (
   Counted float   
);
INSERT INTO @myselection (DocumentNamePath,ObjectID,Culture,Count)
  SELECT TOP 100
  CASE WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName ELSE DocumentNamePath END,
  StatisticsObjectID,StatisticsObjectCulture , 
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectCulture, DocumentNamePath, StatisticsObjectName, StatisticsObjectID
  ORDER BY SUM(HitsCount) DESC
  
INSERT INTO @countedAll
  SELECT
  SUM(HitsCount) AS Counted
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
 UPDATE @myselection SET Average = (SELECT SUM (HitsValue) / SUM (HitsCount) FROM Analytics_HourHits JOIN
      Analytics_Statistics ON HitsStatisticsID = StatisticsID
      WHERE HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate AND ObjectID = StatisticsObjectID
        AND StatisticsCode =''avgtimeonpage'' AND StatisticsSiteID = @CMSContextCurrentSiteID
        AND culture = Analytics_Statistics.StatisticsObjectCulture
       )       
 SELECT DocumentNamePath AS ''{$reports_pageviews_Year.path_header$}'',
 culture AS   ''{$general.culture$}'',
 Count AS ''{$reports_pageviews_Year.hits_header$}'',
  CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2))AS NVARCHAR(10))+''%'' AS ''{$reports_pageviews_Year.hits_percent_header$}'',
 ISNULL(CONVERT(varchar, DATEADD(s, average, 0), 108),''00:00:00'') AS ''{$reports_pageviews.average$}''
 FROM @myselection', 0, 92, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '44dc48c4-090f-4fb6-bec3-4814bdbb2a3d', '20120323 11:13:45', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (140, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
DECLARE @myselection TABLE (
   DocumentNamePath varchar(400),
   ObjectID INT,
   Culture varchar(400),
   Count float,
   Average int
);
DECLARE @countedAll TABLE (
   Counted float   
);
INSERT INTO @myselection (DocumentNamePath,ObjectID,Culture,Count)
  SELECT TOP 100
  CASE WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName ELSE DocumentNamePath END,
  StatisticsObjectID,StatisticsObjectCulture , 
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectCulture, DocumentNamePath, StatisticsObjectName, StatisticsObjectID
  ORDER BY SUM(HitsCount) DESC
  
INSERT INTO @countedAll
  SELECT
  SUM(HitsCount) AS Counted
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
 UPDATE @myselection SET Average = (SELECT SUM (HitsValue) / SUM (HitsCount) FROM Analytics_HourHits JOIN
      Analytics_Statistics ON HitsStatisticsID = StatisticsID
      WHERE HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate AND ObjectID = StatisticsObjectID
        AND StatisticsCode =''avgtimeonpage'' AND StatisticsSiteID = @CMSContextCurrentSiteID
        AND culture = Analytics_Statistics.StatisticsObjectCulture
       )       
 SELECT DocumentNamePath AS ''{$reports_pageviews_Hour.path_header$}'',
 culture AS   ''{$general.culture$}'',
 Count AS ''{$reports_pageviews_Hour.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2))AS NVARCHAR(10))+''%'' AS ''{$reports_pageviews_Hour.hits_percent_header$}'',
 ISNULL(CONVERT(varchar, DATEADD(s, average, 0), 108),''00:00:00'') AS ''{$reports_pageviews.average$}''
 FROM @myselection', 0, 93, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '9ad190f2-6d1f-4419-92b2-261f14d0d468', '20120323 11:13:42', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (141, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100 CampaignDisplayName AS ''{$reports_campaign.name_header$}'', SUM(HitsCount) AS ''{$reports_campaign.hits_header$}'' FROM
Analytics_DayHits, Analytics_Statistics
INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID
WHERE (@CampaignName ='''' OR @CampaignName = CampaignName) AND
(StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND
(HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY CampaignDisplayName ORDER BY SUM(HitsCount) DESC', 0, 94, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '2cd0dfae-8282-4a07-8b7b-4c85056537cb', '20120323 11:13:46', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (142, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100 CampaignDisplayName AS ''{$reports_campaign.name_header$}'', SUM(HitsCount) AS ''{$reports_campaign.hits_header$}'' FROM
Analytics_MonthHits, Analytics_Statistics
INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID
WHERE (@CampaignName ='''' OR @CampaignName = CampaignName) AND
(StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND
(HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY CampaignDisplayName ORDER BY SUM(HitsCount) DESC', 0, 95, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '5667ec53-453a-45c7-ad69-a76ea53b2877', '20120323 11:13:46', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (143, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100 CampaignDisplayName AS ''{$reports_campaign.name_header$}'', SUM(HitsCount) AS ''{$reports_campaign.hits_header$}'' FROM
Analytics_YearHits, Analytics_Statistics
INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID
WHERE (@CampaignName ='''' OR @CampaignName = CampaignName) AND
(StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND
(HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY CampaignDisplayName ORDER BY SUM(HitsCount) DESC', 0, 96, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '14bab9a1-14e9-4c9f-a2cf-4d343a4118d9', '20120323 11:13:46', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (144, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100 CampaignDisplayName AS ''{$reports_campaign.name_header$}'', SUM(HitsCount) AS ''{$reports_campaign.hits_header$}'' FROM
Analytics_HourHits, Analytics_Statistics
INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID
WHERE (@CampaignName ='''' OR @CampaignName = CampaignName) AND
(StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND
(HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY CampaignDisplayName ORDER BY SUM(HitsCount) DESC', 0, 97, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '1bb584c6-62f9-47f1-b7fd-3f94b9fb2d84', '20120323 11:13:42', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (145, N'TableDayConversion', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100 ConversionDisplayName AS ''{$reports_conversion.name_header$}'', SUM(HitsCount) AS
''{$reports_conversion.hits_header$}'',SUM(HitsValue) AS ''{$reports_conversion.value_header$}'' FROM
Analytics_Statistics
JOIN Analytics_DayHits  ON HitsStatisticsID = StatisticsID
JOIN Analytics_Conversion ON ConversionName  = StatisticsObjectName AND ConversionSiteID = @CMSContextCurrentSiteID
WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
(StatisticsCode=N''conversion'') AND (StatisticsID = HitsStatisticsID) AND (HitsStartTime >= @FromDate) AND
(@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName)) AND
(HitsEndTime <= @ToDate) GROUP BY ConversionDisplayName ORDER BY SUM(HitsCount) DESC', 0, 98, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'dba28818-8a32-4029-9449-1134db4d52c3', '20120323 11:13:42', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (146, N'TableMonthConversion', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100 ConversionDisplayName AS ''{$reports_conversion.name_header$}'', SUM(HitsCount) AS
''{$reports_conversion.hits_header$}'',SUM(HitsValue) AS ''{$reports_conversion.value_header$}'' FROM
Analytics_Statistics
JOIN Analytics_MonthHits  ON HitsStatisticsID = StatisticsID
JOIN Analytics_Conversion ON ConversionName  = StatisticsObjectName AND ConversionSiteID = @CMSContextCurrentSiteID
WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
(StatisticsCode=N''conversion'') AND (StatisticsID = HitsStatisticsID) AND (HitsStartTime >= @FromDate) AND
(@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName)) AND
(HitsEndTime <= @ToDate) GROUP BY ConversionDisplayName ORDER BY SUM(HitsCount) DESC', 0, 99, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'c350451e-e82d-4f51-89a7-1c7e32a88faa', '20120323 11:13:42', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (147, N'TableYearConversion', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100 ConversionDisplayName AS ''{$reports_conversion.name_header$}'', SUM(HitsCount) AS
''{$reports_conversion.hits_header$}'',SUM(HitsValue) AS ''{$reports_conversion.value_header$}'' FROM
Analytics_Statistics
JOIN Analytics_YearHits  ON HitsStatisticsID = StatisticsID
JOIN Analytics_Conversion ON ConversionName  = StatisticsObjectName AND ConversionSiteID = @CMSContextCurrentSiteID
WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
(StatisticsCode=N''conversion'') AND (StatisticsID = HitsStatisticsID) AND (HitsStartTime >= @FromDate) AND
(@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName)) AND
(HitsEndTime <= @ToDate) GROUP BY ConversionDisplayName ORDER BY SUM(HitsCount) DESC', 0, 100, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '9394ce04-7501-4888-ae83-4835bedb43f5', '20120323 11:13:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (148, N'TableHourConversion', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100 ConversionDisplayName AS ''{$reports_conversion.name_header$}'', SUM(HitsCount) AS
''{$reports_conversion.hits_header$}'',SUM(HitsValue) AS ''{$reports_conversion.value_header$}'' FROM
Analytics_Statistics
JOIN Analytics_HourHits  ON HitsStatisticsID = StatisticsID
JOIN Analytics_Conversion ON ConversionName  = StatisticsObjectName AND ConversionSiteID = @CMSContextCurrentSiteID
WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
(StatisticsCode=N''conversion'') AND (StatisticsID = HitsStatisticsID) AND (HitsStartTime >= @FromDate) AND
(HitsEndTime <= @ToDate) AND 
  (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
GROUP BY ConversionDisplayName ORDER BY SUM(HitsCount) DESC', 0, 101, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '75df0d0f-f86e-42bd-af2c-88024f27bd3a', '20120323 11:13:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (152, N'table', N'table', N'/* Selects the products meeting the conditions from the filter */
DECLARE @GlobalProducts bit;
SET @GlobalProducts = {%Settings.CMSStoreAllowGlobalProducts?1:0|(user)administrator|(hash)794a0933e0a07b0b019dd8342fa313e52c639613b4ff99b5963ecc5f73a4a1ed%};
DECLARE @GlobalOptions bit;
SET @GlobalOptions = {%Settings.CMSStoreAllowGlobalProductOptions?1:0|(user)administrator|(hash)1a4c3084069a433e042cca3c018f864b892cbb6d6f8cb6d6e9297ded5016eec3%};
SELECT
   SKUName + ISNULL('' ('' + COM_OptionCategory.CategoryDisplayName + '')'', '''') AS ''{$product_list.productname$}'',
   SKUNumber AS ''{$ecommerce.report_productnumber$}'',
   DepartmentDisplayName AS ''{$objecttype.com_department$}'', 
   ManufacturerDisplayName AS ''{$objecttype.com_manufacturer$}'',
   SupplierDisplayName AS ''{$objecttype.com_supplier$}'',
   CAST(SKUPrice AS DECIMAL(38,2)) AS ''{$com.inventory.price$}'',
   ISNULL(CAST(SKUReOrderAt AS nvarchar(16)), ''-'') AS ''{$com.report_reorderat$}'',
   ISNULL(CAST(SKUAvailableItems AS nvarchar(16)), ''-'') AS ''{$ecommerce.report_availableitems$}''
FROM 
   COM_SKU
   LEFT JOIN COM_Department 
      ON DepartmentID = SKUDepartmentID
   LEFT JOIN COM_Supplier 
      ON SupplierID = SKUSupplierID 
   LEFT JOIN COM_Manufacturer 
      ON ManufacturerID = SKUManufacturerID 
   LEFT JOIN COM_OptionCategory 
      ON CategoryID = SKUOptionCategoryID
WHERE
   (@ProductName IS NULL OR @ProductName = '''' OR SKUName LIKE ''%''+@ProductName+''%'')
   AND (@ProductNumber IS NULL OR @ProductNumber = '''' OR SKUNumber LIKE ''%''+@ProductNumber+''%'')
   AND (@DepartmentID < 0 OR SKUDepartmentID = @DepartmentID OR (@DepartmentID IS NULL AND SKUDepartmentID IS NULL)) 
   AND (@SupplierID < 0 OR SKUSupplierID = @SupplierID OR (@SupplierID IS NULL AND SKUSupplierID IS NULL)) 
   AND (@NeedsReordered = 0 OR (SKUAvailableItems IS NOT NULL AND SKUAvailableItems <= ISNULL(SKUReOrderAt,0)))
   AND (@Limit IS NULL OR (SKUAvailableItems IS NOT NULL AND SKUAvailableItems < @Limit))
   AND (SKUOptionCategoryID IS NULL OR (@DisplayProductOptions = 1 AND ((@GlobalOptions = 1 AND SKUSiteID IS NULL) OR SKUSiteID = @CMSContextCurrentSiteID)))
   AND (SKUOptionCategoryID IS NOT NULL OR ((@GlobalProducts = 1 AND SKUSiteID IS NULL) OR SKUSiteID = @CMSContextCurrentSiteID))
   AND (@ManufacturerID <0 OR SKUManufacturerID = @ManufacturerID OR (@ManufacturerID IS NULL AND SKUManufacturerID IS NULL))
   AND (@InternalStatusID < 0 OR SKUInternalStatusID = @InternalStatusID OR (@InternalStatusID IS NULL AND SKUInternalStatusID IS NULL))
   AND (@PublicStatusID <0 OR SKUPublicStatusID = @PublicStatusID OR (@PublicStatusID IS NULL AND SKUPublicStatusID IS NULL)) 
   AND SKUEnabled = 1
ORDER BY 
   SKUName ASC,
   SKUNumber ASC,
   SKUPrice ASC', 0, 105, N'<customdata><enablepaging>True</enablepaging><pagemode>3</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>25</pagesize></customdata>', '09730073-aed3-4e26-991e-11e91b2c8df8', '20120718 13:09:52', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (156, N'Table', N'Table', N'/* Selects top enabled customers of the current site by volume of sales. 
   Selects the sum of their paid orderds in the main currency. */
   
SELECT TOP (@NumberOfCustomers)
   CustomerFirstName AS ''{$ecommerce.report_customer_firstname$}'',
   CustomerLastName AS ''{$ecommerce.report_customer_lastname$}'',
   CustomerCompany AS ''{$ecommerce.report_customer_company$}'',
   CustomerEmail AS ''{$unigrid.userlist.columns.email$}'', 
   CAST(SUM(ISNULL(OrderTotalPriceInMainCurrency,0)) AS DECIMAL(38,2)) AS ''{$com.sales.volumeofsales$}'' 
FROM 
   COM_Customer 
   LEFT JOIN CMS_UserSite 
      ON UserID = CustomerUserID 
   LEFT JOIN COM_Order 
      ON CustomerID = OrderCustomerID 
      AND OrderSiteID=@CMSContextCurrentSiteID
      AND OrderIsPaid = 1
WHERE 
   (CustomerEnabled = 1 OR CustomerID IN (SELECT OrderCustomerID FROM COM_Order WHERE OrderSiteID=@CMSContextCurrentSiteID))
   AND (CustomerSiteID = @CMSContextCurrentSiteID 
        OR (CustomerSiteID IS NULL AND SiteID = @CMSContextCurrentSiteID))
   AND (@FirstName IS NULL OR @FirstName = '''' OR CustomerFirstName LIKE (''%''+@FirstName+''%''))
   AND (@LastName IS NULL OR @LastName = '''' OR CustomerLastName LIKE (''%''+@LastName+''%''))
   AND (@Company IS NULL OR @Company = '''' OR CustomerCompany LIKE (''%''+@Company+''%'')) 
   AND (@Email IS NULL OR @Email = '''' OR CustomerEmail LIKE (''%'' + @Email + ''%'')) 
   
GROUP BY 
   CustomerID,
   CustomerEmail, 
   CustomerCompany, 
   CustomerFirstName, 
   CustomerLastName
ORDER BY 
   SUM(ISNULL(OrderTotalPriceInMainCurrency,0)) DESC,
   CustomerLastName,   
   CustomerFirstName,
   CustomerCompany', 0, 109, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>10</pagesize></customdata>', '6fe00b31-2adf-4d5e-8bf3-8820563ecfca', '20120731 09:55:07', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (157, N'TableDayBrowserType', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_browsertype.name_header$}'', 
 SUM(HitsCount) AS ''{$reports_browsertype.hits_header$}'', 
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount) 
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) 
 AS VARCHAR)+''%'' AS ''{$reports_browsertype.percent_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName) 
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 110, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '2aaf1e80-15a2-44c6-b0c9-d9b1a09efc24', '20120323 11:13:29', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (158, N'TableHourBrowserType', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_browsertype.name_header$}'', 
 SUM(HitsCount) AS ''{$reports_browsertype.hits_header$}'', 
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount) 
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_browsertype.percent_header$}'' 
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
  GROUP BY StatisticsObjectName 
  ORDER BY SUM(HitsCount) DESC', 0, 111, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '4873edaa-a541-4055-bfb9-99f47fa5a916', '20120323 11:13:42', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (159, N'TableMonthBrowserType', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_browsertype.name_header$}'',
 SUM(HitsCount) AS ''{$reports_browsertype.hits_header$}'', 
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount) 
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) 
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_browsertype.percent_header$}'' 
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
  GROUP BY StatisticsObjectName 
  ORDER BY SUM(HitsCount) DESC', 0, 112, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '6ecb01ea-2939-4a26-8d14-922e1c15f60b', '20120323 11:13:47', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (160, N'TableYearBrowserType', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_browsertype.name_header$}'',
 SUM(HitsCount) AS ''{$reports_browsertype.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_browsertype.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 113, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '98141f5c-a3dc-4137-b1c3-5ff017d53bda', '20120323 11:13:47', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (161, N'TableDayCountries', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_countries.name_header$}'', 
 SUM(HitsCount) AS ''{$reports_countries.hits_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName) 
 AND (HitsStartTime >= @FromDate) 
 AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName 
 ORDER BY SUM(HitsCount) DESC', 0, 126, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '0095a983-301d-4d44-b620-2bf501574349', '20120323 11:13:47', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (162, N'TableHourCountries', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_countries.name_header$}'', 
 SUM(HitsCount) AS ''{$reports_countries.hits_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName) 
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 128, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '181ec0f9-a70c-4048-a0df-f39d122fdd62', '20120323 11:13:42', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (163, N'TableMonthCountries', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_countries.name_header$}'', 
 SUM(HitsCount) AS ''{$reports_countries.hits_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName) 
 AND (HitsStartTime >= @FromDate) 
 AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName 
 ORDER BY SUM(HitsCount) DESC', 0, 129, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'e666ff48-ffdc-40f1-922b-356c177ae49e', '20120323 11:13:42', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (164, N'TableYearCountries', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100 StatisticsObjectName AS ''{$reports_countries.name_header$}'', SUM(HitsCount) AS ''{$reports_countries.hits_header$}'' FROM
Analytics_Statistics, Analytics_WeekHits WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 130, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'cbfb887e-752e-448a-a0bf-77cc756c86fd', '20120323 11:13:49', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (174, N'TableMonthRegisteredUsers', N'Table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100 
 StatisticsObjectID AS ''{$reports_registeredusers.UserID_header$}'', 
 StatisticsObjectName AS ''{$reports_registeredusers.UserName_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName) 
 AND (HitsStartTime >= @FromDate) 
 AND (HitsEndTime <= @ToDate)', 0, 146, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '9aced55d-b9a7-4f7c-a1a3-f51fa6a8bdce', '20120323 11:13:49', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (176, N'TableYearRegisteredUsers', N'Table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100
 StatisticsObjectID AS ''{$reports_registeredusers.UserID_header$}'',
 StatisticsObjectName AS ''{$reports_registeredusers.UserName_header$}''
 FROM Analytics_Statistics
 INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
 AND (StatisticsCode=@CodeName)
 AND (HitsStartTime >= @FromDate)
 AND (HitsEndTime <= @ToDate)', 0, 149, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'ab0b845a-f3ff-45fb-84dd-004c761fd1e5', '20120323 11:13:49', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (200, N'InventoryTable', N'InventoryTable', N'SELECT NodeAliasPath AS ''Alias Path'', 
	DocumentCulture AS ''Language'', 
	DocumentName AS ''Document name'', 
	DocumentModifiedWhen AS ''Last modified'', 
	UserName AS ''Last modified by'',
	StepDisplayName AS ''Workflow step'',
	DocumentPublishFrom AS ''Publish from'',
	DocumentPublishTo AS ''Publish to''
FROM View_CMS_Tree_Joined
LEFT JOIN CMS_User ON DocumentModifiedByUserID = UserID
LEFT JOIN CMS_WorkFlowStep ON DocumentWorkflowStepID = StepID
WHERE (@OnlyPublished = 0 OR Published = @OnlyPublished) 
AND (NodeSiteID = @CMSContextCurrentSiteID)
AND (@ModifiedFrom IS NULL OR DocumentModifiedWhen >= @ModifiedFrom)
AND (@ModifiedTo IS NULL OR DocumentModifiedWhen < @ModifiedTo) 
AND (NodeAliasPath LIKE @path)
AND (@Language IS NULL OR @Language = ''-1'' OR DocumentCulture = @Language)
AND (@name IS NULL OR DocumentName LIKE ''%''+@name+''%'')
ORDER BY NodeAliasPath', 0, 186, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid></skinid><querynorecordtext>No inventory data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '73ad09f4-db03-47ae-a09d-9b5ad4c76e11', '20120323 11:13:44', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (201, N'table', N'table', N'DECLARE @PaveViews TABLE
(
  DocumentNamePath NVARCHAR(500),
  Pageviews INT,
  Percents DECIMAL(10,2)  
)
DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT @Sum =   
  SUM(HitsCount) 
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID  AND StatisticsObjectCulture = DocumentCulture 
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
 AND (HitsEndTime <= @ToDate)
INSERT INTO @PaveViews (DocumentNamePath,pageViews,percents)
SELECT TOP 100
 CASE
  WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName
  ELSE DocumentNamePath
 END , SUM(HitsCount), (SUM(HitsCount)/@Sum)*100
 FROM Analytics_Statistics
 INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID  AND StatisticsObjectCulture = DocumentCulture 
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY SUM(HitsCount) DESC
 
  
 SELECT DocumentNamePath AS ''{$reports_aggviews_Hour.path_header$}'',pageviews AS  ''{$reports_aggviews_Hour.hits_header$}'',
  CAST (Percents AS NVARCHAR(10)) +''%'' AS ''{$reports_aggviews_Hour.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 187, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '5d1ae09c-51cd-4ecd-a49e-92d0cf105ea1', '20120323 11:13:49', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (202, N'table', N'table', N'DECLARE @PaveViews TABLE
(
  DocumentNamePath NVARCHAR(500),
  Pageviews INT,
  Percents DECIMAL(10,2)  
)
DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT @Sum =   
  SUM(HitsCount) 
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID  AND StatisticsObjectCulture = DocumentCulture 
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
 AND (HitsEndTime <= @ToDate)
INSERT INTO @PaveViews (DocumentNamePath,pageViews,percents)
SELECT TOP 100
 CASE
  WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName
  ELSE DocumentNamePath
 END , SUM(HitsCount), (SUM(HitsCount)/@Sum)*100
 FROM Analytics_Statistics
 INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID  AND StatisticsObjectCulture = DocumentCulture 
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY SUM(HitsCount) DESC
 
  
 SELECT DocumentNamePath AS ''{$reports_aggviews_Day.path_header$}'',pageviews AS  ''{$reports_aggviews_Day.hits_header$}'',
  CAST (Percents AS NVARCHAR(10)) +''%'' AS ''{$reports_aggviews_Day.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 188, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'd1e18337-1946-47e2-9cc4-ff7e2178a3e5', '20120323 11:13:45', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (203, N'table', N'table', N'DECLARE @PaveViews TABLE
(
  DocumentNamePath NVARCHAR(500),
  Pageviews INT,
  Percents DECIMAL(10,2)  
)
DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT @Sum =   
  SUM(HitsCount) 
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID  AND StatisticsObjectCulture = DocumentCulture 
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
 AND (HitsEndTime <= @ToDate)
INSERT INTO @PaveViews (DocumentNamePath,pageViews,percents)
SELECT TOP 100
 CASE
  WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName
  ELSE DocumentNamePath
 END , SUM(HitsCount), (SUM(HitsCount)/@Sum)*100
 FROM Analytics_Statistics
 INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID  AND StatisticsObjectCulture = DocumentCulture 
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY SUM(HitsCount) DESC
 
  
 SELECT DocumentNamePath AS ''{$reports_aggviews_Month.path_header$}'',pageviews AS  ''{$reports_aggviews_Month.hits_header$}'',
  CAST (Percents AS NVARCHAR(10)) +''%'' AS ''{$reports_aggviews_Month.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 189, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'db2d3ab2-ef30-430a-9d17-9fe01abb383c', '20120323 11:13:44', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (204, N'table', N'table', N'DECLARE @PaveViews TABLE
(
  DocumentNamePath NVARCHAR(500),
  Pageviews INT,
  Percents DECIMAL(10,2)  
)
DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT @Sum =   
  SUM(HitsCount) 
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID  AND StatisticsObjectCulture = DocumentCulture 
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
 AND (HitsEndTime <= @ToDate)
INSERT INTO @PaveViews (DocumentNamePath,pageViews,percents)
SELECT TOP 100
 CASE
  WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName
  ELSE DocumentNamePath
 END , SUM(HitsCount), (SUM(HitsCount)/@Sum)*100
 FROM Analytics_Statistics
 INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID  AND StatisticsObjectCulture = DocumentCulture 
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY SUM(HitsCount) DESC
 
  
 SELECT DocumentNamePath AS ''{$reports_aggviews_Year.path_header$}'',pageviews AS  ''{$reports_aggviews_Year.hits_header$}'',
  CAST (Percents AS NVARCHAR(10)) +''%'' AS ''{$reports_aggviews_Year.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 190, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '464f3553-f5e5-48a9-a1e6-8d88a1427603', '20120323 11:13:45', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (205, N'TableMonthAggViewsCulture', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
DECLARE @myselection TABLE (
   DocumentNamePath varchar(400),
   StatisticsObjectCulture varchar(400),
   Count float   
);
DECLARE @countedAll TABLE (
   Counted float   
);
INSERT INTO @myselection 
  SELECT TOP 100 
  CASE WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName ELSE DocumentNamePath END, 
  StatisticsObjectCulture , 
  SUM(HitsCount) AS Count 
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) 
  AND (HitsEndTime <= @ToDate) 
  GROUP BY StatisticsObjectCulture, DocumentNamePath, StatisticsObjectName 
  ORDER BY SUM(HitsCount) DESC
  
INSERT INTO @countedAll 
  SELECT
  SUM(HitsCount) AS Count 
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) 
  AND (HitsEndTime <= @ToDate)   
 SELECT DocumentNamePath AS ''{$reports_aggviews_month.path_header$}'', 
 StatisticsObjectCulture AS   ''{$general.culture$}'', 
 Count AS ''{$reports_aggviews_month.hits_header$}'', 
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2))AS NVARCHAR(10))+''%'' as ''{$reports_aggviews_month.hits_percent_header$}'' 
 FROM @myselection', 0, 191, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '70c1bd35-c313-46d2-8ebc-e25d00f5eeac', '20120323 11:13:46', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (206, N'TableDayAggViewsCulture', N'table', N'SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
DECLARE @myselection TABLE (
   DocumentNamePath varchar(400),
   StatisticsObjectCulture varchar(400),
   Count float   
);
DECLARE @countedAll TABLE (
   Counted float   
);
INSERT INTO @myselection 
  SELECT TOP 100 
  CASE WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName ELSE DocumentNamePath END AS ''{$reports_pageviews_day.path_header$}'',  
  StatisticsObjectCulture AS ''{$general.culture$}'', 
  SUM(HitsCount) AS ''{$reports_pageviews_day.hits_header$}'' 
  FROM Analytics_Statistics 
    INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
    LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND Analytics_Statistics.StatisticsObjectCulture = View_CMS_Tree_Joined.DocumentCulture
    WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) 
  AND (HitsEndTime <= @ToDate) 
  GROUP BY StatisticsObjectCulture, DocumentNamePath, StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC
  
INSERT INTO @countedAll 
  SELECT
  SUM(HitsCount) AS ''{$reports_pageviews_day.hits_header$}'' 
  FROM Analytics_Statistics 
    INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
    LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND Analytics_Statistics.StatisticsObjectCulture = View_CMS_Tree_Joined.DocumentCulture
    WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) 
  AND (HitsEndTime <= @ToDate)   
  
SELECT DocumentNamePath AS ''{$reports_aggviews_day.path_header$}'',  
StatisticsObjectCulture AS ''{$general.culture$}'', 
Count AS ''{$reports_aggviews_day.hits_header$}'',
CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2))AS NVARCHAR(10))+''%''
as ''{$reports_aggviews_day.hits_percent_header$}'' 
FROM @myselection', 0, 192, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '21078700-7c9b-464b-9039-a9846e13d8e3', '20120323 11:13:44', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (207, N'TableHourFileAggViewsCulture', N'table', N'SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
DECLARE @myselection TABLE (
   DocumentNamePath varchar(400),
   StatisticsObjectCulture varchar(400),
   Count float   
);
DECLARE @countedAll TABLE (
   Counted float   
);
INSERT INTO @myselection 
  SELECT TOP 100 
  CASE WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName ELSE DocumentNamePath END, 
  StatisticsObjectCulture, SUM(HitsCount) 
  FROM Analytics_Statistics
    INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
    LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) 
  AND (HitsEndTime <= @ToDate) 
  GROUP BY StatisticsObjectCulture, DocumentNamePath, StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC, StatisticsObjectCulture
INSERT INTO @countedAll 
  SELECT
  SUM(HitsCount) 
  FROM Analytics_Statistics
    INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
    LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) 
  AND (HitsEndTime <= @ToDate)   
  
 SELECT DocumentNamePath AS ''{$reports_aggviews_hour.path_header$}'', 
 StatisticsObjectCulture AS ''{$general.culture$}'', 
 Count AS ''{$reports_aggviews_hour.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2))AS NVARCHAR(10))+''%'' as ''{$reports_aggviews_hour.hits_percent_header$}'' 
 FROM @myselection', 0, 193, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '5518de48-41fd-4a57-9da9-47e7124497d6', '20120323 11:13:44', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (208, N'TableYearAggViewsCulture', N'table', N'SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
DECLARE @myselection TABLE (
   DocumentNamePath varchar(400),
   StatisticsObjectCulture varchar(400),
   Count float   
);
DECLARE @countedAll TABLE (
   Counted float   
);
INSERT INTO @myselection
  SELECT TOP 100
  CASE WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName ELSE DocumentNamePath END,
  StatisticsObjectCulture ,
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectCulture, DocumentNamePath, StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC
  
INSERT INTO @countedAll
  SELECT
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)   
 SELECT DocumentNamePath AS ''{$reports_aggviews_Year.path_header$}'',
 StatisticsObjectCulture AS   ''{$general.culture$}'',
 Count AS ''{$reports_aggviews_Year.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2))AS NVARCHAR(10))+''%'' as ''{$reports_aggviews_Year.hits_percent_header$}''
 FROM @myselection', 0, 194, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '4d861887-7695-4c86-9114-4894444dac8c', '20120323 11:13:44', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (285, N'SampleTable', N'Sample table', N'SELECT  ClassDisplayName as ''Class name'',  ((((ClassID+1)) % 10) *  (datepart(ms, GETDATE()) +1)) as ''Random value''  FROM CMS_Class WHERE ClassIsMenuItemType = 1', 0, 361, N'<customdata><pagesize>4</pagesize><subscriptionenabled>True</subscriptionenabled><skinid></skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>True</enablepaging><exportenabled>true</exportenabled></customdata>', '34e7c906-c29d-4e9d-b4a4-4b9f9e217972', '20120323 11:13:29', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (298, N'TableMonthBrowserType_1', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_browsertype.name_header$}'',
 SUM(HitsCount) AS ''{$reports_browsertype.hits_header$}'', 
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount) 
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) 
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_browsertype.percent_header$}'' 
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
  GROUP BY StatisticsObjectName 
  ORDER BY SUM(HitsCount) DESC', 0, 469, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '2571db6b-78dd-4656-ab6e-7c28ff707e06', '20120323 11:13:47', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (299, N'TableMonthRegisteredUsers', N'Table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100 
 StatisticsObjectID AS ''{$reports_registeredusers.UserID_header$}'', 
 StatisticsObjectName AS ''{$reports_registeredusers.UserName_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName) 
 AND (HitsStartTime >= @FromDate) 
 AND (HitsEndTime <= @ToDate)', 0, 471, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '04011971-ea7e-476c-a188-c21be0ace365', '20120323 11:13:47', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (300, N'TableMonthRegisteredUsers', N'Table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100 
 StatisticsObjectID AS ''{$reports_registeredusers.UserID_header$}'', 
 StatisticsObjectName AS ''{$reports_registeredusers.UserName_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName) 
 AND (HitsStartTime >= @FromDate) 
 AND (HitsEndTime <= @ToDate)', 0, 472, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '899d074a-a51a-469a-8f9f-df67debb5233', '20120323 11:13:49', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (301, N'table', N'Table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100 
 StatisticsObjectID AS ''{$reports_registeredusers.UserID_header$}'', 
 StatisticsObjectName AS ''{$reports_registeredusers.UserName_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName) 
 AND (HitsStartTime >= @FromDate) 
 AND (HitsEndTime <= @ToDate)', 0, 473, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '4cf6e149-d101-4e78-a500-56e1307b00c4', '20120323 11:13:49', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (302, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100 CampaignDisplayName AS ''{$reports_campaign.name_header$}'', SUM(HitsCount) AS ''{$reports_campaign.hits_header$}'' FROM
Analytics_WeekHits, Analytics_Statistics
INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID
WHERE (@CampaignName ='''' OR @CampaignName = CampaignName) AND
(StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND
(HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY CampaignDisplayName ORDER BY SUM(HitsCount) DESC', 0, 474, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'a1153580-6c56-4262-9190-eb0716f6f079', '20120323 11:13:49', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (303, N'table', N'table', N'DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT @Sum = 
 SUM(HitsCount)  FROM
Analytics_Statistics, Analytics_WeekHits WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
 AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
 (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
SELECT TOP 100 StatisticsObjectName AS ''{$reports_referrals_week.name_header$}'', 
SUM(HitsCount) AS ''{$reports_referrals_week.hits_header$}'',
CAST (CAST ((SUM(HitsCount) / @Sum) *100 AS DECIMAL(10,2)) AS NVARCHAR(8)) +''%'' AS ''{$reports_referrals_week.percent_header$}''
  FROM
 Analytics_Statistics, Analytics_WeekHits WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
 AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
 (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 475, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '95647f58-b23d-4024-bca9-7da8dc9a4786', '20120323 11:13:47', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (304, N'table', N'table', N'DECLARE @PaveViews TABLE
(
  DocumentNamePath NVARCHAR(500),
  Pageviews INT,
  Percents DECIMAL(10,2)  
)
DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT @Sum =   
  SUM(HitsCount) 
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID  AND StatisticsObjectCulture = DocumentCulture 
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
 AND (HitsEndTime <= @ToDate)
INSERT INTO @PaveViews (DocumentNamePath,pageViews,percents)
SELECT TOP 100
 CASE
  WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName
  ELSE DocumentNamePath
 END , SUM(HitsCount), (SUM(HitsCount)/@Sum)*100
 FROM Analytics_Statistics
 INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID  AND StatisticsObjectCulture = DocumentCulture 
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY SUM(HitsCount) DESC
 
  
 SELECT DocumentNamePath AS ''{$reports_aggviews_Week.path_header$}'',pageviews AS  ''{$reports_aggviews_Week.hits_header$}'',
  CAST (Percents AS NVARCHAR(10)) +''%'' AS ''{$reports_aggviews_Week.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 476, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'c3578044-57df-474f-ac35-29fd71719ec0', '20120323 11:13:47', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (305, N'table', N'table', N'SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
DECLARE @myselection TABLE (
   DocumentNamePath varchar(400),
   StatisticsObjectCulture varchar(400),
   Count float   
);
DECLARE @countedAll TABLE (
   Counted float   
);
INSERT INTO @myselection
  SELECT TOP 100
  CASE WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName ELSE DocumentNamePath END,
  StatisticsObjectCulture ,
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectCulture, DocumentNamePath, StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC
  
INSERT INTO @countedAll
  SELECT
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)   
 SELECT DocumentNamePath AS ''{$reports_aggviews_Week.path_header$}'',
 StatisticsObjectCulture AS   ''{$general.culture$}'',
 Count AS ''{$reports_aggviews_Week.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2))AS NVARCHAR(10))+''%'' as ''{$reports_aggviews_Week.hits_percent_header$}''
 FROM @myselection', 0, 477, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'cba70eae-0ef5-42bd-8424-fbc45db31501', '20120323 11:13:45', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (306, N'table', N'table', N'DECLARE @PaveViews TABLE
(
  DocumentNamePath NVARCHAR(500),
  Pageviews INT,
  Percents DECIMAL(10,2)  
)
DECLARE @Sum DECIMAL;
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT @Sum =   
  SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND StatisticsObjectCulture = DocumentCulture 
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
 AND (HitsEndTime <= @ToDate)
INSERT INTO @PaveViews (DocumentNamePath,pageViews,percents)
SELECT TOP 100
 CASE
  WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName
  ELSE DocumentNamePath
 END , SUM(HitsCount), (SUM(HitsCount)/@Sum)*100
 FROM Analytics_Statistics
 INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND StatisticsObjectCulture = DocumentCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY [DocumentNamePath] DESC
 
  
 SELECT DocumentNamePath AS ''{$general.documentname$}'',pageviews AS  ''{$reports_filedownloads_Week.hits_header$}'',
   CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_filedownloads_Week.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 478, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '2dcb9d1f-d9b2-4b01-b52b-1df9d03f5bd3', '20120323 11:13:40', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (307, N'table', N'table', N'SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
DECLARE @myselection TABLE (
   DocumentNamePath varchar(400),
   StatisticsObjectCulture varchar(400),
   Count float   
);
DECLARE @countedAll TABLE (
   Counted float   
);
INSERT INTO @myselection
  SELECT TOP 100
  CASE WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName ELSE DocumentNamePath END,
  StatisticsObjectCulture ,
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectCulture, DocumentNamePath, StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC
  
INSERT INTO @countedAll
  SELECT
  SUM(HitsCount) AS Count
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)   
 SELECT DocumentNamePath AS ''{$general.documentname$}'',
 StatisticsObjectCulture AS   ''{$general.culture$}'',
 Count AS ''{$reports_filedownloads_Week.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2))AS NVARCHAR(10))+''%'' as ''{$reports_filedownloads_Week.hits_percent_header$}''
 FROM @myselection', 0, 479, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '6b0d63a6-0cea-43bf-af5a-c4b7cfe7f5be', '20120323 11:13:47', NULL)
SET IDENTITY_INSERT [Reporting_ReportTable] OFF
