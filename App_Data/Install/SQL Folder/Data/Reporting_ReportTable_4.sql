SET IDENTITY_INSERT [Reporting_ReportTable] ON
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (605, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_mobiledevice.name_header$}'', 
 SUM(HitsCount) AS ''{$reports_mobiledevice.count_header$}'', 
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount) 
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) 
 AS VARCHAR)+''%'' AS ''{$reports_mobiledevice.percent_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName) 
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 776, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '8ac2ea96-6683-49b6-9f30-e37c9c21557e', '20120323 11:13:50', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (606, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_mobiledevice.name_header$}'', 
 SUM(HitsCount) AS ''{$reports_mobiledevice.count_header$}'', 
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount) 
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) 
 AS VARCHAR)+''%'' AS ''{$reports_mobiledevice.percent_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName) 
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 777, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'fb91687d-fc5b-4f54-968d-1c303091b72d', '20120323 11:13:50', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (607, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_mobiledevice.name_header$}'', 
 SUM(HitsCount) AS ''{$reports_mobiledevice.count_header$}'', 
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount) 
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) 
 AS VARCHAR)+''%'' AS ''{$reports_mobiledevice.percent_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName) 
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 778, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found.</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>True</subscriptionenabled><pagesize>10</pagesize></customdata>', '0ae10d49-bacd-403e-aed1-38d1a391e012', '20120418 08:29:36', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (608, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_mobiledevice.name_header$}'', 
 SUM(HitsCount) AS ''{$reports_mobiledevice.count_header$}'', 
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount) 
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) 
 AS VARCHAR)+''%'' AS ''{$reports_mobiledevice.percent_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName) 
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 779, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found.</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>True</subscriptionenabled><pagesize>10</pagesize></customdata>', 'a099aa9f-3a26-410f-a60c-8759c502d828', '20120418 08:29:18', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (609, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_mobiledevice.name_header$}'', 
 SUM(HitsCount) AS ''{$reports_mobiledevice.count_header$}'', 
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount) 
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID) 
  AND (StatisticsCode=@CodeName) 
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) 
 AS VARCHAR)+''%'' AS ''{$reports_mobiledevice.percent_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName) 
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 780, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'd1cbf70e-30e5-4dde-ba12-3f267a270624', '20120323 11:13:50', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (610, N'TableYearConversion', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day''); 
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day''); 
IF (@ConversionName IS NULL OR @ConversionName = '''')
BEGIN
SELECT TOP 100 ConversionDisplayName AS ''{$reports_conversion.name_header$}'', SUM(HitsCount) AS
''{$reports_conversion.hits_header$}'',SUM(HitsValue) AS ''{$reports_conversion.value_header$}''  FROM
Analytics_Statistics 
JOIN Analytics_DayHits  ON HitsStatisticsID = StatisticsID
JOIN Analytics_Conversion ON ConversionName  = StatisticsObjectName AND ConversionSiteID = @CMSContextCurrentSiteID
WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
(StatisticsCode=N''conversion'') AND (StatisticsID = HitsStatisticsID) 
AND (@FromDate IS NULL OR @FromDate <= HitsStartTime) AND (@ToDate IS NULL OR @ToDate >= HitsStartTime)	
 GROUP BY ConversionDisplayName ORDER BY SUM(HitsCount) DESC
END
ELSE
BEGIN
SELECT
 ISNULL(CampaignDisplayName,''-'') AS ''{$campaign.campaign.list$}'',
 ISNULL(SUM(HitsCount),0) AS ''{$conversion.conversion.list$}'',
 ISNULL(SUM (HitsValue),0) AS ''{$conversions.value$}'',
 ISNULL(CAST (CAST (CAST (SUM(HitsCount) AS DECIMAL (15,2)) / Visits * 100 AS DECIMAL(15,1)) AS NVARCHAR(20))+''%'',''0.0%'') AS ''{$abtesting.conversionrate$}'', 
 ISNULL(ROUND (SUM (HitsValue)  / NULLIF (Visits,0), 1),0) AS ''{$conversions.valuepervisit$}'',
 ISNULL(Visits,0) AS ''{$analytics_codename.visits$}'', 
 ISNULL(CampaignTotalCost,0) AS ''{$campaign.totalcost$}'', 
 CAST (CAST (ISNULL(SUM(HitsValue) / NULLIF(CampaignTotalCost,0),0)*100 AS DECIMAL(15,1)) AS NVARCHAR(15))+''%'' AS ''{$campaign.roi$}''
 
FROM Analytics_Statistics JOIN Analytics_DayHits ON HitsStatisticsID = StatisticsID
LEFT JOIN 
(SELECT CampaignDisplayName,CampaignName,CampaignSiteID,CampaignTotalCost, SUM (HitsCount) AS Visits FROM Analytics_Campaign 
	LEFT JOIN Analytics_Statistics ON StatisticsCode = ''campaign'' AND StatisticsObjectName = CampaignName  AND CampaignSiteID = StatisticsSiteID 
	LEFT JOIN Analytics_DayHits ON HitsStatisticsID = StatisticsID
	WHERE CampaignSiteID = @CMSContextCurrentSiteID
	AND (@FromDate IS NULL OR @FromDate <= HitsStartTime) AND (@ToDate IS NULL OR @ToDate >= HitsStartTime)	
	GROUP BY CampaignDisplayName,CampaignName,CampaignSiteID,CampaignTotalCost)
 AS Campaigns 
ON Campaigns.CampaignName = SUBSTRING(StatisticsCode,16,LEN(StatisticsCode)) AND Campaigns.CampaignSiteID = StatisticsSiteID
WHERE StatisticsObjectName = @ConversionName AND StatisticsSiteID = @CMSContextCurrentSiteID AND 
(StatisticsCode=N''conversion'' OR StatisticsCode LIKE N''campconversion;%'')
AND (@FromDate IS NULL OR @FromDate <= HitsStartTime) AND (@ToDate IS NULL OR @ToDate >= HitsStartTime)	
GROUP BY CampaignDisplayName,CampaignTotalCost,Visits
ORDER BY SUM(HitsValue) DESC, CampaignDisplayName
END', 0, 781, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'f95992d3-ebeb-44c2-9b58-82a6523367ed', '20120323 11:13:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (615, N'Table', N'table', N'--DECLARE @FromDate DATETIME
--SET @FromDate = ''1/1/2011 12:00:00 AM''
--DECLARE @ToDate DATETIME
--SET @ToDate = ''1/1/2012 12:00:00 AM''
--DECLARE @CodeName NVARCHAR(60)
--SET @CodeName = ''bannerclick''
--DECLARE @CMSContextCurrentSiteID INT
--SET @CMSContextCurrentSiteID = 1
SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT BannerID AS ''{$banner.reports.bannerid$}'', BannerName AS ''{$banner.reports.bannername$}'', BannerCategoryName AS ''{$banner.reports.bannercategoryname$}'', SUM(HitsCount) AS ''{$banner.reports.numberofclicks$}''
FROM Analytics_Statistics
INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
LEFT JOIN CMS_Banner ON Analytics_Statistics.StatisticsObjectID = CMS_Banner.BannerID
LEFT JOIN CMS_BannerCategory ON CMS_BannerCategory.BannerCategoryID = CMS_Banner.BannerCategoryID
WHERE (StatisticsCode = @CodeName)
AND (HitsStartTime >= @FromDate)
AND (HitsEndTime <= @ToDate)
AND (StatisticsObjectID = BannerID)
AND (StatisticsSiteID = @CMSContextCurrentSiteID)
GROUP BY BannerID, BannerName, BannerCategoryName', 0, 791, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>False</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid></skinid><pagemode>1</pagemode></customdata>', 'cb0e0d79-8580-4d1d-b4a5-4eb1682be6c5', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (616, N'Table', N'table', N'--DECLARE @FromDate DATETIME
--SET @FromDate = ''1/1/2011 12:00:00 AM''
--DECLARE @ToDate DATETIME
--SET @ToDate = ''1/1/2012 12:00:00 AM''
--DECLARE @CodeName NVARCHAR(60)
--SET @CodeName = ''bannerclick''
--DECLARE @CMSContextCurrentSiteID INT
--SET @CMSContextCurrentSiteID = 1
SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT BannerID AS ''{$banner.reports.bannerid$}'', BannerName AS ''{$banner.reports.bannername$}'', BannerCategoryName AS ''{$banner.reports.bannercategoryname$}'', SUM(HitsCount) AS ''{$banner.reports.numberofclicks$}''
FROM Analytics_Statistics
INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
LEFT JOIN CMS_Banner ON Analytics_Statistics.StatisticsObjectID = CMS_Banner.BannerID
LEFT JOIN CMS_BannerCategory ON CMS_BannerCategory.BannerCategoryID = CMS_Banner.BannerCategoryID
WHERE (StatisticsCode = @CodeName)
AND (HitsStartTime >= @FromDate)
AND (HitsEndTime <= @ToDate)
AND (StatisticsObjectID = BannerID)
AND (StatisticsSiteID = @CMSContextCurrentSiteID)
GROUP BY BannerID, BannerName, BannerCategoryName', 0, 792, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>False</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid></skinid><pagemode>1</pagemode></customdata>', 'f3e4e047-e689-48a7-abf8-d5ffb51c7446', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (617, N'Table', N'table', N'--DECLARE @FromDate DATETIME
--SET @FromDate = ''1/1/2011 12:00:00 AM''
--DECLARE @ToDate DATETIME
--SET @ToDate = ''1/1/2012 12:00:00 AM''
--DECLARE @CodeName NVARCHAR(60)
--SET @CodeName = ''bannerclick''
--DECLARE @CMSContextCurrentSiteID INT
--SET @CMSContextCurrentSiteID = 1
SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT BannerID AS ''{$banner.reports.bannerid$}'', BannerName AS ''{$banner.reports.bannername$}'', BannerCategoryName AS ''{$banner.reports.bannercategoryname$}'', SUM(HitsCount) AS ''{$banner.reports.numberofclicks$}''
FROM Analytics_Statistics
INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
LEFT JOIN CMS_Banner ON Analytics_Statistics.StatisticsObjectID = CMS_Banner.BannerID
LEFT JOIN CMS_BannerCategory ON CMS_BannerCategory.BannerCategoryID = CMS_Banner.BannerCategoryID
WHERE (StatisticsCode = @CodeName)
AND (HitsStartTime >= @FromDate)
AND (HitsEndTime <= @ToDate)
AND (StatisticsObjectID = BannerID)
AND (StatisticsSiteID = @CMSContextCurrentSiteID)
GROUP BY BannerID, BannerName, BannerCategoryName', 0, 793, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>False</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid></skinid><pagemode>1</pagemode></customdata>', '3070eda4-3101-4e3d-b691-5844399ddce3', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (618, N'Table', N'table', N'--DECLARE @FromDate DATETIME
--SET @FromDate = ''1/1/2011 12:00:00 AM''
--DECLARE @ToDate DATETIME
--SET @ToDate = ''1/1/2012 12:00:00 AM''
--DECLARE @CodeName NVARCHAR(60)
--SET @CodeName = ''bannerclick''
--DECLARE @CMSContextCurrentSiteID INT
--SET @CMSContextCurrentSiteID = 1
SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT BannerID AS ''{$banner.reports.bannerid$}'', BannerName AS ''{$banner.reports.bannername$}'', BannerCategoryName AS ''{$banner.reports.bannercategoryname$}'', SUM(HitsCount) AS ''{$banner.reports.numberofclicks$}''
FROM Analytics_Statistics
INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
LEFT JOIN CMS_Banner ON Analytics_Statistics.StatisticsObjectID = CMS_Banner.BannerID
LEFT JOIN CMS_BannerCategory ON CMS_BannerCategory.BannerCategoryID = CMS_Banner.BannerCategoryID
WHERE (StatisticsCode = @CodeName)
AND (HitsStartTime >= @FromDate)
AND (HitsEndTime <= @ToDate)
AND (StatisticsObjectID = BannerID)
AND (StatisticsSiteID = @CMSContextCurrentSiteID)
GROUP BY BannerID, BannerName, BannerCategoryName', 0, 794, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>False</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid></skinid><pagemode>1</pagemode></customdata>', 'b0f373a7-2324-4105-98ce-0a7442ad7139', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (619, N'Table', N'table', N'--DECLARE @FromDate DATETIME
--SET @FromDate = ''1/1/2011 12:00:00 AM''
--DECLARE @ToDate DATETIME
--SET @ToDate = ''1/1/2012 12:00:00 AM''
--DECLARE @CodeName NVARCHAR(60)
--SET @CodeName = ''bannerclick''
--DECLARE @CMSContextCurrentSiteID INT
--SET @CMSContextCurrentSiteID = 1
SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT BannerID AS ''{$banner.reports.bannerid$}'', BannerName AS ''{$banner.reports.bannername$}'', BannerCategoryName AS ''{$banner.reports.bannercategoryname$}'', SUM(HitsCount) AS ''{$banner.reports.numberofclicks$}''
FROM Analytics_Statistics
INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
LEFT JOIN CMS_Banner ON Analytics_Statistics.StatisticsObjectID = CMS_Banner.BannerID
LEFT JOIN CMS_BannerCategory ON CMS_BannerCategory.BannerCategoryID = CMS_Banner.BannerCategoryID
WHERE (StatisticsCode = @CodeName)
AND (HitsStartTime >= @FromDate)
AND (HitsEndTime <= @ToDate)
AND (StatisticsObjectID = BannerID)
AND (StatisticsSiteID = @CMSContextCurrentSiteID)
GROUP BY BannerID, BannerName, BannerCategoryName', 0, 795, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>False</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid></skinid><pagemode>1</pagemode></customdata>', '404ded1f-0d1c-40df-8ba0-85738477aa02', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (620, N'table', N'Table', N'--DECLARE @FromDate DATETIME
--SET @FromDate = ''1/1/2011 12:00:00 AM''
--DECLARE @ToDate DATETIME
--SET @ToDate = ''1/1/2012 12:00:00 AM''
--DECLARE @CodeName NVARCHAR(60)
--SET @CodeName = ''bannerclick''
--DECLARE @CMSContextCurrentSiteID INT
--SET @CMSContextCurrentSiteID = 1
SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT BannerID AS ''{$banner.reports.bannerid$}'', BannerName AS ''{$banner.reports.bannername$}'', BannerCategoryName AS ''{$banner.reports.bannercategoryname$}'', SUM(HitsCount) AS ''{$banner.reports.numberofhits$}''
FROM Analytics_Statistics
INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
LEFT JOIN CMS_Banner ON Analytics_Statistics.StatisticsObjectID = CMS_Banner.BannerID
LEFT JOIN CMS_BannerCategory ON CMS_BannerCategory.BannerCategoryID = CMS_Banner.BannerCategoryID
WHERE (StatisticsCode = @CodeName)
AND (HitsStartTime >= @FromDate)
AND (HitsEndTime <= @ToDate)
AND (StatisticsObjectID = BannerID)
AND (StatisticsSiteID = @CMSContextCurrentSiteID)
GROUP BY BannerID, BannerName, BannerCategoryName', 0, 796, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>False</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid></skinid><pagemode>1</pagemode></customdata>', '645d7c4d-fe65-4588-aa69-2c0413d17dab', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (621, N'table', N'Table', N'--DECLARE @FromDate DATETIME
--SET @FromDate = ''1/1/2011 12:00:00 AM''
--DECLARE @ToDate DATETIME
--SET @ToDate = ''1/1/2012 12:00:00 AM''
--DECLARE @CodeName NVARCHAR(60)
--SET @CodeName = ''bannerclick''
--DECLARE @CMSContextCurrentSiteID INT
--SET @CMSContextCurrentSiteID = 1
SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT BannerID AS ''{$banner.reports.bannerid$}'', BannerName AS ''{$banner.reports.bannername$}'', BannerCategoryName AS ''{$banner.reports.bannercategoryname$}'', SUM(HitsCount) AS ''{$banner.reports.numberofhits$}''
FROM Analytics_Statistics
INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
LEFT JOIN CMS_Banner ON Analytics_Statistics.StatisticsObjectID = CMS_Banner.BannerID
LEFT JOIN CMS_BannerCategory ON CMS_BannerCategory.BannerCategoryID = CMS_Banner.BannerCategoryID
WHERE (StatisticsCode = @CodeName)
AND (HitsStartTime >= @FromDate)
AND (HitsEndTime <= @ToDate)
AND (StatisticsObjectID = BannerID)
AND (StatisticsSiteID = @CMSContextCurrentSiteID)
GROUP BY BannerID, BannerName, BannerCategoryName', 0, 797, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>False</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid></skinid><pagemode>1</pagemode></customdata>', '23acad3e-63f3-46e8-a15b-f842e3017b1e', '20120323 11:13:55', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (622, N'table', N'Table', N'--DECLARE @FromDate DATETIME
--SET @FromDate = ''1/1/2011 12:00:00 AM''
--DECLARE @ToDate DATETIME
--SET @ToDate = ''1/1/2012 12:00:00 AM''
--DECLARE @CodeName NVARCHAR(60)
--SET @CodeName = ''bannerclick''
--DECLARE @CMSContextCurrentSiteID INT
--SET @CMSContextCurrentSiteID = 1
SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT BannerID AS ''{$banner.reports.bannerid$}'', BannerName AS ''{$banner.reports.bannername$}'', BannerCategoryName AS ''{$banner.reports.bannercategoryname$}'', SUM(HitsCount) AS ''{$banner.reports.numberofhits$}''
FROM Analytics_Statistics
INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
LEFT JOIN CMS_Banner ON Analytics_Statistics.StatisticsObjectID = CMS_Banner.BannerID
LEFT JOIN CMS_BannerCategory ON CMS_BannerCategory.BannerCategoryID = CMS_Banner.BannerCategoryID
WHERE (StatisticsCode = @CodeName)
AND (HitsStartTime >= @FromDate)
AND (HitsEndTime <= @ToDate)
AND (StatisticsObjectID = BannerID)
AND (StatisticsSiteID = @CMSContextCurrentSiteID)
GROUP BY BannerID, BannerName, BannerCategoryName', 0, 798, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>False</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid></skinid><pagemode>1</pagemode></customdata>', 'e9b722c3-5a6e-41fd-92b4-413ee84620a4', '20120323 11:13:55', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (623, N'table', N'Table', N'--DECLARE @FromDate DATETIME
--SET @FromDate = ''1/1/2011 12:00:00 AM''
--DECLARE @ToDate DATETIME
--SET @ToDate = ''1/1/2012 12:00:00 AM''
--DECLARE @CodeName NVARCHAR(60)
--SET @CodeName = ''bannerclick''
--DECLARE @CMSContextCurrentSiteID INT
--SET @CMSContextCurrentSiteID = 1
SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT BannerID AS ''{$banner.reports.bannerid$}'', BannerName AS ''{$banner.reports.bannername$}'', BannerCategoryName AS ''{$banner.reports.bannercategoryname$}'', SUM(HitsCount) AS ''{$banner.reports.numberofhits$}''
FROM Analytics_Statistics
INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
LEFT JOIN CMS_Banner ON Analytics_Statistics.StatisticsObjectID = CMS_Banner.BannerID
LEFT JOIN CMS_BannerCategory ON CMS_BannerCategory.BannerCategoryID = CMS_Banner.BannerCategoryID
WHERE (StatisticsCode = @CodeName)
AND (HitsStartTime >= @FromDate)
AND (HitsEndTime <= @ToDate)
AND (StatisticsObjectID = BannerID)
AND (StatisticsSiteID = @CMSContextCurrentSiteID)
GROUP BY BannerID, BannerName, BannerCategoryName', 0, 799, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>False</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid></skinid><pagemode>1</pagemode></customdata>', 'ba43cce3-a82a-4828-815d-a0a6d474a62e', '20120323 11:13:55', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (624, N'table', N'Table', N'--DECLARE @FromDate DATETIME
--SET @FromDate = ''1/1/2011 12:00:00 AM''
--DECLARE @ToDate DATETIME
--SET @ToDate = ''1/1/2012 12:00:00 AM''
--DECLARE @CodeName NVARCHAR(60)
--SET @CodeName = ''bannerclick''
--DECLARE @CMSContextCurrentSiteID INT
--SET @CMSContextCurrentSiteID = 1
SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT BannerID AS ''{$banner.reports.bannerid$}'', BannerName AS ''{$banner.reports.bannername$}'', BannerCategoryName AS ''{$banner.reports.bannercategoryname$}'', SUM(HitsCount) AS ''{$banner.reports.numberofhits$}''
FROM Analytics_Statistics
INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
LEFT JOIN CMS_Banner ON Analytics_Statistics.StatisticsObjectID = CMS_Banner.BannerID
LEFT JOIN CMS_BannerCategory ON CMS_BannerCategory.BannerCategoryID = CMS_Banner.BannerCategoryID
WHERE (StatisticsCode = @CodeName)
AND (HitsStartTime >= @FromDate)
AND (HitsEndTime <= @ToDate)
AND (StatisticsObjectID = BannerID)
AND (StatisticsSiteID = @CMSContextCurrentSiteID)
GROUP BY BannerID, BannerName, BannerCategoryName', 0, 800, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>False</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid></skinid><pagemode>1</pagemode></customdata>', 'ebc40377-a079-4ec6-b28a-650bcc015312', '20120323 11:13:55', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (625, N'table', N'Table', N'DECLARE @FromDateTrimmed DATETIME;
DECLARE @ToDateTrimmed DATETIME;
DECLARE @ToDateCompare AS DATETIME;
SET @FromDateTrimmed = DATEADD(m, DATEDIFF(m, 0, CAST(@FromDate AS DATETIME)), 0);
SET @ToDateTrimmed = DATEADD(m, DATEDIFF(m, 0, CAST(@ToDate AS DATETIME)), 0);
SET @ToDateTrimmed = DATEADD(s, -31, @ToDateTrimmed);
SET @ToDateCompare = CAST(@ToDate AS DATETIME);
WITH daysseq AS
(
   SELECT @FromDateTrimmed AS DateValue
   UNION ALL
   SELECT DATEADD(m, 1, DateValue)
   FROM    daysseq   
   WHERE   DateValue < @ToDateTrimmed
)
SELECT CONVERT(CHAR(3), daysseq.DateValue, 101) + CONVERT(CHAR(4), daysseq.DateValue, 120), T3.clicks, T3.hits
FROM daysseq
LEFT JOIN
(
	SELECT T1.HitsStartTime, T2.hits, T1.clicks
	FROM
		(SELECT HitsStartTime, HitsCount AS clicks
		FROM Analytics_Statistics
		INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
		WHERE (Analytics_Statistics.StatisticsObjectID = @BannerID) 
			AND (@FromDateTrimmed IS NULL OR HitsStartTime >= @FromDateTrimmed)
			AND (@ToDateCompare IS NULL OR HitsStartTime <= @ToDateCompare)
			AND (StatisticsCode = ''bannerclick'')
		) AS T1
	INNER JOIN 
		(SELECT HitsStartTime, HitsCount AS hits
		FROM Analytics_Statistics
		INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
		WHERE (Analytics_Statistics.StatisticsObjectID = @BannerID) 
			AND (@FromDateTrimmed IS NULL OR HitsStartTime >= @FromDateTrimmed) 
			AND (@ToDateCompare IS NULL OR HitsStartTime <= @ToDateCompare) 
			AND (StatisticsCode = ''bannerhit'')
		) AS T2  
	ON T1.HitsStartTime = T2.HitsStartTime
 ) AS T3
ON daysseq.DateValue = HitsStartTime
OPTION (MAXRECURSION 0)', 0, 802, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid></skinid><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '60c48c5a-e705-42c8-a53e-e4474020d599', '20120323 11:13:55', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (626, N'hitsandclicks', N'Hits and clicks', N'IF @BannerCategoryID IS NULL
BEGIN
  SELECT ''{$bannermanagement.reportnotavailable.description$}'' AS ''{$bannermanagement.reportnotavailable.caption$}''
END
ELSE
BEGIN
SELECT BannerDisplayName AS ''{$banner.reports.bannername$}'',
	HitsCount AS ''{$banner.reports.numberofhits$}'',
	ClicksCount AS ''{$banner.reports.numberofclicks$}'',
	CASE HitsCount
		WHEN 0 THEN
			''N/A''
		ELSE
			CAST(CAST(ROUND(100.0 * ClicksCount / HitsCount, 2) AS NUMERIC(10,2)) AS VARCHAR) + ''%''
	END
		AS ''{$banner.reports.clickshitsratio$}''
FROM
	(SELECT BannerDisplayName,
		(SELECT ISNULL(SUM(AHHHits.HitsCount), 0) AS HitsCountInner
		FROM Analytics_Statistics AS AStats
		LEFT JOIN Analytics_HourHits AS AHHHits ON AStats.StatisticsID = AHHHits.HitsStatisticsID
		WHERE AStats.StatisticsCode = ''bannerhit''
			AND StatisticsObjectID = BannerID
			AND (@FromDate IS NULL OR AHHHits.HitsEndTime >= @FromDate)
			AND (@ToDate IS NULL OR AHHHits.HitsStartTime <= @ToDate)
		) AS HitsCount,
		(SELECT ISNULL(SUM(AHHClicks.HitsCount), 0) AS ClicksCountInner
		FROM Analytics_Statistics AS AStats
		LEFT JOIN Analytics_HourHits AS AHHClicks ON AStats.StatisticsID = AHHClicks.HitsStatisticsID
		WHERE AStats.StatisticsCode = ''bannerclick''
			AND StatisticsObjectID = BannerID
			AND (@FromDate IS NULL OR AHHClicks.HitsEndTime >= @FromDate)
			AND (@ToDate IS NULL OR AHHClicks.HitsStartTime <= @ToDate)
		) AS ClicksCount
	FROM CMS_Banner
	WHERE BannerCategoryID = @BannerCategoryID) AS THitsClicks
ORDER BY BannerDisplayName
END', 0, 803, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid></skinid><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', 'c327f4e4-cf95-4acb-bcc3-5713bd4e08f4', '20120323 11:13:55', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (633, N'table2', N'table2', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
DECLARE @MobileVisits INT;
DECLARE @Visits INT;
SET @MobileVisits = ISNULL((SELECT SUM(HitsCount)
  FROM Analytics_Statistics INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode= @CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)),0);
SET @Visits = ISNULL((SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode LIKE ''visit%'')
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)),0);
IF (@Visits != 0)
BEGIN
SELECT
 ''{$general.no$}'' AS ''{$reports_mobiledevice.ismobilevisit$}'',
 @Visits - @MobileVisits AS ''{$reports_mobiledevice.count_header$}'',
 CAST(CAST(100*CAST(@Visits-@MobileVisits AS float)/NULLIF(@Visits, 0) AS decimal(15,2)) AS VARCHAR) + ''%'' AS ''{$reports_flash.percent_header$}''
UNION ALL
SELECT
 ''{$general.yes$}'' AS ''{$reports_mobiledevice.ismobilevisit$}'', 
 @MobileVisits AS ''{$reports_mobiledevice.count_header$}'', 
 CAST(CAST(100*CAST(@MobileVisits AS float)/NULLIF(@Visits, 0) AS decimal(15,2)) AS VARCHAR) + ''%'' AS ''{$reports_flash.percent_header$}''
END', 0, 776, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid></skinid><querynorecordtext></querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>True</subscriptionenabled><pagesize>15</pagesize></customdata>', '1a75e7ce-f122-4d49-805a-8a78654cddb0', '20120418 09:15:22', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (639, N'table2', N'table2', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
DECLARE @MobileVisits INT;
DECLARE @Visits INT;
SET @MobileVisits = ISNULL((SELECT SUM(HitsCount)
  FROM Analytics_Statistics INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode= @CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)),0);
SET @Visits = ISNULL((SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode LIKE ''visit%'')
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)),0);
IF (@Visits != 0)
BEGIN
SELECT
 ''{$general.no$}'' AS ''{$reports_mobiledevice.ismobilevisit$}'',
 @Visits - @MobileVisits AS ''{$reports_mobiledevice.count_header$}'',
 CAST(CAST(100*CAST(@Visits-@MobileVisits AS float)/NULLIF(@Visits, 0) AS decimal(15,2)) AS VARCHAR) + ''%'' AS ''{$reports_flash.percent_header$}''
UNION ALL
SELECT
 ''{$general.yes$}'' AS ''{$reports_mobiledevice.ismobilevisit$}'', 
 @MobileVisits AS ''{$reports_mobiledevice.count_header$}'', 
 CAST(CAST(100*CAST(@MobileVisits AS float)/NULLIF(@Visits, 0) AS decimal(15,2)) AS VARCHAR) + ''%'' AS ''{$reports_flash.percent_header$}''
END', 0, 777, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><pagesize>15</pagesize><skinid></skinid></customdata>', 'e41c3e18-024d-48a0-bd3f-df04fbe34b0d', '20120418 09:16:37', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (640, N'table2', N'table2', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
DECLARE @MobileVisits INT;
DECLARE @Visits INT;
SET @MobileVisits = ISNULL((SELECT SUM(HitsCount)
  FROM Analytics_Statistics INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode= @CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)),0);
SET @Visits = ISNULL((SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode LIKE ''visit%'')
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)),0);
IF (@Visits != 0)
BEGIN
SELECT
 ''{$general.no$}'' AS ''{$reports_mobiledevice.ismobilevisit$}'',
 @Visits - @MobileVisits AS ''{$reports_mobiledevice.count_header$}'',
 CAST(CAST(100*CAST(@Visits-@MobileVisits AS float)/NULLIF(@Visits, 0) AS decimal(15,2)) AS VARCHAR) + ''%'' AS ''{$reports_flash.percent_header$}''
UNION ALL
SELECT
 ''{$general.yes$}'' AS ''{$reports_mobiledevice.ismobilevisit$}'', 
 @MobileVisits AS ''{$reports_mobiledevice.count_header$}'', 
 CAST(CAST(100*CAST(@MobileVisits AS float)/NULLIF(@Visits, 0) AS decimal(15,2)) AS VARCHAR) + ''%'' AS ''{$reports_flash.percent_header$}''
END', 0, 780, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><pagesize>15</pagesize><skinid></skinid></customdata>', '88a61fc1-aecd-4c91-9a03-d3f9e6f06767', '20120418 09:17:53', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (641, N'table2', N'table2', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
DECLARE @MobileVisits INT;
DECLARE @Visits INT;
SET @MobileVisits = ISNULL((SELECT SUM(HitsCount)
  FROM Analytics_Statistics INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode= @CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)),0);
SET @Visits = ISNULL((SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode LIKE ''visit%'')
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)),0);
IF (@Visits != 0)
BEGIN
SELECT
 ''{$general.no$}'' AS ''{$reports_mobiledevice.ismobilevisit$}'',
 @Visits - @MobileVisits AS ''{$reports_mobiledevice.count_header$}'',
 CAST(CAST(100*CAST(@Visits-@MobileVisits AS float)/NULLIF(@Visits, 0) AS decimal(15,2)) AS VARCHAR) + ''%'' AS ''{$reports_flash.percent_header$}''
UNION ALL
SELECT
 ''{$general.yes$}'' AS ''{$reports_mobiledevice.ismobilevisit$}'', 
 @MobileVisits AS ''{$reports_mobiledevice.count_header$}'', 
 CAST(CAST(100*CAST(@MobileVisits AS float)/NULLIF(@Visits, 0) AS decimal(15,2)) AS VARCHAR) + ''%'' AS ''{$reports_flash.percent_header$}''
END', 0, 778, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid></skinid><querynorecordtext></querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>True</subscriptionenabled><pagesize>15</pagesize></customdata>', '3352ad4c-2d32-48f9-9a15-a72c3d0928f9', '20120418 09:18:37', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (642, N'table2', N'table2', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
DECLARE @MobileVisits INT;
DECLARE @Visits INT;
SET @MobileVisits = ISNULL((SELECT SUM(HitsCount)
  FROM Analytics_Statistics INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode= @CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)),0);
SET @Visits = ISNULL((SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode LIKE ''visit%'')
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)),0);
IF (@Visits != 0)
BEGIN
SELECT
 ''{$general.no$}'' AS ''{$reports_mobiledevice.ismobilevisit$}'',
 @Visits - @MobileVisits AS ''{$reports_mobiledevice.count_header$}'',
 CAST(CAST(100*CAST(@Visits-@MobileVisits AS float)/NULLIF(@Visits,0) AS decimal(15,2)) AS VARCHAR) + ''%'' AS ''{$reports_flash.percent_header$}''
UNION ALL
SELECT
 ''{$general.yes$}'' AS ''{$reports_mobiledevice.ismobilevisit$}'', 
 @MobileVisits AS ''{$reports_mobiledevice.count_header$}'', 
 CAST(CAST(100*CAST(@MobileVisits AS float)/NULLIF(@Visits, 0) AS decimal(15,2)) AS VARCHAR) + ''%'' AS ''{$reports_flash.percent_header$}''
END', 0, 779, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid></skinid><querynorecordtext></querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>True</subscriptionenabled><pagesize>15</pagesize></customdata>', '9becc584-b9ac-4ce6-b480-825c0805e66b', '20120418 09:19:31', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (643, N'table', N'table', N'/* The table stores the prices of donations in the main currency. */ 
DECLARE @medianTable TABLE(
   SumOfOrderItemTotalPrice float)
   
/* Variables used to calculate median value */
DECLARE @BottomHalf float; 
DECLARE @TopHalf float; 
DECLARE @median float;
  
INSERT INTO @medianTable(
   SumOfOrderItemTotalPrice)
   SELECT 
      ISNULL(OrderItemTotalPriceInMainCurrency,0) AS Sums 
   FROM 
     COM_OrderItem 
     LEFT JOIN COM_Order 
        ON OrderID = OrderItemOrderID
     LEFT JOIN COM_SKU AS SKUs
        ON SKUID = OrderItemSKUID
   WHERE 
      OrderSiteID = @CMSContextCurrentSiteID 
      AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid, 0) = 1)
      AND SKUProductType = ''DONATION''
      AND (Orderdate >= @FromDate OR @FromDate IS NULL)
      AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
      
/* @BottomHalf and @TopHalf are middle numbers in value order, or in case of
   odd number of rows they are the same middle number. */                
SET @BottomHalf = (SELECT MAX(SumOfOrderItemTotalPrice) 
                   FROM (SELECT TOP 50 PERCENT SumOfOrderItemTotalPrice 
                         FROM @medianTable 
                         ORDER BY SumOfOrderItemTotalPrice) AS BottomHalf)
SET @TopHalf = (SELECT MIN(SumOfOrderItemTotalPrice) 
                FROM (SELECT TOP 50 PERCENT SumOfOrderItemTotalPrice 
                      FROM @medianTable 
                      ORDER BY SumOfOrderItemTotalPrice DESC) AS TopHalf)
SET @median = (@BottomHalf + @TopHalf)/2;
/* Selects average value of donations and median value of donations. */
SELECT 
   ''{$com.resource.averagedonationamount$}'' AS ''{$rep.webparrts.parametername$}'',
   CAST(ISNULL(AVG(SumOfOrderItemTotalPrice),0) AS DECIMAL(38,1)) AS ''{$com.report.averagevalue$}'',
   CAST(ISNULL(@median,0) AS DECIMAL(38,1)) AS ''{$com.report.medianvalue$}''
FROM 
   @medianTable', 0, 820, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize></customdata>', '21165ea0-95b5-499b-8c63-38a1249f18cb', '20120730 08:39:42', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (644, N'table', N'table', N'/* Variables used to calculate median value */
DECLARE @BottomHalf float
DECLARE @TopHalf float
DECLARE @median float
/* Table containing the numbers of items in orders. */
DECLARE @medianCountTable TABLE(
   SumOfOrderItemCount float
)
INSERT INTO @medianCountTable(
SumOfOrderItemCount)
   SELECT ISNULL(ROUND(ord.Average_,1),0) AS AVGs 
   FROM 
      COM_Order Orders 
      INNER JOIN (SELECT 
                     OrdeItem.OrderItemOrderID AS OrderItemOrderID,
                     Sum(OrderItemUnitCount) AS Average_ 
                  FROM COM_OrderItem OrdeItem 
                  GROUP BY OrderItemOrderId) ord 
      ON Orders.OrderID = ord.OrderItemOrderID 
   WHERE 
      Orders.OrderSiteID = @CMSContextCurrentSiteID 
      AND (Orders.Orderdate >= @FromDate OR @FromDate IS NULL)
      AND (Orders.OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
      AND (@IsPaid = 0 OR ISNULL(Orders.OrderIsPaid, 0) = 1)
SET @BottomHalf = (SELECT MAX(SumOfOrderItemCount) 
                   FROM (SELECT TOP 50 PERCENT SumOfOrderItemCount 
                         FROM @medianCountTable 
                         ORDER BY SumOfOrderItemCount) AS BottomHalf)
SET @TopHalf = (SELECT MIN(SumOfOrderItemCount) 
                FROM (SELECT TOP 50 PERCENT SumOfOrderItemCount 
                      FROM @medianCountTable 
                      ORDER BY SumOfOrderItemCount DESC) AS TopHalf)
SET @median = (@BottomHalf + @TopHalf)/2;   
        
/* Selects the average number of items per order and median value of the numbers of items per order */	
SELECT ''{$com.resource.OrderItemCount$}'' AS ''{$rep.webparrts.parametername$}'',
	CAST(ISNULL(AVG(SumOfOrderItemCount),0) AS DECIMAL(38,1)) AS ''{$com.report.averagevalue$}'',
	CAST(ISNULL(@median,0) AS DECIMAL(38,1)) AS ''{$com.report.medianvalue$}''
FROM @medianCountTable', 0, 821, N'<customdata><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><exportenabled>True</exportenabled><skinid>ReportGridAnalytics</skinid><pagesize>15</pagesize><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '3e93c19f-6811-4d78-b30c-24249d441e4b', '20120404 13:29:30', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (645, N'table', N'table', N'/* Variables used to calculate the median value. */
DECLARE @BottomHalf float
DECLARE @TopHalf float
DECLARE @median float
/* Table with the number of orders per customer. */
DECLARE @medianOrderTable TABLE(
   CustomerID int,
   SumOfOrder float)
   
INSERT INTO @medianOrderTable(
   CustomerID, 
   SumOfOrder)
      SELECT
         CustomerID AS ID,
         COUNT(OrderID) AS TotalCount
      FROM
         COM_Order
         LEFT JOIN COM_Customer
            ON OrderCustomerID = CustomerID
      WHERE 
         OrderSiteID = @CMSContextCurrentSiteID
         AND (OrderIsPaid = 1 OR @OnlyPaid = 0)
         AND (@FromDate IS NULL OR OrderDate >= @FromDate)
         AND (@ToDate IS NULL OR OrderDate <= DATEADD(day,1,@ToDate))
      GROUP BY CustomerID
SET @BottomHalf = (SELECT MAX(SumOfOrder) FROM (SELECT TOP 50 PERCENT SumOfOrder FROM @medianOrderTable ORDER BY SumOfOrder) AS BottomHalf)
SET @TopHalf = (SELECT MIN(SumOfOrder) FROM (SELECT TOP 50 PERCENT SumOfOrder FROM @medianOrderTable ORDER BY SumOfOrder DESC) AS TopHalf)
SET @median = (@BottomHalf + @TopHalf)/2
SELECT 
   ''{$com.report.averagecustomernumberoforders$}'' AS ''{$rep.webparrts.parametername$}'',
   CAST(ISNULL(AVG(SumOfOrder),0) AS DECIMAL(38,1)) AS ''{$com.report.averagevalue$}'',
   CAST(ISNULL(@median,0) AS decimal(38,1)) AS ''{$com.report.medianvalue$}''
FROM
   @medianOrderTable', 0, 822, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize><skinid>ReportGridAnalytics</skinid></customdata>', 'ac51249a-d988-4069-85da-1471e5ad64bc', '20120727 15:01:40', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (646, N'table', N'table', N'/* Variables used to calculate median value. */
DECLARE @BottomHalf float
DECLARE @TopHalf float
DECLARE @median float
/* Table of sales per customer. */
DECLARE @medianCustomerTable TABLE(
   CustomerID int,
   SumOfOrderTotalPrice float)
   
INSERT INTO @medianCustomerTable(
   CustomerID, 
   SumOfOrderTotalPrice)
      SELECT 
         CustomerID AS ID,
         SUM(OrderTotalPriceInMainCurrency) AS TotalSum
      FROM
         COM_Order
         LEFT JOIN COM_Customer 
            ON OrderCustomerID = CustomerID
      WHERE 
         OrderSiteID = @CMSContextCurrentSiteID
         AND (CustomerEnabled = 1 OR CustomerID IN (SELECT OrderCustomerID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
         AND (ISNULL(OrderIsPaid,0) = 1 OR @OnlyPaid = 0)
         AND (Orderdate >= @FromDate OR @FromDate IS NULL)
         AND (OrderDate <= DATEADD(day,1,@ToDate)  OR @ToDate IS NULL)
      GROUP BY CustomerID
      
SET @BottomHalf = (SELECT MAX(SumOfOrderTotalPrice) 
                   FROM (SELECT TOP 50 PERCENT SumOfOrderTotalPrice 
                         FROM @medianCustomerTable 
                         ORDER BY SumOfOrderTotalPrice) AS BottomHalf)
SET @TopHalf = (SELECT MIN(SumOfOrderTotalPrice) 
                FROM (SELECT TOP 50 PERCENT SumOfOrderTotalPrice 
                      FROM @medianCustomerTable 
                      ORDER BY SumOfOrderTotalPrice DESC) AS TopHalf)
SET @median = (@BottomHalf + @TopHalf)/2    
	
SELECT
   ''{$com.report.averagecustomervolumeofsales$}'' AS ''{$rep.webparrts.parametername$}'',
   CAST(ISNULL(AVG(SumOfOrderTotalPrice),0) AS DECIMAL(38,1)) AS ''{$com.report.averagevalue$}'',
   CAST(ISNULL(@median,0) AS DECIMAL(38,1)) AS ''{$com.report.medianvalue$}''
FROM
   @medianCustomerTable', 0, 823, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize></customdata>', '58bcae7a-95d4-4865-a936-66ec914b33b1', '20120727 14:17:19', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (647, N'table', N'table', N'/* Variables used to calculate median value. */
DECLARE @BottomHalf float
DECLARE @TopHalf float
DECLARE @median float
/* Table with the sales per order. */
DECLARE @medianPriceTable TABLE(
   SumOfOrderTotalPrice float
)
INSERT INTO @medianPriceTable(
   SumOfOrderTotalPrice)
      SELECT ISNULL(ROUND(OrderTotalPriceInMainCurrency,1),0) AS AVGs
      FROM Com_Order 
      WHERE 
         OrderSiteID = @CMSContextCurrentSiteID 
         AND (Orderdate >= @FromDate OR @FromDate IS NULL)
         AND (OrderDate <= DATEADD(day,1,@ToDate)  OR @ToDate IS NULL)
         AND (@IsPaid = 0 OR ISNULL(OrderIsPaid, 0) = 1)
         
SET @BottomHalf = (SELECT MAX(SumOfOrderTotalPrice) 
                   FROM (SELECT TOP 50 PERCENT SumOfOrderTotalPrice 
                         FROM @medianPriceTable 
                         ORDER BY SumOfOrderTotalPrice) AS BottomHalf)
SET @TopHalf = (SELECT MIN(SumOfOrderTotalPrice) 
                FROM (SELECT TOP 50 PERCENT SumOfOrderTotalPrice 
                      FROM @medianPriceTable 
                      ORDER BY SumOfOrderTotalPrice DESC) AS TopHalf)
SET @median = (@BottomHalf + @TopHalf)/2
SELECT 
   ''{$com.resource.OrderTotalPrice$}'' AS ''{$rep.webparrts.parametername$}'',
   CAST(ISNULL(AVG(SumOfOrderTotalPrice),0) AS DECIMAL(38,1)) AS ''Average value'',
   CAST(ISNULL(@median,0) AS DECIMAL(38,1)) AS ''Median value''
FROM @medianPriceTable', 0, 824, N'<customdata><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><exportenabled>True</exportenabled><skinid>ReportGridAnalytics</skinid><pagesize>15</pagesize><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', 'c2a93274-9328-45e9-b4ea-5b21bd227920', '20120404 14:05:36', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (648, N'table', N'table', N'-- trims the parameter @FromDate to be able to display weeks in the table
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
/* Selects the sum of donations donated in the given weeks. */
SELECT 
   CONVERT (NVARCHAR(2),DATEPART(wk,[Date]))+''/''+CONVERT (NVARCHAR(4),DATEPART(YEAR,[Date])) AS ''{$ecommerce.report_week$}'', 
   CAST(ROUND(SUM(ISNULL(OrderItemTotalPriceInMainCurrency,0)),1) AS DECIMAL(38,1)) AS ''{$com.report_donationamount$}'' 
FROM
   -- returns a column of dates - the first days of weeks
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'') AS Dates
   LEFT JOIN   
   (SELECT OrderItemTotalPriceInMainCurrency, OrderDate 
    FROM  
      COM_OrderItem    
      LEFT JOIN COM_Order
         ON OrderItemOrderID = OrderID        
      LEFT JOIN COM_SKU
         ON OrderItemSKUID = SKUID                
    WHERE (SKUProductType = ''DONATION'')   
       AND (OrderSiteID = @CMSContextCurrentSiteID)) AS OIs  
   ON ([Date] <= OrderDate  AND  DATEADD(WEEK,1,[Date]) > OrderDate) 
GROUP BY [Date]
ORDER BY [Date] DESC', 0, 825, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize></customdata>', '987bab65-f483-4e98-afc0-842f23679a73', '20120410 14:44:43', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (649, N'table', N'table', N'-- trims the parameter @FromDate to be able to display years in the table
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
/* Selects the sum of donations donated in the given years. */
SELECT 
   DATEPART(YEAR,[Date]) AS ''{$ecommerce.report_year$}'', 
   CAST(ROUND(SUM(ISNULL(OrderItemTotalPriceInMainCurrency,0)),1) AS DECIMAL(38,1)) AS ''{$com.report_donationamount$}'' 
FROM
-- returns a column of dates - the first days of years
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates
   LEFT JOIN   
   (SELECT OrderItemTotalPriceInMainCurrency, OrderDate 
    FROM  
      COM_OrderItem    
      LEFT JOIN COM_Order
         ON OrderItemOrderID = OrderID        
      LEFT JOIN COM_SKU
         ON OrderItemSKUID = SKUID
    WHERE 
       (SKUProductType = ''DONATION'')  
       AND (OrderSiteID = @CMSContextCurrentSiteID)) AS OIs  
    ON ([Date] <= OrderDate  AND  DATEADD(YEAR,1,[Date]) > OrderDate) 
GROUP BY [Date] 
ORDER BY [Date] DESC', 0, 826, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize></customdata>', '17bc5e7d-0807-4d0e-9b6d-6ed7f7310cff', '20120410 14:45:38', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (650, N'table', N'table', N'-- trims the parameter @FromDate to be able to display days in the table
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
/* Selects the sum of donations donated in the given day. */
SELECT 
   CAST(DATEPART(MONTH,[Date]) AS NVARCHAR(2)) +''/''+ DATENAME(DAY,[Date])+''/''+DATENAME(YEAR,[Date]) AS ''{$ecommerce.report_day$}'', 
   CAST(ROUND(SUM(ISNULL(OrderItemTotalPriceInMainCurrency,0)),1) AS DECIMAL(38,1)) AS ''{$com.report_donationamount$}'' 
FROM
   -- returns a column of dates, each day in the new row
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates
   LEFT JOIN      
   (SELECT OrderItemTotalPriceInMainCurrency, OrderDate 
    FROM  
      COM_OrderItem    
      LEFT JOIN COM_Order
         ON OrderItemOrderID = OrderID       
      LEFT JOIN COM_SKU
         ON OrderItemSKUID = SKUID
    WHERE (SKUProductType = ''DONATION'')  
      AND (OrderSiteID = @CMSContextCurrentSiteID)) AS OIs  
   ON ([Date] <= OrderDate  AND  DATEADD(DAY,1,[Date]) > OrderDate) 
GROUP BY [Date]
ORDER BY [Date] DESC', 0, 827, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><skinid>ReportGridAnalytics</skinid><pagesize>15</pagesize></customdata>', '2223fa21-d5cc-4de9-81ba-b101a98965f6', '20120410 14:46:34', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (651, N'table', N'table', N'-- trims the parameter @FromDate to be able to display hours in the table
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
/* Selects the sum of donations donated in the given hour. */
SELECT 
   [Date] AS ''{$ecommerce.report_hour$}'', 
   CAST(ROUND(SUM(ISNULL(OrderItemTotalPriceInMainCurrency,0)),1) AS DECIMAL(38,1)) AS ''{$com.report_donationamount$}'' 
FROM
   -- returns a column of dates - each hour in the new row
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates
   LEFT JOIN   
   (SELECT OrderItemTotalPriceInMainCurrency, OrderDate 
    FROM  
      COM_OrderItem    
      LEFT JOIN COM_Order
         ON OrderItemOrderID = OrderID        
      LEFT JOIN COM_SKU
         ON OrderItemSKUID = SKUID
   WHERE (SKUProductType = ''DONATION'')  
      AND (OrderSiteID = @CMSContextCurrentSiteID)) AS OIs  
  ON ([Date] <= OrderDate  AND  DATEADD(HOUR,1,[Date]) > OrderDate) 
GROUP BY [Date]
ORDER BY [Date] DESC', 0, 828, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><skinid>ReportGridAnalytics</skinid><pagesize>15</pagesize></customdata>', 'b8ba343a-f6c5-4b96-a4ea-b541f255941f', '20120410 14:47:29', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (652, N'table', N'table', N'-- trims the parameter @FromDate to be able to display months in the graph
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
/* Selects the sum of donations donated in the given month. */
SELECT 
   DATENAME(MONTH,[Date])+'', ''+ DATENAME(YEAR, [Date]) AS ''{$ecommerce.report_month$}'', 
   CAST(ROUND(SUM(ISNULL(OrderItemTotalPriceInMainCurrency,0)),1) AS DECIMAL(38,1)) AS ''{$com.report_donationamount$}'' 
FROM
   -- returns a column of dates - the first days of months
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates
   LEFT JOIN   
   (SELECT * 
    FROM  
       COM_OrderItem   
       LEFT JOIN COM_Order
          ON OrderItemOrderID = OrderID 
       LEFT JOIN COM_SKU
          ON OrderItemSKUID = SKUID
    WHERE (SKUProductType = ''DONATION'')   
      AND (OrderSiteID = @CMSContextCurrentSiteID)) AS OIs  
   ON ([Date] <= OrderDate  AND  DATEADD(MONTH,1,[Date]) > OrderDate) 
GROUP BY [Date]
ORDER BY [Date] DESC', 0, 829, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize></customdata>', 'b1959db8-3d24-445f-b637-6a0a9cbcc18e', '20120410 14:50:25', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (653, N'table', N'table', N'/* Selects the sum of donations from the different countries */
SELECT 
   ISNULL(CountryDisplayName,''-'') AS ''{$objecttype.cms_country$}'',
   CAST(ISNULL(SUM(OrderItemTotalPriceInMainCurrency),0) AS DECIMAL(38,1)) AS ''{$com.report_donationamount$}''
FROM 
   COM_OrderItem
   LEFT JOIN COM_Order
      ON OrderItemOrderID = OrderID
   LEFT JOIN COM_Address
      ON (OrderShippingAddressID = AddressID AND @Address = 2) OR (OrderBillingAddressID = AddressID AND @Address = 1)
   LEFT JOIN CMS_Country
      ON AddressCountryID = CountryID
   LEFT JOIN CMS_State
      ON AddressStateID = StateID
   LEFT JOIN COM_SKU
      ON SKUID = OrderItemSKUID                
WHERE 
   (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1)
   AND OrderSiteID = @CMSContextCurrentSiteID 
   AND (OrderitemLastModified >= @FromDate OR @FromDate IS NULL)
   AND (OrderitemLastModified <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
   AND (AddressEnabled = 1 OR 
       ((@Address = 2 AND AddressID IN (SELECT OrderShippingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
        OR (@Address = 1 AND AddressID IN (SELECT OrderBillingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))))
   AND SKUProductType = ''DONATION''
GROUP BY CountryDisplayName
ORDER BY 
   SUM(OrderItemTotalPriceInMainCurrency) DESC,
   CountryDisplayName', 0, 830, N'<customdata><enablepaging>True</enablepaging><pagemode>3</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>25</pagesize></customdata>', '6aaceeb9-27e2-469a-b2c4-2e454f2886b5', '20120730 08:35:53', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (654, N'table', N'table', N'/* Selects the sum of donations from the different states. */
SELECT 
   ISNULL(CountryDisplayName,''-'') AS ''{$objecttype.cms_country$}'',
   ISNULL(StateDisplayName,''-'') AS ''{$objecttype.cms_state$}'',
   CAST(ISNULL(SUM(OrderItemTotalPriceInMainCurrency),0) AS DECIMAL(38,1)) AS ''{$com.report_donationamount$}''
FROM 
   COM_OrderItem
   LEFT JOIN COM_Order
   ON OrderItemOrderID = OrderID
   LEFT JOIN COM_Address
   ON (OrderShippingAddressID = AddressID AND @Address = 2) OR (OrderBillingAddressID = AddressID AND @Address = 1)
   LEFT JOIN CMS_Country
   ON AddressCountryID = CountryID
   LEFT JOIN CMS_State
   ON AddressStateID = StateID
   LEFT JOIN COM_SKU
   ON SKUID = OrderItemSKUID             
WHERE 
   (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1) 
   AND OrderSiteID = @CMSContextCurrentSiteID 
   AND (OrderitemLastModified >= @FromDate OR @FromDate IS NULL)
   AND (OrderitemLastModified <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
   AND (AddressEnabled = 1 OR 
       ((@Address = 2 AND AddressID IN (SELECT OrderShippingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
        OR (@Address = 1 AND AddressID IN (SELECT OrderBillingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))))
   AND SKUProductType = ''DONATION''
GROUP BY 
   CountryDisplayName, 
   StateDisplayName
ORDER BY 
   SUM(OrderItemTotalPriceInMainCurrency) DESC,
   StateDisplayName,
   CountryDisplayName', 0, 831, N'<customdata><enablepaging>True</enablepaging><pagemode>3</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>25</pagesize></customdata>', 'f4d978c9-6e39-4364-b270-d84e4acfdb13', '20120730 08:37:05', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (655, N'table', N'table', N'/* Selects the sum of donations from the different ZIP codes. */
SELECT 
   ISNULL(CountryDisplayName,''-'') AS ''{$objecttype.cms_country$}'',
   ISNULL(StateDisplayName,''-'') AS ''{$objecttype.cms_state$}'',
   ISNULL(AddressZip,''-'') AS ''{$general.zip$}'',
   CAST(ISNULL(SUM(OrderItemTotalPriceInMainCurrency),0) AS DECIMAL(38,1)) AS ''{$com.report_donationamount$}''
FROM 
   COM_OrderItem
   LEFT JOIN COM_Order
      ON OrderItemOrderID = OrderID
   LEFT JOIN COM_Address
      ON (OrderShippingAddressID = AddressID AND @Address = 2) OR (OrderBillingAddressID = AddressID AND @Address = 1)
   LEFT JOIN CMS_Country
      ON AddressCountryID = CountryID
   LEFT JOIN CMS_State
      ON AddressStateID = StateID
   LEFT JOIN COM_SKU
      ON SKUID = OrderItemSKUID        
WHERE 
   (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1) 
   AND OrderSiteID = @CMSContextCurrentSiteID 
   AND (OrderitemLastModified >= @FromDate OR @FromDate IS NULL) 
   AND (OrderitemLastModified <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
   AND (AddressEnabled = 1 OR 
       ((@Address = 2 AND AddressID IN (SELECT OrderShippingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
        OR (@Address = 1 AND AddressID IN (SELECT OrderBillingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))))
   AND SKUProductType = ''DONATION''
GROUP BY 
   CountryDisplayName, 
   StateDisplayName, 
   AddressZip
ORDER BY 
   SUM(OrderItemTotalPriceInMainCurrency) DESC,
   AddressZip,
   StateDisplayName,
   CountryDisplayName', 0, 832, N'<customdata><pagesize>25</pagesize><subscriptionenabled>False</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><pagemode>3</pagemode><enablepaging>True</enablepaging><exportenabled>True</exportenabled></customdata>', '8eeed1fe-3d50-4b03-b220-f8adcde4b38e', '20120730 08:37:51', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (656, N'table', N'table', N'DECLARE @GlobalDiscount bit;
SET @GlobalDiscount = {%Settings.CMSStoreAllowGlobalDiscountLevels?1:0|(user)administrator|(hash)6a7340f7d9efbf652203abe6ca83df02058b6b7b1db2dc84855af230d8e27f74%};
SELECT 
   DiscountLevelDisplayName AS ''{$objecttype.com_discountlevel$}'',
   COUNT(CustomerID) AS ''{$com.discountlevelsreport.numberofcustomers$}''  
FROM
   (CMS_UserSite
   LEFT JOIN COM_Customer  
       ON CMS_UserSite.UserID = CustomerUserID
       AND CMS_UserSite.SiteID = @CMSContextCurrentSiteID
   LEFT JOIN CMS_User 
      ON CMS_UserSite.UserID = CMS_User.UserID
      AND UserEnabled = 1)
   RIGHT JOIN
      COM_DiscountLevel
      ON UserDiscountLevelID = DiscountLevelID
      OR CustomerDiscountLevelID = DiscountLevelID 
      AND CMS_UserSite.SiteID = @CMSContextCurrentSiteID
 WHERE 
    DiscountLevelEnabled = 1    
    AND (DiscountLevelSiteID = @CMSContextCurrentSiteID OR (@GlobalDiscount = 1 AND DiscountLevelSiteID IS NULL))
    AND (DiscountLevelValidTo > GETDATE() OR DiscountLevelValidTo IS NULL)
 GROUP BY 
    DiscountLevelID,
    DiscountLevelDisplayName', 0, 833, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize><skinid>ReportGridAnalytics</skinid></customdata>', '2913ba26-2e1b-4a0e-b70a-4991f27a49de', '20120808 09:45:16', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (657, N'table', N'table', N'/* Selects the number of orders from different countries. */
SELECT 
   ISNULL(CountryDisplayName,''-'') AS ''{$customerlist.country$}'',
   COUNT(OrderID) AS ''{$ecommerce.report_numberoforders$}''
FROM 
   COM_Order
   LEFT JOIN COM_Address
      ON (OrderShippingAddressID = AddressID AND @Address = 2) 
      OR (OrderBillingAddressID = AddressID AND @Address = 1)
   LEFT JOIN CMS_Country
      ON AddressCountryID = CountryID	
WHERE 
   (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1) 
   AND OrderSiteID = @CMSContextCurrentSiteID 
   AND (OrderDate >= @FromDate OR @FromDate IS NULL)
   AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
   AND (AddressEnabled = 1 OR 
       ((@Address = 2 AND AddressID IN (SELECT OrderShippingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
        OR (@Address = 1 AND AddressID IN (SELECT OrderBillingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))))
GROUP BY CountryDisplayName
ORDER BY 
   COUNT(OrderID) DESC,
   CountryDisplayName', 0, 834, N'<customdata><enablepaging>True</enablepaging><pagemode>3</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>25</pagesize></customdata>', 'ee486b28-062f-4bd1-b6eb-0648d75a48d8', '20120727 14:50:10', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (658, N'table', N'table', N'DECLARE @globalCurrency bit;
SET @globalCurrency = {%Settings.CMSStoreUseGlobalCurrencies?1:0|(user)administrator|(hash)007e1843a00d816220cda582c9886336e60f7f9303951d0f3164fce11bb487d8%};
/* Selects the number of orders in the given currencies. */
SELECT 
   CurrencyCode AS ''{$unigrid.currency.columns.currencycode$}'',
   CurrencyDisplayName AS ''{$unigrid.currency.columns.currencydisplayname$}'',
   COUNT(OrderID) AS ''{$ecommerce.report_numberoforders$}''
FROM 
   COM_Currency
   LEFT JOIN COM_Order
      ON CurrencyID = OrderCurrencyID 
      AND (OrderDate >= @FromDate OR @FromDate IS NULL) 
      AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL) 
      AND OrderSiteID = @CMSContextCurrentSiteID 
      AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid, 0) = 1)
WHERE 
   (CurrencyEnabled = 1 OR CurrencyID IN (SELECT OrderCurrencyID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
   AND CurrencyID IS NOT NULL
   AND ((@globalCurrency = 1 AND CurrencySiteID IS NULL)OR(@globalCurrency = 0 AND CurrencySiteID = @CMSContextCurrentSiteID))   
GROUP BY 
   CurrencyCode, 
   CurrencyDisplayName
ORDER BY 
   COUNT(OrderID) DESC,
   CurrencyCode, 
   CurrencyDisplayName', 0, 835, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize></customdata>', '896266e2-9736-4c0e-855f-8ad4ba7343ad', '20120727 14:54:40', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (659, N'table', N'table', N'/* Selects the number of anonymous customers. */
(SELECT  
    ''{$com.orderscreatedbyreport.anonymouscustomers$}'' AS ''{$com.report.customertype$}'',
    COUNT(OrderID)  AS ''{$ecommerce.report_numberoforders$}''    
 FROM COM_Order 
 WHERE 
    (OrderCreatedByUserID = 0 OR OrderCreatedByUserID IS NULL)
    AND (@DateFrom IS NULL OR (OrderDate >= @DateFrom)) 
    AND (@DateTo IS NULL OR (OrderDate <= DATEADD(day,1,@DateTo)))
    AND (ISNULL(OrderIsPaid, 0) = 1 OR @IsPaid = 0)
    AND OrderSiteID = @CMSContextCurrentSiteID)
    
UNION
/* Selects the number of registered customers. */
(SELECT  
    ''{$com.orderscreatedbyreport.registeredcustomers$}''AS ''{$com.report.customertype$}'',
    COUNT(OrderID) AS ''{$ecommerce.report_numberoforders$}''    
 FROM COM_Order
 WHERE 
    (OrderCreatedByUserID > 0)
    AND (@DateFrom IS NULL OR (OrderDate >= @DateFrom))
    AND (@DateTo IS NULL OR (OrderDate <= DATEADD(day,1,@DateTo)))
    AND (ISNULL(OrderIsPaid, 0) = 1 OR @IsPaid = 0)
    AND OrderSiteID = @CMSContextCurrentSiteID)
ORDER BY COUNT(OrderID) DESC', 0, 836, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize></customdata>', 'ed96b37f-8d66-42e6-ad82-f6f2996b6ff8', '20120716 09:47:58', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (660, N'table', N'table', N'/* Variable determines whether global payment methods should be displayed */
DECLARE @GlobalOptions bit;
SET @GlobalOptions = {%Settings.CMSStoreAllowGlobalPaymentMethods?1:0|(user)administrator|(hash)fd386cbde2e7a714ffbe569d1034779e4dce8b706e7e9795e7410a7502eac302%}; 
SELECT
   PaymentOptionDisplayName  AS ''{$paymentoption_edit.itemlistlink$}'',
   ISNULL(COUNT(OrderID),0) AS ''{$ecommerce.report_numberoforders$}'' 
FROM
   COM_PaymentOption AS Options 
   LEFT JOIN COM_Order AS Orders 
   ON OrderPaymentOptionID = PaymentOptionID 
   AND OrderSiteID = @CMSContextCurrentSiteID 
   AND (@FromDate IS NULL OR (OrderDate >= @FromDate)) 
   AND (@ToDate IS NULL OR (OrderDate <= DATEADD(day,1,@ToDate))) 
   AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1) 
WHERE 
   (PaymentOptionSiteID = @CMSContextCurrentSiteID OR (@GlobalOptions = 1 AND PaymentOptionSiteID IS NULL)) 
   AND (PaymentOptionEnabled = 1 OR PaymentOptionID IN (SELECT OrderPaymentOptionID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
GROUP BY PaymentOptionDisplayName
ORDER BY 
   COUNT(OrderID) DESC,
   PaymentOptionDisplayName', 0, 837, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize><skinid>ReportGridAnalytics</skinid></customdata>', 'b1bf7924-0d88-4248-9abf-a61005d07895', '20120727 14:35:17', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (661, N'table', N'table', N'DECLARE @GlobalOptions bit;
SET @GlobalOptions = {%Settings.CMSStoreAllowGlobalShippingOptions?1:0|(user)administrator|(hash)e2abbac8f02a345f35409140e0aead3d38855e918fe2337533e5c7660e28a246%}; 
SELECT
   ShippingOptionDisplayName  AS ''{$objecttype.com_shippingoption$}'',
   ISNULL(COUNT(OrderID),0) AS ''{$ecommerce.report_numberoforders$}''
FROM
   COM_ShippingOption 
   LEFT JOIN COM_Order 
      ON OrderShippingOptionID = ShippingOptionID AND OrderSiteID = @CMSContextCurrentSiteID 
      AND (@FromDate IS NULL OR (OrderDate >= @FromDate)) 
      AND (@ToDate IS NULL OR (OrderDate <= DATEADD(day,1,@ToDate)))   
      AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1)
WHERE 
   (ShippingOptionSiteID = @CMSContextCurrentSiteID OR (@GlobalOptions = 1 AND ShippingOptionSiteID IS NULL)) 
   AND (ShippingOptionEnabled = 1 OR ShippingOptionID IN (SELECT OrderShippingOptionID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
GROUP BY ShippingOptionDisplayName
ORDER BY 
   COUNT(OrderID) DESC,
   ShippingOptionDisplayName', 0, 838, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize></customdata>', 'dbe760e1-787a-48f7-8adc-82a3e89221b2', '20120727 14:39:11', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (662, N'table', N'table', N'SELECT 
   ISNULL(CountryDisplayName,''-'') AS ''{$customerlist.country$}'',
   ISNULL(StateDisplayName,''-'') AS ''{$customerlist.state$}'',
   COUNT(OrderID) AS ''{$ecommerce.report_numberoforders$}''
FROM 
   COM_Order
   LEFT JOIN COM_Address
      ON (OrderShippingAddressID = AddressID AND @Address = 2) 
        OR (OrderBillingAddressID = AddressID AND @Address = 1)
   LEFT JOIN CMS_Country
      ON AddressCountryID = CountryID
   LEFT JOIN CMS_State
      ON AddressStateID = StateID
WHERE 
   (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1)
   AND OrderSiteID = @CMSContextCurrentSiteID 
   AND (OrderDate >= @FromDate OR @FromDate IS NULL)
   AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
   AND (AddressEnabled = 1 OR 
       ((@Address = 2 AND AddressID IN (SELECT OrderShippingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
        OR (@Address = 1 AND AddressID IN (SELECT OrderBillingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))))
GROUP BY 
   CountryDisplayName, 
   StateDisplayName
ORDER BY 
   COUNT(OrderID) DESC,
   StateDisplayName,
   CountryDisplayName', 0, 839, N'<customdata><enablepaging>True</enablepaging><pagemode>3</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>25</pagesize></customdata>', '47e2543e-b8fb-44cc-87c2-6104f59f79a0', '20120727 14:51:08', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (663, N'table', N'table', N'DECLARE @GlobalStatus bit;
SET @GlobalStatus = {%Settings.CMSStoreUseGlobalOrderStatus?1:0|(user)administrator|(hash)922942c5b9e26b98fe01d74f216f6fbff002e05d8e3db8109c51b3c8ed6747ac%}; 
SELECT 
   StatusDisplayName AS ''{$com.report.orderstatus$}'',
   COUNT(OrderID) AS ''{$ecommerce.report_numberoforders$}''   
FROM 
   COM_OrderStatus 
   LEFT JOIN COM_Order 
      ON OrderStatusID = StatusID 
      AND OrderSiteID = @CMSContextCurrentSiteID 
      AND (OrderDate >= @FromDate OR @FromDate IS NULL) 
      AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL) 
WHERE 
   (StatusEnabled = 1 OR StatusID IN (SELECT OrderStatusID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
   AND ((StatusSiteID = @CMSContextCurrentSiteID AND @GlobalStatus = 0)  
        OR (StatusSiteID IS NULL AND @GlobalStatus = 1))
GROUP BY 
   StatusDisplayName, 
   StatusOrder 
ORDER BY StatusOrder', 0, 840, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize></customdata>', 'f5cd02d6-ff31-4ff8-a26b-0cf454082ef9', '20120727 14:23:13', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (664, N'table', N'table', N'SELECT
   ISNULL(CountryDisplayName,''-'') AS ''{$customerlist.country$}'',
   ISNULL(StateDisplayName,''-'') AS ''{$customerlist.state$}'',
   ISNULL(AddressZip,''-'') AS ''{$general.zip$}'',
   ISNULL(COUNT(OrderID),0)  AS ''{$ecommerce.report_numberoforders$}''
FROM 
   COM_Order
   LEFT JOIN COM_Address
      ON (OrderShippingAddressID = AddressID AND @Address = 2) 
      OR (OrderBillingAddressID = AddressID AND @Address = 1)
   LEFT JOIN CMS_Country
      ON AddressCountryID = CountryID
   LEFT JOIN CMS_State
      ON AddressStateID = StateID
WHERE 
   (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1) 
   AND OrderSiteID = @CMSContextCurrentSiteID
   AND (OrderDate >= @FromDate OR @FromDate IS NULL)
   AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
   AND (AddressEnabled = 1 OR 
       ((@Address = 2 AND AddressID IN (SELECT OrderShippingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
        OR (@Address = 1 AND AddressID IN (SELECT OrderBillingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))))
GROUP BY 
   CountryDisplayName, 
   StateDisplayName, 
   AddressZip
ORDER BY 
   COUNT(OrderID) DESC,
   AddressZip,
   StateDisplayName,
   CountryDisplayName', 0, 841, N'<customdata><enablepaging>True</enablepaging><pagemode>3</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>25</pagesize></customdata>', '07c9a098-9a64-4c95-ae1f-76df428bfb18', '20120727 14:51:50', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (665, N'table', N'table', N'/* Changes in the query should be reflected both in the SELECT and @totalsum variable */ 
DECLARE @totalsum float;
SET @totalsum = (SELECT
                    ISNULL(SUM(OrderTotalPriceInMainCurrency),0)
                 FROM 
                    COM_Order
                    LEFT JOIN COM_Address
                       ON (OrderShippingAddressID = AddressID AND @Address = 2) 
                       OR (OrderBillingAddressID = AddressID AND @Address = 1)
                    LEFT JOIN CMS_Country
                       ON AddressCountryID = CountryID	
                 WHERE 
                    (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1) 
                    AND OrderSiteID = @CMSContextCurrentSiteID 
                    AND (OrderDate >= @FromDate OR @FromDate IS NULL)
                    AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
                    AND (AddressEnabled = 1 OR 
                      ((@Address = 2 AND AddressID IN (SELECT OrderShippingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
                      OR (@Address = 1 AND AddressID IN (SELECT OrderBillingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID)))));
SELECT 
   ISNULL(CountryDisplayName,''-'') AS ''{$customerlist.country$}'',
   ISNULL(CAST(ROUND(SUM(OrderTotalPriceInMainCurrency),1) AS DECIMAL(38,1)),0) AS ''{$com.sales.volumeofsales$}'',
   CAST(ISNULL(CASE WHEN @totalsum != 0 
                    THEN CAST(ROUND(SUM(OrderTotalPriceInMainCurrency),1)/@totalsum*100 AS DECIMAL(38,1)) 
                    ELSE 0 
                    END,0) AS VARCHAR(20)) + '' %'' AS ''{$reports_pageviews.percent_header$}''
FROM 
   COM_Order
   LEFT JOIN COM_Address
      ON (OrderShippingAddressID = AddressID AND @Address = 2) 
      OR (OrderBillingAddressID = AddressID AND @Address = 1)
   LEFT JOIN CMS_Country
      ON AddressCountryID = CountryID
WHERE 
   (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1) 
   AND OrderSiteID = @CMSContextCurrentSiteID 
   AND (OrderDate >= @FromDate OR @FromDate IS NULL)
   AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
   AND (AddressEnabled = 1 OR 
       ((@Address = 2 AND AddressID IN (SELECT OrderShippingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
        OR (@Address = 1 AND AddressID IN (SELECT OrderBillingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))))
GROUP BY CountryDisplayName
ORDER BY 
   SUM(OrderTotalPriceInMainCurrency) DESC,
   CountryDisplayName', 0, 842, N'<customdata><enablepaging>True</enablepaging><pagemode>3</pagemode><exportenabled>True</exportenabled><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><pagesize>25</pagesize><skinid>ReportGridAnalytics</skinid></customdata>', '29ae191f-c42f-41e5-a448-7b4d1778ae84', '20120727 13:56:30', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (666, N'table', N'table', N'DECLARE @globalCurrency bit;
SET @globalCurrency = {%Settings.CMSStoreUseGlobalCurrencies?1:0|(user)administrator|(hash)007e1843a00d816220cda582c9886336e60f7f9303951d0f3164fce11bb487d8%};
DECLARE @totalsum float;
SET @totalsum = (SELECT SUM(OrderTotalPriceInMainCurrency) 
                 FROM 
                    COM_Currency
                    LEFT JOIN COM_Order
                       ON CurrencyID = OrderCurrencyID 
                       AND (OrderDate >= @FromDate OR @FromDate IS NULL)
                       AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL) 
                       AND OrderSiteID = @CMSContextCurrentSiteID 
                       AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid, 0) = 1)
                    WHERE  
                       (CurrencyEnabled = 1 OR CurrencyID IN (SELECT OrderCurrencyID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
                       AND ((@globalCurrency = 1 AND CurrencySiteID IS NULL) OR (@globalCurrency = 0 AND CurrencySiteID = @CMSContextCurrentSiteID)))
SELECT 
   CurrencyCode AS ''{$unigrid.currency.columns.currencycode$}'',
   CurrencyDisplayName AS ''{$unigrid.currency.columns.currencydisplayname$}'',
   CAST(ISNULL(ROUND(SUM(OrderTotalPrice),1),0) AS decimal(38,1)) AS ''{$com.sales.volumeofsales$}'',
   CAST(ISNULL(ROUND(SUM(OrderTotalPriceInMainCurrency),1),0) AS DECIMAL(38,1)) AS ''{$com.sales.volumeofsalesinmaincurrency$}'',
   CAST((CASE WHEN @totalsum != 0 
              THEN CAST(ROUND(ISNULL(SUM(OrderTotalPriceInMainCurrency),0),1)/@totalsum*100 AS DECIMAL(38,1)) 
              ELSE 0 END) AS VARCHAR(20))+'' %'' AS ''{$reports_pageviews.percent_header$}''
FROM 
   COM_Currency
   LEFT JOIN COM_Order
      ON CurrencyID = OrderCurrencyID 
      AND (OrderDate >= @FromDate OR @FromDate IS NULL) 
      AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL) 
      AND OrderSiteID = @CMSContextCurrentSiteID 
      AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid, 0) = 1)
WHERE 
   (CurrencyEnabled = 1 OR CurrencyID IN (SELECT OrderCurrencyID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
   AND ((@globalCurrency = 1 AND CurrencySiteID IS NULL)OR(@globalCurrency = 0 AND CurrencySiteID = @CMSContextCurrentSiteID))
GROUP BY 
   CurrencyDisplayName, 
   CurrencyCode
ORDER BY 
   SUM(OrderTotalPriceInMainCurrency) DESC,
   CurrencyCode,
   CurrencyDisplayName', 0, 843, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize><skinid>ReportGridAnalytics</skinid></customdata>', 'a57193a7-54ad-48d8-ba10-8860772077b9', '20120727 14:13:21', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (668, N'table', N'table', N'-- Changes must by reflected in both final select and @totalsum variable
DECLARE @AllowGlobalDepartments bit;
SET @AllowGlobalDepartments = {%Settings.CMSStoreAllowGlobalDepartments?1:0|(user)administrator|(hash)a9dfdfedce2b5aff7a6827b023433bf83dc9544031ae241844bb05a38c1d61bd%};
DECLARE @totalsum float;
SET @totalsum = 
   (SELECT
      ISNULL(ROUND(SUM(OrderItems.OrderItemTotalPriceInMainCurrency),1),0)
    FROM
       COM_Department AS Departments
       LEFT JOIN 
       COM_SKU AS SKUs
       ON Departments.DepartmentID = SKUs.SKUDepartmentID
       LEFT JOIN 
       (SELECT OrderItemTotalPriceInMainCurrency, OrderItemSKUID
        FROM COM_OrderItem, COM_Order
        WHERE
           OrderID = OrderItemOrderID AND @CMSContextCurrentSiteID = OrderSiteID
           AND (OrderDate < DATEADD(day,1,@ToDate) OR @ToDate IS NULL) 
           AND (OrderDate >= @FromDate OR @FromDate IS NULL)
           AND (ISNULL(OrderIsPaid,0)=1 OR @OrderIsPaid = 0)) AS OrderItems
	ON SKUs.SKUID = OrderItems.OrderItemSKUID
WHERE 
(Departments.DepartmentSiteID = @CMSContextCurrentSiteID OR (@AllowGlobalDepartments = 1 AND Departments.DepartmentSiteID IS NULL))
AND SKUs.SKUOptionCategoryID IS NULL);
SELECT
   Departments.DepartmentDisplayName AS ''{$objecttype.com_department$}'',
   CAST(ISNULL(ROUND(SUM(OrderItems.OrderItemTotalPriceInMainCurrency),1),0) AS decimal(38,1)) AS ''{$com.sales.volumeofsales$}'',  
   CAST(CAST(ISNULL(CASE WHEN @totalsum != 0 THEN ROUND(SUM(OrderItems.OrderItemTotalPriceInMainCurrency),1)/@totalsum*100 ELSE 0 END,0) AS decimal(9,1)) AS VARCHAR(20)) + '' %'' AS ''{$reports_pageviews.percent_header$}''
FROM
   COM_Department AS Departments
   LEFT JOIN 
   COM_SKU AS SKUs
	ON Departments.DepartmentID = SKUs.SKUDepartmentID
   LEFT JOIN 
   (SELECT OrderItemTotalPriceInMainCurrency, OrderItemSKUID 
    FROM COM_OrderItem, COM_Order 
    WHERE
       OrderID = OrderItemOrderID AND @CMSContextCurrentSiteID = OrderSiteID
       AND (OrderDate < DATEADD(day,1,@ToDate) OR @ToDate IS NULL) 
       AND (OrderDate >= @FromDate OR @FromDate IS NULL) 
       AND (ISNULL(OrderIsPaid,0)=1 OR @OrderIsPaid = 0)) AS OrderItems
	ON SKUs.SKUID = OrderItems.OrderItemSKUID
WHERE 
(Departments.DepartmentSiteID = @CMSContextCurrentSiteID OR (@AllowGlobalDepartments = 1 AND Departments.DepartmentSiteID IS NULL))
AND SKUs.SKUOptionCategoryID IS NULL
GROUP BY Departments.DepartmentDisplayName  
ORDER BY SUM(OrderItems.OrderItemTotalPriceInMainCurrency) DESC, DepartmentDisplayName', 0, 844, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize><skinid>ReportGridAnalytics</skinid></customdata>', '414b0105-2636-4b3f-9376-576b5bcd1f68', '20120720 12:33:51', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (670, N'table', N'table', N'-- Changes must by reflected in both final select and @totalsum variable
DECLARE @AllowGlobal bit;
SET @AllowGlobal = {%Settings.CMSStoreAllowGlobalManufacturers?1:0|(user)administrator|(hash)b7c2787c6802c0e8dc09394472b2efeea5da631c05445938b7ab582612f0442e%};
DECLARE @totalsum float;
SET @totalsum = (
SELECT
   ISNULL(ROUND(SUM(OrderItems.OrderItemTotalPriceInMainCurrency),1),0)
FROM
   COM_Manufacturer AS Manufacturers
   LEFT JOIN 
   COM_SKU AS SKUs
	ON Manufacturers.ManufacturerID = SKUs.SKUManufacturerID
   LEFT JOIN 
   (SELECT OrderItemTotalPriceInMainCurrency, OrderItemSKUID 
   FROM COM_OrderItem, COM_Order 
   WHERE
      OrderID = OrderItemOrderID AND @CMSContextCurrentSiteID = OrderSiteID 
      AND (OrderDate < dateadd(day,1,@ToDate) OR @ToDate IS NULL) 
      AND (OrderDate >= @FromDate OR @FromDate IS NULL) 
      AND (ISNULL(OrderIsPaid,0)=1 OR @OrderIsPaid = 0)) AS OrderItems
       ON SKUs.SKUID = OrderItems.OrderItemSKUID
WHERE 
  (Manufacturers.ManufacturerEnabled = 1 OR 
      (Manufacturers.ManufacturerID IN (SELECT SKUManufacturerID FROM COM_SKU WHERE SKUID IN 
          (SELECT OrderItemSKUID FROM COM_OrderItem WHERE OrderItemOrderID IN 
              (SELECT OrderID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID)))))
  AND SKUs.SKUOptionCategoryID IS NULL
  AND (Manufacturers.ManufacturerSiteID = @CMSContextCurrentSiteID OR (@AllowGlobal = 1 AND Manufacturers.ManufacturerSiteID IS NULL))
);
SELECT
   Manufacturers.ManufacturerDisplayName AS ''{$objecttype.com_manufacturer$}'',
   CAST(ISNULL(ROUND(SUM(OrderItems.OrderItemTotalPriceInMainCurrency),1),0) AS decimal(38,1)) AS ''{$com.sales.volumeofsales$}'',  
   CAST(CAST(ISNULL(CASE WHEN @totalsum != 0 THEN ROUND(SUM(OrderItems.OrderItemTotalPriceInMainCurrency),1)/@totalsum*100 ELSE 0 END,0) AS decimal(9,1)) AS VARCHAR(20)) + '' %'' AS ''{$reports_pageviews.percent_header$}''
FROM
   COM_Manufacturer AS Manufacturers
   LEFT JOIN 
   COM_SKU AS SKUs
	ON Manufacturers.ManufacturerID = SKUs.SKUManufacturerID
   LEFT JOIN 
   (SELECT OrderItemTotalPriceInMainCurrency, OrderItemSKUID 
    FROM COM_OrderItem, COM_Order 
    WHERE
       OrderID = OrderItemOrderID AND @CMSContextCurrentSiteID = OrderSiteID 
       AND (OrderDate < dateadd(day,1,@ToDate) OR @ToDate IS NULL) 
       AND (OrderDate >= @FromDate OR @FromDate IS NULL) 
       AND (ISNULL(OrderIsPaid,0)=1 OR @OrderIsPaid = 0)) AS OrderItems
	ON SKUs.SKUID = OrderItems.OrderItemSKUID
WHERE 
  (ManufacturerEnabled = 1 OR 
      (Manufacturers.ManufacturerID IN (SELECT SKUManufacturerID FROM COM_SKU WHERE SKUID IN 
          (SELECT OrderItemSKUID FROM COM_OrderItem WHERE OrderItemOrderID IN 
              (SELECT OrderID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID)))))
  AND SKUs.SKUOptionCategoryID IS NULL
  AND (Manufacturers.ManufacturerSiteID = @CMSContextCurrentSiteID OR (@AllowGlobal = 1 AND Manufacturers.ManufacturerSiteID IS NULL))
GROUP BY Manufacturers.ManufacturerDisplayName  
ORDER BY SUM(OrderItems.OrderItemTotalPriceInMainCurrency) DESC, ManufacturerDisplayName', 0, 845, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize><skinid>ReportGridAnalytics</skinid></customdata>', '1d339746-8ca6-4ea8-84b4-668868688493', '20120726 15:14:26', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (671, N'table', N'table', N'DECLARE @GlobalObjects bit;
SET @GlobalObjects = {%Settings.CMSStoreUseGlobalOrderStatus?1:0|(user)administrator|(hash)922942c5b9e26b98fe01d74f216f6fbff002e05d8e3db8109c51b3c8ed6747ac%};
                      
DECLARE @totalsum float;
SET @totalsum = (SELECT ROUND(SUM(OrderTotalPriceInMainCurrency),1) 
                 FROM COM_Order, COM_OrderStatus 
                 WHERE 
                    OrderSiteID = @CMSContextCurrentSiteID 
                    AND OrderStatusID = StatusID
                    AND ((StatusSiteID IS NULL AND @GlobalObjects = 1) OR (StatusSiteID = @CMSContextCurrentSiteID AND @GlobalObjects = 0))
                    AND (OrderDate >= @FromDate OR @FromDate IS NULL) 
                    AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL))
SELECT 
   StatusDisplayName AS ''{$com.report.orderstatus$}'',
   CAST(ISNULL(ROUND(SUM(OrderTotalPriceInMainCurrency),1),0) AS DECIMAL(38,1)) AS ''{$com.sales.volumeofsales$}'',
   CAST(CAST(ISNULL(CASE WHEN @totalsum != 0 
                         THEN ROUND(SUM(OrderTotalPriceInMainCurrency),1)/@totalsum*100  
                         ELSE 0 END,0) AS DECIMAL(38,1)) AS VARCHAR(20)) + '' %'' AS ''{$reports_pageviews.percent_header$}''
FROM 
   COM_OrderStatus 
   LEFT JOIN COM_Order 
      ON OrderStatusID = StatusID 
      AND OrderSiteID = @CMSContextCurrentSiteID 
      AND (OrderDate >= @FromDate OR @FromDate IS NULL) 
      AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL) 
WHERE 
   (StatusEnabled = 1 OR StatusID IN (SELECT OrderStatusID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
   AND ((StatusSiteID IS NULL AND @GlobalObjects = 1) OR (StatusSiteID = @CMSContextCurrentSiteID AND @GlobalObjects = 0))
GROUP BY 
   StatusDisplayName, 
   StatusOrder
ORDER BY StatusOrder', 0, 846, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize></customdata>', '2cd55af9-a297-4324-bf1f-861e8c11d6b6', '20120727 13:19:59', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (672, N'table', N'table', N'DECLARE @totalsum float
SET @totalsum =(SELECT 
                   ISNULL(ROUND(SUM(OrderTotalPriceInMainCurrency),1),0)
                FROM 
                   COM_Order
                   LEFT JOIN COM_Address
                      ON (OrderShippingAddressID = AddressID AND @Address = 2) 
                      OR (OrderBillingAddressID = AddressID AND @Address = 1)
                   LEFT JOIN CMS_Country
                      ON AddressCountryID = CountryID
                   LEFT JOIN CMS_State
                      ON AddressStateID = StateID
                WHERE 
                   (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1)
                   AND OrderSiteID = @CMSContextCurrentSiteID
                   AND (OrderDate >= @FromDate OR @FromDate IS NULL)
                   AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
                   AND (AddressEnabled = 1 OR 
                      ((@Address = 2 AND AddressID IN (SELECT OrderShippingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
                      OR (@Address = 1 AND AddressID IN (SELECT OrderBillingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID)))));
SELECT 
   ISNULL(CountryDisplayName,''-'') AS ''{$objecttype.cms_country$}'',
   ISNULL(StateDisplayName,''-'') AS ''{$objecttype.cms_state$}'',
   CAST(ISNULL(ROUND(SUM(OrderTotalPriceInMainCurrency),1),0) AS DECIMAL(38,1)) AS ''{$com.sales.volumeofsales$}'',
   CAST(CAST(ISNULL(CASE WHEN @totalsum != 0 
                         THEN ROUND(SUM(OrderTotalPriceInMainCurrency),1)/@totalsum*100 
                         ELSE 0 END,0) AS DECIMAL(9,1)) AS VARCHAR(20)) + '' %'' AS ''{$reports_pageviews.percent_header$}''
FROM 
   COM_Order
   LEFT JOIN COM_Address
   ON (OrderShippingAddressID = AddressID AND @Address = 2) 
   OR (OrderBillingAddressID = AddressID AND @Address = 1)
   LEFT JOIN CMS_Country
   ON AddressCountryID = CountryID
   LEFT JOIN CMS_State
   ON AddressStateID = StateID
WHERE 
   (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1)
   AND OrderSiteID = @CMSContextCurrentSiteID
   AND (OrderDate >= @FromDate OR @FromDate IS NULL)
   AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
   AND (AddressEnabled = 1 OR 
                      ((@Address = 2 AND AddressID IN (SELECT OrderShippingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
                      OR (@Address = 1 AND AddressID IN (SELECT OrderBillingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))))
GROUP BY 
   CountryDisplayName, 
   StateDisplayName
ORDER BY 
   SUM(OrderTotalPriceInMainCurrency) DESC,
   StateDisplayName,
   CountryDisplayName', 0, 847, N'<customdata><enablepaging>True</enablepaging><pagemode>3</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>25</pagesize></customdata>', '2618772c-5d51-417b-b9b1-be04f6f8c582', '20120727 14:03:16', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (673, N'table', N'table', N'DECLARE @totalsum float;
SET @totalsum = (SELECT ROUND(SUM(OrderTotalPriceInMainCurrency),1) 
                 FROM 
                    COM_Order 
                    LEFT JOIN COM_Address
                    ON (OrderShippingAddressID = AddressID AND @Address = 2) 
                    OR (OrderBillingAddressID = AddressID AND @Address = 1)
                    LEFT JOIN CMS_Country
                    ON AddressCountryID = CountryID
                    LEFT JOIN CMS_State
                    ON AddressStateID = StateID
                 WHERE 
                    (AddressEnabled = 1 OR 
                      ((@Address = 2 AND AddressID IN (SELECT OrderShippingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
                      OR (@Address = 1 AND AddressID IN (SELECT OrderBillingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID)))) 
                    AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1) 
                    AND OrderSiteID = @CMSContextCurrentSiteID 
                    AND (OrderDate >= @FromDate OR @FromDate IS NULL) 
                    AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL));
SELECT 
   ISNULL(CountryDisplayName,''-'') AS ''{$objecttype.cms_country$}'',
   ISNULL(StateDisplayName,''-'') AS ''{$objecttype.cms_state$}'',
   ISNULL(AddressZip,''-'') AS ''{$general.zip$}'',
   CAST(ISNULL(ROUND(SUM(OrderTotalPriceInMainCurrency),1),0) AS DECIMAL(38,1)) AS ''{$com.sales.volumeofsales$}'',
   CAST(CAST(ROUND(SUM(OrderTotalPriceInMainCurrency),1)/@totalsum*100 AS DECIMAL(9,1)) AS VARCHAR(20)) + '' %'' AS ''{$reports_pageviews.percent_header$}''
FROM 
   COM_Order
   LEFT JOIN COM_Address
   ON (OrderShippingAddressID = AddressID AND @Address = 2) 
   OR (OrderBillingAddressID = AddressID AND @Address = 1)
   LEFT JOIN CMS_Country
   ON AddressCountryID = CountryID
   LEFT JOIN CMS_State
   ON AddressStateID = StateID
WHERE 
   (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1)
   AND OrderSiteID = @CMSContextCurrentSiteID 
   AND (OrderDate >= @FromDate OR @FromDate IS NULL) 
   AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
   AND (AddressEnabled = 1 OR 
                      ((@Address = 2 AND AddressID IN (SELECT OrderShippingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
                      OR (@Address = 1 AND AddressID IN (SELECT OrderBillingAddressID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))))
GROUP BY 
   CountryDisplayName, 
   StateDisplayName, 
   AddressZip
ORDER BY 
   SUM(OrderTotalPriceInMainCurrency) DESC,
   AddressZip,
   StateDisplayName,
   CountryDisplayName', 0, 848, N'<customdata><enablepaging>True</enablepaging><pagemode>3</pagemode><exportenabled>True</exportenabled><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><pagesize>25</pagesize><skinid>ReportGridAnalytics</skinid></customdata>', '4c8b41f0-c6a5-4c3e-892b-fca4745c149e', '20120727 14:08:13', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (674, N'table', N'table', N'DECLARE @from1 datetime;
DECLARE @to1 datetime;
DECLARE @from2 datetime;
DECLARE @to2 datetime;
DECLARE @sales1 float;
DECLARE @sales2 float;
DECLARE @orders1 float;
DECLARE @orders2 float;
DECLARE @salesChange decimal(38,1);
DECLARE @ordersChange decimal(38,1);
IF (@Period = ''custom'')
	BEGIN
		SET @from1 = @Period1From;
		SET @to1 = DATEADD(day,1,@Period1To);
        SET @from2 = @Period2From;
		SET @to2 = DATEADD(day,1,@Period2To);
        END
ELSE IF (@Period = ''day'')
        BEGIN
              	SET @from1 ={%DatabaseSchema%}.Func_Analytics_StartingDate(''yesterday'');
		SET @to1 ={%DatabaseSchema%}.Func_Analytics_EndingDate(''yesterday'');
                SET @from2 ={%DatabaseSchema%}.Func_Analytics_StartingDate(''today'');
		SET @to2 ={%DatabaseSchema%}.Func_Analytics_EndingDate(''today'');
        END
ELSE IF (@Period = ''week'')
        BEGIN
              	SET @from1 ={%DatabaseSchema%}.Func_Analytics_StartingDate(''lastWeek'');
		SET @to1 ={%DatabaseSchema%}.Func_Analytics_EndingDate(''lastWeek'');
                SET @from2 ={%DatabaseSchema%}.Func_Analytics_StartingDate(''thisWeek'');
		SET @to2 ={%DatabaseSchema%}.Func_Analytics_EndingDate(''thisWeek'');
        END
ELSE IF (@Period = ''month'')
        BEGIN
              	SET @from1 ={%DatabaseSchema%}.Func_Analytics_StartingDate(''lastMonth'');
		SET @to1 ={%DatabaseSchema%}.Func_Analytics_EndingDate(''lastMonth'');
                SET @from2 ={%DatabaseSchema%}.Func_Analytics_StartingDate(''thisMonth'');
		SET @to2 ={%DatabaseSchema%}.Func_Analytics_EndingDate(''thisMonth'');
        END
ELSE IF (@Period = ''quarter'')
        BEGIN
              	SET @from1 ={%DatabaseSchema%}.Func_Analytics_StartingDate(''lastQuarter'');
		SET @to1 ={%DatabaseSchema%}.Func_Analytics_EndingDate(''lastQuarter'');
                SET @from2 ={%DatabaseSchema%}.Func_Analytics_StartingDate(''thisQuarter'');
		SET @to2 ={%DatabaseSchema%}.Func_Analytics_EndingDate(''thisQuarter'');
        END
ELSE IF (@Period = ''half'')
        BEGIN
              	SET @from1 ={%DatabaseSchema%}.Func_Analytics_StartingDate(''lastHalf'');
		SET @to1 ={%DatabaseSchema%}.Func_Analytics_EndingDate(''lastHalf'');
                SET @from2 ={%DatabaseSchema%}.Func_Analytics_StartingDate(''thisHalf'');
		SET @to2 ={%DatabaseSchema%}.Func_Analytics_EndingDate(''thisHalf'');
        END
ELSE IF (@Period = ''year'')
        BEGIN
              	SET @from1 ={%DatabaseSchema%}.Func_Analytics_StartingDate(''lastYear'');
		SET @to1 ={%DatabaseSchema%}.Func_Analytics_EndingDate(''lastYear'');
                SET @from2 ={%DatabaseSchema%}.Func_Analytics_StartingDate(''thisYear'');
		SET @to2 ={%DatabaseSchema%}.Func_Analytics_EndingDate(''thisYear'');
        END
SET @sales1 = (SELECT ISNULL(SUM(OrderTotalPriceInMainCurrency),0) FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID AND (OrderDate >= @from1 OR @from1 IS NULL) AND (OrderDate < @to1 OR @to1 IS NULL) AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1));
SET @sales2 = (SELECT ISNULL(SUM(OrderTotalPriceInMainCurrency),0) FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID AND (OrderDate >= @from2 OR @from2 IS NULL) AND (OrderDate < @to2 OR @to2 IS NULL) AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1));
SET @salesChange = CASE 
	WHEN @sales1 = 0 
        THEN NULL
		ELSE
		ROUND((@sales2 / @sales1 * 100) - 100,1)
	END
SET @orders1 = (SELECT COUNT(OrderID) FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID AND (OrderDate >= @from1 OR @from1 IS NULL) AND (OrderDate < @to1 OR @to1 IS NULL) AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1));
SET @orders2 = (SELECT COUNT(OrderID) FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID AND (OrderDate >= @from2 OR @from2 IS NULL) AND (OrderDate < @to2 OR @to2 IS NULL) AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1));
SET @ordersChange = CASE 
	WHEN @orders1 = 0 
 	THEN NULL
		ELSE
			ROUND((@orders2 / @orders1 * 100) - 100,1)
	END
SELECT ''{$com.sales.volumeofsales$}'' AS ''{$rep.webparrts.parametername$}'', CAST(ROUND(@sales1,1) AS decimal(38,1)) AS ''{$com.report.period1$}'', CAST(ROUND(@sales2,1) AS decimal(38,1)) AS ''{$com.report.period2$}'', ISNULL(CAST(@salesChange AS nvarchar(20)), 0) + '' %'' AS ''{$general.change$}''
UNION
SELECT ''{$ecommerce.report_numberoforders$}'', @orders1 , @orders2 , ISNULL(CAST(@ordersChange AS nvarchar(20)), 0) + '' %''', 0, 849, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize><skinid>ReportGridAnalytics</skinid></customdata>', '70ee89a9-8f76-4fea-86c0-8b8d7d68cc26', '20120412 11:32:30', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (675, N'table', N'table', N'/* @GlobalCredit - the value of CMSStoreUseGlobalCredit setting key */
DECLARE @GlobalCredit bit;
SET @GlobalCredit = {%Settings.CMSStoreUseGlobalCredit?1:0|(user)administrator|(hash)3c866417d9a60ccfb331b8bf91c15355ebe9abee1b000ba4369857ee3dcc84cc%};
/* Selects customer first name, last name, company, email and available customer credit 
   in site or global main currency depending on the CMSStoreUseGlobalCredit setting key
   and filter settings. */
SELECT TOP (@TopCustomers) 
   CustomerFirstName AS ''{$ecommerce.report_customer_firstname$}'',
   CustomerLastName AS ''{$ecommerce.report_customer_lastname$}'',
   CustomerCompany AS ''{$ecommerce.report_customer_company$}'',
   CustomerEmail AS ''{$unigrid.userlist.columns.email$}'',
   CAST(ISNULL(Sum(EventCreditChange),0) AS DECIMAL(38,1)) AS ''{$com.ui.customerscredit$}''
FROM 
   COM_Customer
   LEFT JOIN CMS_UserSite
      ON CMS_UserSite.UserID = COM_Customer.CustomerUserID
   LEFT JOIN COM_CustomerCreditHistory
      ON ((EventCustomerID = CustomerID 
           AND EventSiteID = @CMSContextCurrentSiteID 
           AND @GlobalCredit = 0)
         OR 
          (EventCustomerID = CustomerID 
           AND EventSiteID IS NULL 
           AND @GlobalCredit = 1))
WHERE 
   CustomerEnabled = 1   
   AND CustomerUserID > 0 
   AND SiteID = @CMSContextCurrentSiteID
   AND (@FirstName IS NULL OR @FirstName = '''' OR CustomerFirstName LIKE (''%''+@FirstName+''%''))
   AND (@LastName IS NULL OR @LastName = '''' OR CustomerLastName LIKE (''%''+@LastName+''%''))
   AND (@Company IS NULL OR @Company = '''' OR CustomerCompany LIKE (''%''+@Company+''%''))
   AND (@Email IS NULL OR @Email = '''' OR CustomerEmail LIKE (''%'' + @Email + ''%''))  
GROUP BY
   CustomerID,
   CustomerLastName, 
   CustomerFirstName, 
   CustomerCompany, 
   CustomerEmail
ORDER BY 
   ROUND(Sum(EventCreditChange),1) DESC,
   CustomerLastName,   
   CustomerFirstName,
   CustomerCompany', 0, 850, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>False</subscriptionenabled><pagesize>15</pagesize></customdata>', '47408b00-0e31-4f54-a6ec-f19afad8358e', '20120728 21:37:55', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (676, N'table', N'table', N'/* Selects top enabled customers of the current site by number of orders. */   
SELECT TOP (@TopCustomers) 
   CustomerFirstName AS ''{$general.firstname$}'',
   CustomerLastName AS ''{$general.lastname$}'',
   CustomerCompany AS ''{$Company$}'',
   CustomerEmail AS ''{$unigrid.userlist.columns.email$}'',        
   ISNULL(COUNT(OrderID),0) AS ''{$ecommerce.report_numberoforders$}''
FROM 
   COM_Customer 
   LEFT JOIN CMS_UserSite 
      ON UserID = CustomerUserID 
   LEFT JOIN COM_Order 
      ON CustomerID = OrderCustomerID
      AND OrderSiteID = @CMSContextCurrentSiteID
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
   CustomerFirstName, 
   CustomerLastName, 
   CustomerEmail, 
   CustomerPhone, 
   CustomerCompany
ORDER BY
   COUNT(OrderID) DESC,
   CustomerLastName,   
   CustomerFirstName,
   CustomerCompany', 0, 851, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><pagesize>25</pagesize><skinid>ReportGridAnalytics</skinid></customdata>', '5b39ef5b-5102-4c79-896b-666a9f5e7978', '20120731 09:58:04', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (677, N'table', N'table', N'/* Variable determines whether global products should be displayed. */
DECLARE @GlobalProducts bit;
SET @GlobalProducts = {%Settings.CMSStoreAllowGlobalProducts?1:0|(user)administrator|(hash)794a0933e0a07b0b019dd8342fa313e52c639613b4ff99b5963ecc5f73a4a1ed%};
DECLARE @GlobalOptions bit;
SET @GlobalOptions = {%Settings.CMSStoreAllowGlobalProductOptions?1:0|(user)administrator|(hash)1a4c3084069a433e042cca3c018f864b892cbb6d6f8cb6d6e9297ded5016eec3%};
                            
/* Selects the product meeting the conditions from the filter and 
   the number of orders in which it occures */
SELECT TOP (@Limit) 
   SKUName + ISNULL('' ('' + COM_OptionCategory.CategoryDisplayName + '')'', '''') AS ''{$product_list.productname$}'',
   SKUNumber AS ''{$product_list.productnumber$}'',
   DepartmentDisplayName AS ''{$objecttype.com_department$}'',
   ManufacturerDisplayName AS ''{$objecttype.com_manufacturer$}'',
   SupplierDisplayName AS ''{$objecttype.com_supplier$}'',
   CAST(SKUPrice AS DECIMAL(38,2)) AS ''{$com.inventory.price$}'',
   ISNULL(COUNT(DISTINCT OrderID),0) AS ''{$com.purchasedproductsreport.numberofpurchases$}''             
FROM    
   COM_SKU 
   LEFT JOIN COM_OrderItem
      ON SKUID = OrderItemSKUID      
   LEFT JOIN COM_Order 
      ON OrderID = OrderItemOrderID  
      AND (ISNULL(OrderIsPaid,0) = 1 OR @OrderIsPaid = 0)
      AND (OrderDate >= @FromDate OR @FromDate IS NULL)
      AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
      AND (SKUOptionCategoryID IS NULL OR (@DisplayProductOptions = 1 AND ((@GlobalOptions = 1 AND SKUSiteID IS NULL) OR SKUSiteID = @CMSContextCurrentSiteID)))
      AND (SKUOptionCategoryID IS NOT NULL OR ((@GlobalProducts = 1 AND SKUSiteID IS NULL) OR SKUSiteID = @CMSContextCurrentSiteID))
   LEFT JOIN COM_Department AS Departments 
      ON DepartmentID = SKUDepartmentID
   LEFT JOIN COM_Manufacturer AS Manufacturers
      ON SKUManufacturerID = ManufacturerID
   LEFT JOIN COM_Supplier AS Suppliers
      ON SupplierID = SKUSupplierID
   LEFT JOIN COM_OptionCategory 
      ON CategoryID = SKUOptionCategoryID
WHERE 
   (SKUOptionCategoryID IS NULL OR (@DisplayProductOptions = 1 AND ((@GlobalOptions = 1 AND SKUSiteID IS NULL) OR SKUSiteID = @CMSContextCurrentSiteID)))
   AND (SKUOptionCategoryID IS NOT NULL OR ((@GlobalProducts = 1 AND SKUSiteID IS NULL) OR SKUSiteID = @CMSContextCurrentSiteID))
   AND (SKUEnabled = 1 OR (SKUID IN (SELECT OrderItemSKUID FROM COM_OrderItem WHERE OrderItemOrderID IN (SELECT OrderID FROM COM_Order WHERE OrderSiteID=@CMSContextCurrentSiteID))))
   AND (@DepartmentID = SKUDepartmentID OR @DepartmentID < 0 OR (@DepartmentID IS NULL AND SKUDepartmentID IS NULL))
   AND (@ManufacturerID = SKUManufacturerID OR @ManufacturerID < 0 OR (@ManufacturerID IS NULL AND SKUManufacturerID IS NULL))
   AND (@SupplierID = SKUSupplierID OR @SupplierID < 0 OR (@SupplierID IS NULL AND SKUSupplierID IS NULL))
   AND (@PublicStatusID = SKUPublicStatusID OR @PublicStatusID < 0 OR (@PublicStatusID IS NULL AND SKUPublicStatusID IS NULL))
   AND (@InternalStatusID = SKUInternalStatusID OR @InternalStatusID < 0 OR (@InternalStatusID IS NULL AND SKUInternalStatusID IS NULL))
   AND (SKUName LIKE (''%''+@ProductName+''%'') OR @ProductName IS NULL)
   AND (SKUNumber LIKE (''%''+@ProductNumber+''%'') OR @ProductNumber IS NULL OR @ProductNumber = '''')        
GROUP BY 
   SKUID,
   SKUName + ISNULL('' ('' + COM_OptionCategory.CategoryDisplayName + '')'', ''''),
   SKUNumber,
   SKUPrice,
   DepartmentDisplayName,
   ManufacturerDisplayName,
   SupplierDisplayName
ORDER BY 
   COUNT(DISTINCT OrderID) DESC,
   SKUName + ISNULL('' ('' + COM_OptionCategory.CategoryDisplayName + '')'', '''') ASC,
   SKUNumber ASC', 0, 852, N'<customdata><enablepaging>True</enablepaging><pagemode>3</pagemode><exportenabled>True</exportenabled><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><pagesize>25</pagesize><skinid>ReportGridAnalytics</skinid></customdata>', '0ef7b4e1-d6dc-4561-89a0-f3a36a533b43', '20120728 21:14:41', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (678, N'table', N'table', N'/* Selects the products meeting the conditions from the filter and the number of purchased units. */
DECLARE @GlobalProducts bit;
SET @GlobalProducts = {%Settings.CMSStoreAllowGlobalProducts?1:0|(user)administrator|(hash)794a0933e0a07b0b019dd8342fa313e52c639613b4ff99b5963ecc5f73a4a1ed%};
DECLARE @GlobalOptions bit;
SET @GlobalOptions = {%Settings.CMSStoreAllowGlobalProductOptions?1:0|(user)administrator|(hash)1a4c3084069a433e042cca3c018f864b892cbb6d6f8cb6d6e9297ded5016eec3%};
SELECT TOP (@Limit) 
   SKUName + ISNULL('' ('' + COM_OptionCategory.CategoryDisplayName + '')'', '''') AS ''{$product_list.productname$}'',
   SKUNumber AS ''{$product_list.productnumber$}'',
   DepartmentDisplayName AS ''{$objecttype.com_department$}'',
   ManufacturerDisplayName AS ''{$objecttype.com_manufacturer$}'',
   SupplierDisplayName AS ''{$objecttype.com_supplier$}'',
   CAST(SKUPrice AS DECIMAL(38,2)) AS ''{$com.inventory.price$}'',
   CAST(ISNULL(Counts.Numbers,0) AS DECIMAL(38,0)) AS ''{$com.purchasedproductsreport.purchasedunits$}''       
FROM    
   COM_SKU SKU 
   LEFT JOIN COM_OrderItem OrderItem 
      ON SKUID = OrderItemSKUID 
   LEFT JOIN COM_Department AS Departments
      ON DepartmentID = SKUDepartmentID 
   LEFT JOIN COM_Manufacturer AS Manufacturers
      ON SKUManufacturerID = ManufacturerID
   LEFT JOIN COM_Supplier AS Suppliers
      ON SupplierID = SKUSupplierID
   LEFT JOIN COM_OptionCategory 
      ON CategoryID = SKUOptionCategoryID
   LEFT JOIN
      (SELECT 
         SUM(OrderItemUnitCount) AS Numbers, 
         SKUID AS ID 
       FROM 
          COM_SKU, 
          COM_OrderItem 
          LEFT JOIN COM_Order 
          ON OrderItemOrderID = OrderID
       WHERE 
          SKUID = OrderItemSKUID
          AND (@OrderIsPaid = 0 OR OrderIsPaid = 1)
	      AND (OrderDate >= @FromDate OR @FromDate IS NULL)
	      AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
          AND (SKUOptionCategoryID IS NULL OR (@DisplayProductOptions = 1 AND ((@GlobalOptions = 1 AND SKUSiteID IS NULL) OR SKUSiteID = @CMSContextCurrentSiteID)))
          AND (SKUOptionCategoryID IS NOT NULL OR ((@GlobalProducts = 1 AND SKUSiteID IS NULL) OR SKUSiteID = @CMSContextCurrentSiteID))
       GROUP BY SKUID) Counts 
      ON Counts.ID = SKUID     
WHERE 
   (SKUOptionCategoryID IS NULL OR (@DisplayProductOptions = 1 AND ((@GlobalOptions = 1 AND SKUSiteID IS NULL) OR SKUSiteID = @CMSContextCurrentSiteID)))
   AND (SKUOptionCategoryID IS NOT NULL OR ((@GlobalProducts = 1 AND SKUSiteID IS NULL) OR SKUSiteID = @CMSContextCurrentSiteID))
   AND (SKUEnabled = 1 OR (SKUID IN (SELECT OrderItemSKUID FROM COM_OrderItem WHERE OrderItemOrderID IN (SELECT OrderID FROM COM_Order WHERE OrderSiteID=@CMSContextCurrentSiteID))))
   AND (@DepartmentID = SKUDepartmentID OR @DepartmentID < 0 OR (@DepartmentID IS NULL AND SKUDepartmentID IS NULL))
   AND (@ManufacturerID = SKUManufacturerID OR @ManufacturerID < 0 OR (@ManufacturerID IS NULL AND SKUManufacturerID IS NULL))
   AND (@SupplierID = SKUSupplierID OR @SupplierID < 0 OR (@SupplierID IS NULL AND SKUSupplierID IS NULL))
   AND (@PublicStatusID = SKUPublicStatusID OR @PublicStatusID < 0 OR (@PublicStatusID IS NULL AND SKUPublicStatusID IS NULL))
   AND (@InternalStatusID = SKUInternalStatusID OR @InternalStatusID < 0 OR (@InternalStatusID IS NULL AND SKUInternalStatusID IS NULL))
   AND (SKUName LIKE (''%''+@ProductName+''%'') OR @ProductName IS NULL)
   AND (SKUNumber LIKE (''%''+@ProductNumber+''%'') OR @ProductNumber IS NULL OR @ProductNumber = '''')        
GROUP BY 
   SKUID,
   SKUName + ISNULL('' ('' + COM_OptionCategory.CategoryDisplayName + '')'', ''''), 
   SKUNumber, 
   SKUPrice, 
   Counts.Numbers, 
   DepartmentDisplayName, 
   ManufacturerDisplayName, 
   SupplierDisplayName
ORDER BY 
   Counts.Numbers DESC,
   SKUName + ISNULL('' ('' + COM_OptionCategory.CategoryDisplayName + '')'', ''''),
   SKUNumber', 0, 853, N'<customdata><enablepaging>True</enablepaging><pagemode>3</pagemode><exportenabled>True</exportenabled><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><pagesize>25</pagesize><skinid>ReportGridAnalytics</skinid></customdata>', 'af47975a-d935-4e5b-a91a-6ca8e572d198', '20120728 20:57:55', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (679, N'table', N'table', N'DECLARE @GlobalOptions bit;
SET @GlobalOptions = {%Settings.CMSStoreAllowGlobalProducts?1:0|(user)administrator|(hash)794a0933e0a07b0b019dd8342fa313e52c639613b4ff99b5963ecc5f73a4a1ed%};
/* Selects products meeting the conditions from filter and 
   the count of their occurences in the wishlist. */
SELECT TOP (@Limit) 
   SKUName AS ''{$product_list.productname$}'',
   SKUNumber AS ''{$product_list.productnumber$}'',
   DepartmentDisplayName AS ''{$objecttype.com_department$}'',
   ManufacturerDisplayName AS ''{$objecttype.com_manufacturer$}'',
   SupplierDisplayName AS ''{$objecttype.com_supplier$}'',
   CAST(SKUPrice AS DECIMAL(38,2)) AS ''{$unigrid.discounproducts.columns.price$}'',
   SKUAvailableItems AS ''{$ecommerce.report_availableitems$}'',
   COUNT(COM_Wishlist.SKUID) AS ''{$com.wishlistreport.totalcountinwishlists$}''
FROM 
   COM_Wishlist
   LEFT JOIN COM_SKU 
      ON COM_SKU.SKUID = COM_Wishlist.SKUID
   LEFT JOIN COM_Department
      ON SKUDepartmentID = DepartmentID
   LEFT JOIN COM_Manufacturer 
      ON SKUManufacturerID = ManufacturerID
   LEFT JOIN COM_Supplier 
      ON SupplierID = SKUSupplierID        
WHERE 
   ((@GlobalOptions = 1 AND SKUSiteID IS NULL) OR SKUSiteID = @CMSContextCurrentSiteID)
   AND (DepartmentID = @DepartmentID OR @DepartmentID < 0 OR (SKUDepartmentID IS NULL AND @DepartmentID IS NULL))
   AND SiteID = @CMSContextCurrentSiteID
   AND (@ManufacturerID = SKUManufacturerID OR @ManufacturerID < 0 OR (SKUManufacturerID IS NULL AND @ManufacturerID IS NULL))
   AND (@SupplierID = SKUSupplierID OR @SupplierID < 0 OR (SKUSupplierID IS NULL AND @SupplierID IS NULL))
   AND (@PublicStatusID = SKUPublicStatusID OR @PublicStatusID < 0 OR (SKUPublicStatusID IS NULL AND @PublicStatusID IS NULL))
   AND (@InternalStatusID = SKUInternalStatusID OR @InternalStatusID < 0 OR (SKUInternalStatusID IS NULL AND @InternalStatusID IS NULL))
   AND (SKUName LIKE (''%''+@ProductName+''%'') OR @ProductName IS NULL)
   AND (SKUNumber LIKE (''%''+@ProductNumber+''%'') OR @ProductNumber IS NULL OR @ProductNumber = '''')        
GROUP BY 
   COM_Wishlist.SKUID,
   SKUName,
   SKUNumber,
   SKUPrice,
   DepartmentDisplayName,
   SKUAvailableItems,
   ManufacturerDisplayName,
   SupplierDisplayName
ORDER BY 
   COUNT(COM_Wishlist.SKUID) DESC,
   SKUName,
   SKUNumber', 0, 854, N'<customdata><enablepaging>True</enablepaging><pagemode>3</pagemode><exportenabled>True</exportenabled><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><pagesize>25</pagesize><skinid>ReportGridAnalytics</skinid></customdata>', '655d67a4-61b5-4030-a67a-fd7d5cf2f6cc', '20120728 21:24:04', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (685, N'table', N'Table', N'DECLARE @FromDateTrimmed DATETIME;
DECLARE @ToDateTrimmed DATETIME;
DECLARE @ToDateCompare AS DATETIME;
SET @FromDateTrimmed = DATEADD(m, DATEDIFF(m, 0, CAST(@FromDate AS DATETIME)), 0);
SET @ToDateTrimmed = DATEADD(m, DATEDIFF(m, 0, CAST(@ToDate AS DATETIME)), 0);
SET @ToDateTrimmed = DATEADD(s, -31, @ToDateTrimmed);
SET @ToDateCompare = CAST(@ToDate AS DATETIME);
WITH daysseq AS
(
   SELECT @FromDateTrimmed AS DateValue
   UNION ALL
   SELECT DATEADD(m, 1, DateValue)
   FROM    daysseq   
   WHERE   DateValue < @ToDateTrimmed
)
SELECT CONVERT(CHAR(3), daysseq.DateValue, 101) + CONVERT(CHAR(4), daysseq.DateValue, 120), T3.clicks, T3.hits
FROM daysseq
LEFT JOIN
(
	SELECT T1.HitsStartTime, T2.hits, T1.clicks
	FROM
		(SELECT HitsStartTime, HitsCount AS clicks
		FROM Analytics_Statistics
		INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
		WHERE (Analytics_Statistics.StatisticsObjectID = @BannerID) 
			AND (@FromDateTrimmed IS NULL OR HitsStartTime >= @FromDateTrimmed)
			AND (@ToDateCompare IS NULL OR HitsStartTime <= @ToDateCompare)
			AND (StatisticsCode = ''bannerclick'')
		) AS T1
	INNER JOIN 
		(SELECT HitsStartTime, HitsCount AS hits
		FROM Analytics_Statistics
		INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
		WHERE (Analytics_Statistics.StatisticsObjectID = @BannerID) 
			AND (@FromDateTrimmed IS NULL OR HitsStartTime >= @FromDateTrimmed) 
			AND (@ToDateCompare IS NULL OR HitsStartTime <= @ToDateCompare) 
			AND (StatisticsCode = ''bannerhit'')
		) AS T2  
	ON T1.HitsStartTime = T2.HitsStartTime
 ) AS T3
ON daysseq.DateValue = HitsStartTime
OPTION (MAXRECURSION 0)', 0, 874, N'<customdata><pagesize>10</pagesize><skinid></skinid><pagemode>1</pagemode><enablepaging>False</enablepaging><subscriptionenabled>True</subscriptionenabled></customdata>', '0d1b30ee-f5d4-49b0-89b4-e728e0089570', '20120528 15:51:08', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (690, N'NumberOfContactsInSteps', N'NumberOfContactsInSteps', N'SELECT 
  StepDisplayName AS ''Step name'',
  [Value] AS ''Number of contacts''
FROM (
  SELECT
    COUNT(StateObjectID) AS Value,
    StateStepID
  FROM CMS_AutomationState
  WHERE StateObjectType = ''om.contact'' AND StateStepID IN (
    SELECT StepID FROM CMS_WorkflowStep WHERE StepWorkflowID = @AutomationProcessID
  ) AND ((@SiteID = -1) OR ((@SiteID = -4) AND (StateSiteID IS NULL)) OR (StateSiteID = @SiteID) OR ((@SiteID = -5) AND ((StateSiteID IS NULL) OR (StateSiteID = @CMSContextCurrentSiteID))))
  GROUP BY StateStepID
) Groups JOIN CMS_WorkflowStep ON Groups.StateStepID = StepID
ORDER BY StepType', 0, 883, N'<customdata><enablepaging>True</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><pagesize>15</pagesize><skinid>ReportGridAnalytics</skinid></customdata>', '3168d3f5-3ba9-4784-9fca-79ff8195defc', '20120829 17:22:07', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (691, N'NumberOfDocumentsInWorkflowSteps', N'NumberOfDocumentsInWorkflowSteps', N'SELECT 
  StepDisplayName AS ''Step name'',
  [Value] AS ''Number of documents''
FROM (
  SELECT
    COUNT(DocumentID) as ''Value'',
    DocumentWorkflowStepID
  FROM View_CMS_Tree_Joined
  WHERE DocumentWorkflowStepID IN (
    SELECT StepID FROM CMS_WorkflowStep WHERE StepWorkflowID = @WorkflowID
  ) AND NodeSiteID = @CMSContextCurrentSiteID
  GROUP BY DocumentWorkflowStepID
) Groups JOIN CMS_WorkflowStep ON Groups.DocumentWorkflowStepID = StepID
ORDER BY StepType', 0, 882, N'<customdata><enablepaging>True</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><skinid></skinid><pagesize>15</pagesize></customdata>', '2739d896-23a3-4e08-8da0-09cd2a5f5cae', '20120823 13:33:57', N'')
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (692, N'ContactsInCampaignsTable', N'Contacts in campaigns table', N'SELECT  ContactFirstName AS ''{$om.contact.firstname$}'' ,
        ContactLastName AS ''{$om.contact.lastname$}'' ,
        ContactCountryID AS ''{$om.contact.countryid$}'' ,
        ContactBusinessPhone AS ''{$om.contact.businessphone$}'' ,
        ContactEmail AS ''{$general.emailaddress$}'' ,
        ContactWebSite AS ''{$om.contact.website$}'' ,
        ContactCreated AS ''{$general.created$}'' ,
        ContactCampaign AS ''{$analytics.campaign$}'' ,
        ContactCompanyName AS ''{$om.contact.companyname$}''
FROM    OM_Contact
WHERE   OM_Contact.ContactID IN ( SELECT    ActivityActiveContactID
                                  FROM      OM_Activity
                                  WHERE     ActivityCampaign = @CampaignName )', 0, 887, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid></skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>True</subscriptionenabled><pagesize>15</pagesize></customdata>', 'bde77f87-1182-4fd3-ae1f-d3de53121f46', '20120911 15:35:43', N'CMSOMConnectionString')
SET IDENTITY_INSERT [Reporting_ReportTable] OFF
