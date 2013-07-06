SET IDENTITY_INSERT [Reporting_ReportTable] ON
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (533, N'table', N'table', N'SELECT
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
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) AND  (YY.CampaignGoalValueMin IS NOT NULL OR YY.CampaignGoalValue IS NOT NULL)
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 733, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '9a6da8c8-f15d-42c9-b0a1-647230910729', '20120323 11:13:33', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (534, N'table', N'table', N'SELECT
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
WHERE CampaignSiteID = @CMSContextCurrentSiteID AND StatisticsSiteID = @CMSContextCurrentSiteID AND ((@CampaignName = '''' AND StatisticsCode LIKE N''campconversion;%'') OR (@CampaignName = CampaignName AND StatisticsCode = N''campconversion;'' + @CampaignName )) AND  (YY.CampaignGoalValueMin IS NOT NULL OR YY.CampaignGoalValue IS NOT NULL)
GROUP BY CampaignDisplayName, CampaignGoalVisitors, CampaignGoalVisitorsMin, GoalValueMin, GoalValue', 0, 734, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '897b07d0-ff28-4835-9639-c6860678916f', '20120323 11:13:33', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (535, N'table', N'table', N'SELECT CampaignDisplayName AS ''{$campaignselect.itemname$}'',
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
 HAVING  SUM(X.Visits) IS NOT NULL OR SUM(Y.Value) IS NOT NULL', 0, 735, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '2ed56811-eb6c-45e5-be82-8212dfbbd769', '20120323 11:13:45', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (536, N'table', N'table', N'SELECT CampaignDisplayName AS ''{$campaignselect.itemname$}'',
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
 HAVING  SUM(X.Visits) IS NOT NULL OR SUM(Y.Value) IS NOT NULL', 0, 736, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '368131c7-85f5-4801-b668-25ff0f0f4dc2', '20120323 11:13:45', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (538, N'table', N'table', N'SELECT CampaignDisplayName AS ''{$campaignselect.itemname$}'',
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
 HAVING  SUM(X.Visits) IS NOT NULL OR SUM(Y.Value) IS NOT NULL', 0, 738, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '9b3f3a91-94b1-4dee-8e14-2e27fa7f4e7e', '20120323 11:13:45', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (539, N'table', N'table', N'SELECT CampaignDisplayName AS ''{$campaignselect.itemname$}'',
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
 HAVING  SUM(X.Visits) IS NOT NULL OR SUM(Y.Value) IS NOT NULL', 0, 739, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'fd7c82f4-8438-408e-9615-3a22d72e08d7', '20120323 11:13:41', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (540, N'table', N'table', N'SELECT CampaignDisplayName AS ''{$campaignselect.itemname$}'',
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
 HAVING  SUM(X.Visits) IS NOT NULL OR SUM(Y.Value) IS NOT NULL', 0, 740, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', 'f3a25f8d-163b-4999-9ffc-c3f935693bf8', '20120323 11:13:41', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (542, N'table', N'table', N'/* Selects the donations which meet the filter conditions */
SELECT
   OrderItemSKUName AS ''{$com.donationsreport.skuname$}'',
   CAST(OrderItemTotalPriceInMainCurrency AS DECIMAL(38,1)) AS ''{$com.donationsreport.donationamount$}'',    
   CASE CAST(OrderItemIsPrivate AS varchar(5)) WHEN ''0'' THEN ''{$general.no$}'' ELSE ''{$general.yes$}'' END AS ''{$com.donationsreport.donationisprivate$}'',    
   (CustomerFirstName + '' '' + CustomerLastName) AS ''{$com.donationsreport.donor$}'',  
   CustomerCompany AS ''{$com.donationsreport.donorcompany$}'',
   CustomerEmail AS ''{$com.listofdonations.donoremail$}'',
   CONVERT(char(26), OrderDate, 101) AS ''{$com.donationsreport.orderdate$}''
FROM 
   COM_OrderItem
   JOIN COM_SKU 
      ON SKUID = OrderItemSKUID
   JOIN COM_Order 
      ON OrderID = OrderItemOrderID
   JOIN COM_Customer 
      ON CustomerID = OrderCustomerID
WHERE 
   OrderSiteID = @CMSContextCurrentSiteID
   AND COM_SKU.SKUProductType = ''DONATION''
   AND (@DonationName IS NULL OR @DonationName = '''' OR COM_OrderItem.OrderItemSKUName LIKE (''%'' + @DonationName + ''%''))
   AND (@DonationAmountFrom IS NULL OR COM_OrderItem.OrderItemTotalPriceInMainCurrency >= @DonationAmountFrom)
   AND (@DonationAmountTo IS NULL OR COM_OrderItem.OrderItemTotalPriceInMainCurrency <= @DonationAmountTo)
   AND (@DonationIsPrivate < 0 OR CAST(ISNULL(COM_OrderItem.OrderItemIsPrivate, 0) AS NVARCHAR) = @DonationIsPrivate)
   AND (@Donor IS NULL OR @Donor = '''' OR COM_Customer.CustomerFirstName LIKE (''%'' + @Donor + ''%'') OR COM_Customer.CustomerLastName LIKE (''%'' + @Donor + ''%''))
   AND (@DonorCompany IS NULL OR @DonorCompany = '''' OR COM_Customer.CustomerCompany LIKE (''%'' + @DonorCompany + ''%''))
   AND (@OrderDateFrom IS NULL OR COM_Order.OrderDate >= @OrderDateFrom)
   AND (@OrderDateTo IS NULL OR COM_Order.OrderDate <= DATEADD(day,1,@OrderDateTo))
   AND (@Onlypaid = 0 OR COM_Order.OrderIsPaid = 1)
   AND (@Email IS NULL OR @Email = '''' OR COM_Customer.CustomerEmail LIKE (''%'' + @Email + ''%''))
ORDER BY 
   OrderItemTotalPriceInMainCurrency DESC,
   OrderItemSKUName,
   (CustomerFirstName + '' '' + CustomerLastName)', 0, 741, N'<customdata><pagesize>25</pagesize><skinid>ReportGridAnalytics</skinid><querynorecordtext>{$general.nodatafound$}</querynorecordtext><exportenabled>True</exportenabled><enablepaging>True</enablepaging><pagemode>3</pagemode></customdata>', '739d8e39-8cb3-4d16-9324-650698660cad', '20120320 14:40:00', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (543, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT X.Name AS ''{$mvtcombination.name$}'',ISNULL (SUM(Y.Hits),0) AS ''{$om.selectedperiod$}'',
ISNULL(SUM(X.Hits),0) AS ''{$om.total$}''
  FROM 
(
SELECT 
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,MVTCombinationName, ISNULL(SUM (HitsCount),0) AS Hits,StatisticsObjectCulture
 FROM Analytics_Statistics
 INNER JOIN OM_MVTCombination ON 
  MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END   
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)   
  LEFT JOIN Analytics_YearHits ON StatisticsID = HitsStatisticsID
 WHERE   (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' 
 AND  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
 MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)))
 AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY MVTCombinationName, StatisticsObjectCulture,
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END
) AS X 
LEFT JOIN (SELECT SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)) AS MVTCombinationName, SUM(HitsCount) AS Hits,
StatisticsObjectCulture
 FROM Analytics_Statistics JOIN Analytics_YearHits ON HitsStatisticsID = StatisticsID 
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)   
  AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
  GROUP BY SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)), StatisticsObjectCulture
 )
 AS Y ON X.MVTCombinationName = Y.MVTCombinationName AND X.StatisticsObjectCulture = Y.StatisticsObjectCulture
 
 GROUP BY X.Name
 ORDER BY [{$om.total$}] Desc', 0, 663, N'<customdata><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagesize>15</pagesize><pagemode>1</pagemode></customdata>', '32161bfc-a721-4c07-8c09-eb711ee40011', '20120330 13:54:56', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (544, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT X.Name AS ''{$mvtcombination.name$}'',ISNULL (SUM(Y.Hits),0) AS ''{$om.selectedperiod$}'',
ISNULL(SUM(X.Hits),0) AS ''{$om.total$}''
  FROM 
(
SELECT 
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,MVTCombinationName, ISNULL(SUM (HitsCount),0) AS Hits,StatisticsObjectCulture
 FROM Analytics_Statistics
 INNER JOIN OM_MVTCombination ON 
  MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END   
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)   
  LEFT JOIN Analytics_WeekHits ON StatisticsID = HitsStatisticsID
 WHERE   (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' 
 AND  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
 MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)))
 AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY MVTCombinationName, StatisticsObjectCulture,
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END
) AS X 
LEFT JOIN (SELECT SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)) AS MVTCombinationName, SUM(HitsCount) AS Hits,
StatisticsObjectCulture
 FROM Analytics_Statistics JOIN Analytics_WeekHits ON HitsStatisticsID = StatisticsID 
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)   
  AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
  GROUP BY SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)), StatisticsObjectCulture
 )
 AS Y ON X.MVTCombinationName = Y.MVTCombinationName AND X.StatisticsObjectCulture = Y.StatisticsObjectCulture
 
 GROUP BY X.Name
 ORDER BY [{$om.total$}] Desc', 0, 664, N'<customdata><pagesize>15</pagesize><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><subscriptionenabled>True</subscriptionenabled></customdata>', '66b1a977-72bf-452f-b553-b288065e2b3c', '20120330 13:54:56', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (545, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT X.Name AS ''{$mvtcombination.name$}'',ISNULL (SUM(Y.Hits),0) AS ''{$om.selectedperiod$}'',
ISNULL(SUM(X.Hits),0) AS ''{$om.total$}''
  FROM 
(
SELECT 
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,MVTCombinationName, ISNULL(SUM (HitsCount),0) AS Hits,StatisticsObjectCulture
 FROM Analytics_Statistics
 INNER JOIN OM_MVTCombination ON 
  MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END   
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)   
  LEFT JOIN Analytics_MonthHits ON StatisticsID = HitsStatisticsID
 WHERE   (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' 
 AND  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
 MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)))
 AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY MVTCombinationName, StatisticsObjectCulture,
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END
) AS X 
LEFT JOIN (SELECT SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)) AS MVTCombinationName, SUM(HitsCount) AS Hits,
StatisticsObjectCulture
 FROM Analytics_Statistics JOIN Analytics_MonthHits ON HitsStatisticsID = StatisticsID 
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)   
  AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
  GROUP BY SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)), StatisticsObjectCulture
 )
 AS Y ON X.MVTCombinationName = Y.MVTCombinationName AND X.StatisticsObjectCulture = Y.StatisticsObjectCulture
 
 GROUP BY X.Name
 ORDER BY [{$om.total$}] Desc', 0, 665, N'<customdata><pagesize>15</pagesize><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><subscriptionenabled>True</subscriptionenabled></customdata>', 'd1ea1daf-3d30-4e07-a47a-3148e928b7c3', '20120330 13:54:56', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (546, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT X.Name AS ''{$mvtcombination.name$}'',ISNULL (SUM(Y.Hits),0) AS ''{$om.selectedperiod$}'',
ISNULL(SUM(X.Hits),0) AS ''{$om.total$}''
  FROM 
(
SELECT 
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,MVTCombinationName, ISNULL(SUM (HitsCount),0) AS Hits,StatisticsObjectCulture
 FROM Analytics_Statistics
 INNER JOIN OM_MVTCombination ON 
  MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END   
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)   
  LEFT JOIN Analytics_HourHits ON StatisticsID = HitsStatisticsID
 WHERE   (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' 
 AND  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
 MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)))
 AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY MVTCombinationName, StatisticsObjectCulture,
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END
) AS X 
LEFT JOIN (SELECT SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)) AS MVTCombinationName, SUM(HitsCount) AS Hits,
StatisticsObjectCulture
 FROM Analytics_Statistics JOIN Analytics_HourHits ON HitsStatisticsID = StatisticsID 
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)   
  AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
  GROUP BY SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)), StatisticsObjectCulture
 )
 AS Y ON X.MVTCombinationName = Y.MVTCombinationName AND X.StatisticsObjectCulture = Y.StatisticsObjectCulture
 
 GROUP BY X.Name
 ORDER BY [{$om.total$}] Desc', 0, 666, N'<customdata><pagesize>15</pagesize><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><subscriptionenabled>True</subscriptionenabled></customdata>', 'ccc50348-7ca6-4e89-84e1-08a3dd838f14', '20120330 13:54:56', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (547, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT X.Name AS ''{$mvtcombination.name$}'',ISNULL (SUM(Y.Hits),0) AS ''{$om.selectedperiod$}'',
ISNULL(SUM(X.Hits),0) AS ''{$om.total$}''
  FROM 
(
SELECT 
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,MVTCombinationName, ISNULL(SUM (HitsCount),0) AS Hits,StatisticsObjectCulture
 FROM Analytics_Statistics
 INNER JOIN OM_MVTCombination ON 
  MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END   
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)   
  LEFT JOIN Analytics_DayHits ON StatisticsID = HitsStatisticsID
 WHERE   (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' 
 AND  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
 MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)))
 AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY MVTCombinationName, StatisticsObjectCulture,
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END
) AS X 
LEFT JOIN (SELECT SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)) AS MVTCombinationName, SUM(HitsCount) AS Hits,
StatisticsObjectCulture
 FROM Analytics_Statistics JOIN Analytics_DayHits ON HitsStatisticsID = StatisticsID 
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)   
  AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
  GROUP BY SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)), StatisticsObjectCulture
 )
 AS Y ON X.MVTCombinationName = Y.MVTCombinationName AND X.StatisticsObjectCulture = Y.StatisticsObjectCulture
 
 GROUP BY X.Name
 ORDER BY [{$om.total$}] Desc', 0, 668, N'<customdata><pagesize>15</pagesize><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><subscriptionenabled>True</subscriptionenabled></customdata>', '1a1f5108-30ed-4e04-9d55-21b88b93682e', '20120330 13:54:56', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (548, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT X.Name AS ''{$mvtcombination.name$}'',ISNULL (SUM(Y.Hits),0) AS ''{$om.selectedperiod$}'',ISNULL(SUM(X.Hits),0) AS ''{$om.total$}''  FROM 
(
SELECT 
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,MVTCombinationName, ISNULL(SUM (HitsValue),0) AS Hits,StatisticsObjectCulture
 FROM Analytics_Statistics
 INNER JOIN OM_MVTCombination ON 
  MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END     
FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)   
  LEFT JOIN Analytics_YearHits ON StatisticsID = HitsStatisticsID
 WHERE   (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' 
 AND  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
 MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)))
 AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY MVTCombinationName, StatisticsObjectCulture,
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END
) AS X 
LEFT JOIN (SELECT SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)) AS MVTCombinationName, SUM(HitsValue) AS Hits,
StatisticsObjectCulture
 FROM Analytics_Statistics JOIN Analytics_YearHits ON HitsStatisticsID = StatisticsID 
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)   
  AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
  GROUP BY SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)), StatisticsObjectCulture
 )
 AS Y ON X.MVTCombinationName = Y.MVTCombinationName AND X.StatisticsObjectCulture = Y.StatisticsObjectCulture
 
 
 GROUP BY X.Name
 ORDER BY [{$om.total$}] Desc', 0, 669, N'<customdata><pagesize>15</pagesize><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><subscriptionenabled>True</subscriptionenabled></customdata>', 'cd689d46-6197-4bd0-9db3-fc36000bab12', '20120330 13:53:51', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (549, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT X.Name AS ''{$mvtcombination.name$}'',ISNULL (SUM(Y.Hits),0) AS ''{$om.selectedperiod$}'',ISNULL(SUM(X.Hits),0) AS ''{$om.total$}''  FROM 
(
SELECT 
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,MVTCombinationName, ISNULL(SUM (HitsValue),0) AS Hits,StatisticsObjectCulture
 FROM Analytics_Statistics
 INNER JOIN OM_MVTCombination ON 
  MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END     
FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)   
  LEFT JOIN Analytics_WeekHits ON StatisticsID = HitsStatisticsID
 WHERE   (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' 
 AND  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
 MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)))
 AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY MVTCombinationName, StatisticsObjectCulture,
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END
) AS X 
LEFT JOIN (SELECT SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)) AS MVTCombinationName, SUM(HitsValue) AS Hits,
StatisticsObjectCulture
 FROM Analytics_Statistics JOIN Analytics_WeekHits ON HitsStatisticsID = StatisticsID 
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)   
  AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
  GROUP BY SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)), StatisticsObjectCulture
 )
 AS Y ON X.MVTCombinationName = Y.MVTCombinationName AND X.StatisticsObjectCulture = Y.StatisticsObjectCulture
 
 
 GROUP BY X.Name
 ORDER BY [{$om.total$}] Desc', 0, 673, N'<customdata><pagesize>15</pagesize><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><subscriptionenabled>True</subscriptionenabled></customdata>', 'e2151c94-214b-48fb-94ce-5eaaf8e6b7e8', '20120330 13:53:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (550, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT X.Name AS ''{$mvtcombination.name$}'',ISNULL (SUM(Y.Hits),0) AS ''{$om.selectedperiod$}'',ISNULL(SUM(X.Hits),0) AS ''{$om.total$}''  FROM 
(
SELECT 
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,MVTCombinationName, ISNULL(SUM (HitsValue),0) AS Hits,StatisticsObjectCulture
 FROM Analytics_Statistics
 INNER JOIN OM_MVTCombination ON 
  MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END     
FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)   
  LEFT JOIN Analytics_MonthHits ON StatisticsID = HitsStatisticsID
 WHERE   (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' 
 AND  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
 MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)))
 AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY MVTCombinationName, StatisticsObjectCulture,
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END
) AS X 
LEFT JOIN (SELECT SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)) AS MVTCombinationName, SUM(HitsValue) AS Hits,
StatisticsObjectCulture
 FROM Analytics_Statistics JOIN Analytics_MonthHits ON HitsStatisticsID = StatisticsID 
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)   
  AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
  GROUP BY SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)), StatisticsObjectCulture
 )
 AS Y ON X.MVTCombinationName = Y.MVTCombinationName AND X.StatisticsObjectCulture = Y.StatisticsObjectCulture
 
 
 GROUP BY X.Name
 ORDER BY [{$om.total$}] Desc', 0, 672, N'<customdata><pagesize>15</pagesize><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><subscriptionenabled>True</subscriptionenabled></customdata>', '314e9589-2213-4b90-86ab-5b84a27bfaa8', '20120330 13:53:51', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (551, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT X.Name AS ''{$mvtcombination.name$}'',ISNULL (SUM(Y.Hits),0) AS ''{$om.selectedperiod$}'',ISNULL(SUM(X.Hits),0) AS ''{$om.total$}''  FROM 
(
SELECT 
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,MVTCombinationName, ISNULL(SUM (HitsValue),0) AS Hits,StatisticsObjectCulture
 FROM Analytics_Statistics
 INNER JOIN OM_MVTCombination ON 
  MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END     
FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)   
  LEFT JOIN Analytics_HourHits ON StatisticsID = HitsStatisticsID
 WHERE   (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' 
 AND  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
 MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)))
 AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY MVTCombinationName, StatisticsObjectCulture,
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END
) AS X 
LEFT JOIN (SELECT SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)) AS MVTCombinationName, SUM(HitsValue) AS Hits,
StatisticsObjectCulture
 FROM Analytics_Statistics JOIN Analytics_HourHits ON HitsStatisticsID = StatisticsID 
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)   
  AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
  GROUP BY SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)), StatisticsObjectCulture
 )
 AS Y ON X.MVTCombinationName = Y.MVTCombinationName AND X.StatisticsObjectCulture = Y.StatisticsObjectCulture
 
 
 GROUP BY X.Name
 ORDER BY [{$om.total$}] Desc', 0, 671, N'<customdata><pagesize>15</pagesize><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><subscriptionenabled>True</subscriptionenabled></customdata>', 'bd7a29cd-8701-4975-a65d-87576f932017', '20120330 13:53:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (552, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT X.Name AS ''{$mvtcombination.name$}'',ISNULL (SUM(Y.Hits),0) AS ''{$om.selectedperiod$}'',ISNULL(SUM(X.Hits),0) AS ''{$om.total$}''  FROM 
(
SELECT 
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,MVTCombinationName, ISNULL(SUM (HitsValue),0) AS Hits,StatisticsObjectCulture
 FROM Analytics_Statistics
 INNER JOIN OM_MVTCombination ON 
  MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END     
FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)   
  LEFT JOIN Analytics_DayHits ON StatisticsID = HitsStatisticsID
 WHERE   (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' 
 AND  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
 MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)))
 AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY MVTCombinationName, StatisticsObjectCulture,
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END
) AS X 
LEFT JOIN (SELECT SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)) AS MVTCombinationName, SUM(HitsValue) AS Hits,
StatisticsObjectCulture
 FROM Analytics_Statistics JOIN Analytics_DayHits ON HitsStatisticsID = StatisticsID 
 WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)   
  AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
  GROUP BY SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)), StatisticsObjectCulture
 )
 AS Y ON X.MVTCombinationName = Y.MVTCombinationName AND X.StatisticsObjectCulture = Y.StatisticsObjectCulture
 
 
 GROUP BY X.Name
 ORDER BY [{$om.total$}] Desc', 0, 670, N'<customdata><pagesize>15</pagesize><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><subscriptionenabled>True</subscriptionenabled></customdata>', 'd30682fc-df01-48fa-bfc1-75585c8fb517', '20120330 13:53:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (553, N'table', N'table', N'EXEC Proc_Analytics_RemoveTempTable 
 CREATE TABLE #AnalyticsTempTable (  
  Hits DECIMAL (15,2),
  Name NVARCHAR(300) COLLATE database_default,  
  Culture NVARCHAR(300) COLLATE database_default,   
  Page NVARCHAR(300) COLLATE database_default,
  DisplayName NVARCHAR(300) COLLATE database_default     
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
INSERT INTO #AnalyticsTempTable (DisplayName,Hits,Name,Page,Culture)
SELECT X.Name AS DisplayName, CAST (ISNULL(X.Hits,0) AS DECIMAL (15,2)) AS Hits, X.MVTCombinationName AS Name,X.MVTestPage AS Page,X.MVTestCulture AS Culture
FROM
(
SELECT
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,MVTCombinationName, ISNULL(SUM (HitsCount),0) AS Hits ,MVTestPage, MVTestCulture
 FROM Analytics_Statistics
 INNER JOIN OM_MVTCombination ON
  MVTCombinationPageTemplateID IN ( SELECT 
  CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END    
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)         
        AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
  LEFT JOIN Analytics_YearHits ON StatisticsID = HitsStatisticsID  
  LEFT JOIN OM_MVTest ON MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID
 WHERE   (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' AND
 @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
 MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)))
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 
 GROUP BY MVTCombinationName, MVTestPage, MVTestCulture,
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END
) AS X
 
  UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
   AND Analytics_Statistics.StatisticsObjectID IN
   (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath = Page AND NodeSiteID = @CMSContextCurrentSiteID)
    AND (StatisticsObjectCulture = Culture OR Culture IS NULL)    
   )
   *100    
   
   SELECT DisplayName AS ''{$mvtcombination.name$}'',
   CAST (CAST (ISNULL (Hits,0) AS DECIMAL (15,1)) AS NVARCHAR(15)) + ''%'' AS ''{$om.selectedperiod$}'' 
   FROM #AnalyticsTempTable
   ORDER BY Hits DESC
  
 EXEC Proc_Analytics_RemoveTempTable', 0, 674, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>True</subscriptionenabled><pagesize>15</pagesize></customdata>', '03b25306-c49e-49ed-a9ad-04441dc381f8', '20120330 13:38:15', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (554, N'table', N'table', N'EXEC Proc_Analytics_RemoveTempTable 
 CREATE TABLE #AnalyticsTempTable (  
  Hits DECIMAL (15,2),
  Name NVARCHAR(300) COLLATE database_default,  
  Culture NVARCHAR(300) COLLATE database_default,   
  Page NVARCHAR(300) COLLATE database_default,
  DisplayName NVARCHAR(300) COLLATE database_default     
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
INSERT INTO #AnalyticsTempTable (DisplayName,Hits,Name,Page,Culture)
SELECT X.Name AS DisplayName, CAST (ISNULL(X.Hits,0) AS DECIMAL (15,2)) AS Hits, X.MVTCombinationName AS Name,X.MVTestPage AS Page,X.MVTestCulture AS Culture
FROM
(
SELECT
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,MVTCombinationName, ISNULL(SUM (HitsCount),0) AS Hits ,MVTestPage, MVTestCulture
 FROM Analytics_Statistics
 INNER JOIN OM_MVTCombination ON
  MVTCombinationPageTemplateID IN ( SELECT 
  CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END    
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)         
        AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
  LEFT JOIN Analytics_WeekHits ON StatisticsID = HitsStatisticsID  
  LEFT JOIN OM_MVTest ON MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID
 WHERE   (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' AND
 @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
 MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)))
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 
 GROUP BY MVTCombinationName, MVTestPage, MVTestCulture,
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END
) AS X
 
  UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
   AND Analytics_Statistics.StatisticsObjectID IN
   (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath = Page AND NodeSiteID = @CMSContextCurrentSiteID)
    AND (StatisticsObjectCulture = Culture OR Culture IS NULL)    
   )
   *100    
   
   SELECT DisplayName AS ''{$mvtcombination.name$}'',
   CAST (CAST (ISNULL (Hits,0) AS DECIMAL (15,1)) AS NVARCHAR(15)) + ''%'' AS ''{$om.selectedperiod$}'' 
   FROM #AnalyticsTempTable
   ORDER BY Hits DESC
  
 EXEC Proc_Analytics_RemoveTempTable', 0, 675, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>True</subscriptionenabled><pagesize>15</pagesize></customdata>', 'bbde24a8-646a-4f94-9c10-f0a276622f76', '20120330 13:38:29', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (555, N'table', N'table', N'EXEC Proc_Analytics_RemoveTempTable 
 CREATE TABLE #AnalyticsTempTable (  
  Hits DECIMAL (15,2),
  Name NVARCHAR(300) COLLATE database_default,  
  Culture NVARCHAR(300) COLLATE database_default,   
  Page NVARCHAR(300) COLLATE database_default,
  DisplayName NVARCHAR(300) COLLATE database_default     
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
INSERT INTO #AnalyticsTempTable (DisplayName,Hits,Name,Page,Culture)
SELECT X.Name AS DisplayName, CAST (ISNULL(X.Hits,0) AS DECIMAL (15,2)) AS Hits, X.MVTCombinationName AS Name,X.MVTestPage AS Page,X.MVTestCulture AS Culture
FROM
(
SELECT
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,MVTCombinationName, ISNULL(SUM (HitsCount),0) AS Hits ,MVTestPage, MVTestCulture
 FROM Analytics_Statistics
 INNER JOIN OM_MVTCombination ON
  MVTCombinationPageTemplateID IN ( SELECT 
  CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END   
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)         
        AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
  LEFT JOIN Analytics_MonthHits ON StatisticsID = HitsStatisticsID  
  LEFT JOIN OM_MVTest ON MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID
 WHERE   (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' AND
 @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
 MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)))
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 
 GROUP BY MVTCombinationName, MVTestPage, MVTestCulture,
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END
) AS X
 
  UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
   AND Analytics_Statistics.StatisticsObjectID IN
   (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath = Page AND NodeSiteID = @CMSContextCurrentSiteID)
    AND (StatisticsObjectCulture = Culture OR Culture IS NULL)    
   )
   *100    
   
   SELECT DisplayName AS ''{$mvtcombination.name$}'',
   CAST (CAST (ISNULL (Hits,0) AS DECIMAL (15,1)) AS NVARCHAR(15)) + ''%'' AS ''{$om.selectedperiod$}'' 
   FROM #AnalyticsTempTable
   ORDER BY Hits DESC
  
 EXEC Proc_Analytics_RemoveTempTable', 0, 676, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>True</subscriptionenabled><pagesize>15</pagesize></customdata>', 'ef81763b-d1a7-43e7-a14a-77d8b2e1fe53', '20120330 13:38:49', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (556, N'table', N'table', N'EXEC Proc_Analytics_RemoveTempTable 
 CREATE TABLE #AnalyticsTempTable (  
  Hits DECIMAL (15,2),
  Name NVARCHAR(300) COLLATE database_default,  
  Culture NVARCHAR(300) COLLATE database_default,   
  Page NVARCHAR(300) COLLATE database_default,
  DisplayName NVARCHAR(300) COLLATE database_default     
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
INSERT INTO #AnalyticsTempTable (DisplayName,Hits,Name,Page,Culture)
SELECT X.Name AS DisplayName, CAST (ISNULL(X.Hits,0) AS DECIMAL (15,2)) AS Hits, X.MVTCombinationName AS Name,X.MVTestPage AS Page,X.MVTestCulture AS Culture
FROM
(
SELECT
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,MVTCombinationName, ISNULL(SUM (HitsCount),0) AS Hits ,MVTestPage, MVTestCulture
 FROM Analytics_Statistics
 INNER JOIN OM_MVTCombination ON
  MVTCombinationPageTemplateID IN ( SELECT 
  CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END   
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)         
        AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
  LEFT JOIN Analytics_HourHits ON StatisticsID = HitsStatisticsID  
  LEFT JOIN OM_MVTest ON MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID
 WHERE   (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' AND
 @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
 MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)))
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 
 GROUP BY MVTCombinationName, MVTestPage, MVTestCulture,
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END
) AS X
 
  UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
   AND Analytics_Statistics.StatisticsObjectID IN
   (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath = Page AND NodeSiteID = @CMSContextCurrentSiteID)
    AND (StatisticsObjectCulture = Culture OR Culture IS NULL)    
   )
   *100    
   
   SELECT DisplayName AS ''{$mvtcombination.name$}'',
   CAST (CAST (ISNULL (Hits,0) AS DECIMAL (15,1)) AS NVARCHAR(15)) + ''%'' AS ''{$om.selectedperiod$}'' 
   FROM #AnalyticsTempTable
   ORDER BY Hits DESC
  
 EXEC Proc_Analytics_RemoveTempTable', 0, 677, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>True</subscriptionenabled><pagesize>15</pagesize></customdata>', '21784c11-b91f-4cc1-88c3-8119ef9552de', '20120330 13:39:07', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (557, N'table', N'table', N'EXEC Proc_Analytics_RemoveTempTable 
 CREATE TABLE #AnalyticsTempTable (  
  Hits DECIMAL (15,2),
  Name NVARCHAR(300) COLLATE database_default,  
  Culture NVARCHAR(300) COLLATE database_default,   
  Page NVARCHAR(300) COLLATE database_default,
  DisplayName NVARCHAR(300) COLLATE database_default     
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
INSERT INTO #AnalyticsTempTable (DisplayName,Hits,Name,Page,Culture)
SELECT X.Name AS DisplayName, CAST (ISNULL(X.Hits,0) AS DECIMAL (15,2)) AS Hits, X.MVTCombinationName AS Name,X.MVTestPage AS Page,X.MVTestCulture AS Culture
FROM
(
SELECT
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,MVTCombinationName, ISNULL(SUM (HitsCount),0) AS Hits ,MVTestPage, MVTestCulture
 FROM Analytics_Statistics
 INNER JOIN OM_MVTCombination ON
  MVTCombinationPageTemplateID IN ( SELECT 
     CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END   
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)         
        AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
  LEFT JOIN Analytics_DayHits ON StatisticsID = HitsStatisticsID  
  LEFT JOIN OM_MVTest ON MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID
 WHERE   (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' AND
 @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
 MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode)))
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
 
 GROUP BY MVTCombinationName, MVTestPage, MVTestCulture,
   CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END
) AS X
 
  UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
   AND Analytics_Statistics.StatisticsObjectID IN
   (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath = Page AND NodeSiteID = @CMSContextCurrentSiteID)
    AND (StatisticsObjectCulture = Culture OR Culture IS NULL)    
   )
   *100    
   
   SELECT DisplayName AS ''{$mvtcombination.name$}'',
   CAST (CAST (ISNULL (Hits,0) AS DECIMAL (15,1)) AS NVARCHAR(15)) + ''%'' AS ''{$om.selectedperiod$}'' 
   FROM #AnalyticsTempTable
   ORDER BY Hits DESC
  
 EXEC Proc_Analytics_RemoveTempTable', 0, 678, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>True</subscriptionenabled><pagesize>15</pagesize></customdata>', 'df7c242b-4c45-48c2-a171-bf040143e844', '20120330 13:39:27', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (558, N'table', N'table', N'SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT X.Name AS ''{$om.variant.tabletitle$}'',ISNULL (Y.Hits,0) AS ''{$om.selectedperiod$}'',
ISNULL(X.Hits,0) AS ''{$om.total$}''  FROM
(
SELECT ABVariantDisplayName AS Name, ISNULL(SUM (HitsCount),0) AS Hits,ABVariantName FROM Analytics_Statistics
  LEFT JOIN OM_ABVariant ON ABVariantSiteID = @CMSContextCurrentSiteID AND
    ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
  LEFT JOIN Analytics_YearHits ON StatisticsID = HitsSTatisticsID    
 WHERE   StatisticsSiteID = @CMSContextCurrentSiteID AND StatisticsCode LIKE ''abconversion;%'' AND
 @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND
 ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY ABVariantDisplayName,ABVariantName
)
 AS X
LEFT JOIN (SELECT
  SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode)) AS ABVariantName, SUM(HitsCount) AS Hits FROM Analytics_Statistics
  LEFT JOIN Analytics_YearHits ON HitsStatisticsID = StatisticsID
  
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''abconversion;%''
    AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
    AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
     
  GROUP BY SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
)
AS Y ON X.ABVariantName = Y.ABVariantName
 
ORDER BY X.Hits Desc', 0, 429, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '5fb8d096-7887-4d79-a9f9-556e3fc892c8', '20120323 11:13:30', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (559, N'table', N'table', N'SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT X.Name AS ''{$om.variant.tabletitle$}'',ISNULL (Y.Hits,0) AS ''{$om.selectedperiod$}'',
ISNULL(X.Hits,0) AS ''{$om.total$}''  FROM
(
SELECT ABVariantDisplayName AS Name, ISNULL(SUM (HitsCount),0) AS Hits,ABVariantName FROM Analytics_Statistics
  LEFT JOIN OM_ABVariant ON ABVariantSiteID = @CMSContextCurrentSiteID AND
    ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
  LEFT JOIN Analytics_WeekHits ON StatisticsID = HitsSTatisticsID    
 WHERE   StatisticsSiteID = @CMSContextCurrentSiteID AND StatisticsCode LIKE ''abconversion;%'' AND
 @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND
 ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY ABVariantDisplayName,ABVariantName
)
 AS X
LEFT JOIN (SELECT
  SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode)) AS ABVariantName, SUM(HitsCount) AS Hits FROM Analytics_Statistics
  LEFT JOIN Analytics_WeekHits ON HitsStatisticsID = StatisticsID
  
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''abconversion;%''
    AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
    AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
     
  GROUP BY SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
)
AS Y ON X.ABVariantName = Y.ABVariantName
 
ORDER BY X.Hits Desc', 0, 432, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'f214eaa6-c963-4ad8-b415-40735d8565cd', '20120323 11:13:31', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (560, N'table', N'table', N'SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT X.Name AS ''{$om.variant.tabletitle$}'',ISNULL (Y.Hits,0) AS ''{$om.selectedperiod$}'',
ISNULL(X.Hits,0) AS ''{$om.total$}''  FROM
(
SELECT ABVariantDisplayName AS Name, ISNULL(SUM (HitsCount),0) AS Hits,ABVariantName FROM Analytics_Statistics
  LEFT JOIN OM_ABVariant ON ABVariantSiteID = @CMSContextCurrentSiteID AND
    ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
  LEFT JOIN Analytics_MonthHits ON StatisticsID = HitsSTatisticsID    
 WHERE   StatisticsSiteID = @CMSContextCurrentSiteID AND StatisticsCode LIKE ''abconversion;%'' AND
 @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND
 ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY ABVariantDisplayName,ABVariantName
)
 AS X
LEFT JOIN (SELECT
  SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode)) AS ABVariantName, SUM(HitsCount) AS Hits FROM Analytics_Statistics
  LEFT JOIN Analytics_MonthHits ON HitsStatisticsID = StatisticsID
  
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''abconversion;%''
    AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
    AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
     
  GROUP BY SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
)
AS Y ON X.ABVariantName = Y.ABVariantName
 
ORDER BY X.Hits Desc', 0, 431, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'd887e5ae-ef38-4941-9a3c-8c0a622e04fd', '20120323 11:13:31', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (561, N'table', N'table', N'SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT X.Name AS ''{$om.variant.tabletitle$}'',ISNULL (Y.Hits,0) AS ''{$om.selectedperiod$}'',
ISNULL(X.Hits,0) AS ''{$om.total$}''  FROM
(
SELECT ABVariantDisplayName AS Name, ISNULL(SUM (HitsCount),0) AS Hits,ABVariantName FROM Analytics_Statistics
  LEFT JOIN OM_ABVariant ON ABVariantSiteID = @CMSContextCurrentSiteID AND
    ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
  LEFT JOIN Analytics_HourHits ON StatisticsID = HitsSTatisticsID    
 WHERE   StatisticsSiteID = @CMSContextCurrentSiteID AND StatisticsCode LIKE ''abconversion;%'' AND
 @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND
 ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY ABVariantDisplayName,ABVariantName
)
 AS X
LEFT JOIN (SELECT
  SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode)) AS ABVariantName, SUM(HitsCount) AS Hits FROM Analytics_Statistics
  LEFT JOIN Analytics_HourHits ON HitsStatisticsID = StatisticsID
  
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''abconversion;%''
    AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
    AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
     
  GROUP BY SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
)
AS Y ON X.ABVariantName = Y.ABVariantName
 
ORDER BY X.Hits Desc', 0, 433, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '1f715a33-7857-47c2-9d9d-b358720c07a1', '20120323 11:13:31', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (562, N'table', N'table', N'SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT X.Name AS ''{$om.variant.tabletitle$}'',ISNULL (Y.Hits,0) AS ''{$om.selectedperiod$}'',
ISNULL(X.Hits,0) AS ''{$om.total$}''  FROM
(
SELECT ABVariantDisplayName AS Name, ISNULL(SUM (HitsCount),0) AS Hits,ABVariantName FROM Analytics_Statistics
  LEFT JOIN OM_ABVariant ON ABVariantSiteID = @CMSContextCurrentSiteID AND
    ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
  LEFT JOIN Analytics_DayHits ON StatisticsID = HitsSTatisticsID    
 WHERE   StatisticsSiteID = @CMSContextCurrentSiteID AND StatisticsCode LIKE ''abconversion;%'' AND
 @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND
 ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY ABVariantDisplayName,ABVariantName
)
 AS X
LEFT JOIN (SELECT
  SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode)) AS ABVariantName, SUM(HitsCount) AS Hits FROM Analytics_Statistics
  LEFT JOIN Analytics_DayHits ON HitsStatisticsID = StatisticsID
  
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''abconversion;%''
    AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
    AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
     
  GROUP BY SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
)
AS Y ON X.ABVariantName = Y.ABVariantName
 
ORDER BY X.Hits Desc', 0, 434, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '7b06c7c2-357f-4387-b652-5cc04207f2db', '20120323 11:13:30', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (563, N'table', N'table', N'SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT X.Name AS ''{$om.variant.tabletitle$}'',ISNULL (Y.Hits,0) AS ''{$om.selectedperiod$}'',
ISNULL(X.Hits,0) AS ''{$om.total$}''  FROM
(
SELECT ABVariantDisplayName AS Name, ISNULL(SUM (HitsValue),0) AS Hits,ABVariantName FROM Analytics_Statistics
  LEFT JOIN OM_ABVariant ON ABVariantSiteID = @CMSContextCurrentSiteID AND
    ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
  LEFT JOIN Analytics_DayHits ON StatisticsID = HitsSTatisticsID    
 WHERE   StatisticsSiteID = @CMSContextCurrentSiteID AND StatisticsCode LIKE ''abconversion;%'' AND
 @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND
 ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY ABVariantDisplayName,ABVariantName
)
 AS X
LEFT JOIN (SELECT
  SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode)) AS ABVariantName, SUM(HitsValue) AS Hits FROM Analytics_Statistics
  LEFT JOIN Analytics_DayHits ON HitsStatisticsID = StatisticsID
  
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''abconversion;%''
    AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
    AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
     
  GROUP BY SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
)
AS Y ON X.ABVariantName = Y.ABVariantName
 
ORDER BY X.Hits Desc', 0, 440, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'ca18bb54-9c89-496e-9c16-d7dca4880b0d', '20120323 11:13:31', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (564, N'table', N'table', N'SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT X.Name AS ''{$om.variant.tabletitle$}'',ISNULL (Y.Hits,0) AS ''{$om.selectedperiod$}'',
ISNULL(X.Hits,0) AS ''{$om.total$}''  FROM
(
SELECT ABVariantDisplayName AS Name, ISNULL(SUM (HitsValue),0) AS Hits,ABVariantName FROM Analytics_Statistics
  LEFT JOIN OM_ABVariant ON ABVariantSiteID = @CMSContextCurrentSiteID AND
    ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
  LEFT JOIN Analytics_MonthHits ON StatisticsID = HitsSTatisticsID    
 WHERE   StatisticsSiteID = @CMSContextCurrentSiteID AND StatisticsCode LIKE ''abconversion;%'' AND
 @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND
 ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY ABVariantDisplayName,ABVariantName
)
 AS X
LEFT JOIN (SELECT
  SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode)) AS ABVariantName, SUM(HitsValue) AS Hits FROM Analytics_Statistics
  LEFT JOIN Analytics_MonthHits ON HitsStatisticsID = StatisticsID
  
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''abconversion;%''
    AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
    AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
     
  GROUP BY SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
)
AS Y ON X.ABVariantName = Y.ABVariantName
 
ORDER BY X.Hits Desc', 0, 438, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '8766c510-cdac-4d42-a40a-c51563d343f3', '20120323 11:13:31', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (565, N'table', N'table', N'SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT X.Name AS ''{$om.variant.tabletitle$}'',ISNULL (Y.Hits,0) AS ''{$om.selectedperiod$}'',
ISNULL(X.Hits,0) AS ''{$om.total$}''  FROM
(
SELECT ABVariantDisplayName AS Name, ISNULL(SUM (HitsValue),0) AS Hits,ABVariantName FROM Analytics_Statistics
  LEFT JOIN OM_ABVariant ON ABVariantSiteID = @CMSContextCurrentSiteID AND
    ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
  LEFT JOIN Analytics_WeekHits ON StatisticsID = HitsSTatisticsID    
 WHERE   StatisticsSiteID = @CMSContextCurrentSiteID AND StatisticsCode LIKE ''abconversion;%'' AND
 @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND
 ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY ABVariantDisplayName,ABVariantName
)
 AS X
LEFT JOIN (SELECT
  SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode)) AS ABVariantName, SUM(HitsValue) AS Hits FROM Analytics_Statistics
  LEFT JOIN Analytics_WeekHits ON HitsStatisticsID = StatisticsID
  
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''abconversion;%''
    AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
    AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
     
  GROUP BY SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
)
AS Y ON X.ABVariantName = Y.ABVariantName
 
ORDER BY X.Hits Desc', 0, 439, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'a2fca359-0eec-4ca1-aea8-419844e8ed2b', '20120323 11:13:31', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (566, N'table', N'table', N'SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT X.Name AS ''{$om.variant.tabletitle$}'',ISNULL (Y.Hits,0) AS ''{$om.selectedperiod$}'',
ISNULL(X.Hits,0) AS ''{$om.total$}''  FROM
(
SELECT ABVariantDisplayName AS Name, ISNULL(SUM (HitsValue),0) AS Hits,ABVariantName FROM Analytics_Statistics
  LEFT JOIN OM_ABVariant ON ABVariantSiteID = @CMSContextCurrentSiteID AND
    ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
  LEFT JOIN Analytics_YearHits ON StatisticsID = HitsSTatisticsID    
 WHERE   StatisticsSiteID = @CMSContextCurrentSiteID AND StatisticsCode LIKE ''abconversion;%'' AND
 @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND
 ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY ABVariantDisplayName,ABVariantName
)
 AS X
LEFT JOIN (SELECT
  SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode)) AS ABVariantName, SUM(HitsValue) AS Hits FROM Analytics_Statistics
  LEFT JOIN Analytics_YearHits ON HitsStatisticsID = StatisticsID
  
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''abconversion;%''
    AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
    AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
     
  GROUP BY SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
)
AS Y ON X.ABVariantName = Y.ABVariantName
 
ORDER BY X.Hits Desc', 0, 437, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'b5d99d2e-f1d4-40d8-9e57-6cfa0189cec2', '20120323 11:13:31', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (567, N'table', N'table', N'SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate = {%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT X.Name AS ''{$om.variant.tabletitle$}'',ISNULL (Y.Hits,0) AS ''{$om.selectedperiod$}'',
ISNULL(X.Hits,0) AS ''{$om.total$}''  FROM
(
SELECT ABVariantDisplayName AS Name, ISNULL(SUM (HitsValue),0) AS Hits,ABVariantName FROM Analytics_Statistics
  LEFT JOIN OM_ABVariant ON ABVariantSiteID = @CMSContextCurrentSiteID AND
    ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
  LEFT JOIN Analytics_HourHits ON StatisticsID = HitsSTatisticsID    
 WHERE   StatisticsSiteID = @CMSContextCurrentSiteID AND StatisticsCode LIKE ''abconversion;%'' AND
 @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND
 ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY ABVariantDisplayName,ABVariantName
)
 AS X
LEFT JOIN (SELECT
  SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode)) AS ABVariantName, SUM(HitsValue) AS Hits FROM Analytics_Statistics
  LEFT JOIN Analytics_HourHits ON HitsStatisticsID = StatisticsID
  
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND StatisticsCode LIKE ''abconversion;%''
    AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
    AND ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
     
  GROUP BY SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))
)
AS Y ON X.ABVariantName = Y.ABVariantName
 
ORDER BY X.Hits Desc', 0, 441, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '5e38095a-f853-48bf-8126-32e81aad7d44', '20120323 11:13:31', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (568, N'table', N'table', N'EXEC Proc_Analytics_RemoveTempTable 
 CREATE TABLE #AnalyticsTempTable (  
  Hits DECIMAL(15,2),
  Name NVARCHAR(300) COLLATE database_default,  
  Culture NVARCHAR(300) COLLATE database_default,   
  Page NVARCHAR(300) COLLATE database_default   
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
INSERT INTO #AnalyticsTempTable (Name,Hits,Page,Culture)
SELECT X.Name AS Name,CAST (ISNULL (X.Hits,0) AS DECIMAL (15,2)) AS Hits, X.Page AS Page,X.Culture AS Culture  FROM
(
SELECT ABVariantDisplayName AS Name, ISNULL(SUM (HitsCount),0) AS Hits,ABVariantName,ABVariantPath AS Page, ABTestCulture AS Culture FROM Analytics_Statistics
  LEFT JOIN OM_ABVariant ON ABVariantSiteID = @CMSContextCurrentSiteID AND
    ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))         
  LEFT JOIN Analytics_YearHits ON StatisticsID = HitsSTatisticsID    
  LEFT JOIN OM_ABTest ON ABTestSiteID = @CMSContextCurrentSiteID AND ABTestName = @TestName AND ABVariantTestID = ABTestID
 WHERE   StatisticsSiteID = @CMSContextCurrentSiteID AND StatisticsCode LIKE ''abconversion;%'' AND
 @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)
 AND HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate   
 AND  ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY ABVariantDisplayName,ABVariantName,ABVariantPath, ABTestCulture
)
 AS X
ORDER BY X.Hits Desc
 UPDATE #AnalyticsTempTable SET Hits = ISNULL (Hits/
 (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (10,2)) FROM Analytics_Statistics
   JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate   
   AND Analytics_Statistics.StatisticsObjectID IN
  (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath = Page AND NodeSiteID = @CMSContextCurrentSiteID AND (DocumentCulture = StatisticsObjectCulture OR StatisticsObjectCulture IS NULL))
     /*culture */
     AND (StatisticsObjectCulture IS NULL OR StatisticsObjectCulture = Culture OR Culture IS NULL)    
   )
  *100  ,0)
  
SELECT Name AS ''{$om.variant.tabletitle$}'',
   CAST (CAST (ISNULL (Hits,0) AS DECIMAL (15,1)) AS NVARCHAR(15)) + ''%'' AS ''{$om.selectedperiod$}''  
 FROM #AnalyticsTempTable ORDER BY Hits DESC
EXEC Proc_Analytics_RemoveTempTable', 0, 443, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '6170155e-341e-4fa4-9ff6-136b7edc6577', '20120323 11:13:31', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (569, N'table', N'table', N'EXEC Proc_Analytics_RemoveTempTable 
 CREATE TABLE #AnalyticsTempTable (  
  Hits DECIMAL(15,2),
  Name NVARCHAR(300) COLLATE database_default,  
  Culture NVARCHAR(300) COLLATE database_default,   
  Page NVARCHAR(300) COLLATE database_default   
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
INSERT INTO #AnalyticsTempTable (Name,Hits,Page,Culture)
SELECT X.Name AS Name,CAST (ISNULL (X.Hits,0) AS DECIMAL (15,2)) AS Hits, X.Page AS Page,X.Culture AS Culture  FROM
(
SELECT ABVariantDisplayName AS Name, ISNULL(SUM (HitsCount),0) AS Hits,ABVariantName,ABVariantPath AS Page, ABTestCulture AS Culture FROM Analytics_Statistics
  LEFT JOIN OM_ABVariant ON ABVariantSiteID = @CMSContextCurrentSiteID AND
    ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))         
  LEFT JOIN Analytics_WeekHits ON StatisticsID = HitsSTatisticsID    
  LEFT JOIN OM_ABTest ON ABTestSiteID = @CMSContextCurrentSiteID AND ABTestName = @TestName AND ABVariantTestID = ABTestID
 WHERE   StatisticsSiteID = @CMSContextCurrentSiteID AND StatisticsCode LIKE ''abconversion;%'' AND
 @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)
 AND HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate   
 AND  ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY ABVariantDisplayName,ABVariantName,ABVariantPath, ABTestCulture
)
 AS X
ORDER BY X.Hits Desc
 UPDATE #AnalyticsTempTable SET Hits = ISNULL (Hits/
 (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (10,2)) FROM Analytics_Statistics
   JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate   
   AND Analytics_Statistics.StatisticsObjectID IN
  (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath = Page AND NodeSiteID = @CMSContextCurrentSiteID AND (DocumentCulture = StatisticsObjectCulture OR StatisticsObjectCulture IS NULL))
     /*culture */
     AND (StatisticsObjectCulture IS NULL OR StatisticsObjectCulture = Culture OR Culture IS NULL)    
   )
  *100  ,0)
  
SELECT Name AS ''{$om.variant.tabletitle$}'',
   CAST (CAST (ISNULL (Hits,0) AS DECIMAL (15,1)) AS NVARCHAR(15)) + ''%'' AS ''{$om.selectedperiod$}''  
 FROM #AnalyticsTempTable ORDER BY Hits DESC
EXEC Proc_Analytics_RemoveTempTable', 0, 445, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', 'eb90b678-c683-42d6-90db-4b0f8e2e0a6d', '20120323 11:13:31', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (570, N'table', N'table', N'EXEC Proc_Analytics_RemoveTempTable 
 CREATE TABLE #AnalyticsTempTable (  
  Hits DECIMAL(15,2),
  Name NVARCHAR(300) COLLATE database_default,  
  Culture NVARCHAR(300) COLLATE database_default,   
  Page NVARCHAR(300) COLLATE database_default   
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
INSERT INTO #AnalyticsTempTable (Name,Hits,Page,Culture)
SELECT X.Name AS Name,CAST (ISNULL (X.Hits,0) AS DECIMAL (15,2)) AS Hits, X.Page AS Page,X.Culture AS Culture  FROM
(
SELECT ABVariantDisplayName AS Name, ISNULL(SUM (HitsCount),0) AS Hits,ABVariantName,ABVariantPath AS Page, ABTestCulture AS Culture FROM Analytics_Statistics
  LEFT JOIN OM_ABVariant ON ABVariantSiteID = @CMSContextCurrentSiteID AND
    ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))         
  LEFT JOIN Analytics_MonthHits ON StatisticsID = HitsSTatisticsID    
  LEFT JOIN OM_ABTest ON ABTestSiteID = @CMSContextCurrentSiteID AND ABTestName = @TestName AND ABVariantTestID = ABTestID
 WHERE   StatisticsSiteID = @CMSContextCurrentSiteID AND StatisticsCode LIKE ''abconversion;%'' AND
 @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)
 AND HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate   
 AND  ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY ABVariantDisplayName,ABVariantName,ABVariantPath, ABTestCulture
)
 AS X
ORDER BY X.Hits Desc
 UPDATE #AnalyticsTempTable SET Hits = ISNULL (Hits/
 (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (10,2)) FROM Analytics_Statistics
   JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate   
   AND Analytics_Statistics.StatisticsObjectID IN
  (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath = Page AND NodeSiteID = @CMSContextCurrentSiteID AND (DocumentCulture = StatisticsObjectCulture OR StatisticsObjectCulture IS NULL))
     /*culture */
     AND (StatisticsObjectCulture IS NULL OR StatisticsObjectCulture = Culture OR Culture IS NULL)    
   )
  *100  ,0)
  
SELECT Name AS ''{$om.variant.tabletitle$}'',
   CAST (CAST (ISNULL (Hits,0) AS DECIMAL (15,1)) AS NVARCHAR(15)) + ''%'' AS ''{$om.selectedperiod$}''  
 FROM #AnalyticsTempTable ORDER BY Hits DESC
EXEC Proc_Analytics_RemoveTempTable', 0, 444, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '82733e5b-6e8b-42f2-b248-3689431e0a68', '20120323 11:13:31', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (571, N'table', N'table', N'EXEC Proc_Analytics_RemoveTempTable 
 CREATE TABLE #AnalyticsTempTable (  
  Hits DECIMAL(15,2),
  Name NVARCHAR(300) COLLATE database_default,  
  Culture NVARCHAR(300) COLLATE database_default,   
  Page NVARCHAR(300) COLLATE database_default   
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
INSERT INTO #AnalyticsTempTable (Name,Hits,Page,Culture)
SELECT X.Name AS Name,CAST (ISNULL (X.Hits,0) AS DECIMAL (15,2)) AS Hits, X.Page AS Page,X.Culture AS Culture  FROM
(
SELECT ABVariantDisplayName AS Name, ISNULL(SUM (HitsCount),0) AS Hits,ABVariantName,ABVariantPath AS Page, ABTestCulture AS Culture FROM Analytics_Statistics
  LEFT JOIN OM_ABVariant ON ABVariantSiteID = @CMSContextCurrentSiteID AND
    ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))         
  LEFT JOIN Analytics_HourHits ON StatisticsID = HitsSTatisticsID    
  LEFT JOIN OM_ABTest ON ABTestSiteID = @CMSContextCurrentSiteID AND ABTestName = @TestName AND ABVariantTestID = ABTestID
 WHERE   StatisticsSiteID = @CMSContextCurrentSiteID AND StatisticsCode LIKE ''abconversion;%'' AND
 @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)
 AND HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate   
 AND  ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY ABVariantDisplayName,ABVariantName,ABVariantPath, ABTestCulture
)
 AS X
ORDER BY X.Hits Desc
 UPDATE #AnalyticsTempTable SET Hits = ISNULL (Hits/
 (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (10,2)) FROM Analytics_Statistics
   JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate   
   AND Analytics_Statistics.StatisticsObjectID IN
  (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath = Page AND NodeSiteID = @CMSContextCurrentSiteID AND (DocumentCulture = StatisticsObjectCulture OR StatisticsObjectCulture IS NULL))
     /*culture */
     AND (StatisticsObjectCulture IS NULL OR StatisticsObjectCulture = Culture OR Culture IS NULL)    
   )
  *100  ,0)
  
SELECT Name AS ''{$om.variant.tabletitle$}'',
   CAST (CAST (ISNULL (Hits,0) AS DECIMAL (15,1)) AS NVARCHAR(15)) + ''%'' AS ''{$om.selectedperiod$}''  
 FROM #AnalyticsTempTable ORDER BY Hits DESC
EXEC Proc_Analytics_RemoveTempTable', 0, 447, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '519e9b0b-0287-426c-a24d-d06adc911b29', '20120323 11:13:31', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (572, N'table', N'table', N'EXEC Proc_Analytics_RemoveTempTable 
 CREATE TABLE #AnalyticsTempTable (  
  Hits DECIMAL(15,2),
  Name NVARCHAR(300) COLLATE database_default,  
  Culture NVARCHAR(300) COLLATE database_default,   
  Page NVARCHAR(300) COLLATE database_default   
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
INSERT INTO #AnalyticsTempTable (Name,Hits,Page,Culture)
SELECT X.Name AS Name,CAST (ISNULL (X.Hits,0) AS DECIMAL (15,2)) AS Hits, X.Page AS Page,X.Culture AS Culture  FROM
(
SELECT ABVariantDisplayName AS Name, ISNULL(SUM (HitsCount),0) AS Hits,ABVariantName,ABVariantPath AS Page, ABTestCulture AS Culture FROM Analytics_Statistics
  LEFT JOIN OM_ABVariant ON ABVariantSiteID = @CMSContextCurrentSiteID AND
    ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))         
  LEFT JOIN Analytics_DayHits ON StatisticsID = HitsSTatisticsID    
  LEFT JOIN OM_ABTest ON ABTestSiteID = @CMSContextCurrentSiteID AND ABTestName = @TestName AND ABVariantTestID = ABTestID
 WHERE   StatisticsSiteID = @CMSContextCurrentSiteID AND StatisticsCode LIKE ''abconversion;%'' AND
 @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)
 AND HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate   
 AND  ISNULL(@ConversionName,'''') IN ('''',StatisticsObjectName)
 
 GROUP BY ABVariantDisplayName,ABVariantName,ABVariantPath, ABTestCulture
)
 AS X
ORDER BY X.Hits Desc
 UPDATE #AnalyticsTempTable SET Hits = ISNULL (Hits/
 (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (10,2)) FROM Analytics_Statistics
   JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND HitsStartTime >= @FromDate AND HitsEndTime <= @ToDate   
   AND Analytics_Statistics.StatisticsObjectID IN
  (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath = Page AND NodeSiteID = @CMSContextCurrentSiteID AND (DocumentCulture = StatisticsObjectCulture OR StatisticsObjectCulture IS NULL))
     /*culture */
     AND (StatisticsObjectCulture IS NULL OR StatisticsObjectCulture = Culture OR Culture IS NULL)    
   )
  *100  ,0)
  
SELECT Name AS ''{$om.variant.tabletitle$}'',
   CAST (CAST (ISNULL (Hits,0) AS DECIMAL (15,1)) AS NVARCHAR(15)) + ''%'' AS ''{$om.selectedperiod$}''  
 FROM #AnalyticsTempTable ORDER BY Hits DESC
EXEC Proc_Analytics_RemoveTempTable', 0, 446, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '639182ae-112b-4ce9-be1c-646f1e432b13', '20120323 11:13:32', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (580, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100 StatisticsObjectName AS ''{$reports_countries.name_header$}'', SUM(HitsCount) AS ''{$reports_countries.hits_header$}'' FROM 
Analytics_Statistics, Analytics_YearHits WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID) AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, 749, N'<customdata><querynorecordtext></querynorecordtext><subscriptionenabled>True</subscriptionenabled><exportenabled>True</exportenabled><pagesize>10</pagesize><enablepaging>False</enablepaging><skinid>ReportGridAnalytics</skinid><pagemode>1</pagemode></customdata>', '255b0e32-1ab5-4b2c-b358-37c8fcf42b3f', '20120323 11:13:32', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (581, N'table', N'table', N'/* Trims the value of @FromDate to be able to display years in the table. */
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
/* Selects the number of orders created in the given years. */
SELECT 
   DATEPART(YEAR,[Date]) AS ''{$ecommerce.report_year$}'', 
   COUNT(OrderDate) AS ''{$ecommerce.report_numberoforders$}''  
FROM
   -- returns a column of dates, each year in a new row
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates
   LEFT JOIN COM_Order  
      ON ([Date] <= OrderDate  AND  DATEADD(YEAR,1,[Date]) > OrderDate) 
      AND OrderSiteID = @CMSContextCurrentSiteID
GROUP BY [Date]
ORDER BY [Date] DESC', 0, 752, N'<customdata><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><exportenabled>True</exportenabled><skinid>ReportGridAnalytics</skinid><pagesize>10</pagesize><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '5f0ffe41-93ba-4e5e-b2ed-24eeb431da44', '20120405 13:57:11', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (582, N'table', N'table', N'/* Trims the value of @FromDate to be able to display months in the table. */
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
/* Selects the number of orders created in the given months. */
SELECT 
   DATENAME(MONTH,[Date])+'', ''+ DATENAME(YEAR, [Date])  AS ''{$ecommerce.report_month$}'', 
   COUNT(OrderDate) AS ''{$ecommerce.report_numberoforders$}''  
FROM
   -- returns a column of dates, each month in a new row
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates
   LEFT JOIN COM_Order  
      ON ([Date] <= OrderDate  AND  DATEADD(MONTH,1,[Date]) > OrderDate) 
      AND OrderSiteID = @CMSContextCurrentSiteID
GROUP BY [Date]
ORDER BY [Date] DESC', 0, 753, N'<customdata><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><exportenabled>True</exportenabled><skinid>ReportGridAnalytics</skinid><pagesize>10</pagesize><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '0a09d488-a5e2-4a9c-b4c9-5a8bc91023e1', '20120405 13:56:06', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (583, N'table', N'table', N'/* Trims the value of @FromDate to be able to display days in the table. */
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'')
/* Selects the number of orders created in the given days. */ 
SELECT 
   CAST(DATEPART(MONTH,[Date]) AS NVARCHAR(2)) +''/''+ DATENAME(DAY,[Date])+''/''+DATENAME(YEAR,[Date]) AS ''{$ecommerce.report_day$}'', 
   COUNT(OrderDate) AS ''{$ecommerce.report_numberoforders$}'' 
FROM 
   -- returns a column of dates, each day in a new row 
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates
   LEFT JOIN COM_Order  
      ON ([Date] <= OrderDate  AND  DATEADD(DAY,1,[Date]) > OrderDate) 
      AND OrderSiteID = @CMSContextCurrentSiteID
GROUP BY [Date]
ORDER BY [Date] DESC', 0, 754, N'<customdata><querynorecordtext>{$general.nodatafound$}</querynorecordtext><subscriptionenabled>False</subscriptionenabled><exportenabled>True</exportenabled><skinid>ReportGridAnalytics</skinid><pagesize>10</pagesize><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '2c56c9a0-1048-46e0-bbd5-c9ace9b35be9', '20120405 13:54:51', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (587, N'TopNContacts', N'Top N Contacts', N'SELECT TOP (@SelectTopN) 
	SUM(OM_ScoreContactRule.Value) as [{$om.score$}],
	ContactFirstName as [{$om.contact.firstname$}], 
	ContactLastName as [{$om.contact.lastname$}], 
        ContactEmail as [{$general.email$}],
        ContactIsAnonymous as [{$om.contact.isanonymous$}],
        ContactStatusName as [{$om.contactstatus$}]
FROM OM_Contact
LEFT JOIN OM_ContactStatus ON OM_Contact.ContactStatusID = OM_ContactStatus.ContactStatusID
INNER JOIN OM_ScoreContactRule ON OM_Contact.ContactID = OM_ScoreContactRule.ContactID
INNER JOIN OM_Score ON OM_ScoreContactRule.ScoreID = OM_Score.ScoreID
INNER JOIN OM_Rule ON OM_ScoreContactRule.RuleID = OM_Rule.RuleID
WHERE
  OM_Score.ScoreEnabled = 1
  AND
  (@ScoreID = -1 OR OM_Score.ScoreID = @ScoreID)
  AND
  OM_Score.ScoreSiteID = @CMSContextCurrentSiteID
GROUP BY OM_Contact.ContactID, ContactFirstName, ContactLastName, ContactIsAnonymous, ContactEmail, ContactStatusName
ORDER BY [{$om.score$}] DESC', 0, 757, N'<customdata><enablepaging>True</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><skinid></skinid><pagesize>15</pagesize></customdata>', '0a00506e-8929-4f8f-81bf-ed23f3dc786b', '20120615 12:07:03', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (588, N'ContactsWithScoreHigherThanN', N'Contacts with score higher than N', N'SELECT
	SUM(OM_ScoreContactRule.Value) as [{$om.score$}],
	ContactFirstName as [{$om.contact.firstname$}], 
	ContactLastName as [{$om.contact.lastname$}], 
        ContactEmail as [{$general.email$}],
        ContactIsAnonymous as [{$om.contact.isanonymous$}],
        ContactStatusName as [{$om.contactstatus$}]
FROM OM_Contact
LEFT JOIN OM_ContactStatus ON OM_Contact.ContactStatusID = OM_ContactStatus.ContactStatusID
INNER JOIN OM_ScoreContactRule ON OM_Contact.ContactID = OM_ScoreContactRule.ContactID
INNER JOIN OM_Score ON OM_ScoreContactRule.ScoreID = OM_Score.ScoreID
INNER JOIN OM_Rule ON OM_ScoreContactRule.RuleID = OM_Rule.RuleID
WHERE
  OM_Score.ScoreEnabled = 1
  AND
  (@ScoreID = -1 OR OM_Score.ScoreID = @ScoreID)
  AND
  OM_Score.ScoreSiteID = @CMSContextCurrentSiteID
GROUP BY OM_Contact.ContactID, ContactFirstName, ContactLastName, ContactIsAnonymous, ContactEmail, ContactStatusName
HAVING SUM(OM_ScoreContactRule.Value) >= @MinimalScore
ORDER BY [{$om.score$}] DESC', 0, 758, N'<customdata><enablepaging>True</enablepaging><pagemode>1</pagemode><skinid></skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><subscriptionenabled>True</subscriptionenabled><pagesize>15</pagesize></customdata>', '741b6c81-1266-43ba-a180-b80b32d069e1', '20120615 12:05:50', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (589, N'TopPctContacts', N'Top % Contacts', N'SELECT TOP (@SelectTopNPct) PERCENT 
	SUM(OM_ScoreContactRule.Value) as [{$om.score$}],
	ContactFirstName as [{$om.contact.firstname$}], 
	ContactLastName as [{$om.contact.lastname$}], 
        ContactEmail as [{$general.email$}],
        ContactIsAnonymous as [{$om.contact.isanonymous$}],
        ContactStatusName as [{$om.contactstatus$}]
FROM OM_Contact
LEFT JOIN OM_ContactStatus ON OM_Contact.ContactStatusID = OM_ContactStatus.ContactStatusID
INNER JOIN OM_ScoreContactRule ON OM_Contact.ContactID = OM_ScoreContactRule.ContactID
INNER JOIN OM_Score ON OM_ScoreContactRule.ScoreID = OM_Score.ScoreID
INNER JOIN OM_Rule ON OM_ScoreContactRule.RuleID = OM_Rule.RuleID
WHERE
  OM_Score.ScoreEnabled = 1
  AND
  (@ScoreID = -1 OR OM_Score.ScoreID = @ScoreID)
  AND
  OM_Score.ScoreSiteID = @CMSContextCurrentSiteID
GROUP BY OM_Contact.ContactID, ContactFirstName, ContactLastName, ContactIsAnonymous, ContactEmail, ContactStatusName
ORDER BY [{$om.score$}] DESC', 0, 759, N'<customdata><enablepaging>False</enablepaging><pagemode>1</pagemode><exportenabled>True</exportenabled><querynorecordtext>No data found</querynorecordtext><subscriptionenabled>True</subscriptionenabled><skinid></skinid><pagesize>15</pagesize></customdata>', 'ceb31edd-8103-4a30-9dd4-3accde62c4e0', '20120615 12:06:29', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (590, N'DocumentAliasesTable', N'Document aliases table', N'SELECT NodeName, NodeAliasPath, AliasUrlPath, AliasCulture, AliasExtensions  
FROM CMS_DocumentAlias LEFT JOIN CMS_Tree 
ON AliasNodeID = NodeID 
WHERE NodeSiteID = {% CMSContext.CurrentSiteID |(user)administrator|(hash)2cbb3933d6fe028c10b72ff08f995085e8fe7902d8c14db671019a1c750b0874%}
ORDER BY NodeAliasPath', 0, 760, N'<customdata><pagesize>20</pagesize><subscriptionenabled>True</subscriptionenabled><skinid></skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>True</enablepaging><exportenabled>True</exportenabled></customdata>', 'ead70440-74db-4375-a13d-dfd0caa4a543', '20120323 11:13:51', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (592, N'table', N'table', N'DECLARE @PaveViews TABLE
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
SELECT TOP 10
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
   FROM @PaveViews ORDER BY PageViews DESC', 0, 761, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '24dd4953-f8fa-4c83-a4ce-00504c72b6b0', '20120323 11:13:52', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (597, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''day'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchcrawler.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchcrawler.hits_header$}'',
  (SELECT MAX(HitsStartTime) FROM Analytics_HourHits INNER JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)) AS ''{$reports_searchcrawler.lastvisit_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 770, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid></skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '5ab34a40-a7fa-43ac-b31f-571dce4dd46f', '20120323 11:13:28', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (598, N'Crawlers', N'Crawlers', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''{%Interval|(default)Year%}'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''{%Interval|(default)Year%}'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchcrawler.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchcrawler.hits_detail_header$}'',
  (SELECT MAX(HitsStartTime) FROM Analytics_HourHits INNER JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)) AS ''{$reports_searchcrawler.lastvisit_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=N''crawler'')
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) AND (StatisticsObjectID = @NodeID)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC
/*SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''{%Interval|(default)Year%}'');
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
  ORDER BY SUM(HitsCount) DESC*/', 0, 584, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid>ReportGridAnalytics</skinid><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><enablepaging>False</enablepaging><pagemode>1</pagemode></customdata>', '8880269e-cf21-4874-ba72-a6bff0f1bea1', '20120323 11:13:50', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (599, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''hour'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchcrawler.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchcrawler.hits_header$}'',
  (SELECT MAX(HitsStartTime) FROM Analytics_HourHits INNER JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)) AS ''{$reports_searchcrawler.lastvisit_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 771, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid></skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'b2528806-a927-4fa1-a4f6-7c91b46f7b00', '20120323 11:13:50', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (600, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchcrawler.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchcrawler.hits_header$}'',
  (SELECT MAX(HitsStartTime) FROM Analytics_HourHits INNER JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)) AS ''{$reports_searchcrawler.lastvisit_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 772, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid></skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '2e0e85da-087e-49e0-99f0-bf76955d775a', '20120323 11:13:50', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (601, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''month'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchcrawler.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchcrawler.hits_header$}'',
  (SELECT MAX(HitsStartTime) FROM Analytics_HourHits INNER JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)) AS ''{$reports_searchcrawler.lastvisit_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 773, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid></skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', '5346d068-4138-4f7e-9bd8-8b885899cc1a', '20120323 11:13:50', NULL)
INSERT INTO [Reporting_ReportTable] ([TableID], [TableName], [TableDisplayName], [TableQuery], [TableQueryIsStoredProcedure], [TableReportID], [TableSettings], [TableGUID], [TableLastModified], [TableConnectionString]) VALUES (602, N'table', N'table', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT TOP 100
StatisticsObjectName  AS ''{$reports_searchcrawler.name_header$}'',
 SUM(HitsCount) AS ''{$reports_searchcrawler.hits_header$}'',
  (SELECT MAX(HitsStartTime) FROM Analytics_HourHits INNER JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  WHERE (StatisticsSiteID=@CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate)
  AND (HitsEndTime <= @ToDate)) AS ''{$reports_searchcrawler.lastvisit_header$}''
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID)
  AND (StatisticsCode=@CodeName)
  AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate)
  GROUP BY StatisticsObjectName
  ORDER BY SUM(HitsCount) DESC', 0, 774, N'<customdata><pagesize>15</pagesize><subscriptionenabled>True</subscriptionenabled><skinid></skinid><querynorecordtext>No data found</querynorecordtext><pagemode>1</pagemode><enablepaging>False</enablepaging><exportenabled>True</exportenabled></customdata>', 'ca772bb2-fac7-4327-8f93-225af32e2692', '20120323 11:13:50', NULL)
SET IDENTITY_INSERT [Reporting_ReportTable] OFF
