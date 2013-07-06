SET IDENTITY_INSERT [Reporting_ReportTable] ON
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (308, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100 
 StatisticsObjectName AS ''{$reports_pagenotfound_Week.name_header$}'', 
 SUM(HitsCount) AS ''{$reports_pagenotfound_Week.hits_header$}'' 
 FROM Analytics_Statistics
 INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) 
 AND (StatisticsCode=@CodeName)  
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) 
 GROUP BY StatisticsObjectName 
 ORDER BY SUM(HitsCount) DESC', 0, 480, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'f6686f82-a930-49d2-a08a-ba28392e4877', '20120323 11:13:47', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (309, N'table', N'table', N'DECLARE @PaveViews TABLE
(
  DocumentNamePath NVARCHAR(500),
  ObjectID INT,
  Pageviews INT,
  Percents DECIMAL(10,2),
  Average INT  
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
INSERT INTO @PaveViews (DocumentNamePath,objectID,pageViews,percents)
SELECT TOP 100
 CASE
  WHEN DocumentNamePath LIKE '''' OR DocumentNamePath IS NULL THEN StatisticsObjectName
  ELSE DocumentNamePath
 END , StatisticsObjectID, SUM(HitsCount), (SUM(HitsCount)/@Sum)*100
 FROM Analytics_Statistics
 INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND StatisticsObjectCulture = DocumentCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName,StatisticsObjectID
 ORDER BY SUM(HitsCount) DESC
 
 UPDATE @PaveViews SET Average = (SELECT SUM(HitsValue)/SUM(HitsCount) FROM Analytics_WeekHits JOIN
      Analytics_Statistics ON HitsStatisticsID = StatisticsID
      WHERE HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate AND StatisticsObjectID = objectID
        AND StatisticsCode =''avgtimeonpage'' AND StatisticsSiteID = @CMSContextCurrentSiteID
       )
 
 SELECT DocumentNamePath AS ''{$reports_pageviews_Week.path_header$}'',pageviews AS  ''{$reports_pageviews_Week.hits_header$}'',
      CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_pageviews.percent_header$}'', ISNULL(CONVERT(varchar, DATEADD(s, average, 0), 108),''00:00:00'') AS ''{$reports_pageviews.average$}''
  
   FROM @PaveViews ORDER BY PageViews DESC', 0, 481, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'b48a5b0b-b1d4-4756-84a4-9aa09fcf2ab3', '20120323 11:13:45', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (310, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
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
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
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
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
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
 SELECT DocumentNamePath AS ''{$reports_pageviews_Week.path_header$}'',
 culture AS   ''{$general.culture$}'',
 Count AS ''{$reports_pageviews_Week.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2))AS NVARCHAR(10))+''%'' AS ''{$reports_pageviews_Week.hits_percent_header$}'',
 ISNULL(CONVERT(varchar, DATEADD(s, average, 0), 108),''00:00:00'') AS ''{$reports_pageviews.average$}''
 FROM @myselection', 0, 482, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'c4dddf6e-aa81-4eae-9166-a53718aa3a65', '20120323 11:13:46', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (311, N'TableMonthConversion_1', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100 ConversionDisplayName AS ''{$reports_conversion.name_header$}'', SUM(HitsCount) AS
''{$reports_conversion.hits_header$}'',SUM(HitsValue) AS ''{$reports_conversion.value_header$}'' FROM
Analytics_Statistics
JOIN Analytics_WeekHits  ON HitsStatisticsID = StatisticsID
JOIN Analytics_Conversion ON ConversionName  = StatisticsObjectName AND ConversionSiteID = @CMSContextCurrentSiteID
WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
(StatisticsCode=N''conversion'') AND (StatisticsID = HitsStatisticsID) AND (HitsStartTime >= @FromDate) AND
(@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName)) AND
(HitsEndTime <= @ToDate) GROUP BY ConversionDisplayName ORDER BY SUM(HitsCount) DESC', 0, 483, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '85728b46-42cd-42d4-8d54-e0f01f5a70d1', '20120323 11:13:47', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (314, N'table', N'table', N'/* Trims the value of @FromDate to be able to display weeks in the table. */
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
/* Selects the number of orders created in the given weeks. */
SELECT 
   CONVERT (NVARCHAR(2),DATEPART(wk,[Date]))+''/''+CONVERT (NVARCHAR(4),DATEPART(YEAR,[Date])) AS ''{$ecommerce.report_week$}'', 
   COUNT(OrderDate) AS ''{$ecommerce.report_numberoforders$}'' 
FROM 
   -- returns a column of dates, each week in a new row 
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'') AS Dates
   LEFT JOIN COM_Order  
      ON ([Date] <= OrderDate  AND  DATEADD(DAY,7,[Date]) > OrderDate) 
      AND OrderSiteID = @CMSContextCurrentSiteID
GROUP BY [Date]
ORDER BY [Date] DESC', 0, 489, N'<customdata><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><exportenabled>True</exportenabled><skinid>ReportGridAnalytics</skinid><pagesize>10</pagesize><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '1f53407e-d610-41a7-b803-a6deaa20b223', '20120405 13:56:37', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (315, N'table', N'table', N'/* Trims the value of @FromDate to be able to display hours in the table. */
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
/* Selects the number of orders created in the given hours. */
SELECT 
   [Date] AS ''{$ecommerce.report_hour$}'', 
   COUNT(OrderDate) AS ''{$ecommerce.report_numberoforders$}''  
FROM 
   -- returns a column of dates, each hour in a new row 
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates
   LEFT JOIN COM_Order  
      ON ([Date] <= OrderDate  AND  DATEADD(HOUR,1,[Date]) > OrderDate) 
      AND OrderSiteID = @CMSContextCurrentSiteID
GROUP BY [Date]
ORDER BY [Date] DESC', 0, 490, N'<customdata><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><exportenabled>True</exportenabled><skinid>ReportGridAnalytics</skinid><pagesize>10</pagesize><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', 'a7dbcbda-1d17-46aa-9021-a88707265e35', '20120405 13:55:32', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (321, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SELECT 
   DATEPART(YEAR,[Date]) AS ''{$ecommerce.report_year$}'',
   CAST(SUM(ISNULL(OrderTotalPriceInMainCurrency,0)) AS DECIMAL(38,1)) AS ''{$com.sales.volumeofsales$}'' 
FROM 
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates
   LEFT JOIN COM_Order
      ON Dates.Date = DATENAME(year, OrderDate)
      AND  OrderSiteID = @CMSContextCurrentSiteID 
GROUP BY [Date]
ORDER BY [Date] DESC', 0, 496, N'<customdata><pagesize>10</pagesize><subscriptionenabled>False</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '182b094b-cd05-4c1a-bda2-800a646041c6', '20120405 13:53:37', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (322, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SELECT 
   CONVERT (NVARCHAR(2),DATEPART(wk,[Date]))+''/''+CONVERT (NVARCHAR(4),DATEPART(YEAR,[Date])) AS ''{$ecommerce.report_week$}'', 
   CAST(SUM(ISNULL(OrderTotalPriceInMainCurrency,0)) AS DECIMAL(38,1)) AS ''{$com.sales.volumeofsales$}'' 
FROM 
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'') AS Dates
   LEFT JOIN COM_Order  
      ON ([Date] <= OrderDate  AND  DATEADD(DAY,7,[Date]) > OrderDate) 
      AND OrderSiteID = @CMSContextCurrentSiteID  
GROUP BY [Date]
ORDER BY [Date] DESC', 0, 497, N'<customdata><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><exportenabled>True</exportenabled><skinid>ReportGridAnalytics</skinid><pagesize>10</pagesize><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '7cc18155-06ab-42c5-9dbf-16a86999ca95', '20120405 13:52:53', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (323, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SELECT 
   DATENAME(MONTH,[Date])+'', ''+ DATENAME(YEAR, [Date]) AS ''{$ecommerce.report_month$}'',
   CAST(SUM(ISNULL(OrderTotalPriceInMainCurrency,0)) AS DECIMAL(38,1)) AS ''{$com.sales.volumeofsales$}'' 
FROM 
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates
   LEFT JOIN COM_Order  
      ON ([Date] <= OrderDate  AND  DATEADD(MONTH,1,[Date]) > OrderDate) 
      AND OrderSiteID = @CMSContextCurrentSiteID 
GROUP BY [Date]
ORDER BY [Date] DESC', 0, 498, N'<customdata><pagesize>10</pagesize><subscriptionenabled>False</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', 'c52f1ae0-3c4c-42cb-850b-3f2937b7b69e', '20120405 14:46:58', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (324, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SELECT 
   [Date] AS ''{$ecommerce.report_hour$}'',  
   CAST(SUM(ISNULL(OrderTotalPriceInMainCurrency,0)) AS DECIMAL(38,1)) AS ''{$com.sales.volumeofsales$}''  
FROM
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates
   LEFT JOIN COM_Order  
      ON ([Date] <= OrderDate  AND  DATEADD(HOUR,1,[Date]) > OrderDate) 
      AND OrderSiteID = @CMSContextCurrentSiteID 
GROUP BY [Date]
ORDER BY [Date] DESC', 0, 499, N'<customdata><pagesize>10</pagesize><subscriptionenabled>False</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', 'a765e078-d500-4692-afe2-6a760a35e55d', '20120405 13:51:29', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (325, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SELECT 
   CAST(DATEPART(MONTH,[Date]) AS NVARCHAR(2)) +''/''+ DATENAME(DAY,[Date])+''/''+DATENAME(YEAR,[Date]) AS ''{$ecommerce.report_day$}'',
   CAST(SUM(ISNULL(OrderTotalPriceInMainCurrency,0)) AS DECIMAL(38,1)) AS ''{$com.sales.volumeofsales$}''  
FROM 
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates
   LEFT JOIN COM_Order  
   ON ([Date] <= OrderDate  AND  DATEADD(DAY,1,[Date]) > OrderDate) 
   AND OrderSiteID = @CMSContextCurrentSiteID    
GROUP BY [Date]
ORDER BY [Date] DESC', 0, 500, N'<customdata><pagesize>10</pagesize><subscriptionenabled>False</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '47e4aada-6b9c-4fa4-8d0f-32d20c4022f7', '20120405 13:52:27', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (327, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100
 ''{''+''$analytics_codename.'' + StatisticsObjectName + ''$}'' AS ''{$reports_javasupport.name_header$}'',
 SUM(HitsCount) AS ''{$reports_javasupport.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_javasupport.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 501, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '9203700e-7bbd-44ed-8e52-d149c57ba0f7', '20120323 11:13:50', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (328, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100
 ''{''+''$analytics_codename.'' + StatisticsObjectName + ''$}'' AS ''{$reports_javasupport.name_header$}'',
 SUM(HitsCount) AS ''{$reports_javasupport.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_javasupport.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 502, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'ef2b1ab9-87e5-43e7-a198-bb5832b764b3', '20120323 11:13:50', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (329, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100
 ''{''+''$analytics_codename.'' + StatisticsObjectName + ''$}'' AS ''{$reports_javasupport.name_header$}'',
 SUM(HitsCount) AS ''{$reports_javasupport.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_javasupport.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 503, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '3f89a211-0a4e-4428-a299-d5c50114d78f', '20120323 11:13:36', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (330, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100
 ''{''+''$analytics_codename.'' + StatisticsObjectName + ''$}'' AS ''{$reports_javasupport.name_header$}'',
 SUM(HitsCount) AS ''{$reports_javasupport.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_javasupport.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 504, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'df007b78-ed2b-4507-b6ed-b6a2f24e85d3', '20120323 11:13:36', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (331, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100
 ''{''+''$analytics_codename.'' + StatisticsObjectName + ''$}'' AS ''{$reports_javasupport.name_header$}'',
 SUM(HitsCount) AS ''{$reports_javasupport.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_javasupport.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 505, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'bbc5a3e1-d48f-40e4-ad88-f55927616f05', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (332, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100
 ''{''+''$analytics_codename.'' + StatisticsObjectName + ''$}'' AS ''{$reports_silverlightsupport.name_header$}'',
 SUM(HitsCount) AS ''{$reports_silverlightsupport.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_silverlightsupport.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 506, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'ecb19453-51f8-45b3-a7f0-00d7c9c0694f', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (333, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100
 ''{''+''$analytics_codename.'' + StatisticsObjectName + ''$}'' AS ''{$reports_silverlightsupport.name_header$}'',
 SUM(HitsCount) AS ''{$reports_silverlightsupport.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_silverlightsupport.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 507, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'fbd5e825-0dae-4b0a-9541-f1afbb3adc99', '20120323 11:13:36', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (334, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100
 ''{''+''$analytics_codename.'' + StatisticsObjectName + ''$}'' AS ''{$reports_silverlightsupport.name_header$}'',
 SUM(HitsCount) AS ''{$reports_silverlightsupport.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_silverlightsupport.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 508, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'dad6d423-5765-413a-99a4-5866f47eb0da', '20120323 11:13:32', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (335, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100
 ''{''+''$analytics_codename.'' + StatisticsObjectName + ''$}'' AS ''{$reports_silverlightsupport.name_header$}'',
 SUM(HitsCount) AS ''{$reports_silverlightsupport.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_silverlightsupport.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 509, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'f24e73ec-8a3f-4814-8904-982de95be061', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (336, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100
 ''{''+''$analytics_codename.'' + StatisticsObjectName + ''$}'' AS ''{$reports_silverlightsupport.name_header$}'',
 SUM(HitsCount) AS ''{$reports_silverlightsupport.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_silverlightsupport.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 510, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '46f0047f-dab7-4b19-adf5-a8339e1e9e20', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (337, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100
 ''{''+''$analytics_codename.'' + StatisticsObjectName + ''$}'' AS ''{$reports_flash.name_header$}'',
 SUM(HitsCount) AS ''{$reports_flash.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_flash.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 511, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '683f5483-a9a8-442b-86a6-d7a4bc867299', '20120323 11:13:36', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (338, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100
 ''{''+''$analytics_codename.'' + StatisticsObjectName + ''$}'' AS ''{$reports_flash.name_header$}'',
 SUM(HitsCount) AS ''{$reports_flash.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_flash.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 512, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '488e807b-e09f-4eba-a3e4-994e79ad890d', '20120323 11:13:36', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (339, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100
 ''{''+''$analytics_codename.'' + StatisticsObjectName + ''$}'' AS ''{$reports_flash.name_header$}'',
 SUM(HitsCount) AS ''{$reports_flash.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_flash.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 513, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '122a03d6-773b-4935-866c-84eb5de4cd83', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (340, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100
 ''{''+''$analytics_codename.'' + StatisticsObjectName + ''$}'' AS ''{$reports_flash.name_header$}'',
 SUM(HitsCount) AS ''{$reports_flash.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_flash.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 514, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '3f829dd8-6bd6-4d4c-8967-47bbcb0f59b9', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (341, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100
 ''{''+''$analytics_codename.'' + StatisticsObjectName + ''$}'' AS ''{$reports_flash.name_header$}'',
 SUM(HitsCount) AS ''{$reports_flash.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_flash.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 515, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '2fd69c87-0202-49ab-9ee6-9983913f5bf2', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (342, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_screenresolution.name_header$}'',
 SUM(HitsCount) AS ''{$reports_screenresolution.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_screenresolution.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 516, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'a7894103-89bb-465e-9cd8-a45d25d65fad', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (344, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_screenresolution.name_header$}'',
 SUM(HitsCount) AS ''{$reports_screenresolution.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_screenresolution.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 518, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'e4b34917-7a27-4413-8cc1-991b40b7bb4c', '20120323 11:13:54', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (345, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_screenresolution.name_header$}'',
 SUM(HitsCount) AS ''{$reports_screenresolution.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_screenresolution.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 519, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '31e98907-d964-484d-974d-baec53876bbd', '20120323 11:13:40', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (346, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_screenresolution.name_header$}'',
 SUM(HitsCount) AS ''{$reports_screenresolution.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_screenresolution.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 520, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '0dcdb07e-5bc1-41d9-babf-6ad18cbd8bb6', '20120323 11:13:40', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (347, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_screenresolution.name_header$}'',
 SUM(HitsCount) AS ''{$reports_screenresolution.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_screenresolution.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 521, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'bfe0831f-5792-4b82-ae3f-e30e9cd77e68', '20120323 11:13:53', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (348, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_screencolors.name_header$}'',
 SUM(HitsCount) AS ''{$reports_screencolors.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_screencolors.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 522, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '585de056-96bc-4ff6-aee9-53b328e4f114', '20120323 11:13:39', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (349, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_screencolors.name_header$}'',
 SUM(HitsCount) AS ''{$reports_screencolors.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_screencolors.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 523, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'b17280af-8915-4c11-acc2-32f27a2f6767', '20120323 11:13:39', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (350, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_screencolors.name_header$}'',
 SUM(HitsCount) AS ''{$reports_screencolors.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_screencolors.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 524, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '2ff47b87-7ec2-4509-96e6-67b387f1ec97', '20120323 11:13:53', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (351, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_screencolors.name_header$}'',
 SUM(HitsCount) AS ''{$reports_screencolors.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_screencolors.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 525, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'd8865ada-c680-45c8-8d25-61765119284d', '20120323 11:13:53', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (352, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_screencolors.name_header$}'',
 SUM(HitsCount) AS ''{$reports_screencolors.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_screencolors.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 526, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'a42748aa-e8f4-4d88-9403-3cd280a5fbdf', '20120323 11:13:39', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (353, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_operatingsystem.name_header$}'',
 SUM(HitsCount) AS ''{$reports_operatingsystem.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_operatingsystem.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 527, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '025b3837-a3c7-4cd1-b3a1-7fc2733dc665', '20120323 11:13:39', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (354, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_operatingsystem.name_header$}'',
 SUM(HitsCount) AS ''{$reports_operatingsystem.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_operatingsystem.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 528, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '9e261f4b-4edc-4aa7-ad4a-8552b28a0da1', '20120323 11:13:53', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (355, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_operatingsystem.name_header$}'',
 SUM(HitsCount) AS ''{$reports_operatingsystem.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_operatingsystem.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 529, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'c767dfc8-26f5-47dc-93f0-679363255a5e', '20120323 11:13:39', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (356, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_operatingsystem.name_header$}'',
 SUM(HitsCount) AS ''{$reports_operatingsystem.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_operatingsystem.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 530, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '85088e71-7fce-41cc-83ba-ef281a594ef9', '20120323 11:13:39', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (357, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100
 StatisticsObjectName AS ''{$reports_operatingsystem.name_header$}'',
 SUM(HitsCount) AS ''{$reports_operatingsystem.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_operatingsystem.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 531, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext></querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'a0444a29-1d80-437f-afce-b2619de92a9d', '20120323 11:13:53', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (358, N'table', N'table', N'DECLARE @PaveViews TABLE
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
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND DocumentCulture = StatisticsObjectCulture
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
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND DocumentCulture = StatisticsObjectCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY SUM(HitsCount) DESC
 
  
 SELECT DocumentNamePath AS ''{$reports_landingpage_Year.path_header$}'',pageviews AS  ''{$reports_landingpage_Year.hits_header$}'',
   CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_landingpage_Year.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 532, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '4cff183e-d882-432b-8318-aa94fa4ed7fa', '20120323 11:13:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (359, N'table', N'table', N'DECLARE @PaveViews TABLE
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
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND DocumentCulture = StatisticsObjectCulture
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
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND DocumentCulture = StatisticsObjectCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY SUM(HitsCount) DESC
 
  
 SELECT DocumentNamePath AS ''{$reports_landingpage_Month.path_header$}'',pageviews AS  ''{$reports_landingpage_Month.hits_header$}'',
   CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_landingpage_Month.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 533, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '82672152-37eb-497a-ae68-f2ba7ca0d788', '20120323 11:13:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (360, N'table', N'table', N'DECLARE @PaveViews TABLE
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
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND DocumentCulture = StatisticsObjectCulture
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
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND DocumentCulture = StatisticsObjectCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY SUM(HitsCount) DESC
 
  
 SELECT DocumentNamePath AS ''{$reports_landingpage_Week.path_header$}'',pageviews AS  ''{$reports_landingpage_Week.hits_header$}'',
   CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_landingpage_Week.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 534, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '9c150fce-622e-415d-9f08-0a0607cf00e2', '20120323 11:13:53', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (361, N'table', N'table', N'DECLARE @PaveViews TABLE
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
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND DocumentCulture = StatisticsObjectCulture
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
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND DocumentCulture = StatisticsObjectCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY SUM(HitsCount) DESC
 
  
 SELECT DocumentNamePath AS ''{$reports_landingpage_Day.path_header$}'',pageviews AS  ''{$reports_landingpage_Day.hits_header$}'',
   CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_landingpage_Day.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 535, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '78f4d473-d14f-49bc-9798-d9e24b2eeb0c', '20120323 11:13:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (362, N'table', N'table', N'DECLARE @PaveViews TABLE
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
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND DocumentCulture = StatisticsObjectCulture
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
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND DocumentCulture = StatisticsObjectCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY SUM(HitsCount) DESC
 
  
 SELECT DocumentNamePath AS ''{$reports_landingpage_Hour.path_header$}'',pageviews AS  ''{$reports_landingpage_Hour.hits_header$}'',
   CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_landingpage_Hour.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 536, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'd7c8fc90-1907-4dae-a75e-8a6649dda1ec', '20120323 11:13:51', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (363, N'table', N'table', N'DECLARE @PaveViews TABLE
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
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND StatisticsObjectCulture = DocumentCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY Sum(HitsCount) DESC
 
  
 SELECT DocumentNamePath AS ''{$reports_exitpage_Year.path_header$}'',pageviews AS  ''{$reports_exitpage_Year.hits_header$}'',
   CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_exitpage_Year.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 537, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'a9534e33-cc1c-4f30-907e-9c40af12f3e2', '20120323 11:13:53', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (364, N'table', N'table', N'DECLARE @PaveViews TABLE
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
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND StatisticsObjectCulture = DocumentCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY Sum(HitsCount) DESC
 
  
 SELECT DocumentNamePath AS ''{$reports_exitpage_Month.path_header$}'',pageviews AS  ''{$reports_exitpage_Month.hits_header$}'',
   CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_exitpage_Month.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 538, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '0341b692-f3ca-475f-9e1c-2a231c393cbc', '20120323 11:13:51', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (365, N'table', N'table', N'DECLARE @PaveViews TABLE
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
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND StatisticsObjectCulture = DocumentCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY Sum(HitsCount) DESC
 
  
 SELECT DocumentNamePath AS ''{$reports_exitpage_Week.path_header$}'',pageviews AS  ''{$reports_exitpage_Week.hits_header$}'',
   CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_exitpage_Week.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 539, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '23fe90b2-8035-4f1e-b36f-5f153383bc05', '20120323 11:13:51', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (366, N'table', N'table', N'DECLARE @PaveViews TABLE
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
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND StatisticsObjectCulture = DocumentCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY Sum(HitsCount) DESC
 
  
 SELECT DocumentNamePath AS ''{$reports_exitpage_Day.path_header$}'',pageviews AS  ''{$reports_exitpage_Day.hits_header$}'',
   CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_exitpage_Day.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 540, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '7eb6d3ce-ed0f-42c1-9bef-e32aa21d5a23', '20120323 11:13:53', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (367, N'table', N'table', N'DECLARE @PaveViews TABLE
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
 LEFT JOIN View_CMS_Tree_Joined ON Analytics_Statistics.StatisticsObjectID = View_CMS_Tree_Joined.NodeID AND StatisticsObjectCulture = DocumentCulture
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 AND (StatisticsCode=@CodeName)
 GROUP BY DocumentNamePath, StatisticsObjectName
 ORDER BY Sum(HitsCount) DESC
 
  
 SELECT DocumentNamePath AS ''{$reports_exitpage_Hour.path_header$}'',pageviews AS  ''{$reports_exitpage_Hour.hits_header$}'',
   CAST (Percents AS NVARCHAR(10))+''%'' AS ''{$reports_exitpage_Hour.hits_percent_header$}''
   FROM @PaveViews ORDER BY PageViews DESC', 0, 541, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '093d4c18-6af6-412c-bd81-ef30b0baff6f', '20120323 11:13:40', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (368, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_referringsites.name_header$}'',
 SUM(HitsCount) AS ''{$reports_referringsites.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_referringsites.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 548, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', 'be8a2a86-c917-4145-bbe9-e9e2c8659657', '20120323 11:13:40', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (369, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_referringsites.name_header$}'',
 SUM(HitsCount) AS ''{$reports_referringsites.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_referringsites.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 550, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', 'dad43456-2a19-4930-9494-6a7b07b8b214', '20120323 11:13:53', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (370, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_referringsites.name_header$}'',
 SUM(HitsCount) AS ''{$reports_referringsites.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_referringsites.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 551, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '3390cd84-0e23-4636-ba11-1c748f4b5da3', '20120323 11:13:35', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (371, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_referringsites.name_header$}'',
 SUM(HitsCount) AS ''{$reports_referringsites.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_referringsites.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 552, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '7159fcba-281c-4a9f-b8d4-e29456d832e4', '20120323 11:13:35', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (372, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_referringsites.name_header$}'',
 SUM(HitsCount) AS ''{$reports_referringsites.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_referringsites.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 553, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '34e6f8c6-e73c-4b8d-9452-0597934c81e3', '20120323 11:13:53', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (373, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchengine.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchengine.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_searchengine.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 554, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '78a1aa84-eec3-493a-bafc-4152b6bb30c2', '20120323 11:13:39', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (374, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchengine.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchengine.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_searchengine.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 555, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', 'd53ae7e4-920a-4987-b08b-474f8978f318', '20120323 11:13:39', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (375, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchengine.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchengine.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_searchengine.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 556, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', 'ee466862-6c26-47ee-bf93-1a1c71907b8d', '20120323 11:13:53', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (376, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchengine.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchengine.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_searchengine.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 557, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '9db67c9d-5413-4859-abca-424ac7d5f60f', '20120323 11:13:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (378, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchengine.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchengine.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(5,2)) AS VARCHAR)+''%'' AS ''{$reports_searchengine.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 559, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '0dff79fa-2e7b-4e80-9583-f5d08e454de5', '20120323 11:13:39', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (380, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchkeyword.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchkeyword.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(3)) AS VARCHAR)+''%'' AS ''{$reports_searchkeyword.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 561, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'eee97e8c-5a86-444f-8ca4-3a1b132b0574', '20120323 11:13:39', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (381, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchkeyword.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchkeyword.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(3)) AS VARCHAR)+''%'' AS ''{$reports_searchkeyword.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 562, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '73532c98-8016-4b05-9056-f7615ea0a221', '20120323 11:13:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (382, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchkeyword.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchkeyword.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(3)) AS VARCHAR)+''%'' AS ''{$reports_searchkeyword.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 563, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '3bfd68b8-491a-4f7c-9691-c15bf0a11a44', '20120323 11:13:39', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (383, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchkeyword.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchkeyword.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(3)) AS VARCHAR)+''%'' AS ''{$reports_searchkeyword.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 564, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '1e905917-817c-40fa-bea7-d6c6199b5616', '20120323 11:13:39', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (384, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchkeyword.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchkeyword.hits_header$}'',
 CAST(CAST(100*CAST(SUM(HitsCount) AS float)/NULLIF((
  SELECT SUM(HitsCount)
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)), 0) AS decimal(3)) AS VARCHAR)+''%'' AS ''{$reports_searchkeyword.percent_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 565, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '3a55bd6d-08fb-4bdc-8001-0e5f23436b86', '20120323 11:13:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (387, N'TableYearAggViewsCulture', N'table', N'SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
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
 SELECT DocumentNamePath AS ''{$reports_exitpage_Year.path_header$}'',
 StatisticsObjectCulture AS   ''{$general.culture$}'',
 Count AS ''{$reports_exitpage_Year.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2)) AS NVARCHAR(10))+''%'' AS ''{$reports_exitpage_Year.hits_percent_header$}''
 FROM @myselection', 0, 568, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '1eb41744-e311-4678-bd1b-dcc3042af638', '20120323 11:13:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (388, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
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
 SELECT DocumentNamePath AS ''{$reports_exitpage_month.path_header$}'', 
 StatisticsObjectCulture AS   ''{$general.culture$}'', 
 Count AS ''{$reports_exitpage_month.hits_header$}'', 
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2)) AS NVARCHAR(10))+''%'' AS ''{$reports_exitpage_month.hits_percent_header$}'' 
 FROM @myselection', 0, 569, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '715d5ab1-ddff-46e9-b47e-667c30d26568', '20120323 11:13:48', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (389, N'table', N'table', N'SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
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
 SELECT DocumentNamePath AS ''{$reports_exitpage_Week.path_header$}'',
 StatisticsObjectCulture AS   ''{$general.culture$}'',
 Count AS ''{$reports_exitpage_Week.hits_header$}'',
CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2)) AS NVARCHAR(10))+''%'' AS ''{$reports_exitpage_Week.hits_percent_header$}''
 FROM @myselection', 0, 570, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'a6d7c9bb-8a2a-42f2-abd3-78f9fa873bde', '20120323 11:13:48', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (390, N'TableDayAggViewsCulture', N'table', N'SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
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
  
SELECT DocumentNamePath AS ''{$reports_exitpage_day.path_header$}'',  
StatisticsObjectCulture AS ''{$general.culture$}'', 
Count AS ''{$reports_exitpage_day.hits_header$}'',
CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2)) AS NVARCHAR(10))+''%'' 
as ''{$reports_exitpage_day.hits_percent_header$}'' 
FROM @myselection', 0, 571, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '927188a8-c7ee-45c5-a1d5-cecb33a6b373', '20120323 11:13:48', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (391, N'table', N'table', N'SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
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
  
 SELECT DocumentNamePath AS ''{$reports_exitpage_hour.path_header$}'', 
 StatisticsObjectCulture AS ''{$general.culture$}'', 
 Count AS ''{$reports_exitpage_hour.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2)) AS NVARCHAR(10))+''%'' AS ''{$reports_exitpage_hour.hits_percent_header$}'' 
 FROM @myselection', 0, 572, N'<customdata><pagesize>10</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>true</exportenabled></customdata>', '19b4ca56-2c39-4d25-a265-856e7611ee00', '20120323 11:13:48', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (392, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
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
  SUM(HitsCount) AS Counted
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  LEFT JOIN View_CMS_Tree_Joined ON View_CMS_Tree_Joined.NodeID = Analytics_Statistics.StatisticsObjectID AND View_CMS_Tree_Joined.DocumentCulture = Analytics_Statistics.StatisticsObjectCulture
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)
 SELECT DocumentNamePath AS ''{$reports_landingpage_Year.path_header$}'',
 StatisticsObjectCulture AS   ''{$general.culture$}'',
 Count AS ''{$reports_landingpage_Year.hits_header$}'',
 CAST (CAST((100*Count)/(SELECT Counted FROM  @countedAll) as decimal(10,2)) AS NVARCHAR(10))+''%'' AS ''{$reports_landingpage_Year.hits_percent_header$}''
 FROM @myselection', 0, 573, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>true</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', 'e1bc97f9-1000-4201-a495-69d2caa44be7', '20120323 11:13:48', NULL)
SET IDENTITY_INSERT [Reporting_ReportTable] OFF
