SET IDENTITY_INSERT [Reporting_ReportGraph] ON
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1444, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits DECIMAL(15,2),
  Name NVARCHAR(300) COLLATE database_default 
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
/*Ensure empty campaign name if is not defined*/  
IF @CampaignName IS NULL
    SET @CampaignName = '''';
/* Get campaign display name */
DECLARE @CampaignDisplayName nvarchar(200)
SET @CampaignDisplayName = (SELECT REPLACE(CampaignDisplayname, '''''''','''''''''''') FROM Analytics_Campaign WHERE @CampaignName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID)
  
INSERT INTO #AnalyticsTempTable (StartTime,Hits,Name)  
SELECT
  [DATE] AS StartTime,
  ISNULL(CAST (
  (SELECT NULLIF(SUM(HitsValue) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_MonthHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campconversion;'' + @CampaignName) AND HitsStartTime <= [DATE])
  /
  (SELECT NULLIF(SUM(HitsCount) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_MonthHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = [StatisticsObjectName] AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campaign'') AND (StatisticsObjectname = @CampaignName OR '''' = @CampaignName) AND  HitsStartTime <= [DATE])   
  AS DECIMAL (15,2)), 0) AS ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''month'') AS Dates   
   
         DECLARE @cols nvarchar(max);
         SET @cols = '''';
         
         DECLARE @GoalValue FLOAT
         
         SET @GoalValue = (SELECT CASE WHEN CampaignGoalPerVisitorPercent = 0  THEN CampaignGoalPerVisitorMin ELSE (CampaignImpressions/CampaignTotalCost)  * (CampaignGoalPerVisitorMin/100) END FROM Analytics_Campaign WHERE  CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
         IF (@GoalValue IS NOT NULL)
             SET @cols = '', '' +  CAST(@GoalValue AS NVARCHAR(200)) + '' AS ''''#@NS;LCFF0000@#{$reports_goals.redflagvalue$}''''''
             
        SET @GoalValue = (SELECT CASE WHEN CampaignGoalPerVisitorPercent = 0  THEN CampaignGoalPerVisitor ELSE (CampaignImpressions/CampaignTotalCost)  * (CampaignGoalPerVisitor/100) END FROM Analytics_Campaign WHERE CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
        IF (@GoalValue IS NOT NULL)
             SET @cols = @cols + '', '' + CAST(@GoalValue AS NVARCHAR(200))+ '' AS ''''#@NS;LC009900@#{$reports_goals.goalvalue$}'''''';
       
        EXEC(''SELECT #AnalyticsTempTable.StartTime, Hits as ''''''+ @CampaignDisplayName +'''''' ''+@cols+'' FROM #AnalyticsTempTable'')
/* Remove Temp table*/
EXEC Proc_Analytics_RemoveTempTable
END', 0, N'line', 739, N'', N'{$reports_general.label_months$}', N'{$reports_campgoal.label_valuepervisit$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'c55b2012-e91b-4620-b7d6-6780a109d481', '20120323 11:11:39', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1445, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable 
 CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits DECIMAL(15,2),
  Name NVARCHAR(300) COLLATE database_default,  
  CodeName NVARCHAR(300) COLLATE database_default   
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
  
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name,CodeName)           
 SELECT [Date] AS StartTime ,SUM(T1.Hits) AS Hits,T1.Name AS Name,T1.CodeName AS CodeName 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,CampaignDisplayName AS Name,CampaignName AS CodeName
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName AND
      CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE ''campconversion;%'')    
  GROUP BY HitsStartTime,CampaignName,CampaignDisplayName  
  ) AS T1
  ON T1.StartTime <= [Date]  
  GROUP BY T1.Name,[Date],T1.CodeName
  
  UPDATE #AnalyticsTempTable SET Hits = CAST (Hits /  (
  SELECT NULLIF (SUM(HitsCount),0) FROM Analytics_Statistics JOIN Analytics_HourHits ON HitsStatisticsID = StatisticsID 
   WHERE CodeName = StatisticsObjectName AND StatisticsCode =''campaign'' AND StatisticsSiteID = @CMSContextCurrentSiteID  
			AND HitsStartTime <= StartTime)
   AS DECIMAL (15,2))
  
 ALTER TABLE #AnalyticsTempTable DROP COLUMN CodeName  
 
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 740, N'', N'{$reports_general.label_hours$}', N'{$reports_campgoal.label_valuepervisit$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '54f85d82-2945-4432-9194-bac452d71839', '20120323 11:11:39', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1465, N'graph', N'graph', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''year'');
SELECT StatisticsObjectName , SUM(HitsCount)
   FROM
Analytics_Statistics, Analytics_WeekHits WHERE
 (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID)
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, N'pie', 749, N'', N'{$reports_general.label_weeks$}', N'', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><enableexport>True</enableexport><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>None</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX  -   #PERCENT{P1}</seriesitemtooltip><displayitemvalue>True</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat>#PERCENT{P1} (#VALY)</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval>1</xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><legendfixedposition></legendfixedposition><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue>5</pieothervalue></customdata>', '365a3db1-9dde-45b1-ab4b-00792686ab6f', '20120323 11:11:39', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1466, N'graph', N'graph', N'/* Trims the value of @FromDate to be able to display years in the graph. */
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
/* Selects the number of orders created in the given years. */
SELECT 
   [Date] AS StartTime, 
   COUNT(OrderDate) AS ''{$ecommerce.report_numberoforders$}''   
FROM
   -- returns a column of dates, each year in a new row 
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates
   LEFT JOIN COM_Order  
      ON ([Date] <= OrderDate  AND  DATEADD(YEAR,1,[Date]) > OrderDate) 
      AND OrderSiteID = @CMSContextCurrentSiteID
GROUP BY [Date]
ORDER BY [Date]', 0, N'line', 752, N'', N'{$ecommerce.report_year$}', N'{$ecommerce.report_numberoforders$}', 700, 400, 100, N'<customdata><subscriptionenabled>False</subscriptionenabled><pielabelstyle>Outside</pielabelstyle><yaxistitlecolor>#000000</yaxistitlecolor><pieshowpercentage>False</pieshowpercentage><yaxisfont>Arial;bold;11;;</yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><exportenabled>True</exportenabled><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><legendtitle></legendtitle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><xaxislabelfont></xaxislabelfont><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><seriesbordersize>2</seriesbordersize><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><pieothervalue></pieothervalue><scalemax></scalemax><xaxisfont>Arial;bold;11;;</xaxisfont><legendfixedposition></legendfixedposition><querynorecordtext></querynorecordtext><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><piedrawingstyle>Pie</piedrawingstyle><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendposition>None</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><chartareabordercolor>#bbbbbb</chartareabordercolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><legendbordercolor>#000000</legendbordercolor><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><seriesborderstyle>Solid</seriesborderstyle></customdata>', '44239d96-d33d-42d5-98fa-f971e15b6fb8', '20120405 13:56:56', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1467, N'graph', N'graph', N'/* Trims the value of @FromDate to be able to display months in the table. */
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
/* Selects the number of orders created in the given months. */
SELECT 
   [Date] AS StartTime, 
   COUNT(OrderDate) AS ''ecommerce.report_numberoforders''   
FROM
   -- returns a column of dates, each month in a new row 
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates
   LEFT JOIN COM_Order  
      ON ([Date] <= OrderDate  AND  DATEADD(MONTH,1,[Date]) > OrderDate) 
      AND OrderSiteID = @CMSContextCurrentSiteID
GROUP BY [Date]
ORDER BY [Date]', 0, N'line', 753, N'', N'{$ecommerce.report_month$}', N'{$ecommerce.report_numberoforders$}', 700, 400, 100, N'<customdata><subscriptionenabled>False</subscriptionenabled><pielabelstyle>Outside</pielabelstyle><yaxistitlecolor>#000000</yaxistitlecolor><pieshowpercentage>False</pieshowpercentage><yaxisfont>Arial;bold;11;;</yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><exportenabled>True</exportenabled><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><legendtitle></legendtitle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><xaxislabelfont></xaxislabelfont><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{y}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><seriesbordersize>2</seriesbordersize><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><pieothervalue></pieothervalue><scalemax></scalemax><xaxisfont>Arial;bold;11;;</xaxisfont><legendfixedposition></legendfixedposition><querynorecordtext></querynorecordtext><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><piedrawingstyle>Pie</piedrawingstyle><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendposition>None</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><chartareabordercolor>#bbbbbb</chartareabordercolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><legendbordercolor>#000000</legendbordercolor><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><seriesborderstyle>Solid</seriesborderstyle></customdata>', 'c4c4d273-3f21-4bc8-b0a4-3e5bb4b7b5ba', '20120405 13:55:52', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1468, N'graph', N'graph', N'/* Trims the value of @FromDate to be able to display days in the graph. */
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
/* Selects the number of orders created in the given days. */
SELECT 
   [Date] AS StartTime, 
   COUNT(OrderDate) AS ''{$ecommerce.report_numberoforders$}''   
FROM
   -- returns a column of dates, each day in a new row 
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates
   LEFT JOIN COM_Order  
      ON ([Date] <= OrderDate  AND  DATEADD(DAY,1,[Date]) > OrderDate) 
      AND OrderSiteID = @CMSContextCurrentSiteID
GROUP BY [Date]
ORDER BY [Date]', 0, N'line', 754, N'', N'{$ecommerce.report_day$}', N'{$ecommerce.report_numberoforders$}', 700, 400, 100, N'<customdata><subscriptionenabled>False</subscriptionenabled><pielabelstyle>Outside</pielabelstyle><yaxistitlecolor>#000000</yaxistitlecolor><pieshowpercentage>False</pieshowpercentage><yaxisfont>Arial;bold;11;;</yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><exportenabled>True</exportenabled><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><legendtitle></legendtitle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><xaxislabelfont></xaxislabelfont><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><seriesbordersize>2</seriesbordersize><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><pieothervalue></pieothervalue><scalemax></scalemax><xaxisfont>Arial;bold;11;;</xaxisfont><legendfixedposition></legendfixedposition><querynorecordtext></querynorecordtext><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><piedrawingstyle>Pie</piedrawingstyle><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendposition>None</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><chartareabordercolor>#bbbbbb</chartareabordercolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><legendbordercolor>#000000</legendbordercolor><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><seriesborderstyle>Solid</seriesborderstyle></customdata>', '2492472b-5da2-47d5-9d11-84c4f332b996', '20120405 13:54:39', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1469, N'graph', N'grap', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SET @ToDate ={%DatabaseSchema%}.Func_Analytics_EndDateTrim(@ToDate,''week'');
SELECT StatisticsObjectName , SUM(HitsCount)
   FROM
Analytics_Statistics, Analytics_WeekHits WHERE
 (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode=@CodeName) AND (StatisticsID = HitsStatisticsID)
 AND (HitsStartTime >= @FromDate) AND (HitsEndTime <= @ToDate) GROUP BY StatisticsObjectName ORDER BY SUM(HitsCount) DESC', 0, N'pie', 130, N'', N'', N'', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval>1</xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>None</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX  -   #PERCENT{P1}</seriesitemtooltip><displayitemvalue>True</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat>#PERCENT{P1} (#VALY)</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#195EB3</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>None</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#195EB3</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '263b6ed4-27fb-4626-a275-59d850b5ee9f', '20120323 11:11:40', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1521, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
 
 SELECT [Date] AS StartTime ,T1.Hits,StatisticsObjectName AS Name INTO #AnalyticsTempTable
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''day'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount) AS hits,StatisticsObjectName
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode = @CodeName)
  GROUP BY HitsStartTime,StatisticsObjectName) AS T1
  ON T1.StartTime = [Date]
  
  EXEC Proc_Analytics_Pivot ''day''', 0, N'line', 770, N'', N'{$reports_general.label_days$}', N'{$reports_crawlers.label_numofvisits$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '70937175-fdfb-47ea-80fd-749ac50204f7', '20120323 11:11:43', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1522, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
 
 SELECT [Date] AS StartTime ,T1.Hits,StatisticsObjectName AS Name INTO #AnalyticsTempTable
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''hour'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount) AS hits,StatisticsObjectName
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode = @CodeName)
  GROUP BY HitsStartTime,StatisticsObjectName) AS T1
  ON T1.StartTime = [Date]
  
  EXEC Proc_Analytics_Pivot ''hour''', 0, N'line', 771, N'', N'{$reports_general.label_hours$}', N'{$reports_crawlers.label_numofvisits$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy HH:mm}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '1cb47f96-079f-4fc2-998f-84a6747eacb3', '20120323 11:11:43', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1523, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
 
 SELECT [Date] AS StartTime ,T1.Hits,StatisticsObjectName AS Name INTO #AnalyticsTempTable
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''week'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount) AS hits,StatisticsObjectName
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode = @CodeName)
  GROUP BY HitsStartTime,StatisticsObjectName) AS T1
  ON T1.StartTime = [Date]
  
  EXEC Proc_Analytics_Pivot ''week''', 0, N'line', 772, N'', N'{$reports_general.label_weeks$}', N'{$reports_crawlers.label_numofvisits$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '675a75cd-cc5f-4114-9e0e-f04671508852', '20120323 11:11:43', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1524, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
 
 SELECT [Date] AS StartTime ,T1.Hits,StatisticsObjectName AS Name INTO #AnalyticsTempTable
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''month'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount) AS hits,StatisticsObjectName
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode = @CodeName)
  GROUP BY HitsStartTime,StatisticsObjectName) AS T1
  ON T1.StartTime = [Date]
  
  EXEC Proc_Analytics_Pivot ''month''', 0, N'line', 773, N'', N'{$reports_general.label_months$}', N'{$reports_crawlers.label_numofvisits$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{y}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '54ee7459-ea32-4c86-b309-0a5fe3286299', '20120323 11:11:43', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1525, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
 
 SELECT [Date] AS StartTime ,T1.Hits,StatisticsObjectName AS Name INTO #AnalyticsTempTable
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''year'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount) AS hits,StatisticsObjectName
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode = @CodeName)
  GROUP BY HitsStartTime,StatisticsObjectName) AS T1
  ON T1.StartTime = [Date]
  
  EXEC Proc_Analytics_Pivot ''year''', 0, N'line', 774, N'', N'{$reports_general.label_years$}', N'{$reports_crawlers.label_numofvisits$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '6ec9d575-3763-444a-b146-ed36d15b54aa', '20120323 11:11:43', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1539, N'graph', N'graph', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
 
 SELECT [Date] AS StartTime ,T1.Hits FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount) AS hits
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode = @CodeName)
  GROUP BY HitsStartTime) AS T1
  ON T1.StartTime = [Date]', 0, N'line', 776, N'', N'{$reports_general.label_days$}', N'{$reports_mobiledevice.label_numofdevices$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><chartareaborderstyle>Solid</chartareaborderstyle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><legendposition>None</legendposition><rotatex></rotatex><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><legendfixedposition></legendfixedposition><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>d</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '005b5758-0cc5-4f25-8890-f0b7490e9f09', '20120323 11:11:44', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1540, N'graph', N'graph', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
 
 SELECT [Date] AS StartTime ,T1.Hits FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount) AS hits
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode = @CodeName)
  GROUP BY HitsStartTime) AS T1
  ON T1.StartTime = [Date]', 0, N'line', 777, N'', N'{$reports_general.label_hours$}', N'{$reports_mobiledevice.label_numofdevices$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy HH:mm}  -  #SER: #VALY</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendfixedposition></legendfixedposition><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>g</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>None</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'd918f0a4-7526-40b8-a358-3acdce13d60a', '20120323 11:11:44', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1541, N'graph', N'graph', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''Week'');
 
 SELECT CONVERT (NVARCHAR(2),DATEPART(wk,[Date]))+''/''+CONVERT (NVARCHAR(4),DATEPART(YEAR,[Date])) AS StartTime ,T1.Hits FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Week'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount) AS hits
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode = @CodeName)
  GROUP BY HitsStartTime) AS T1
  ON T1.StartTime = [Date]', 0, N'line', 778, N'', N'{$reports_general.label_weeks$}', N'{$reports_mobiledevice.label_numofdevices$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><querynorecordtext>No data found</querynorecordtext><pieshowpercentage>False</pieshowpercentage><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><seriessymbols>Circle</seriessymbols><seriesgradient>None</seriesgradient><rotatey></rotatey><xaxislabelfont></xaxislabelfont><rotatex></rotatex><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>None</legendposition><legendtitle></legendtitle><scalemin></scalemin><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><chartareabordercolor>#bbbbbb</chartareabordercolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'bc3f5089-3e35-45a1-85df-338732061dcf', '20120323 11:11:44', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1542, N'graph', N'graph', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
 
 SELECT [Date] AS StartTime ,T1.Hits FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount) AS hits
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode = @CodeName)
  GROUP BY HitsStartTime) AS T1
  ON T1.StartTime = [Date]', 0, N'line', 779, N'', N'{$reports_general.label_years$}', N'{$reports_mobiledevice.label_numofdevices$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><querynorecordtext>No data found</querynorecordtext><pieshowpercentage>False</pieshowpercentage><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX{yyyy}  -  #SER: #VALY</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><legendtitle></legendtitle><xaxissort>True</xaxissort><legendposition>None</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '5f49455f-993d-4a39-a799-b0511bfbdb1b', '20120323 11:11:44', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1543, N'GraphMonthFileDownloads', N'graph', N'SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
 
 SELECT [Date] AS StartTime ,T1.Hits FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount) AS hits
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode = @CodeName)
  GROUP BY HitsStartTime) AS T1
  ON T1.StartTime = [Date]', 0, N'line', 780, N'', N'{$reports_general.label_months$}', N'{$reports_mobiledevice.label_numofdevices$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX{y}  -  #SER: #VALY</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><yaxistitleposition>Center</yaxistitleposition><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><legendfixedposition></legendfixedposition><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>y</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>None</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><querynorecordtext></querynorecordtext><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '1a49a1fc-74e5-4b36-b7ee-183a78d0e709', '20120323 11:11:44', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1556, N'GraphHitsClicks', N'graph', N'--DECLARE @BannerId INT;
--DECLARE @FromDate DATETIME;
--DECLARE @ToDate DATETIME;
--SET @BannerId = 8;
--SET @FromDate = ''2/9/2012 6:14:30 PM'';
--SET @ToDate = ''4/9/2012 6:14:30 PM'';
SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
SELECT 
    [Date], T3.clicks as ''{$banner.clicks$}'', T3.hits as ''{$banner.hits$}''
FROM dbo.Func_Analytics_EnsureDates(@FromDate,@ToDate,''day'') AS Dates
LEFT JOIN
(
	SELECT T1.HitsStartTime, T2.hits, T1.clicks
	FROM
		(SELECT HitsStartTime, HitsCount AS clicks
		FROM Analytics_Statistics
		INNER JOIN Analytics_DayHits ON HitsStatisticsID = Analytics_Statistics.StatisticsID
		WHERE (Analytics_Statistics.StatisticsObjectID = @BannerID) 
			AND (StatisticsCode = ''bannerclick'')
		) AS T1
	INNER JOIN 
		(SELECT HitsStartTime, HitsCount AS hits
		FROM Analytics_Statistics
		INNER JOIN Analytics_DayHits ON HitsStatisticsID = Analytics_Statistics.StatisticsID
		WHERE (Analytics_Statistics.StatisticsObjectID = @BannerID) 
			AND (StatisticsCode = ''bannerhit'')
		) AS T2
	ON T1.HitsStartTime = T2.HitsStartTime
 ) AS T3
ON [Date] = HitsStartTime', 0, N'line', 801, N'', N'{$reports_general.label_days$}', N'{$banner.hitsclicks$}', 700, 300, 100, N'<customdata><pielabelstyle>Outside</pielabelstyle><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><legendtitle></legendtitle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendfixedposition></legendfixedposition><xaxistitlecolor>#000000</xaxistitlecolor><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><querynorecordtext>No data found</querynorecordtext><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{%XAxisFormat%}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'dcf962b4-3f9c-4e4a-9db4-deb7a4022a7c', '20120530 15:28:30', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1557, N'GraphHitsClicks', N'graph', N'--DECLARE @BannerId INT;
--DECLARE @FromDate DATETIME;
--DECLARE @ToDate DATETIME;
--SET @BannerId = 8;
--SET @FromDate = ''2/9/2012 6:14:30 PM'';
--SET @ToDate = ''4/9/2012 6:14:30 PM'';
SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
SELECT 
    [Date], T3.clicks as ''{$banner.clicks$}'', T3.hits as ''{$banner.hits$}''
FROM dbo.Func_Analytics_EnsureDates(@FromDate,@ToDate,''month'') AS Dates
LEFT JOIN
(
	SELECT T1.HitsStartTime, T2.hits, T1.clicks
	FROM
		(SELECT HitsStartTime, HitsCount AS clicks
		FROM Analytics_Statistics
		INNER JOIN Analytics_MonthHits ON HitsStatisticsID = Analytics_Statistics.StatisticsID
		WHERE (Analytics_Statistics.StatisticsObjectID = @BannerID) 
			AND (StatisticsCode = ''bannerclick'')
		) AS T1
	INNER JOIN 
		(SELECT HitsStartTime, HitsCount AS hits
		FROM Analytics_Statistics
		INNER JOIN Analytics_MonthHits ON HitsStatisticsID = Analytics_Statistics.StatisticsID
		WHERE (Analytics_Statistics.StatisticsObjectID = @BannerID) 
			AND (StatisticsCode = ''bannerhit'')
		) AS T2
	ON T1.HitsStartTime = T2.HitsStartTime
 ) AS T3
ON [Date] = HitsStartTime', 0, N'line', 802, N'', N'{$reports_general.label_months$}', N'{$banner.hitsclicks$}', 700, 300, 100, N'<customdata><yaxisfont></yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendtitle></legendtitle><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendposition>Bottom</legendposition><legendfixedposition></legendfixedposition><xaxistitlecolor>#000000</xaxistitlecolor><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><querynorecordtext>No data found</querynorecordtext><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{%XAxisFormat%}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'a5da9671-4a11-4223-905d-69b10122e5ea', '20120530 15:29:25', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1586, N'graph', N'graph', N'-- trims the parameter @FromDate to be able to display weeks in the graph
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
/* Selects the sum of donations donated in the given weeks */
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
   WHERE 
      (SKUProductType = ''DONATION'') 
      AND (OrderSiteID = @CMSContextCurrentSiteID)) AS OIs  
   ON ([Date] <= OrderDate  AND  DATEADD(DAY,7,[Date]) > OrderDate) 
GROUP BY [Date]
ORDER BY [Date]', 0, N'line', 825, N'', N'{$ecommerce.report_week$}', N'{$com.report_donationamount$}', 700, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><plotareaborderstyle>NotSet</plotareaborderstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><xaxistitlecolor>#000000</xaxistitlecolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><xaxislabelfont></xaxislabelfont><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><xaxissort>True</xaxissort><scalemin></scalemin><reverseyaxis>False</reverseyaxis><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxisfont></xaxisfont><linedrawinstyle>Line</linedrawinstyle><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxistitleposition>Center</xaxistitleposition><querynorecordtext></querynorecordtext><legendposition>None</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><seriesbordersize>2</seriesbordersize><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '792a0533-5ff6-4390-91b0-cb6a05d3fe43', '20120410 14:43:31', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1587, N'graph', N'graph', N'-- trims the parameter @FromDate to be able to display years in the graph
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
/* Selects the sum of donations donated in the given years. */
SELECT 
   [Date] AS ''{$ecommerce.report_year$}'', 
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
    WHERE (SKUProductType = ''DONATION'')  
       AND (OrderSiteID = @CMSContextCurrentSiteID)) AS OIs  
    ON ([Date] <= OrderDate  AND  DATEADD(YEAR,1,[Date]) > OrderDate) 
GROUP BY [Date] 
ORDER BY [Date]', 0, N'line', 826, N'', N'{$ecommerce.report_year$}', N'{$com.report_donationamount$}', 700, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pielabelstyle>Outside</pielabelstyle><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><exportenabled>True</exportenabled><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><plotareaborderstyle>NotSet</plotareaborderstyle><legendtitle></legendtitle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><xaxistitlecolor>#000000</xaxistitlecolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatey></rotatey><yaxisformat></yaxisformat><rotatex></rotatex><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><seriesbordersize>1</seriesbordersize><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval>1</xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><xaxisfont></xaxisfont><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><querynorecordtext></querynorecordtext><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip></seriesitemtooltip><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>None</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><plotareabordersize></plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '11baccbf-8d9f-4b68-9b5d-ecdd3d8c2fb3', '20120410 14:45:18', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1588, N'graph', N'graph', N'-- trims the parameter @FromDate to be able to display days in the graph
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
/* Selects the sum of donations donated in the given days. */
SELECT 
   [Date] AS ''{$ecommerce.report_day$}'', 
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
ORDER BY [Date]', 0, N'line', 827, N'', N'{$ecommerce.report_day$}', N'{$com.report_donationamount$}', 700, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><plotareaborderstyle>NotSet</plotareaborderstyle><exportenabled>True</exportenabled><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><xaxistitlecolor>#000000</xaxistitlecolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><xaxissort>True</xaxissort><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxisfont></xaxisfont><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><xaxislabelfont></xaxislabelfont><querynorecordtext></querynorecordtext><legendposition>None</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '65cc6d8d-8372-4e7a-b7ca-4791b89d75b1', '20120410 14:46:07', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1589, N'graph', N'graph', N'-- trims the parameter @FromDate to be able to display hours in the graph
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
/* Selects the sum of donations donated in the given hour. */
SELECT 
   [Date] AS ''{$ecommerce.report_hour$}'', 
   CAST(ROUND(SUM(ISNULL(OrderItemTotalPriceInMainCurrency,0)),1) AS DECIMAL(38,1)) AS ''{$com.report_donationamount$}'' 
FROM
   -- returns a column of dates, each hour in the new row
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
ORDER BY [Date]', 0, N'line', 828, N'', N'{$ecommerce.report_hour$}', N'{$com.report_donationamount$}', 700, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont>Arial;bold;11;;</yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>g</xaxisformat><xaxistitlecolor>#000000</xaxistitlecolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><xaxislabelfont></xaxislabelfont><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><xaxissort>True</xaxissort><scalemin></scalemin><reverseyaxis>False</reverseyaxis><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxisfont>Arial;bold;11;;</xaxisfont><linedrawinstyle>Line</linedrawinstyle><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy HH:mm}  -  #SER: #VALY</seriesitemtooltip><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxistitleposition>Center</xaxistitleposition><querynorecordtext></querynorecordtext><legendposition>None</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><seriesbordersize>2</seriesbordersize><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '717fe4af-8ce9-4035-ae9f-2359ded4fbea', '20120410 14:47:01', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1590, N'graph', N'graph', N'-- trims the parameter @FromDate to be able to display months in the graph
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
/* Selects the sum of donations donated in the given month. */
SELECT 
   [Date] AS ''{$ecommerce.report_month$}'', 
   CAST(ROUND(SUM(ISNULL(OrderItemTotalPriceInMainCurrency,0)),1) AS DECIMAL(38,1)) AS ''{$com.report_donationamount$}'' 
FROM
   -- returns a column of dates - the first days of months
   {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates
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
   ON ([Date] <= OrderDate  AND  DATEADD(MONTH,1,[Date]) > OrderDate) 
GROUP BY [Date]
ORDER BY [Date]', 0, N'line', 829, N'', N'{$ecommerce.report_month$}', N'{$com.report_donationamount$}', 700, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><plotareaborderstyle>NotSet</plotareaborderstyle><exportenabled>True</exportenabled><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><xaxistitlecolor>#000000</xaxistitlecolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><xaxissort>True</xaxissort><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxisfont></xaxisfont><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip>#VALX{y}  -  #SER: #VALY</seriesitemtooltip><xaxislabelfont></xaxislabelfont><querynorecordtext></querynorecordtext><legendposition>None</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><plotareabordersize></plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '9497f6ec-bb56-41db-91b6-061d264bae79', '20120410 14:50:07', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1591, N'graph', N'graph', N'DECLARE @GlobalDiscount bit;
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
    DiscountLevelDisplayName
 HAVING
    COUNT(CustomerID) > 0', 0, N'pie', 833, N'', N'{$ecommerceconfiguration.discountlevel$}', N'{$ecommerce.report_number$}', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><plotareaborderstyle>NotSet</plotareaborderstyle><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize></plotareabordersize><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip></seriesitemtooltip><displayitemvalue>True</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval>1</xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><querynorecordtext></querynorecordtext><xaxistitleposition>Center</xaxistitleposition><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Top</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '6d59c06f-d7c7-499e-bef5-4845983783ce', '20120802 15:01:52', NULL, N'')
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1592, N'graph', N'graph', N'DECLARE @globalCurrency bit;
SET @globalCurrency = {%Settings.CMSStoreUseGlobalCurrencies?1:0|(user)administrator|(hash)007e1843a00d816220cda582c9886336e60f7f9303951d0f3164fce11bb487d8%};
/* Selects the number of orders in the given currency. */
SELECT 
   CurrencyCode AS ''{$unigrid.currency.columns.currencycode$}'',
   COUNT(OrderID) AS ''{$ecommerce.report_numberoforders$}''
FROM 
   COM_Order
   LEFT JOIN COM_Currency
      ON CurrencyID = OrderCurrencyID
      AND (OrderDate >= @FromDate OR @FromDate IS NULL) 
      AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL) 
      AND OrderSiteID = @CMSContextCurrentSiteID 
      AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid, 0) = 1)
WHERE 
   (CurrencyEnabled = 1 OR CurrencyID IN (SELECT OrderCurrencyID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID)) 
   AND ((@globalCurrency = 1 AND CurrencySiteID IS NULL)OR(@globalCurrency = 0 AND CurrencySiteID = @CMSContextCurrentSiteID))
GROUP BY 
   CurrencyCode, 
   CurrencyDisplayName
ORDER BY COUNT(OrderID) DESC', 0, N'pie', 835, N'', N'{$unigrid.currency.columns.currencycode$}', N'{$ecommerce.report_numberoforders$}', 600, 400, 100, N'<customdata><querynorecordtext></querynorecordtext><yaxisfont></yaxisfont><plotareaborderstyle>NotSet</plotareaborderstyle><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip></seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval>1</xaxisinterval><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendposition>Top</legendposition><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize></plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'e977744d-dfdf-4359-9e4f-d5ccd75131e4', '20120731 10:18:42', NULL, N'')
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1593, N'graph', N'graph', N'/* Selects the number of anonymous customers. */
(SELECT  
   ''{$com.orderscreatedbyreport.anonymouscustomers$}'' AS ''{$customerlist.customer$}'',
   COUNT(Orders.OrderID) AS ''{$general.count$}''    
 FROM COM_Order AS Orders
 WHERE 
    (Orders.OrderCreatedByUserID = 0 OR Orders.OrderCreatedByUserID IS NULL)
    AND (@DateFrom IS NULL OR (Orders.OrderDate >= @DateFrom)) 
    AND (@DateTo IS NULL OR (Orders.OrderDate <= DATEADD(day,1,@DateTo)))
    AND (ISNULL(Orders.OrderIsPaid, 0) = 1 OR @IsPaid = 0)
    AND  Orders.OrderSiteID = @CMSContextCurrentSiteID
 HAVING COUNT(Orders.OrderID) > 0)
    
UNION
/* Selects the number of registered customers. */
(SELECT  
   ''{$com.orderscreatedbyreport.registeredcustomers$}''AS ''{$customerlist.customer$}'',
   COUNT(Orders.OrderID) AS ''{$general.count$}''    
 FROM COM_Order AS Orders
 WHERE 
    (Orders.OrderCreatedByUserID > 0)
    AND (@DateFrom IS NULL OR (Orders.OrderDate >= @DateFrom)) 
    AND (@DateTo IS NULL OR (Orders.OrderDate <= DATEADD(day,1,@DateTo)))
    AND (ISNULL(Orders.OrderIsPaid, 0) = 1 OR @IsPaid = 0)
    AND  Orders.OrderSiteID = @CMSContextCurrentSiteID
 HAVING COUNT(Orders.OrderID) > 0)
ORDER BY ''{$general.count$}'' DESC', 0, N'pie', 836, N'', N'{$customerlist.customer$}', N'{$general.count$}', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><plotareaborderstyle>NotSet</plotareaborderstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><yaxistitleposition>Center</yaxistitleposition><displayitemvalue>True</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval>1</xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip></seriesitemtooltip><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Top</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><plotareabordersize></plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><querynorecordtext>{$general.nodatafound$}</querynorecordtext><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '35c66205-b285-4c91-b7ef-fbd0029cbf02', '20120716 09:46:59', NULL, N'')
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1594, N'graph', N'graph', N'/* Variable determines whether global payment methods should be displayed */
DECLARE @GlobalOptions bit;
SET @GlobalOptions = {%Settings.CMSStoreAllowGlobalPaymentMethods?1:0|(user)administrator|(hash)fd386cbde2e7a714ffbe569d1034779e4dce8b706e7e9795e7410a7502eac302%};  
SELECT
   PaymentOptionDisplayName  AS ''{$paymentoption_edit.itemlistlink$}'',
   ISNULL(COUNT(OrderID),0) AS ''{$ecommerce.report_numberoforders$}''
FROM
   COM_PaymentOption, 
   COM_Order   
WHERE 
   (PaymentOptionSiteID = @CMSContextCurrentSiteID OR (@GlobalOptions = 1 AND PaymentOptionSiteID IS NULL))
   AND (OrderPaymentOptionID = PaymentOptionID)
   AND (@FromDate IS NULL OR (OrderDate >= @FromDate))    
   AND (@ToDate IS NULL OR (OrderDate <= DATEADD(day,1,@ToDate)))
   AND OrderSiteID = @CMSContextCurrentSiteID
   AND (ISNULL(OrderIsPaid,0) = 1 OR @OnlyPaid = 0)
GROUP BY PaymentOptionDisplayName
ORDER BY COUNT(OrderID) DESC', 0, N'pie', 837, N'', N'{$ecommerceconfiguration.paymentoptions$}', N'{$ecommerce.report_number$}', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><plotareaborderstyle>NotSet</plotareaborderstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><yaxistitleposition>Center</yaxistitleposition><displayitemvalue>True</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval>1</xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip></seriesitemtooltip><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Top</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize></plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><querynorecordtext></querynorecordtext><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '1f172da0-837a-4c90-8c99-e107f0a12dca', '20120727 14:27:53', NULL, N'')
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1595, N'graph', N'graph', N'DECLARE @GlobalOptions bit;
SET @GlobalOptions = {%Settings.CMSStoreAllowGlobalShippingOptions?1:0|(user)administrator|(hash)e2abbac8f02a345f35409140e0aead3d38855e918fe2337533e5c7660e28a246%}; 
SELECT 
   ShippingOptionDisplayName  AS ''{$ecommerceconfiguration.shippingoptions$}'',
   COUNT(OrderID) AS ''{$ecommerce.report_numberoforders$}''   
FROM
   COM_Order, 
   COM_ShippingOption
WHERE 
   (ShippingOptionSiteID = @CMSContextCurrentSiteID OR (@GlobalOptions = 1 AND ShippingOptionSiteID IS NULL))
   AND (OrderShippingOptionID = ShippingOptionID)
   AND (@FromDate IS NULL OR (OrderDate >= @FromDate))
   AND (@ToDate IS NULL OR (OrderDate <= DATEADD(day,1,@ToDate)))
   AND OrderSiteID = @CMSContextCurrentSiteID 
   AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1)
GROUP BY ShippingOptionDisplayName
ORDER BY COUNT(OrderID) DESC', 0, N'pie', 838, N'', N'{$ecommerce.report_month$}', N'{$ecommerce.report_number$}', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><plotareaborderstyle>NotSet</plotareaborderstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><yaxistitleposition>Center</yaxistitleposition><displayitemvalue>True</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval>1</xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip></seriesitemtooltip><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Top</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize></plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><querynorecordtext></querynorecordtext><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '3447b44a-2f78-4613-8226-c988382fc554', '20120727 14:30:05', NULL, N'')
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1596, N'graph', N'graph', N'DECLARE @GlobalStatus bit;
SET @GlobalStatus = {%Settings.CMSStoreUseGlobalOrderStatus?1:0|(user)administrator|(hash)0fe593c0d97187b5bc5a34ead4952d05b84a921a2d70639cb836e145c9b3479c%};
SELECT 
   StatusDisplayName AS ''{$orderstatuslist.header$}'',
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
ORDER BY StatusOrder', 0, N'bar', 840, N'', N'{$com.report.orderstatus$}', N'{$ecommerce.report_numberoforders$}', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pielabelstyle>Outside</pielabelstyle><yaxisfont></yaxisfont><plotareaborderstyle>NotSet</plotareaborderstyle><piedoughnutradius>20</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize></plotareabordersize><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><legendtitle></legendtitle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor>#2002E5</legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip></seriesitemtooltip><displayitemvalue>True</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval>1</xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><xaxissort>True</xaxissort><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><querynorecordtext></querynorecordtext><legendposition>None</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '14322649-7f68-4e48-beb2-47829f1579c1', '20120809 12:43:16', NULL, N'')
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1597, N'graph', N'graph', N'DECLARE @globalCurrency bit;
SET @globalCurrency = {%Settings.CMSStoreUseGlobalCurrencies?1:0|(user)administrator|(hash)007e1843a00d816220cda582c9886336e60f7f9303951d0f3164fce11bb487d8%};
SELECT 
   CurrencyCode AS ''{$unigrid.currency.columns.currencycode$}'',
   CAST(ISNULL(ROUND(SUM(OrderTotalPriceInMainCurrency),1),0) AS DECIMAL(38,1)) AS ''{$com.sales.volumeofsalesinmaincurrency$}''
FROM 
   COM_Order
   LEFT JOIN COM_Currency
      ON CurrencyID = OrderCurrencyID 
      AND (OrderDate >= @FromDate OR @FromDate IS NULL) 
      AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL) 
      AND OrderSiteID = @CMSContextCurrentSiteID 
      AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid, 0) = 1)
WHERE 
   (CurrencyEnabled = 1 OR CurrencyID IN (SELECT OrderCurrencyID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
   AND CurrencyID IS NOT NULL   
   AND ((@globalCurrency = 1 AND CurrencySiteID IS NULL)OR(@globalCurrency = 0 AND CurrencySiteID = @CMSContextCurrentSiteID))
GROUP BY CurrencyCode
ORDER BY SUM(OrderTotalPriceInMainCurrency) DESC', 0, N'pie', 843, N'', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><plotareaborderstyle>NotSet</plotareaborderstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><yaxistitleposition>Center</yaxistitleposition><displayitemvalue>True</displayitemvalue><itemvalueformat>#VALY{0.0}</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval>1</xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip></seriesitemtooltip><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Top</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize></plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><querynorecordtext></querynorecordtext><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '5ff23607-9872-493f-8491-ab680a09a0f0', '20120727 14:12:59', NULL, N'')
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1599, N'graph', N'graph', N'DECLARE @AllowGlobalDepartments bit;
SET @AllowGlobalDepartments = {%Settings.CMSStoreAllowGlobalDepartments?1:0|(user)administrator|(hash)a9dfdfedce2b5aff7a6827b023433bf83dc9544031ae241844bb05a38c1d61bd%};
SELECT
   DepartmentDisplayName AS ''{$ecommerce.report_departmentname$}'',
   CAST(ROUND(SUM(OrderItemTotalPriceInMainCurrency),1) AS DECIMAL(38,1)) AS ''{$com.sales.volumeofsales$}'' 
FROM
   COM_OrderItem  
   LEFT JOIN COM_SKU  
      ON OrderItemSKUID = SKUID
   LEFT JOIN COM_Order  
      ON OrderItemOrderID = OrderID
   LEFT JOIN COM_Department  
      ON SKUDepartmentID = DepartmentID                
WHERE 
   DepartmentID IS NOT NULL
   AND SKUOptionCategoryID IS NULL
   AND @CMSContextCurrentSiteID = OrderSiteID
   AND (OrderDate < DATEADD(day,1,@ToDate) OR @ToDate IS NULL) 
   AND (OrderDate >= @FromDate OR @FromDate IS NULL)
   AND (DepartmentSiteID = @CMSContextCurrentSiteID OR (@AllowGlobalDepartments=1 AND DepartmentSiteID IS NULL))
   AND (ISNULL(OrderIsPaid,0) = 1 OR @OrderIsPaid = 0)
GROUP BY DepartmentDisplayName  
ORDER BY SUM(OrderItemTotalPriceInMainCurrency) DESC, DepartmentDisplayName', 0, N'pie', 844, N'', N'{$ecommerce.report_departmentname$}', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><plotareaborderstyle>NotSet</plotareaborderstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval>1</xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendtitle></legendtitle><querynorecordtext></querynorecordtext><xaxistitleposition>Center</xaxistitleposition><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip></seriesitemtooltip><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Top</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><plotareabordersize></plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'ff694189-aaaa-4557-b73f-2bfd38afad42', '20120712 12:03:08', NULL, N'')
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1600, N'graph', N'graph', N'DECLARE @GlobalManufacturers bit;
SET @GlobalManufacturers = {%Settings.CMSStoreAllowGlobalManufacturers?1:0|(user)administrator|(hash)b7c2787c6802c0e8dc09394472b2efeea5da631c05445938b7ab582612f0442e%};
SELECT
   ManufacturerDisplayName AS ''{$manufacturerselector.itemname$}'', 
   CAST(ISNULL(ROUND(SUM(OrderItemTotalPriceInMainCurrency),1),0) AS DECIMAL(38,1)) AS ''{$com.sales.volumeofsales$}''
FROM 
   COM_Manufacturer
   LEFT JOIN COM_SKU 
      ON ManufacturerID = SKUManufacturerID
   LEFT JOIN COM_OrderItem 
      ON OrderItemSKUID = SKUID
   LEFT JOIN COM_Order 
      ON OrderID = OrderItemOrderID
WHERE
   (ManufacturerEnabled = 1 OR 
      (ManufacturerID IN (SELECT SKUManufacturerID FROM COM_SKU WHERE SKUID IN 
          (SELECT OrderItemSKUID FROM COM_OrderItem WHERE OrderItemOrderID IN 
              (SELECT OrderID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID)))))
   AND SKUOptionCategoryID IS NULL
   AND (ManufacturerSiteID = @CMSContextCurrentSiteID OR (ManufacturerSiteID IS NULL AND @GlobalManufacturers = 1) )
   AND OrderSiteID = @CMSContextCurrentSiteID 
   AND (OrderDate >= @FromDate OR @FromDate IS NULL) 
   AND (OrderDate <= dateadd(day,1,@ToDate) OR @ToDate IS NULL) 
   AND (@OrderIsPaid = 0 OR ISNULL(OrderIsPaid, 0) = 1)
GROUP BY ManufacturerDisplayName
ORDER BY SUM(OrderItemTotalPriceInMainCurrency) DESC, ManufacturerDisplayName', 0, N'pie', 845, N'', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><plotareaborderstyle>NotSet</plotareaborderstyle><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize></plotareabordersize><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip></seriesitemtooltip><displayitemvalue>True</displayitemvalue><itemvalueformat>#VALY{0.0}</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval>1</xaxisinterval><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><querynorecordtext></querynorecordtext><xaxistitleposition>Center</xaxistitleposition><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Top</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '9edbfefc-ac03-4bd8-a433-c5447e9feb07', '20120726 15:09:07', NULL, N'')
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1601, N'graph', N'graph', N'DECLARE @GlobalObjects bit;
SET @GlobalObjects = {%Settings.CMSStoreUseGlobalOrderStatus?1:0|(user)administrator|(hash)0fe593c0d97187b5bc5a34ead4952d05b84a921a2d70639cb836e145c9b3479c%};
                      
SELECT
   StatusDisplayName AS ''{$orderstatuslist.header$}'',
   CAST(ISNULL(ROUND(SUM(OrderTotalPriceInMainCurrency),1),0) AS DECIMAL(38,1)) AS ''{$com.sales.volumeofsales$}''
FROM 
   COM_OrderStatus 
   LEFT JOIN COM_Order 
      ON OrderStatusID = StatusID 
      AND OrderSiteID = @CMSContextCurrentSiteID 
      AND (OrderDate >= @FromDate OR @FromDate IS NULL) 
      AND (OrderDate <= DATEADD(day,1,@ToDate) OR @ToDate IS NULL)
 WHERE
   (StatusEnabled = 1 OR StatusID IN (SELECT OrderStatusID FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID))
   AND ((StatusSiteID = @CMSContextCurrentSiteID AND @GlobalObjects = 0) 
         OR (StatusSiteID IS NULL AND @GlobalObjects = 1)) 
GROUP BY 
   StatusDisplayName, 
   StatusOrder
ORDER BY StatusOrder', 0, N'bar', 846, N'', N'{$com.report.orderstatus$}', N'{$com.sales.volumeofsales$}', 600, 400, 100, N'<customdata><yaxisfont></yaxisfont><plotareaborderstyle>NotSet</plotareaborderstyle><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize></plotareabordersize><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor>#2002E5</legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip></seriesitemtooltip><yaxistitleposition>Center</yaxistitleposition><displayitemvalue>True</displayitemvalue><itemvalueformat>#VALY{0.0}</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval>1</xaxisinterval><barorientation>Vertical</barorientation><piedoughnutradius>20</piedoughnutradius><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendposition>None</legendposition><legendtitle>aaa</legendtitle><scalemin></scalemin><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><querynorecordtext></querynorecordtext><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '7408dbd4-d36c-4bdd-ab03-3c6285961810', '20120809 12:39:00', NULL, N'')
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1602, N'graph1', N'graph1', N'DECLARE @from1 datetime;
DECLARE @to1 datetime;
DECLARE @from2 datetime;
DECLARE @to2 datetime;
DECLARE @sales1 float;
DECLARE @sales2 float;
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
SELECT ''{$com.report.period1$}'', CAST(ROUND(@sales1,1) AS decimal(38,1))
UNION
SELECT ''{$com.report.period2$}'', CAST(ROUND(@sales2,1) AS decimal(38,1))', 0, N'pie', 849, N'{$com.sales.volumeofsales$}', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pielabelstyle>Outside</pielabelstyle><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><exportenabled>True</exportenabled><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><plotareaborderstyle>NotSet</plotareaborderstyle><legendtitle></legendtitle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><xaxistitlecolor>#000000</xaxistitlecolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatey></rotatey><yaxisformat></yaxisformat><rotatex></rotatex><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><seriesbordersize>1</seriesbordersize><itemvalueformat>#VALY{0.0}</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval>1</xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><xaxisfont></xaxisfont><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><querynorecordtext></querynorecordtext><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip></seriesitemtooltip><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Top</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><plotareabordersize></plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '2ff61080-8488-4213-96d4-d8771e5abbbf', '20120412 11:26:40', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1603, N'graph2', N'graph2', N'DECLARE @from1 datetime;
DECLARE @to1 datetime;
DECLARE @from2 datetime;
DECLARE @to2 datetime;
DECLARE @orders1 float;
DECLARE @orders2 float;
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
SET @orders1 = (SELECT COUNT(OrderID) FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID AND (OrderDate >= @from1 OR @from1 IS NULL) AND (OrderDate < @to1 OR @to1 IS NULL) AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1));
SET @orders2 = (SELECT COUNT(OrderID) FROM COM_Order WHERE OrderSiteID = @CMSContextCurrentSiteID AND (OrderDate >= @from2 OR @from2 IS NULL) AND (OrderDate < @to2 OR @to2 IS NULL) AND (@OnlyPaid = 0 OR ISNULL(OrderIsPaid,0) = 1));
SELECT ''{$com.report.period1$}'', @orders1
UNION
SELECT ''{$com.report.period2$}'', @orders2', 0, N'pie', 849, N'{$ecommerce.report_numberoforders$}', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pielabelstyle>Outside</pielabelstyle><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><exportenabled>True</exportenabled><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><plotareaborderstyle>NotSet</plotareaborderstyle><legendtitle></legendtitle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><xaxistitlecolor>#000000</xaxistitlecolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatey></rotatey><yaxisformat></yaxisformat><rotatex></rotatex><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><seriesbordersize>1</seriesbordersize><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval>1</xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><xaxisfont></xaxisfont><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><querynorecordtext></querynorecordtext><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip></seriesitemtooltip><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Top</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><subscriptionenabled>False</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><plotareabordersize></plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'b2b8652a-ebea-42f6-bab1-69dbb2d67361', '20120412 11:27:27', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1613, N'GraphHitsClicks', N'graph', N'--DECLARE @BannerId INT;
--DECLARE @FromDate DATETIME;
--DECLARE @ToDate DATETIME;
--SET @BannerId = 8;
--SET @FromDate = ''2/9/2012 6:14:30 PM'';
--SET @ToDate = ''4/9/2012 6:14:30 PM'';
SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
SELECT 
    [Date], T3.clicks as ''{$banner.clicks$}'', T3.hits as ''{$banner.hits$}''
FROM dbo.Func_Analytics_EnsureDates(@FromDate,@ToDate,''hour'') AS Dates
LEFT JOIN
(
	SELECT T1.HitsStartTime, T2.hits, T1.clicks
	FROM
		(SELECT HitsStartTime, HitsCount AS clicks
		FROM Analytics_Statistics
		INNER JOIN Analytics_HourHits ON HitsStatisticsID = Analytics_Statistics.StatisticsID
		WHERE (Analytics_Statistics.StatisticsObjectID = @BannerID) 
			AND (StatisticsCode = ''bannerclick'')
		) AS T1
	INNER JOIN 
		(SELECT HitsStartTime, HitsCount AS hits
		FROM Analytics_Statistics
		INNER JOIN Analytics_HourHits ON HitsStatisticsID = Analytics_Statistics.StatisticsID
		WHERE (Analytics_Statistics.StatisticsObjectID = @BannerID) 
			AND (StatisticsCode = ''bannerhit'')
		) AS T2
	ON T1.HitsStartTime = T2.HitsStartTime
 ) AS T3
ON [Date] = HitsStartTime', 0, N'line', 872, N'', N'{$reports_general.label_hours$}', N'{$banner.hitsclicks$}', 700, 300, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pielabelstyle>Outside</pielabelstyle><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><legendtitle></legendtitle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><xaxissort>True</xaxissort><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendfixedposition></legendfixedposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{%XAxisFormat%}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><xaxislabelfont></xaxislabelfont><querynorecordtext>No data found</querynorecordtext><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '8026ffe8-2b03-4124-9fd0-aa95e59d774c', '20120530 15:29:00', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1614, N'GraphHitsClicks', N'graph', N'--DECLARE @BannerId INT;
--DECLARE @FromDate DATETIME;
--DECLARE @ToDate DATETIME;
--SET @BannerId = 8;
--SET @FromDate = ''2/9/2012 6:14:30 PM'';
--SET @ToDate = ''4/9/2012 6:14:30 PM'';
SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
SELECT 
    [Date], T3.clicks as ''{$banner.clicks$}'', T3.hits as ''{$banner.hits$}''
FROM dbo.Func_Analytics_EnsureDates(@FromDate,@ToDate,''week'') AS Dates
LEFT JOIN
(
	SELECT T1.HitsStartTime, T2.hits, T1.clicks
	FROM
		(SELECT HitsStartTime, HitsCount AS clicks
		FROM Analytics_Statistics
		INNER JOIN Analytics_WeekHits ON HitsStatisticsID = Analytics_Statistics.StatisticsID
		WHERE (Analytics_Statistics.StatisticsObjectID = @BannerID) 
			AND (StatisticsCode = ''bannerclick'')
		) AS T1
	INNER JOIN 
		(SELECT HitsStartTime, HitsCount AS hits
		FROM Analytics_Statistics
		INNER JOIN Analytics_WeekHits ON HitsStatisticsID = Analytics_Statistics.StatisticsID
		WHERE (Analytics_Statistics.StatisticsObjectID = @BannerID) 
			AND (StatisticsCode = ''bannerhit'')
		) AS T2
	ON T1.HitsStartTime = T2.HitsStartTime
 ) AS T3
ON [Date] = HitsStartTime', 0, N'line', 873, N'', N'{$reports_general.label_weeks$}', N'{$banner.hitsclicks$}', 700, 300, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pielabelstyle>Outside</pielabelstyle><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><legendtitle></legendtitle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendfixedposition></legendfixedposition><scalemin></scalemin><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{%XAxisFormat%}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '5a62251d-f7fc-49a7-bad9-dd38702ab279', '20120530 15:29:54', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1615, N'GraphHitsClicks', N'graph', N'--DECLARE @BannerId INT;
--DECLARE @FromDate DATETIME;
--DECLARE @ToDate DATETIME;
--SET @BannerId = 8;
--SET @FromDate = ''2/9/2012 6:14:30 PM'';
--SET @ToDate = ''4/9/2012 6:14:30 PM'';
SET @FromDate = {%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
SELECT 
    YEAR([Date]) StartDate, T3.clicks as ''{$banner.clicks$}'', T3.hits as ''{$banner.hits$}''
FROM dbo.Func_Analytics_EnsureDates(@FromDate,@ToDate,''year'') AS Dates
LEFT JOIN
(
	SELECT T1.HitsStartTime, T2.hits, T1.clicks
	FROM
		(SELECT HitsStartTime, HitsCount AS clicks
		FROM Analytics_Statistics
		INNER JOIN Analytics_YearHits ON HitsStatisticsID = Analytics_Statistics.StatisticsID
		WHERE (Analytics_Statistics.StatisticsObjectID = @BannerID) 
			AND (StatisticsCode = ''bannerclick'')
		) AS T1
	INNER JOIN 
		(SELECT HitsStartTime, HitsCount AS hits
		FROM Analytics_Statistics
		INNER JOIN Analytics_YearHits ON HitsStatisticsID = Analytics_Statistics.StatisticsID
		WHERE (Analytics_Statistics.StatisticsObjectID = @BannerID) 
			AND (StatisticsCode = ''bannerhit'')
		) AS T2
	ON T1.HitsStartTime = T2.HitsStartTime
 ) AS T3
ON [Date] = HitsStartTime', 0, N'line', 874, N'', N'{$reports_general.label_years$}', N'{$banner.hitsclicks$}', 700, 300, 100, N'<customdata><querynorecordtext>No data found</querynorecordtext><yaxisfont></yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendtitle></legendtitle><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendposition>Bottom</legendposition><legendfixedposition></legendfixedposition><scalemin></scalemin><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{%XAxisFormat%}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '17f26261-1c1e-4433-b7fa-b418aa5504c9', '20120530 15:30:21', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1635, N'NumberOfDocumentsInWorkflowStep', N'NumberOfDocumentsInWorkflowStep', N'SELECT 
  StepDisplayName AS ''Name'',
  [Value]
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
ORDER BY StepType', 0, N'pie', 882, N'', N'', N'', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval>1</xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX - #VALY</seriesitemtooltip><displayitemvalue>True</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><legendposition>Right</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '8a771ab5-5434-4867-91b9-89ddd52b8f13', '20120830 10:05:40', NULL, N'')
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1636, N'NumberOfContactsInSteps', N'NumberOfContactsInSteps', N'SELECT 
  StepDisplayName AS ''Name'',
  [Value]
FROM (
  SELECT
    COUNT(StateObjectID) AS ''Value'',
    StateStepID
  FROM CMS_AutomationState
  WHERE StateObjectType = ''om.contact'' AND StateStepID IN (
    SELECT StepID FROM CMS_WorkflowStep WHERE StepWorkflowID = @AutomationProcessID
  ) AND ((@SiteID = -1) OR ((@SiteID = -4) AND (StateSiteID IS NULL)) OR (StateSiteID = @SiteID) OR ((@SiteID = -5) AND ((StateSiteID IS NULL) OR (StateSiteID = @CMSContextCurrentSiteID))))
  GROUP BY StateStepID
) Groups JOIN CMS_WorkflowStep ON Groups.StateStepID = StepID
ORDER BY StepType', 0, N'pie', 883, N'', N'', N'', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval>1</xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX - #VALY</seriesitemtooltip><displayitemvalue>True</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><xaxissort>True</xaxissort><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><querynorecordtext></querynorecordtext><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'e4c98444-be25-4eb2-8661-4dda8100ad37', '20120830 09:52:42', NULL, N'')
SET IDENTITY_INSERT [Reporting_ReportGraph] OFF
