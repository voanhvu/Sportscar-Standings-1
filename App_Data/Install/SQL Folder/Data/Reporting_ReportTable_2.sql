SET IDENTITY_INSERT [Reporting_ReportTable] ON
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (393, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
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
  SUM(HitsCount) AS Counted 
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) 
  AND (HitsEndTime <= @ToDate) 
 SELECT DocumentNamePath AS ''{$reports_landingpage_month.path_header$}'', 
 StatisticsObjectCulture AS   ''{$general.culture$}'', 
 Count AS ''{$reports_pageviews_month.hits_header$}'', 
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2)) AS NVARCHAR(10))+''%'' AS ''{$reports_landingpage_month.hits_percent_header$}'' 
 FROM @myselection', 0, 574, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', 'b1baf31a-cb76-4695-885f-8ca64506589c', '20120323 11:13:48', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (394, N'TableYearPageViewsCulture', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
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
  SUM(HitsCount) AS Counted
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
 SELECT DocumentNamePath AS ''{$reports_landingpage_Week.path_header$}'',
 StatisticsObjectCulture AS   ''{$general.culture$}'',
 Count AS ''{$reports_landingpage_Week.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2)) AS NVARCHAR(10))+''%'' AS ''{$reports_landingpage_Week.hits_percent_header$}''
 FROM @myselection', 0, 575, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '35edb982-5c2d-4e20-a539-7a3d24825538', '20120323 11:13:47', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (395, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
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
  SUM(HitsCount) AS ''{$reports_landingpage_day.hits_header$}'' 
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
  SUM(HitsCount) AS ''{$reports_landingpage_day.hits_header$}'' 
  FROM Analytics_Statistics 
    INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
    LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND Analytics_Statistics.StatisticsObjectCulture = View_CMS_Tree_Joined.DocumentCulture
    WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) 
  AND (HitsEndTime <= @ToDate) 
SELECT DocumentNamePath AS ''{$reports_landingpage_day.path_header$}'',  
StatisticsObjectCulture AS ''{$general.culture$}'', 
Count AS ''{$reports_landingpage_day.hits_header$}'',
CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2)) AS NVARCHAR(10))+''%'' AS ''{$reports_landingpage_day.hits_percent_header$}'' 
FROM @myselection', 0, 576, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', 'ede7838d-108e-47af-ae7f-5ae9cd134f89', '20120323 11:13:47', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (396, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
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
 SELECT DocumentNamePath AS ''{$reports_landingpage_hour.path_header$}'', 
 StatisticsObjectCulture AS ''{$general.culture$}'', 
 Count AS ''{$reports_landingpage_hour.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2)) AS NVARCHAR(10))+''%'' AS ''{$reports_landingpage_hour.hits_percent_header$}'' 
 FROM @myselection', 0, 577, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '9d8324e7-dfde-4633-b12a-ae14577b6f65', '20120323 11:13:46', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (397, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_onsitesearchkeyword.name_header$}'',
 SUM(HitsCount) AS ''{$reports_onsitesearchkeyword.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(3)) AS VARCHAR)+''%'' AS ''{$reports_onsitesearchkeyword.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 578, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'fa45e458-7dc1-4c86-9df2-83b1808d5352', '20120323 11:13:46', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (398, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_onsitesearchkeyword.name_header$}'',
 SUM(HitsCount) AS ''{$reports_onsitesearchkeyword.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(3)) AS VARCHAR)+''%'' AS ''{$reports_onsitesearchkeyword.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 579, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '64c46652-2883-4729-8d7e-ca08c83a11a4', '20120323 11:13:40', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (399, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_onsitesearchkeyword.name_header$}'',
 SUM(HitsCount) AS ''{$reports_onsitesearchkeyword.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(3)) AS VARCHAR)+''%'' AS ''{$reports_onsitesearchkeyword.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 580, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '422c771c-5400-4f50-8fa2-5055cc87b9de', '20120323 11:13:36', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (400, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_onsitesearchkeyword.name_header$}'',
 SUM(HitsCount) AS ''{$reports_onsitesearchkeyword.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(3)) AS VARCHAR)+''%'' AS ''{$reports_onsitesearchkeyword.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 581, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '6d253012-50ed-40b9-a8ed-8a2715d6f32e', '20120323 11:13:36', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (401, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_onsitesearchkeyword.name_header$}'',
 SUM(HitsCount) AS ''{$reports_onsitesearchkeyword.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(3)) AS VARCHAR)+''%'' AS ''{$reports_onsitesearchkeyword.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 582, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '2a96b6eb-5372-482c-b3b5-f868c3994760', '20120323 11:13:40', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (405, N'TrafficSources', N'Traffic sources', N'DECLARE @Sum DECIMAL (10,2);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''{%Interval|(default)year%}'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''{%Interval|(default)year%}'');
SELECT @Sum = 
SUM (HitsCount) FROM Analytics_Statistics 
LEFT JOIN {%AnalyticsTable|(default)Analytics_YearHits%} ON HitsStatisticsID = StatisticsID
WHERE 
((StatisticsCode = ''referringsite_direct'') OR (StatisticsCode = ''referringsite_search'')  OR (StatisticsCode = ''referringsite_referring'')  
OR (StatisticsCode = ''referringsite_inbound'')) 
AND ((HitsStartTime >=@FromDate) AND (HitsEndTime <=@ToDate) AND (StatisticsSiteID = @CMSContextCurrentSiteID)
AND (StatisticsObjectID = @NodeID) AND (StatisticsObjectCulture = @CultureCode))
SELECT ''{''+''$analytics_codename.'' + StatisticsCode + ''$}'' AS ''{$reporting.alltraficsources.columntitle$}'',SUM(HitsCount) AS ''{$general.views$}'' ,
CAST (CAST (SUM(HitsCount)/@Sum*100 AS DECIMAL(10,2)) AS NVARCHAR (20))+''%'' AS ''{$general.percent$}''
FROM Analytics_Statistics 
LEFT JOIN {%AnalyticsTable|(default)Analytics_YearHits%} ON HitsStatisticsID = StatisticsID
WHERE
((StatisticsCode = ''referringsite_direct'') OR (StatisticsCode = ''referringsite_search'')  OR (StatisticsCode = ''referringsite_referring'')OR (StatisticsCode = ''referringsite_inbound''))
 AND 
((HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) AND (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsObjectID = @NodeID) 
   AND (StatisticsObjectCulture = @CultureCode))
GROUP BY StatisticsCode', 0, 584, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', 'e9761837-0f7f-42eb-871d-dea5ad211206', '20120323 11:13:51', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (406, N'SearchEngines', N'Search engines', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''{%Interval|(default)Year%}'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''{%Interval|(default)Year%}'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchengine.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchengine.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN {%AnalyticsTable|(default)Analytics_YearHits%} ON Analytics_Statistics.StatisticsID = {%AnalyticsTable|(default)Analytics_YearHits%}.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=''referringsite_search'')
  AND (HitsStartTime >= @FromDate)
  AND (StatisticsObjectID = @NodeID)
  AND (StatisticsObjectCulture= @CultureCode)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(3)) AS VARCHAR)+''%'' AS ''{$reports_searchengine.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN {%AnalyticsTable|(default)Analytics_YearHits%} ON Analytics_Statistics.StatisticsID = {%AnalyticsTable|(default)Analytics_YearHits%}.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=''referringsite_search'')
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) AND (StatisticsObjectID = @NodeID)
  AND (StatisticsObjectCulture= @CultureCode)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 584, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '30ac278e-08a7-4082-a66b-49daed8378b5', '20120323 11:13:48', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (407, N'SearchKeywords', N'Search keywords', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''{%Interval|(default)Year%}'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''{%Interval|(default)Year%}'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchkeyword.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchkeyword.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN {%AnalyticsTable|(default)Analytics_YearHits%} ON Analytics_Statistics.StatisticsID = {%AnalyticsTable|(default)Analytics_YearHits%}.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=''searchkeyword'')
  AND (HitsStartTime >= @FromDate)
  AND (StatisticsObjectID = @NodeID)
  AND (StatisticsObjectCulture= @CultureCode)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(3)) AS VARCHAR)+''%'' AS ''{$reports_searchkeyword.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN {%AnalyticsTable|(default)Analytics_YearHits%} ON Analytics_Statistics.StatisticsID = {%AnalyticsTable|(default)Analytics_YearHits%}.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=''searchkeyword'')
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) AND (StatisticsObjectID = @NodeID)
  AND (StatisticsObjectCulture= @CultureCode)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 584, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', 'f73f438b-2b54-4d19-9328-9851bb929f57', '20120323 11:13:48', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (423, N'ReferringSites', N'Referring sites', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''{%Interval|(default)Year%}'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''{%Interval|(default)Year%}'');
SELECT TOP 100
StatisticsObjectName  AS ''{$general.sites$}'',
 SUM(HitsCount) AS ''{$reports_searchengine.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN {%AnalyticsTable|(default)Analytics_YearHits%} ON Analytics_Statistics.StatisticsID = {%AnalyticsTable|(default)Analytics_YearHits%}.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=''referringsite_referring'')
  AND (HitsStartTime >= @FromDate)
  AND (StatisticsObjectID = @NodeID)
  AND (StatisticsObjectCulture= @CultureCode)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(3)) AS VARCHAR)+''%'' AS ''{$reports_searchengine.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN {%AnalyticsTable|(default)Analytics_YearHits%} ON Analytics_Statistics.StatisticsID = {%AnalyticsTable|(default)Analytics_YearHits%}.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=''referringsite_referring'')
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) AND (StatisticsObjectID = @NodeID)
  AND (StatisticsObjectCulture= @CultureCode)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 584, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '5cf4c63d-093a-4078-9d49-f82157d311c1', '20120323 11:13:48', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (424, N'LocalPages', N'Local pages', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''{%Interval|(default)Year%}'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''{%Interval|(default)Year%}'');
SELECT TOP 100
Tree.NodeAliasPath AS ''{$general.pages$}'',
 SUM(HitsCount) AS ''{$reports_searchkeyword.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN {%AnalyticsTable|(default)Analytics_YearHits%} ON Analytics_Statistics.StatisticsID = {%AnalyticsTable|(default)Analytics_YearHits%}.HitsStatisticsID
   RIGHT JOIN View_CMS_Tree_Joined AS Tree ON Analytics_Statistics.StatisticsObjectName = Tree.NodeID AND 
  Analytics_Statistics.StatisticsObjectCulture=Tree.DocumentCulture
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=''referringsite_local'')
  AND (HitsStartTime >= @FromDate)
  AND (StatisticsObjectID = @NodeID)
  AND (StatisticsObjectCulture= @CultureCode)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(3)) AS VARCHAR)+''%'' AS ''{$reports_searchkeyword.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN {%AnalyticsTable|(default)Analytics_YearHits%} ON Analytics_Statistics.StatisticsID = {%AnalyticsTable|(default)Analytics_YearHits%}.HitsStatisticsID
  RIGHT JOIN View_CMS_Tree_Joined AS Tree ON Analytics_Statistics.StatisticsObjectName = Tree.NodeID AND 
  Analytics_Statistics.StatisticsObjectCulture=Tree.DocumentCulture  
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=''referringsite_local'')
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) AND (StatisticsObjectID = @NodeId)
  AND (StatisticsObjectCulture= @CultureCode)
  GROUP BY Tree.NodeAliasPath
  ORDER BY SUM(HitsCount) DESC', 0, 584, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '1c6cbb77-12dd-41aa-b09f-5abefa676d3a', '20120323 11:13:29', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (436, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100 CampaignDisplayName AS ''{$reports_campaign.name_header$}'', SUM(HitsCount) AS ''{$reports_campaign.hits_header$}'' FROM
Analytics_WeekHits, Analytics_Statistics 
INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName
WHERE (@CampaignName ='''' OR @CampaignName = CampaignName) AND
(StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
(HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY CampaignDisplayName ORDER BY SUM(HitsCount) DESC', 0, 609, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'a851c6cc-6318-40cb-a773-fea0e9f592ce', '20120323 11:13:29', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (437, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100 CampaignDisplayName AS ''{$reports_campaign.name_header$}'', SUM(HitsCount) AS ''{$reports_campaign.hits_header$}'' FROM
Analytics_DayHits, Analytics_Statistics 
INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName
WHERE (@CampaignName ='''' OR @CampaignName = CampaignName) AND
(StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
(HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY CampaignDisplayName ORDER BY SUM(HitsCount) DESC', 0, 610, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'eccf2a1b-c26f-4f12-b07b-6737876e18f2', '20120323 11:13:29', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (438, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100 CampaignDisplayName AS ''{$reports_campaign.name_header$}'', SUM(HitsCount) AS ''{$reports_campaign.hits_header$}'' FROM
Analytics_MonthHits, Analytics_Statistics 
INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName
WHERE (@CampaignName ='''' OR @CampaignName = CampaignName) AND
(StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
(HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY CampaignDisplayName ORDER BY SUM(HitsCount) DESC', 0, 611, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '700ecdf9-4bfe-426b-bcd3-c539e4c5aedd', '20120323 11:13:29', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (439, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100 CampaignDisplayName AS ''{$reports_campaign.name_header$}'', SUM(HitsCount) AS ''{$reports_campaign.hits_header$}'' FROM
Analytics_HourHits, Analytics_Statistics 
INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName
WHERE (@CampaignName ='''' OR @CampaignName = CampaignName) AND
(StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
(HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY CampaignDisplayName ORDER BY SUM(HitsCount) DESC', 0, 612, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '3fe4a961-5945-41c2-a849-93f73d4c3233', '20120323 11:13:29', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (440, N'table_1', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100 CampaignDisplayName AS ''{$reports_campaign.name_header$}'', SUM(HitsCount) AS ''{$reports_campaign.hits_header$}'' FROM
Analytics_WeekHits, Analytics_Statistics 
INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName
WHERE (@CampaignName ='''' OR @CampaignName = CampaignName) AND
(StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
(HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY CampaignDisplayName ORDER BY SUM(HitsCount) DESC', 0, 615, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '5ce40b8f-a054-413b-ac36-b4a93335a18e', '20120323 11:13:30', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (441, N'table_2', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100 CampaignDisplayName AS ''{$reports_campaign.name_header$}'', SUM(HitsCount) AS ''{$reports_campaign.hits_header$}'' FROM
Analytics_MonthHits, Analytics_Statistics 
INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName
WHERE (@CampaignName ='''' OR @CampaignName = CampaignName) AND
(StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
(HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY CampaignDisplayName ORDER BY SUM(HitsCount) DESC', 0, 616, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'f27b6f3c-e496-454f-8d24-ed59f1642b84', '20120323 11:13:30', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (442, N'table_3', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100 CampaignDisplayName AS ''{$reports_campaign.name_header$}'', SUM(HitsCount) AS ''{$reports_campaign.hits_header$}'' FROM
Analytics_HourHits, Analytics_Statistics 
INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName
WHERE (@CampaignName ='''' OR @CampaignName = CampaignName) AND
(StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
(HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY CampaignDisplayName ORDER BY SUM(HitsCount) DESC', 0, 617, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '88114fa5-7712-466c-9e1d-938e28506c2e', '20120323 11:13:30', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (443, N'table_4', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100 CampaignDisplayName AS ''{$reports_campaign.name_header$}'', SUM(HitsCount) AS ''{$reports_campaign.hits_header$}'' FROM
Analytics_DayHits, Analytics_Statistics 
INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName
WHERE (@CampaignName ='''' OR @CampaignName = CampaignName) AND
(StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND 
(HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY CampaignDisplayName ORDER BY SUM(HitsCount) DESC', 0, 618, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '92a4d5fc-25e5-4fd9-8741-ae10c2b07a80', '20120323 11:13:30', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (444, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
 SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');  
 
  SELECT CampaignDisplayName AS ''Campaign'',
  CASE
  WHEN @Goal=''value'' THEN SUM(HitsValue)
  ELSE SUM(HitsCount)
  END    
  AS ''{%ColumnName|(default)Hits%}''
  
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID    
  INNER JOIN Analytics_Campaign ON (@Goal <> ''view'' AND StatisticsCode LIKE @Codename AND SUBSTRING(StatisticsCode, 16,LEN(StatisticsCode)) = CampaignName)
        OR (@Goal=''view'' AND StatisticsObjectName = CampaignName) AND StatisticsSiteID = CampaignSiteID
  
  WHERE (StatisticsSiteID = @SiteID OR @SiteID = 0) AND
  (StatisticsCode LIKE @CodeName)   
  AND (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY CampaignName,CampaignDisplayName
  ORDER BY [{%ColumnName|(default)Hits%}]', 0, 619, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '3d8055e1-b10b-436d-a462-f511a797836c', '20120323 11:13:30', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (445, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
 SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');  
 
  SELECT CampaignDisplayName AS ''Campaign'',
  CASE
  WHEN @Goal=''value'' THEN SUM(HitsValue)
  ELSE SUM(HitsCount)
  END    
  AS ''{%ColumnName|(default)Hits%}''
  
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID    
  INNER JOIN Analytics_Campaign ON (@Goal <> ''view'' AND StatisticsCode LIKE @Codename AND SUBSTRING(StatisticsCode, 16,LEN(StatisticsCode)) = CampaignName)
        OR (@Goal=''view'' AND StatisticsObjectName = CampaignName) AND StatisticsSiteID = CampaignSiteID
  
  WHERE (StatisticsSiteID = @SiteID OR @SiteID = 0) AND
  (StatisticsCode LIKE @CodeName)   
  AND (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY CampaignName,CampaignDisplayName
  ORDER BY [{%ColumnName|(default)Hits%}] DESC', 0, 622, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', 'c04dc73f-4f2e-44d9-b035-478c420d3e7d', '20120323 11:13:30', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (448, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
 SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');  
 
  SELECT CampaignDisplayName AS ''Campaign'',
  CASE
  WHEN @Goal=''value'' THEN SUM(HitsValue)
  ELSE SUM(HitsCount)
  END    
  AS ''{%ColumnName|(default)Hits%}''
  
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID    
  INNER JOIN Analytics_Campaign ON (@Goal <> ''view'' AND StatisticsCode LIKE @Codename AND SUBSTRING(StatisticsCode, 16,LEN(StatisticsCode)) = CampaignName)
        OR (@Goal=''view'' AND StatisticsObjectName = CampaignName) AND StatisticsSiteID = CampaignSiteID
  
  WHERE (StatisticsSiteID = @SiteID OR @SiteID = 0) AND
  (StatisticsCode LIKE @CodeName)   
  AND (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY CampaignName,CampaignDisplayName
  ORDER BY [{%ColumnName|(default)Hits%}] DESC', 0, 621, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '81423bf6-dfcc-4da9-95f1-a0a5806fd8b1', '20120323 11:13:30', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (449, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
 SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');  
 
  SELECT CampaignDisplayName AS ''Campaign'',
  CASE
  WHEN @Goal=''value'' THEN SUM(HitsValue)
  ELSE SUM(HitsCount)
  END    
  AS ''{%ColumnName|(default)Hits%}''
  
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID    
  INNER JOIN Analytics_Campaign ON (@Goal <> ''view'' AND StatisticsCode LIKE @Codename AND SUBSTRING(StatisticsCode, 16,LEN(StatisticsCode)) = CampaignName)
        OR (@Goal=''view'' AND StatisticsObjectName = CampaignName) AND StatisticsSiteID = CampaignSiteID
  
  WHERE (StatisticsSiteID = @SiteID OR @SiteID = 0) AND
  (StatisticsCode LIKE @CodeName)   
  AND (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY CampaignName,CampaignDisplayName
  ORDER BY [{%ColumnName|(default)Hits%}] DESC', 0, 620, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', 'a63b4be6-cc26-4d92-a50d-8454c51cd5f9', '20120323 11:13:30', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (450, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
 SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');  
 
  SELECT CampaignDisplayName AS ''Campaign'',
  CASE
  WHEN @Goal=''value'' THEN SUM(HitsValue)
  ELSE SUM(HitsCount)
  END    
  AS ''{%ColumnName|(default)Hits%}''
  
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID    
  INNER JOIN Analytics_Campaign ON (@Goal <> ''view'' AND StatisticsCode LIKE @Codename AND SUBSTRING(StatisticsCode, 16,LEN(StatisticsCode)) = CampaignName)
        OR (@Goal=''view'' AND StatisticsObjectName = CampaignName) AND StatisticsSiteID = CampaignSiteID
  
  WHERE (StatisticsSiteID = @SiteID OR @SiteID = 0) AND
  (StatisticsCode LIKE @CodeName)   
  AND (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY CampaignName,CampaignDisplayName
  ORDER BY [{%ColumnName|(default)Hits%}] DESC', 0, 623, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '93025ce1-5b96-4d0c-a3ee-32704df3d0f9', '20120323 11:13:30', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (489, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_DayHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = [StatisticsObjectName]
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalVisitorsPercent = 0  
                    THEN CampaignGoalVisitorsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitorsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalVisitorsPercent = 0
                    THEN CampaignGoalVisitors
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitors
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND (@CampaignName = '''' OR @CampaignName = CampaignName ) AND StatisticsCode = ''campaign'' 
GROUP BY StatisticsObjectName,CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 688, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '32486d5f-5a4f-400b-96af-e0a8da9b9056', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (491, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_HourHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = [StatisticsObjectName]
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalVisitorsPercent = 0  
                    THEN CampaignGoalVisitorsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitorsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalVisitorsPercent = 0
                    THEN CampaignGoalVisitors
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitors
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND (@CampaignName = '''' OR @CampaignName = CampaignName ) AND StatisticsCode = ''campaign'' 
GROUP BY StatisticsObjectName,CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 690, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '00664276-2c62-4cc9-887c-5bb43a0973fd', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (492, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_WeekHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = [StatisticsObjectName]
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalVisitorsPercent = 0  
                    THEN CampaignGoalVisitorsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitorsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalVisitorsPercent = 0
                    THEN CampaignGoalVisitors
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitors
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND (@CampaignName = '''' OR @CampaignName = CampaignName ) AND StatisticsCode = ''campaign'' 
GROUP BY StatisticsObjectName,CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 691, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '3ad7da1d-74df-4107-bfec-7bccf4f9fdbf', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (493, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_MonthHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = [StatisticsObjectName]
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalVisitorsPercent = 0  
                    THEN CampaignGoalVisitorsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitorsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalVisitorsPercent = 0
                    THEN CampaignGoalVisitors
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitors
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND (@CampaignName = '''' OR @CampaignName = CampaignName ) AND StatisticsCode = ''campaign''
GROUP BY StatisticsObjectName,CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 692, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '855f4d5e-9832-4107-a952-4704db3b7b99', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (494, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_YearHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = [StatisticsObjectName]
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalVisitorsPercent = 0  
                    THEN CampaignGoalVisitorsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitorsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalVisitorsPercent = 0
                    THEN CampaignGoalVisitors
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitors
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND (@CampaignName = '''' OR @CampaignName = CampaignName ) AND StatisticsCode = ''campaign''
GROUP BY StatisticsObjectName,CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 693, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '5b4bacf7-889f-4c38-8951-fca62d0a852d', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (495, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
   
FROM Analytics_DayHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalConversionsPercent = 0  
                    THEN CampaignGoalConversionsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversionsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalConversionsPercent = 0
                    THEN CampaignGoalConversions
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversions
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) AND  (YY.CampaignGoalConversionsMin IS NOT NULL OR YY.CampaignGoalConversions IS NOT NULL)
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 694, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '5337cdb3-d7cd-4452-81b7-a616fe839eb1', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (496, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
   
FROM Analytics_HourHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalConversionsPercent = 0  
                    THEN CampaignGoalConversionsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversionsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalConversionsPercent = 0
                    THEN CampaignGoalConversions
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversions
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName ))
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 695, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '07505fda-8e2a-4ad2-8adc-d9f8422dd3c8', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (497, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
   
FROM Analytics_WeekHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalConversionsPercent = 0  
                    THEN CampaignGoalConversionsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversionsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalConversionsPercent = 0
                    THEN CampaignGoalConversions
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversions
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) 
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 696, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '58994cea-3bb3-4ae6-b196-03220d6b6ca5', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (498, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
   
FROM Analytics_MonthHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalConversionsPercent = 0  
                    THEN CampaignGoalConversionsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversionsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalConversionsPercent = 0
                    THEN CampaignGoalConversions
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversions
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) 
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 697, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '5ad99969-1afe-4be7-b5a3-6d3ae057c874', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (499, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
   
FROM Analytics_YearHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalConversionsPercent = 0  
                    THEN CampaignGoalConversionsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversionsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalConversionsPercent = 0
                    THEN CampaignGoalConversions
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversions
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) 
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 698, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '2a33d814-422b-461a-9036-566932d0dd7d', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (500, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsValue)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_DayHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalValuePercent = 0  
                    THEN CampaignGoalValueMin
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValueMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalValuePercent = 0
                    THEN CampaignGoalValue
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValue
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName ))
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 699, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '737d54de-7e1d-4844-b530-fd52aea00f0e', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (501, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsValue)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_HourHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalValuePercent = 0  
                    THEN CampaignGoalValueMin
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValueMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalValuePercent = 0
                    THEN CampaignGoalValue
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValue
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) 
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 700, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'bc671afd-bc1f-49ad-819d-f2c3b73edd77', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (502, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsValue)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_WeekHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalValuePercent = 0  
                    THEN CampaignGoalValueMin
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValueMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalValuePercent = 0
                    THEN CampaignGoalValue
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValue
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) 
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 701, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '6b4e4ce0-e4f8-434d-ae39-0d86e1fc6f79', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (503, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsValue)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_MonthHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalValuePercent = 0  
                    THEN CampaignGoalValueMin
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValueMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalValuePercent = 0
                    THEN CampaignGoalValue
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValue
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) 
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 702, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '03fd77d3-dce9-4262-b974-f12f3c0bc8b1', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (504, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsValue)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_YearHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalValuePercent = 0  
                    THEN CampaignGoalValueMin
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValueMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalValuePercent = 0
                    THEN CampaignGoalValue
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValue
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) 
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 703, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '573de2ec-bb95-4bc8-94a4-9b5fcac18f0d', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (505, N'table', N'table', N'SELECT CampaignDisplayName AS ''{$campaignselect.itemname$}'',
  CAST (SUM(Y.Value)/SUM(X.Visits) AS DECIMAL (15,2)) AS ''{$campaign.goalcurrvalue$}'',    
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (CAST (SUM(Y.Value)/SUM(X.Visits) AS DECIMAL (15,0)) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (CAST (SUM(Y.Value)/SUM(X.Visits) AS DECIMAL (15,0)) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
 FROM Analytics_Statistics
 -- Visit
 LEFT JOIN (SELECT HitsStatisticsID, SUM(HitsCount) AS Visits FROM Analytics_DayHits GROUP BY HitsStatisticsID) AS X ON StatisticsCode=''campaign'' AND StatisticsSiteID = @CMSContextCurrentSiteID
  AND X.HitsStatisticsID = StatisticsID
 
 -- Value
 LEFT JOIN (SELECT HitsStatisticsID, SUM(HitsValue) AS Value FROM Analytics_DayHits GROUP BY HitsStatisticsID) AS Y ON StatisticsCode LIKE''campconversion;%'' AND StatisticsSiteID = @CMSContextCurrentSiteID
  AND Y.HitsStatisticsID = StatisticsID
 -- Campaign and its goal    
 LEFT JOIN
        (SELECT CampaignDisplayName,CampaignName,CampaignSiteID,
            CASE
                WHEN CampaignGoalPerVisitorPercent = 0  
                    THEN CampaignGoalPerVisitorMin
                    ELSE ((CAST (CampaignImpressions AS DECIMAL (15,0)) /NULLIF(CampaignTotalCost,0)) * (CAST(CampaignGoalPerVisitorMin AS DECIMAL (15,0)) /100))
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalPerVisitorPercent = 0
                    THEN CampaignGoalPerVisitor
                    ELSE ((CAST (CampaignImpressions AS DECIMAL (15,0)) /NULLIF(CampaignTotalCost,0))  * (CAST(CampaignGoalPerVisitor AS DECIMAL(15,0)) /100))
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON (XX.CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) OR (StatisticsCode =''campaign'' AND statisticsObjectName =CampaignName))
      AND CampaignSiteID = StatisticsSiteID
 WHERE @CampaignName ='''' OR @CampaignName=CampaignName AND StatisticsSiteID = @CMSContextCurrentSiteID      
 GROUP BY CampaignDisplayName,GoalValueMin,GoalValue
 HAVING  SUM(X.Visits) IS NOT NULL OR SUM(Y.Value) IS NOT NULL', 0, 704, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '802beca6-f973-4035-aac3-278493013348', '20120323 11:13:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (506, N'table', N'table', N'SELECT CampaignDisplayName AS ''{$campaignselect.itemname$}'',
  CAST (SUM(Y.Value)/SUM(X.Visits) AS DECIMAL (15,2)) AS ''{$campaign.goalcurrvalue$}'',    
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (CAST (SUM(Y.Value)/SUM(X.Visits) AS DECIMAL (15,0)) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (CAST (SUM(Y.Value)/SUM(X.Visits) AS DECIMAL (15,0)) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
 FROM Analytics_Statistics
 -- Visit
 LEFT JOIN (SELECT HitsStatisticsID, SUM(HitsCount) AS Visits FROM Analytics_HourHits GROUP BY HitsStatisticsID) AS X ON StatisticsCode=''campaign'' AND StatisticsSiteID = @CMSContextCurrentSiteID
  AND X.HitsStatisticsID = StatisticsID
 
 -- Value
 LEFT JOIN (SELECT HitsStatisticsID, SUM(HitsValue) AS Value FROM Analytics_HourHits GROUP BY HitsStatisticsID) AS Y ON StatisticsCode LIKE''campconversion;%'' AND StatisticsSiteID = @CMSContextCurrentSiteID
  AND Y.HitsStatisticsID = StatisticsID
 -- Campaign and its goal    
 LEFT JOIN
        (SELECT CampaignDisplayName,CampaignName,CampaignSiteID,
            CASE
                WHEN CampaignGoalPerVisitorPercent = 0  
                    THEN CampaignGoalPerVisitorMin
                    ELSE ((CAST (CampaignImpressions AS DECIMAL (15,0)) /NULLIF(CampaignTotalCost,0)) * (CAST(CampaignGoalPerVisitorMin AS DECIMAL (15,0)) /100))
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalPerVisitorPercent = 0
                    THEN CampaignGoalPerVisitor
                    ELSE ((CAST (CampaignImpressions AS DECIMAL (15,0)) /NULLIF(CampaignTotalCost,0))  * (CAST(CampaignGoalPerVisitor AS DECIMAL(15,0)) /100))
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON (XX.CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) OR (StatisticsCode =''campaign'' AND statisticsObjectName =CampaignName))
      AND CampaignSiteID = StatisticsSiteID
 WHERE @CampaignName ='''' OR @CampaignName=CampaignName AND StatisticsSiteID = @CMSContextCurrentSiteID      
 GROUP BY CampaignDisplayName,GoalValueMin,GoalValue
 HAVING  SUM(X.Visits) IS NOT NULL OR SUM(Y.Value) IS NOT NULL', 0, 705, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '01e57407-b28b-4f32-a234-b8a8350b66f6', '20120323 11:13:33', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (507, N'table', N'table', N'SELECT CampaignDisplayName AS ''{$campaignselect.itemname$}'',
  CAST (SUM(Y.Value)/SUM(X.Visits) AS DECIMAL (15,2)) AS ''{$campaign.goalcurrvalue$}'',    
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (CAST (SUM(Y.Value)/SUM(X.Visits) AS DECIMAL (15,0)) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (CAST (SUM(Y.Value)/SUM(X.Visits) AS DECIMAL (15,0)) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
 FROM Analytics_Statistics
 -- Visit
 LEFT JOIN (SELECT HitsStatisticsID, SUM(HitsCount) AS Visits FROM Analytics_WeekHits GROUP BY HitsStatisticsID) AS X ON StatisticsCode=''campaign'' AND StatisticsSiteID = @CMSContextCurrentSiteID
  AND X.HitsStatisticsID = StatisticsID
 
 -- Value
 LEFT JOIN (SELECT HitsStatisticsID, SUM(HitsValue) AS Value FROM Analytics_WeekHits GROUP BY HitsStatisticsID) AS Y ON StatisticsCode LIKE''campconversion;%'' AND StatisticsSiteID = @CMSContextCurrentSiteID
  AND Y.HitsStatisticsID = StatisticsID
 -- Campaign and its goal    
 LEFT JOIN
        (SELECT CampaignDisplayName,CampaignName,CampaignSiteID,
            CASE
                WHEN CampaignGoalPerVisitorPercent = 0  
                    THEN CampaignGoalPerVisitorMin
                    ELSE ((CAST (CampaignImpressions AS DECIMAL (15,0)) /NULLIF(CampaignTotalCost,0)) * (CAST(CampaignGoalPerVisitorMin AS DECIMAL (15,0)) /100))
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalPerVisitorPercent = 0
                    THEN CampaignGoalPerVisitor
                    ELSE ((CAST (CampaignImpressions AS DECIMAL (15,0)) /NULLIF(CampaignTotalCost,0))  * (CAST(CampaignGoalPerVisitor AS DECIMAL(15,0)) /100))
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON (XX.CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) OR (StatisticsCode =''campaign'' AND statisticsObjectName =CampaignName))
      AND CampaignSiteID = StatisticsSiteID
 WHERE @CampaignName ='''' OR @CampaignName=CampaignName AND StatisticsSiteID = @CMSContextCurrentSiteID      
 GROUP BY CampaignDisplayName,GoalValueMin,GoalValue
 HAVING  SUM(X.Visits) IS NOT NULL OR SUM(Y.Value) IS NOT NULL', 0, 706, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '943cf535-831f-434e-bf6c-3ae55a20c5ca', '20120323 11:13:33', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (508, N'table', N'table', N'SELECT CampaignDisplayName AS ''{$campaignselect.itemname$}'',
  CAST (SUM(Y.Value)/SUM(X.Visits) AS DECIMAL (15,2)) AS ''{$campaign.goalcurrvalue$}'',    
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (CAST (SUM(Y.Value)/SUM(X.Visits) AS DECIMAL (15,0)) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (CAST (SUM(Y.Value)/SUM(X.Visits) AS DECIMAL (15,0)) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
 FROM Analytics_Statistics
 -- Visit
 LEFT JOIN (SELECT HitsStatisticsID, SUM(HitsCount) AS Visits FROM Analytics_MonthHits GROUP BY HitsStatisticsID) AS X ON StatisticsCode=''campaign'' AND StatisticsSiteID = @CMSContextCurrentSiteID
  AND X.HitsStatisticsID = StatisticsID
 
 -- Value
 LEFT JOIN (SELECT HitsStatisticsID, SUM(HitsValue) AS Value FROM Analytics_MonthHits GROUP BY HitsStatisticsID) AS Y ON StatisticsCode LIKE''campconversion;%'' AND StatisticsSiteID = @CMSContextCurrentSiteID
  AND Y.HitsStatisticsID = StatisticsID
 -- Campaign and its goal    
 LEFT JOIN
        (SELECT CampaignDisplayName,CampaignName,CampaignSiteID,
            CASE
                WHEN CampaignGoalPerVisitorPercent = 0  
                    THEN CampaignGoalPerVisitorMin
                    ELSE ((CAST (CampaignImpressions AS DECIMAL (15,0)) /NULLIF(CampaignTotalCost,0)) * (CAST(CampaignGoalPerVisitorMin AS DECIMAL (15,0)) /100))
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalPerVisitorPercent = 0
                    THEN CampaignGoalPerVisitor
                    ELSE ((CAST (CampaignImpressions AS DECIMAL (15,0)) /NULLIF(CampaignTotalCost,0))  * (CAST(CampaignGoalPerVisitor AS DECIMAL(15,0)) /100))
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON (XX.CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) OR (StatisticsCode =''campaign'' AND statisticsObjectName =CampaignName))
      AND CampaignSiteID = StatisticsSiteID
 WHERE @CampaignName ='''' OR @CampaignName=CampaignName AND StatisticsSiteID = @CMSContextCurrentSiteID      
 GROUP BY CampaignDisplayName,GoalValueMin,GoalValue
 HAVING  SUM(X.Visits) IS NOT NULL OR SUM(Y.Value) IS NOT NULL', 0, 707, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '21d347cb-c423-4436-a716-edbdd8e4ed26', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (509, N'table', N'table', N'SELECT CampaignDisplayName AS ''{$campaignselect.itemname$}'',
  CAST (SUM(Y.Value)/SUM(X.Visits) AS DECIMAL (15,2)) AS ''{$campaign.goalcurrvalue$}'',    
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (CAST (SUM(Y.Value)/SUM(X.Visits) AS DECIMAL (15,0)) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (CAST (SUM(Y.Value)/SUM(X.Visits) AS DECIMAL (15,0)) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
 FROM Analytics_Statistics
 -- Visit
 LEFT JOIN (SELECT HitsStatisticsID, SUM(HitsCount) AS Visits FROM Analytics_YearHits GROUP BY HitsStatisticsID) AS X ON StatisticsCode=''campaign'' AND StatisticsSiteID = @CMSContextCurrentSiteID
  AND X.HitsStatisticsID = StatisticsID
 
 -- Value
 LEFT JOIN (SELECT HitsStatisticsID, SUM(HitsValue) AS Value FROM Analytics_YearHits GROUP BY HitsStatisticsID) AS Y ON StatisticsCode LIKE''campconversion;%'' AND StatisticsSiteID = @CMSContextCurrentSiteID
  AND Y.HitsStatisticsID = StatisticsID
 -- Campaign and its goal    
 LEFT JOIN
        (SELECT CampaignDisplayName,CampaignName,CampaignSiteID,
            CASE
                WHEN CampaignGoalPerVisitorPercent = 0  
                    THEN CampaignGoalPerVisitorMin
                    ELSE ((CAST (CampaignImpressions AS DECIMAL (15,0)) /NULLIF(CampaignTotalCost,0)) * (CAST(CampaignGoalPerVisitorMin AS DECIMAL (15,0)) /100))
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalPerVisitorPercent = 0
                    THEN CampaignGoalPerVisitor
                    ELSE ((CAST (CampaignImpressions AS DECIMAL (15,0)) /NULLIF(CampaignTotalCost,0))  * (CAST(CampaignGoalPerVisitor AS DECIMAL(15,0)) /100))
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON (XX.CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) OR (StatisticsCode =''campaign'' AND statisticsObjectName =CampaignName))
      AND CampaignSiteID = StatisticsSiteID
 WHERE @CampaignName ='''' OR @CampaignName=CampaignName AND StatisticsSiteID = @CMSContextCurrentSiteID      
 GROUP BY CampaignDisplayName,GoalValueMin,GoalValue
 HAVING  SUM(X.Visits) IS NOT NULL OR SUM(Y.Value) IS NOT NULL', 0, 708, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'dd913b4f-6320-42d1-a2bf-d6cc04e1cc36', '20120323 11:13:36', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (510, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day''); 
 SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day''); 
SELECT CampaignDisplayName AS '' '',ISNULL(SUM (Views.Hits),0) AS ''{$analytics_codename.visits$}'', ISNULL(SUM(Conversions.Hits),0) AS ''{$conversion.conversion.list$}'',
    ISNULL(CAST (CAST (CAST (SUM(Conversions.Hits) AS DECIMAL (15,2)) / SUM (Views.Hits) * 100 AS DECIMAL(15,1)) AS NVARCHAR(20))+''%'',''0.0%'') AS ''{$abtesting.conversionrate$}'',
  ISNULL(SUM (Conversions.Value),0) AS ''{$conversions.value$}'',   
  ISNULL(ROUND (SUM (Conversions.Value)  / NULLIF (SUM(Views.Hits),0), 1),0) AS ''{$conversions.valuepervisit$}'',
  ISNULL(CampaignTotalCost,0) AS ''{$campaign.totalcost$}'', 
  CAST (CAST (ISNULL(SUM(Conversions.Value) / NULLIF(CampaignTotalCost,0),0)*100 AS DECIMAL(15,1)) AS NVARCHAR(15))+''%'' AS ''{$campaign.roi$}''
  
 FROM Analytics_Campaign 
  LEFT JOIN Analytics_Statistics ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) OR ((StatisticsObjectName = CampaignName) AND StatisticsCode=''campaign'')
-- Visits
LEFT JOIN (SELECT SUM(HitsCount) AS Hits,HitsStatisticsID AS HitsStatisticsID  FROM Analytics_DayHits 
	WHERE (@FromDate IS NULL OR @FromDate <= HitsStartTime) AND (@ToDate IS NULL OR @ToDate >= HitsStartTime)
   GROUP BY HitsStatisticsID) AS Views ON Views.HitsStatisticsID = Analytics_Statistics.StatisticsID AND StatisticsCode = ''campaign''
-- Conversion count, conversion value
LEFT JOIN (SELECT SUM(HitsCount) AS Hits,SUM(HitsValue) AS Value,HitsStatisticsID AS HitsStatisticsID  FROM Analytics_DayHits 
	WHERE (@FromDate IS NULL OR @FromDate <= HitsStartTime) AND (@ToDate IS NULL OR @ToDate >= HitsStartTime)
   GROUP BY HitsStatisticsID) AS Conversions ON Conversions.HitsStatisticsID = Analytics_Statistics.StatisticsID AND StatisticsCode LIKE ''campconversion;%''
WHERE CampaignSiteID = @CMSContextCurrentSiteID
GROUP BY CampaignDisplayName, CampaignTotalCost', 0, 709, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '81af2b08-ab67-489d-b4a9-4116e9a63358', '20120323 11:13:36', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (516, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day''); 
 SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day''); 
SELECT  
 CampaignDisplayName AS '' '',
 ISNULL(ConversionDisplayName,Conversions.ConversionName +'' ({$recyclebin.deleted$})'') AS ''{$Conversion.name$}'',ISNULL(SUM (Visits.Count),0) AS ''{$analytics_codename.visits$}'',
 ISNULL(SUM(Conversions.Hits),0) AS ''{$conversion.conversion.list$}'',
 ISNULL(CAST (CAST (CAST (SUM(Conversions.Hits) AS DECIMAL (15,2)) / SUM (Visits.Count) * 100 AS DECIMAL(15,1)) AS NVARCHAR(20))+''%'',''0.0%'') AS ''{$abtesting.conversionrate$}'',
 ISNULL(SUM (Conversions.Value),0) AS ''{$conversions.value$}'', 
 ISNULL(ROUND (SUM (Conversions.Value)  / NULLIF (SUM(Visits.Count),0), 1),0) AS ''{$conversions.valuepervisit$}''    
  
 FROM Analytics_Campaign
    -- Visits
    LEFT JOIN (SELECT SUM(HitsCount) AS Count, StatisticsObjectName AS CampaignName FROM
				Analytics_DayHits JOIN Analytics_Statistics ON HitsStatisticsID = StatisticsID
				WHERE (@FromDate IS NULL OR @FromDate <= HitsStartTime) AND (@ToDate IS NULL OR @ToDate >= HitsStartTime)
				AND StatisticsSiteID = @CMSContextCurrentSiteID AND  
				StatisticsCode = ''campaign'' AND StatisticsObjectName = @CampaignName
				GROUP BY StatisticsObjectName
				) AS Visits
	ON Visits.CampaignName = Analytics_Campaign.CampaignName
								  
    --- Conversion count, conversion value
	LEFT JOIN (SELECT SUM(HitsCount) AS Hits,SUM(HitsValue) AS Value, StatisticsObjectName  AS ConversionName,
				SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AS CampaignName 	FROM Analytics_DayHits 
				JOIN Analytics_Statistics ON StatisticsID = HitsStatisticsID
				WHERE (@FromDate IS NULL OR @FromDate <= HitsStartTime) AND (@ToDate IS NULL OR @ToDate >= HitsStartTime)
				AND StatisticsCode LIKE ''campconversion;%'' AND StatisticsSiteID = @CMSContextCurrentSiteID
				GROUP BY StatisticsObjectName,SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))) AS Conversions 
	ON Conversions.CampaignName = Analytics_Campaign.CampaignName 
 LEFT JOIN Analytics_Conversion ON Conversions.ConversionName = Analytics_Conversion.ConversionName AND 
			Analytics_Conversion.ConversionSiteID = @CMSContextCurrentSiteID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND Analytics_Campaign.CampaignName = @CampaignName 
GROUP BY CampaignDisplayName,ConversionDisplayName,Conversions.ConversionName', 0, 715, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '9dab3cd8-c9d1-40f1-95fd-19ad62e0f654', '20120323 11:13:50', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (517, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
   
FROM Analytics_YearHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalConversionsPercent = 0  
                    THEN CampaignGoalConversionsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversionsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalConversionsPercent = 0
                    THEN CampaignGoalConversions
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversions
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) AND  (YY.CampaignGoalConversionsMin IS NOT NULL OR YY.CampaignGoalConversions IS NOT NULL)
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 717, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '49a542c6-3cb3-418a-b1be-ba81d0726d08', '20120323 11:13:36', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (518, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
   
FROM Analytics_MonthHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalConversionsPercent = 0  
                    THEN CampaignGoalConversionsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversionsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalConversionsPercent = 0
                    THEN CampaignGoalConversions
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversions
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) AND  (YY.CampaignGoalConversionsMin IS NOT NULL OR YY.CampaignGoalConversions IS NOT NULL)
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 718, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '6aee0910-1513-4392-bc8d-87f0181c7160', '20120323 11:13:36', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (519, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
   
FROM Analytics_WeekHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalConversionsPercent = 0  
                    THEN CampaignGoalConversionsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversionsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalConversionsPercent = 0
                    THEN CampaignGoalConversions
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversions
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) AND  (YY.CampaignGoalConversionsMin IS NOT NULL OR YY.CampaignGoalConversions IS NOT NULL)
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 719, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '9caaa065-ad65-42e3-beb1-23ee9e45a121', '20120323 11:13:36', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (520, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
   
FROM Analytics_HourHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalConversionsPercent = 0  
                    THEN CampaignGoalConversionsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversionsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalConversionsPercent = 0
                    THEN CampaignGoalConversions
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversions
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) AND  (YY.CampaignGoalConversionsMin IS NOT NULL OR YY.CampaignGoalConversions IS NOT NULL)
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 720, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', 'b5eeb927-0885-4be2-ae68-22c7efcc929c', '20120323 11:13:36', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (521, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
   
FROM Analytics_DayHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalConversionsPercent = 0  
                    THEN CampaignGoalConversionsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversionsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalConversionsPercent = 0
                    THEN CampaignGoalConversions
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversions
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName ))
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 721, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', 'f2bf8c81-6729-4b1a-b2a7-66be4a590cac', '20120323 11:13:33', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (525, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_YearHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = [StatisticsObjectName]
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalVisitorsPercent = 0  
                    THEN CampaignGoalVisitorsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitorsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalVisitorsPercent = 0
                    THEN CampaignGoalVisitors
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitors
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND (@CampaignName = '''' OR @CampaignName = CampaignName ) AND StatisticsCode = ''campaign'' AND (YY.CampaignGoalVisitorsMin IS NOT NULL OR YY.CampaignGoalVisitors IS NOT NULL)
GROUP BY StatisticsObjectName,CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 725, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'b8dd895f-9c88-4477-886d-e3521d28a1ec', '20120323 11:13:33', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (526, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_WeekHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = [StatisticsObjectName]
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalVisitorsPercent = 0  
                    THEN CampaignGoalVisitorsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitorsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalVisitorsPercent = 0
                    THEN CampaignGoalVisitors
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitors
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND (@CampaignName = '''' OR @CampaignName = CampaignName ) AND StatisticsCode = ''campaign'' AND (YY.CampaignGoalVisitorsMin IS NOT NULL OR YY.CampaignGoalVisitors IS NOT NULL)
GROUP BY StatisticsObjectName,CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 726, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'c666788c-25c4-44d1-a09e-2068be6b8b98', '20120323 11:13:33', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (527, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_MonthHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = [StatisticsObjectName]
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalVisitorsPercent = 0  
                    THEN CampaignGoalVisitorsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitorsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalVisitorsPercent = 0
                    THEN CampaignGoalVisitors
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitors
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND (@CampaignName = '''' OR @CampaignName = CampaignName ) AND StatisticsCode = ''campaign'' AND (YY.CampaignGoalVisitorsMin IS NOT NULL OR YY.CampaignGoalVisitors IS NOT NULL)
GROUP BY StatisticsObjectName,CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 727, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'fef4a8f1-cd86-4174-91d8-8aff03f4314a', '20120323 11:13:33', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (528, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_HourHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = [StatisticsObjectName]
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalVisitorsPercent = 0  
                    THEN CampaignGoalVisitorsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitorsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalVisitorsPercent = 0
                    THEN CampaignGoalVisitors
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitors
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND (@CampaignName = '''' OR @CampaignName = CampaignName ) AND StatisticsCode = ''campaign'' AND (YY.CampaignGoalVisitorsMin IS NOT NULL OR YY.CampaignGoalVisitors IS NOT NULL)
GROUP BY StatisticsObjectName,CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 728, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '914dbace-0510-4a63-9ada-edb483e12b0e', '20120323 11:13:33', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (529, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsCount)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsCount) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_DayHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = [StatisticsObjectName]
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalVisitorsPercent = 0  
                    THEN CampaignGoalVisitorsMin
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitorsMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalVisitorsPercent = 0
                    THEN CampaignGoalVisitors
                    ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitors
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND (@CampaignName = '''' OR @CampaignName = CampaignName ) AND StatisticsCode = ''campaign'' AND (YY.CampaignGoalVisitorsMin IS NOT NULL OR YY.CampaignGoalVisitors IS NOT NULL)
GROUP BY StatisticsObjectName,CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 729, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '6c200810-1c5c-426a-8fb7-51b7ac00c668', '20120323 11:13:33', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (530, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsValue)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_YearHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalValuePercent = 0  
                    THEN CampaignGoalValueMin
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValueMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalValuePercent = 0
                    THEN CampaignGoalValue
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValue
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) AND  (YY.CampaignGoalValueMin IS NOT NULL OR YY.CampaignGoalValue IS NOT NULL)
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 730, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '519d4164-ced8-4b46-bf56-0f92a1da696f', '20120323 11:13:33', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (531, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsValue)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_WeekHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalValuePercent = 0  
                    THEN CampaignGoalValueMin
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValueMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalValuePercent = 0
                    THEN CampaignGoalValue
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValue
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) AND  (YY.CampaignGoalValueMin IS NOT NULL OR YY.CampaignGoalValue IS NOT NULL)
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 731, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'b09120b4-0a9a-44d9-80a6-219c38000e5a', '20120323 11:13:33', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (532, N'table', N'table', N'SELECT
    [CampaignDisplayName] as ''{$campaignselect.itemname$}'',
    SUM(HitsValue)  as ''{$campaign.goalcurrvalue$}'',
    ISNULL(CAST (GoalValueMin AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValueMin,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.redflagvalue$}'',
    ISNULL(CAST (GoalValue AS NVARCHAR (20))+'' ('' + CAST (CAST (SUM(HitsValue) / NULLIF (GoalValue,0) * 100 AS DECIMAL(15,0)) AS NVARCHAR(10)) +''%)'',0) AS ''{$reports_goals.goalvalue$}''
FROM Analytics_MonthHits
    LEFT JOIN Analytics_Statistics ON HitsStatisticsID = [StatisticsID]
    LEFT JOIN Analytics_Campaign AS YY ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode))
    LEFT JOIN
        (SELECT CampaignID,
            CASE
                WHEN CampaignGoalValuePercent = 0  
                    THEN CampaignGoalValueMin
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValueMin
                END  AS GoalValueMin,
            CASE    
                WHEN CampaignGoalValuePercent = 0
                    THEN CampaignGoalValue
                    ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValue
                END  AS GoalValue
        FROM Analytics_Campaign)
        AS XX ON XX.CampaignID = YY.CampaignID
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) AND  (YY.CampaignGoalValueMin IS NOT NULL OR YY.CampaignGoalValue IS NOT NULL)
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 732, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '0486ede0-f8c3-423c-aa0d-5614f120afe5', '20120323 11:13:33', NULL)
SET IDENTITY_INSERT [Reporting_ReportTable] OFF
