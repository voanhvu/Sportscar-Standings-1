SET IDENTITY_INSERT [Reporting_ReportGraph] ON
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1396, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
/*Ensure empty campaign name if is not defined*/  
IF @CampaignName IS NULL
    SET @CampaignName = '''';
/* Get campaign display name */
DECLARE @CampaignDisplayName nvarchar(200)
SET @CampaignDisplayName = (SELECT REPLACE(CampaignDisplayname, '''''''','''''''''''') FROM Analytics_Campaign WHERE @CampaignName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID)
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)       
SELECT
  [DATE] AS StartTime,
 (SELECT ISNULL(SUM(HitsCount) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_YearHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = [StatisticsObjectName] AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campaign'') AND (StatisticsObjectname = @CampaignName OR '''' = @CampaignName) AND  HitsStartTime <= [DATE])  as ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''year'') AS Dates   
   
         DECLARE @cols nvarchar(max);
         SET @cols = '''';
         
         DECLARE @GoalValue FLOAT
         
         SET @GoalValue = (SELECT CASE WHEN CampaignGoalVisitorsPercent = 0  THEN CampaignGoalVisitorsMin ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitorsMin END FROM Analytics_Campaign WHERE  CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
         IF (@GoalValue IS NOT NULL)
             SET @cols = '', '' +  CAST(@GoalValue AS NVARCHAR(200)) + '' AS ''''#@NS;LCFF0000@#{$reports_goals.redflagvalue$}''''''
             
         SET @GoalValue = (SELECT CASE WHEN CampaignGoalVisitorsPercent = 0  THEN CampaignGoalVisitors ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalVisitors END FROM Analytics_Campaign WHERE CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
         IF (@GoalValue IS NOT NULL)
             SET @cols = @cols + '', '' + CAST(@GoalValue AS NVARCHAR(200))+ '' AS ''''#@NS;LC009900@#{$reports_goals.goalvalue$}'''''';
       
        EXEC (''SELECT #AnalyticsTempTable.StartTime, Hits as ''''''+ @CampaignDisplayName +'''''' ''+@cols+'' FROM #AnalyticsTempTable'')
/* Remove Temp table*/
EXEC Proc_Analytics_RemoveTempTable
END', 0, N'line', 693, N'', N'{$reports_general.label_years$}', N'{$reports_campgoal.label_numvisits$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '6421e9f9-ea4d-4949-aeb3-360bc4a96bd0', '20120323 11:11:36', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1397, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime,  Hits,Name)            
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount)AS hits,CampaignDisplayName  AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName AND
      CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE ''campconversion;%'')    
  GROUP BY HitsStartTime,CampaignDisplayName  
  ) AS T1
  ON T1.StartTime <= [Date]  
    
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 694, N'', N'{$reports_general.label_days$}', N'{$reports_campgoal.label_numcomversions$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'a541335c-e70a-47a9-86c1-3c0f71a675ce', '20120323 11:11:36', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1398, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300)
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
/*Ensure empty campaign name if is not defined*/  
IF @CampaignName IS NULL
    SET @CampaignName = '''';
/* Get campaign display name */
DECLARE @CampaignDisplayName nvarchar(200)
SET @CampaignDisplayName = (SELECT REPLACE(CampaignDisplayname, '''''''','''''''''''') FROM Analytics_Campaign WHERE @CampaignName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID)
  
  INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)       
SELECT
  [DATE] AS StartTime,
 (SELECT ISNULL(SUM(HitsCount) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_HourHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campconversion;'' + @CampaignName) AND HitsStartTime <= [DATE])  as ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''hour'') AS Dates   
   
         DECLARE @cols nvarchar(max);
         SET @cols = '''';
         
         DECLARE @GoalValue FLOAT
         
         SET @GoalValue = (SELECT CASE WHEN CampaignGoalConversionsPercent = 0  THEN CampaignGoalConversionsMin ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversionsMin END FROM Analytics_Campaign WHERE  CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
         IF (@GoalValue IS NOT NULL)
             SET @cols = '', '' +  CAST(@GoalValue AS NVARCHAR(200)) + '' AS ''''#@NS;LCFF0000@#{$reports_goals.redflagvalue$}''''''
             
        SET @GoalValue = (SELECT CASE WHEN CampaignGoalConversionsPercent = 0  THEN CampaignGoalConversions ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversions END FROM Analytics_Campaign WHERE CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
        IF (@GoalValue IS NOT NULL)
             SET @cols = @cols + '', '' + CAST(@GoalValue AS NVARCHAR(200))+ '' AS ''''#@NS;LC009900@#{$reports_goals.goalvalue$}'''''';
       
        EXEC(''SELECT #AnalyticsTempTable.StartTime, Hits as ''''''+ @CampaignDisplayName +'''''' ''+@cols+'' FROM #AnalyticsTempTable'')
/* Remove Temp table*/
EXEC Proc_Analytics_RemoveTempTable
END', 0, N'line', 695, N'', N'{$reports_general.label_hours$}', N'{$reports_campgoal.label_numcomversions$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '93f5738a-cd0c-4fc6-a8a9-01dae3cb9b9a', '20120323 11:11:36', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1399, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300)
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
/*Ensure empty campaign name if is not defined*/  
IF @CampaignName IS NULL
    SET @CampaignName = '''';
/* Get campaign display name */
DECLARE @CampaignDisplayName nvarchar(200)
SET @CampaignDisplayName = (SELECT REPLACE(CampaignDisplayname, '''''''','''''''''''') FROM Analytics_Campaign WHERE @CampaignName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID)
  
  INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)       
SELECT
  [DATE] AS StartTime,
 (SELECT ISNULL(SUM(HitsCount) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_WeekHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campconversion;'' + @CampaignName) AND HitsStartTime <= [DATE])  as ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''week'') AS Dates   
   
         DECLARE @cols nvarchar(max);
         SET @cols = '''';
         
         DECLARE @GoalValue FLOAT
         
         SET @GoalValue = (SELECT CASE WHEN CampaignGoalConversionsPercent = 0  THEN CampaignGoalConversionsMin ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversionsMin END FROM Analytics_Campaign WHERE  CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
         IF (@GoalValue IS NOT NULL)
             SET @cols = '', '' +  CAST(@GoalValue AS NVARCHAR(200)) + '' AS ''''#@NS;LCFF0000@#{$reports_goals.redflagvalue$}''''''
             
        SET @GoalValue = (SELECT CASE WHEN CampaignGoalConversionsPercent = 0  THEN CampaignGoalConversions ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversions END FROM Analytics_Campaign WHERE CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
        IF (@GoalValue IS NOT NULL)
             SET @cols = @cols + '', '' + CAST(@GoalValue AS NVARCHAR(200))+ '' AS ''''#@NS;LC009900@#{$reports_goals.goalvalue$}'''''';
       
        EXEC(''SELECT #AnalyticsTempTable.StartTime, Hits as ''''''+ @CampaignDisplayName +'''''' ''+@cols+'' FROM #AnalyticsTempTable'')
/* Remove Temp table*/
EXEC Proc_Analytics_RemoveTempTable
END', 0, N'line', 696, N'', N'{$reports_general.label_weeks$}', N'{$reports_campgoal.label_numcomversions$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'ce4fa032-4f07-49a4-ba34-51cd418be840', '20120323 11:11:36', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1400, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300)
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
/*Ensure empty campaign name if is not defined*/  
IF @CampaignName IS NULL
    SET @CampaignName = '''';
/* Get campaign display name */
DECLARE @CampaignDisplayName nvarchar(200)
SET @CampaignDisplayName = (SELECT REPLACE(CampaignDisplayname, '''''''','''''''''''') FROM Analytics_Campaign WHERE @CampaignName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID)
  
  INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)       
SELECT
  [DATE] AS StartTime,
 (SELECT ISNULL(SUM(HitsCount) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_MonthHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campconversion;'' + @CampaignName) AND HitsStartTime <= [DATE])  as ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''month'') AS Dates   
   
         DECLARE @cols nvarchar(max);
         SET @cols = '''';
         
         DECLARE @GoalValue FLOAT
         
         SET @GoalValue = (SELECT CASE WHEN CampaignGoalConversionsPercent = 0  THEN CampaignGoalConversionsMin ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversionsMin END FROM Analytics_Campaign WHERE  CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
         IF (@GoalValue IS NOT NULL)
             SET @cols = '', '' +  CAST(@GoalValue AS NVARCHAR(200)) + '' AS ''''#@NS;LCFF0000@#{$reports_goals.redflagvalue$}''''''
             
        SET @GoalValue = (SELECT CASE WHEN CampaignGoalConversionsPercent = 0  THEN CampaignGoalConversions ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversions END FROM Analytics_Campaign WHERE CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
        IF (@GoalValue IS NOT NULL)
             SET @cols = @cols + '', '' + CAST(@GoalValue AS NVARCHAR(200))+ '' AS ''''#@NS;LC009900@#{$reports_goals.goalvalue$}'''''';
       
        EXEC(''SELECT #AnalyticsTempTable.StartTime, Hits as ''''''+ @CampaignDisplayName +'''''' ''+@cols+'' FROM #AnalyticsTempTable'')
/* Remove Temp table*/
EXEC Proc_Analytics_RemoveTempTable
END', 0, N'line', 697, N'', N'{$reports_general.label_months$}', N'{$reports_campgoal.label_numcomversions$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '7050eda4-7a9a-4450-aa82-6174a9eadff5', '20120323 11:11:36', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1401, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
/*Ensure empty campaign name if is not defined*/  
IF @CampaignName IS NULL
    SET @CampaignName = '''';
/* Get campaign display name */
DECLARE @CampaignDisplayName nvarchar(200)
SET @CampaignDisplayName = (SELECT REPLACE(CampaignDisplayname, '''''''','''''''''''') FROM Analytics_Campaign WHERE @CampaignName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID)
  
SELECT
  [DATE] AS StartTime,
 (SELECT ISNULL(SUM(HitsCount) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_YearHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campconversion;'' + @CampaignName) AND HitsStartTime <= [DATE])  as ''Hits''
  , @CampaignDisplayName AS ''Name''
 INTO #AnalyticsTempTable  
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''year'') AS Dates   
   
         DECLARE @cols nvarchar(max);
         SET @cols = '''';
         
         DECLARE @GoalValue FLOAT
         
         SET @GoalValue = (SELECT CASE WHEN CampaignGoalConversionsPercent = 0  THEN CampaignGoalConversionsMin ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversionsMin END FROM Analytics_Campaign WHERE  CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
         IF (@GoalValue IS NOT NULL)
             SET @cols = '', '' +  CAST(@GoalValue AS NVARCHAR(200)) + '' AS ''''#@NS;LCFF0000@#{$reports_goals.redflagvalue$}''''''
             
        SET @GoalValue = (SELECT CASE WHEN CampaignGoalConversionsPercent = 0  THEN CampaignGoalConversions ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversions END FROM Analytics_Campaign WHERE CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
        IF (@GoalValue IS NOT NULL)
             SET @cols = @cols + '', '' + CAST(@GoalValue AS NVARCHAR(200))+ '' AS ''''#@NS;LC009900@#{$reports_goals.goalvalue$}'''''';
       
        EXEC(''SELECT #AnalyticsTempTable.StartTime, Hits as ''''''+ @CampaignDisplayName +'''''' ''+@cols+'' FROM #AnalyticsTempTable'')
/* Remove Temp table*/
EXEC Proc_Analytics_RemoveTempTable
END', 0, N'line', 698, N'', N'{$reports_general.label_years$}', N'{$reports_campgoal.label_numcomversions$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '0fa58d97-a4b9-47ad-a353-048fb0e37663', '20120323 11:11:36', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1402, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
/*Ensure empty campaign name if is not defined*/  
IF @CampaignName IS NULL
    SET @CampaignName = '''';
/* Get campaign display name */
DECLARE @CampaignDisplayName nvarchar(200)
SET @CampaignDisplayName = (SELECT REPLACE(CampaignDisplayname, '''''''','''''''''''') FROM Analytics_Campaign WHERE @CampaignName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID)
  
INSERT INTO #AnalyticsTempTable (StartTime,Hits,Name)  
SELECT
  [DATE] AS StartTime,
 (SELECT ISNULL(SUM(HitsValue) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_DayHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campconversion;'' + @CampaignName) AND HitsStartTime <= [DATE])  as ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''day'') AS Dates   
   
         DECLARE @cols nvarchar(max);
         SET @cols = '''';
         
         DECLARE @GoalValue FLOAT
         
         SET @GoalValue = (SELECT CASE WHEN CampaignGoalValuePercent = 0  THEN CampaignGoalValueMin ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValueMin END FROM Analytics_Campaign WHERE  CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
         IF (@GoalValue IS NOT NULL)
             SET @cols = '', '' +  CAST(@GoalValue AS NVARCHAR(200)) + '' AS ''''#@NS;LCFF0000@#{$reports_goals.redflagvalue$}''''''
             
        SET @GoalValue = (SELECT CASE WHEN CampaignGoalValuePercent = 0  THEN CampaignGoalValue ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValue END FROM Analytics_Campaign WHERE CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
        IF (@GoalValue IS NOT NULL)
             SET @cols = @cols + '', '' + CAST(@GoalValue AS NVARCHAR(200))+ '' AS ''''#@NS;LC009900@#{$reports_goals.goalvalue$}'''''';
       
        EXEC(''SELECT #AnalyticsTempTable.StartTime, Hits as ''''''+ @CampaignDisplayName +'''''' ''+@cols+'' FROM #AnalyticsTempTable'')
/* Remove Temp table*/
EXEC Proc_Analytics_RemoveTempTable
END', 0, N'line', 699, N'', N'{$reports_general.label_days$}', N'{$reports_campgoal.label_valuecomversions$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '24b4b80f-37c9-4134-ace5-bfe8661f25b2', '20120323 11:11:36', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1403, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
/*Ensure empty campaign name if is not defined*/  
IF @CampaignName IS NULL
    SET @CampaignName = '''';
/* Get campaign display name */
DECLARE @CampaignDisplayName nvarchar(200)
SET @CampaignDisplayName = (SELECT REPLACE(CampaignDisplayname, '''''''','''''''''''') FROM Analytics_Campaign WHERE @CampaignName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID)
  
INSERT INTO #AnalyticsTempTable (StartTime,Hits,Name)  
SELECT
  [DATE] AS StartTime,
 (SELECT ISNULL(SUM(HitsValue) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_HourHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campconversion;'' + @CampaignName) AND HitsStartTime <= [DATE])  as ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''hour'') AS Dates   
   
         DECLARE @cols nvarchar(max);
         SET @cols = '''';
         
         DECLARE @GoalValue FLOAT
         
         SET @GoalValue = (SELECT CASE WHEN CampaignGoalValuePercent = 0  THEN CampaignGoalValueMin ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValueMin END FROM Analytics_Campaign WHERE  CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
         IF (@GoalValue IS NOT NULL)
             SET @cols = '', '' +  CAST(@GoalValue AS NVARCHAR(200)) + '' AS ''''#@NS;LCFF0000@#{$reports_goals.redflagvalue$}''''''
             
        SET @GoalValue = (SELECT CASE WHEN CampaignGoalValuePercent = 0  THEN CampaignGoalValue ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValue END FROM Analytics_Campaign WHERE CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
        IF (@GoalValue IS NOT NULL)
             SET @cols = @cols + '', '' + CAST(@GoalValue AS NVARCHAR(200))+ '' AS ''''#@NS;LC009900@#{$reports_goals.goalvalue$}'''''';
       
        EXEC(''SELECT #AnalyticsTempTable.StartTime, Hits as ''''''+ @CampaignDisplayName +'''''' ''+@cols+'' FROM #AnalyticsTempTable'')
/* Remove Temp table*/
EXEC Proc_Analytics_RemoveTempTable
END', 0, N'line', 700, N'', N'{$reports_general.label_hours$}', N'{$reports_campgoal.label_valuecomversions$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '684497c9-6aba-42f0-91be-124fb2dc0c3a', '20120323 11:11:36', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1404, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
/*Ensure empty campaign name if is not defined*/  
IF @CampaignName IS NULL
    SET @CampaignName = '''';
/* Get campaign display name */
DECLARE @CampaignDisplayName nvarchar(200)
SET @CampaignDisplayName = (SELECT REPLACE(CampaignDisplayname, '''''''','''''''''''') FROM Analytics_Campaign WHERE @CampaignName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID)
  
INSERT INTO #AnalyticsTempTable (StartTime,Hits,Name)  
SELECT
  [DATE] AS StartTime,
 (SELECT ISNULL(SUM(HitsValue) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_WeekHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campconversion;'' + @CampaignName) AND HitsStartTime <= [DATE])  as ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''week'') AS Dates   
   
         DECLARE @cols nvarchar(max);
         SET @cols = '''';
         
         DECLARE @GoalValue FLOAT
         
         SET @GoalValue = (SELECT CASE WHEN CampaignGoalValuePercent = 0  THEN CampaignGoalValueMin ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValueMin END FROM Analytics_Campaign WHERE  CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
         IF (@GoalValue IS NOT NULL)
             SET @cols = '', '' +  CAST(@GoalValue AS NVARCHAR(200)) + '' AS ''''#@NS;LCFF0000@#{$reports_goals.redflagvalue$}''''''
             
        SET @GoalValue = (SELECT CASE WHEN CampaignGoalValuePercent = 0  THEN CampaignGoalValue ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValue END FROM Analytics_Campaign WHERE CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
        IF (@GoalValue IS NOT NULL)
             SET @cols = @cols + '', '' + CAST(@GoalValue AS NVARCHAR(200))+ '' AS ''''#@NS;LC009900@#{$reports_goals.goalvalue$}'''''';
       
        EXEC(''SELECT #AnalyticsTempTable.StartTime, Hits as ''''''+ @CampaignDisplayName +'''''' ''+@cols+'' FROM #AnalyticsTempTable'')
/* Remove Temp table*/
EXEC Proc_Analytics_RemoveTempTable
END', 0, N'line', 701, N'', N'{$reports_general.label_weeks$}', N'{$reports_campgoal.label_valuecomversions$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '00f96014-497e-477b-8b40-c46bd355b3a4', '20120323 11:11:37', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1405, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
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
 (SELECT ISNULL(SUM(HitsValue) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_MonthHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campconversion;'' + @CampaignName) AND HitsStartTime <= [DATE])  as ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''month'') AS Dates   
   
         DECLARE @cols nvarchar(max);
         SET @cols = '''';
         
         DECLARE @GoalValue FLOAT
         
         SET @GoalValue = (SELECT CASE WHEN CampaignGoalValuePercent = 0  THEN CampaignGoalValueMin ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValueMin END FROM Analytics_Campaign WHERE  CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
         IF (@GoalValue IS NOT NULL)
             SET @cols = '', '' +  CAST(@GoalValue AS NVARCHAR(200)) + '' AS ''''#@NS;LCFF0000@#{$reports_goals.redflagvalue$}''''''
             
        SET @GoalValue = (SELECT CASE WHEN CampaignGoalValuePercent = 0  THEN CampaignGoalValue ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValue END FROM Analytics_Campaign WHERE CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
        IF (@GoalValue IS NOT NULL)
             SET @cols = @cols + '', '' + CAST(@GoalValue AS NVARCHAR(200))+ '' AS ''''#@NS;LC009900@#{$reports_goals.goalvalue$}'''''';
       
        EXEC(''SELECT #AnalyticsTempTable.StartTime, Hits as ''''''+ @CampaignDisplayName +'''''' ''+@cols+'' FROM #AnalyticsTempTable'')
/* Remove Temp table*/
EXEC Proc_Analytics_RemoveTempTable
END', 0, N'line', 702, N'', N'{$reports_general.label_months$}', N'{$reports_campgoal.label_valuecomversions$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '51678e7b-c403-40c7-aad2-a4bae846a12f', '20120323 11:11:37', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1406, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
/*Ensure empty campaign name if is not defined*/  
IF @CampaignName IS NULL
    SET @CampaignName = '''';
/* Get campaign display name */
DECLARE @CampaignDisplayName nvarchar(200)
SET @CampaignDisplayName = (SELECT REPLACE(CampaignDisplayname, '''''''','''''''''''') FROM Analytics_Campaign WHERE @CampaignName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID)
  
INSERT INTO #AnalyticsTempTable (StartTime,Hits,Name)  
SELECT
  [DATE] AS StartTime,
 (SELECT ISNULL(SUM(HitsValue) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_YearHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campconversion;'' + @CampaignName) AND HitsStartTime <= [DATE])  as ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''year'') AS Dates   
   
         DECLARE @cols nvarchar(max);
         SET @cols = '''';
         
         DECLARE @GoalValue FLOAT
         
         SET @GoalValue = (SELECT CASE WHEN CampaignGoalValuePercent = 0  THEN CampaignGoalValueMin ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValueMin END FROM Analytics_Campaign WHERE  CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
         IF (@GoalValue IS NOT NULL)
             SET @cols = '', '' +  CAST(@GoalValue AS NVARCHAR(200)) + '' AS ''''#@NS;LCFF0000@#{$reports_goals.redflagvalue$}''''''
             
        SET @GoalValue = (SELECT CASE WHEN CampaignGoalValuePercent = 0  THEN CampaignGoalValue ELSE (CAST (CampaignTotalCost AS DECIMAL (15,0)) /100) * CampaignGoalValue END FROM Analytics_Campaign WHERE CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
        IF (@GoalValue IS NOT NULL)
             SET @cols = @cols + '', '' + CAST(@GoalValue AS NVARCHAR(200))+ '' AS ''''#@NS;LC009900@#{$reports_goals.goalvalue$}'''''';
       
        EXEC(''SELECT #AnalyticsTempTable.StartTime, Hits as ''''''+ @CampaignDisplayName +'''''' ''+@cols+'' FROM #AnalyticsTempTable'')
/* Remove Temp table*/
EXEC Proc_Analytics_RemoveTempTable
END', 0, N'line', 703, N'', N'{$reports_general.label_years$}', N'{$reports_campgoal.label_valuecomversions$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '747b6038-9a0c-42f2-8da5-f8f373231512', '20120323 11:11:37', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1407, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable 
 CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits DECIMAL(15,2),
  Name NVARCHAR(300) COLLATE database_default,  
  CodeName NVARCHAR(300) COLLATE database_default   
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
  
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name,CodeName)           
 SELECT [Date] AS StartTime ,SUM(T1.Hits) AS Hits,T1.Name AS Name,T1.CodeName AS CodeName 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,CampaignDisplayName AS Name,CampaignName AS CodeName
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName AND
      CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE ''campconversion;%'')    
  GROUP BY HitsStartTime,CampaignName,CampaignDisplayName  
  ) AS T1
  ON T1.StartTime <= [Date]  
  GROUP BY T1.Name,[Date],T1.CodeName
  
  UPDATE #AnalyticsTempTable SET Hits = CAST (Hits /  (
  SELECT NULLIF (SUM(HitsCount),0) FROM Analytics_Statistics JOIN Analytics_DayHits ON HitsStatisticsID = StatisticsID 
   WHERE CodeName = StatisticsObjectName AND StatisticsCode =''campaign'' AND StatisticsSiteID = @CMSContextCurrentSiteID  
			AND HitsStartTime <= StartTime)
   AS DECIMAL (15,2))
  
 ALTER TABLE #AnalyticsTempTable DROP COLUMN CodeName  
 
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 704, N'', N'{$reports_general.label_days$}', N'{$reports_campgoal.label_valuepervisit$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '11208aad-7ec2-4af0-a1ba-8a8cc59ea932', '20120323 11:11:37', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1408, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits DECIMAL(15,2),
  Name NVARCHAR(300) COLLATE database_default 
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
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
  LEFT JOIN Analytics_HourHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campconversion;'' + @CampaignName) AND HitsStartTime <= [DATE])
  /
  (SELECT NULLIF(SUM(HitsCount) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_HourHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = [StatisticsObjectName] AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campaign'') AND (StatisticsObjectname = @CampaignName OR '''' = @CampaignName) AND  HitsStartTime <= [DATE])   
  AS DECIMAL (15,2)), 0) AS ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''hour'') AS Dates   
   
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
END', 0, N'line', 705, N'', N'{$reports_general.label_hours$}', N'{$reports_campgoal.label_valuepervisit$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '8cebeec7-093d-4095-91ca-7a594427a280', '20120323 11:11:37', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1409, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits DECIMAL(15,2),
  Name NVARCHAR(300) COLLATE database_default 
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
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
  LEFT JOIN Analytics_WeekHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campconversion;'' + @CampaignName) AND HitsStartTime <= [DATE])
  /
  (SELECT NULLIF(SUM(HitsCount) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_WeekHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = [StatisticsObjectName] AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE ((Analytics_Campaign.CampaignGoalVisitorsMin IS NOT NULL OR Analytics_Campaign.CampaignGoalVisitors IS NOT NULL) AND  StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campaign'') AND (StatisticsObjectname = @CampaignName OR '''' = @CampaignName) AND  HitsStartTime <= [DATE])   
  AS DECIMAL (15,2)), 0) AS ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''week'') AS Dates   
   
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
END', 0, N'line', 706, N'', N'{$reports_general.label_weeks$}', N'{$reports_campgoal.label_valuepervisit$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '2b489feb-6f87-451f-a574-7d8c75af5a39', '20120323 11:11:37', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1410, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable 
 CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits DECIMAL(15,2),
  Name NVARCHAR(300) COLLATE database_default,  
  CodeName NVARCHAR(300) COLLATE database_default   
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
  
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name,CodeName)           
 SELECT [Date] AS StartTime ,SUM(T1.Hits) AS Hits,T1.Name AS Name,T1.CodeName AS CodeName 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,CampaignDisplayName AS Name,CampaignName AS CodeName
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName AND
      CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE ''campconversion;%'')    
  GROUP BY HitsStartTime,CampaignName,CampaignDisplayName  
  ) AS T1
  ON T1.StartTime <= [Date]  
  GROUP BY T1.Name,[Date],T1.CodeName
  
  UPDATE #AnalyticsTempTable SET Hits = CAST (Hits /  (
  SELECT NULLIF (SUM(HitsCount),0) FROM Analytics_Statistics JOIN Analytics_MonthHits ON HitsStatisticsID = StatisticsID 
   WHERE CodeName = StatisticsObjectName AND StatisticsCode =''campaign'' AND StatisticsSiteID = @CMSContextCurrentSiteID  
			AND HitsStartTime <= StartTime)
   AS DECIMAL (15,2))
  
 ALTER TABLE #AnalyticsTempTable DROP COLUMN CodeName  
 
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 707, N'', N'{$reports_general.label_months$}', N'{$reports_campgoal.label_valuepervisit$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '3764cb3c-a09c-4729-85a2-b94ecb30cc75', '20120323 11:11:37', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1411, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits DECIMAL(15,2),
  Name NVARCHAR(300) COLLATE database_default 
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
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
  LEFT JOIN Analytics_YearHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campconversion;'' + @CampaignName) AND HitsStartTime <= [DATE])
  /
  (SELECT NULLIF(SUM(HitsCount) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_YearHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = [StatisticsObjectName] AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campaign'') AND (StatisticsObjectname = @CampaignName OR '''' = @CampaignName) AND  HitsStartTime <= [DATE])   
  AS DECIMAL (15,2)), 0) AS ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''year'') AS Dates   
   
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
END', 0, N'line', 708, N'', N'{$reports_general.label_years$}', N'{$reports_campgoal.label_valuepervisit$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '9db3b199-3d15-4509-b01b-6de0a6ada741', '20120323 11:11:37', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1422, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime,  Hits,Name)            
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount)AS hits,CampaignDisplayName  AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName AND
      CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE ''campconversion;%'')    
  GROUP BY HitsStartTime,CampaignDisplayName  
  ) AS T1
  ON T1.StartTime <= [Date]  
    
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 717, N'', N'{$reports_general.label_years$}', N'{$reports_campgoal.label_numcomversions$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'cfaebd5b-1ee5-43ba-adc4-b753356599d7', '20120323 11:11:38', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1423, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime,  Hits,Name)            
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount)AS hits,CampaignDisplayName  AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName AND
      CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE ''campconversion;%'')    
  GROUP BY HitsStartTime,CampaignDisplayName  
  ) AS T1
  ON T1.StartTime <= [Date]  
    
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 718, N'', N'{$reports_general.label_months$}', N'{$reports_campgoal.label_numcomversions$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '63933bed-1317-4d7d-849d-981a580706f5', '20120323 11:11:38', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1424, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime,  Hits,Name)            
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount)AS hits,CampaignDisplayName  AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName AND
      CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE ''campconversion;%'')    
  GROUP BY HitsStartTime,CampaignDisplayName  
  ) AS T1
  ON T1.StartTime <= [Date]  
    
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 719, N'', N'{$reports_general.label_weeks$}', N'{$reports_campgoal.label_numcomversions$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'c583f40d-98d3-43c5-96b9-dee5a60d783a', '20120323 11:11:38', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1425, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime,  Hits,Name)            
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount)AS hits,CampaignDisplayName  AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName AND
      CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE ''campconversion;%'')    
  GROUP BY HitsStartTime,CampaignDisplayName  
  ) AS T1
  ON T1.StartTime <= [Date]  
    
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 720, N'', N'{$reports_general.label_hours$}', N'{$reports_campgoal.label_numcomversions$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '8c796a85-acf4-43a9-9b05-de5f3d24322e', '20120323 11:11:38', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1426, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300)
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
/*Ensure empty campaign name if is not defined*/  
IF @CampaignName IS NULL
    SET @CampaignName = '''';
/* Get campaign display name */
DECLARE @CampaignDisplayName nvarchar(200)
SET @CampaignDisplayName = (SELECT REPLACE(CampaignDisplayname, '''''''','''''''''''') FROM Analytics_Campaign WHERE @CampaignName = CampaignName AND CampaignSiteID = @CMSContextCurrentSiteID)
  
  INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)       
SELECT
  [DATE] AS StartTime,
 (SELECT ISNULL(SUM(HitsCount) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_DayHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campconversion;'' + @CampaignName) AND HitsStartTime <= [DATE])  as ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''day'') AS Dates   
   
         DECLARE @cols nvarchar(max);
         SET @cols = '''';
         
         DECLARE @GoalValue FLOAT
         
         SET @GoalValue = (SELECT CASE WHEN CampaignGoalConversionsPercent = 0  THEN CampaignGoalConversionsMin ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversionsMin END FROM Analytics_Campaign WHERE  CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
         IF (@GoalValue IS NOT NULL)
             SET @cols = '', '' +  CAST(@GoalValue AS NVARCHAR(200)) + '' AS ''''#@NS;LCFF0000@#{$reports_goals.redflagvalue$}''''''
             
        SET @GoalValue = (SELECT CASE WHEN CampaignGoalConversionsPercent = 0  THEN CampaignGoalConversions ELSE (CAST (CampaignImpressions AS DECIMAL (15,0)) /100) * CampaignGoalConversions END FROM Analytics_Campaign WHERE CampaignSiteID = @CMSContextCurrentSiteID AND @CampaignName = CampaignName);
        IF (@GoalValue IS NOT NULL)
             SET @cols = @cols + '', '' + CAST(@GoalValue AS NVARCHAR(200))+ '' AS ''''#@NS;LC009900@#{$reports_goals.goalvalue$}'''''';
       
        EXEC(''SELECT #AnalyticsTempTable.StartTime, Hits as ''''''+ @CampaignDisplayName +'''''' ''+@cols+'' FROM #AnalyticsTempTable'')
/* Remove Temp table*/
EXEC Proc_Analytics_RemoveTempTable
END', 0, N'line', 721, N'', N'{$reports_general.label_days$}', N'{$reports_campgoal.label_numcomversions$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '5ca05ef4-6598-4a23-8490-958051b2e983', '20120323 11:11:38', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1430, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
 
 CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
  
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)       
 SELECT [Date] AS StartTime ,T1.Hits,T1.CampaignDisplayName AS Name FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount)AS hits,CampaignDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode = ''campaign'')AND (StatisticsSiteID = CampaignSiteID)   
  GROUP BY HitsStartTime,CampaignDisplayName,CampaignName) AS T1
  ON T1.StartTime <= [Date]
    
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 725, N'', N'{$reports_general.label_years$}', N'{$reports_campgoal.label_numvisits$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '9971f8fc-a92a-4651-8c4a-1d0f073b44d8', '20120323 11:11:38', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1431, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
 
 CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
  
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)       
 SELECT [Date] AS StartTime ,T1.Hits,T1.CampaignDisplayName AS Name FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount)AS hits,CampaignDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode = ''campaign'')AND (StatisticsSiteID = CampaignSiteID)   
  GROUP BY HitsStartTime,CampaignDisplayName,CampaignName) AS T1
  ON T1.StartTime <= [Date]
    
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 726, N'', N'{$reports_general.label_weeks$}', N'{$reports_campgoal.label_numvisits$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'eff6e873-d9f2-49bf-ab46-d256e764e8fb', '20120323 11:11:38', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1432, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
 
 CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
  
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)       
 SELECT [Date] AS StartTime ,T1.Hits,T1.CampaignDisplayName AS Name FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount)AS hits,CampaignDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode = ''campaign'')AND (StatisticsSiteID = CampaignSiteID)   
  GROUP BY HitsStartTime,CampaignDisplayName,CampaignName) AS T1
  ON T1.StartTime <= [Date]
    
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 727, N'', N'{$reports_general.label_months$}', N'{$reports_campgoal.label_numvisits$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '37112964-d17a-41b7-a7de-0c7ea1cda261', '20120323 11:11:38', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1433, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
 
 CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
  
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)       
 SELECT [Date] AS StartTime ,T1.Hits,T1.CampaignDisplayName AS Name FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount)AS hits,CampaignDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode = ''campaign'')AND (StatisticsSiteID = CampaignSiteID)   
  GROUP BY HitsStartTime,CampaignDisplayName,CampaignName) AS T1
  ON T1.StartTime <= [Date]
    
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 728, N'', N'{$reports_general.label_hours$}', N'{$reports_campgoal.label_numvisits$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '808b3fd2-63b9-48da-8a9d-583599ffaa4b', '20120323 11:11:38', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1434, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
 
 CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
  
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)       
 SELECT [Date] AS StartTime ,T1.Hits,T1.CampaignDisplayName AS Name FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount)AS hits,CampaignDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID
  INNER JOIN Analytics_Campaign ON StatisticsObjectName = CampaignName
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode = ''campaign'')AND (StatisticsSiteID = CampaignSiteID)   
  GROUP BY HitsStartTime,CampaignDisplayName,CampaignName) AS T1
  ON T1.StartTime <= [Date]
    
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 729, N'', N'{$reports_general.label_days$}', N'{$reports_campgoal.label_numvisits$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '85dd5bc4-ed2f-4fd3-a29e-35ff33c28c40', '20120323 11:11:38', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1435, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
 
 CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
  
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)         
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,CampaignDisplayName  AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName AND
      CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE ''campconversion;%'')    
  GROUP BY HitsStartTime,CampaignDisplayName  
  ) AS T1
  ON T1.StartTime <= [Date]  
    
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 730, N'', N'{$reports_general.label_years$}', N'{$reports_campgoal.label_valuecomversions$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><yaxistitleposition>Center</yaxistitleposition><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><querynorecordtext></querynorecordtext><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '0be2c292-a1f0-43e8-810e-248a75f32282', '20120417 14:39:01', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1436, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
 
 CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
  
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)         
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,CampaignDisplayName  AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName AND
      CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE ''campconversion;%'')    
  GROUP BY HitsStartTime,CampaignDisplayName  
  ) AS T1
  ON T1.StartTime <= [Date]  
    
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 731, N'', N'{$reports_general.label_weeks$}', N'{$reports_campgoal.label_valuecomversions$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '8614e41c-bc3c-4db1-98b2-53343136efe2', '20120323 11:11:38', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1437, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
 
 CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
  
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)         
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,CampaignDisplayName  AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName AND
      CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE ''campconversion;%'')    
  GROUP BY HitsStartTime,CampaignDisplayName  
  ) AS T1
  ON T1.StartTime <= [Date]  
    
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 732, N'', N'{$reports_general.label_months$}', N'{$reports_campgoal.label_valuecomversions$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '9370b858-8f16-4944-9031-5e7d1fba747b', '20120323 11:11:38', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1438, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
 
 CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
  
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)         
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,CampaignDisplayName  AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName AND
      CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE ''campconversion;%'')    
  GROUP BY HitsStartTime,CampaignDisplayName  
  ) AS T1
  ON T1.StartTime <= [Date]  
    
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 733, N'', N'{$reports_general.label_hours$}', N'{$reports_campgoal.label_valuecomversions$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '71777f84-25a6-45b1-bd48-f6a1a7852fbc', '20120323 11:11:39', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1439, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
 
 CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
  
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)         
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,CampaignDisplayName  AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName AND
      CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE ''campconversion;%'')    
  GROUP BY HitsStartTime,CampaignDisplayName  
  ) AS T1
  ON T1.StartTime <= [Date]  
    
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 734, N'', N'{$reports_general.label_days$}', N'{$reports_campgoal.label_valuecomversions$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'cf556ba2-6fd0-420d-99da-5887de3937e6', '20120323 11:11:39', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1440, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable 
 CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits DECIMAL(15,2),
  Name NVARCHAR(300) COLLATE database_default,  
  CodeName NVARCHAR(300) COLLATE database_default   
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
  
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name,CodeName)           
 SELECT [Date] AS StartTime ,SUM(T1.Hits) AS Hits,T1.Name AS Name,T1.CodeName AS CodeName 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,CampaignDisplayName AS Name,CampaignName AS CodeName
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName AND
      CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE ''campconversion;%'')    
  GROUP BY HitsStartTime,CampaignName,CampaignDisplayName  
  ) AS T1
  ON T1.StartTime <= [Date]  
  GROUP BY T1.Name,[Date],T1.CodeName
  
  UPDATE #AnalyticsTempTable SET Hits = CAST (Hits /  (
  SELECT NULLIF (SUM(HitsCount),0) FROM Analytics_Statistics JOIN Analytics_YearHits ON HitsStatisticsID = StatisticsID 
   WHERE CodeName = StatisticsObjectName AND StatisticsCode =''campaign'' AND StatisticsSiteID = @CMSContextCurrentSiteID  
			AND HitsStartTime <= StartTime)
   AS DECIMAL (15,2))
  
 ALTER TABLE #AnalyticsTempTable DROP COLUMN CodeName  
 
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 735, N'', N'{$reports_general.label_years$}', N'{$reports_campgoal.label_valuepervisit$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'bad6d665-42fc-4577-9032-56903b39efbc', '20120323 11:11:39', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1441, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable 
 CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits DECIMAL(15,2),
  Name NVARCHAR(300) COLLATE database_default,  
  CodeName NVARCHAR(300) COLLATE database_default   
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
  
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name,CodeName)           
 SELECT [Date] AS StartTime ,SUM(T1.Hits) AS Hits,T1.Name AS Name,T1.CodeName AS CodeName 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,CampaignDisplayName AS Name,CampaignName AS CodeName
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName AND
      CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE ''campconversion;%'')    
  GROUP BY HitsStartTime,CampaignName,CampaignDisplayName  
  ) AS T1
  ON T1.StartTime <= [Date]  
  GROUP BY T1.Name,[Date],T1.CodeName
  
  UPDATE #AnalyticsTempTable SET Hits = CAST (Hits /  (
  SELECT NULLIF (SUM(HitsCount),0) FROM Analytics_Statistics JOIN Analytics_WeekHits ON HitsStatisticsID = StatisticsID 
   WHERE CodeName = StatisticsObjectName AND StatisticsCode =''campaign'' AND StatisticsSiteID = @CMSContextCurrentSiteID  
			AND HitsStartTime <= StartTime)
   AS DECIMAL (15,2))
  
 ALTER TABLE #AnalyticsTempTable DROP COLUMN CodeName  
 
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 736, N'', N'{$reports_general.label_weeks$}', N'{$reports_campgoal.label_valuepervisit$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '2618cbfb-dae9-4deb-9b85-611b5b7b2233', '20120323 11:11:39', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1443, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
/* Ensure dates */
EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,  
  Hits DECIMAL(15,2),
  Name NVARCHAR(300) COLLATE database_default 
);
SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
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
  LEFT JOIN Analytics_DayHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campconversion;'' + @CampaignName) AND HitsStartTime <= [DATE])
  /
  (SELECT NULLIF(SUM(HitsCount) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_DayHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = [StatisticsObjectName] AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campaign'') AND (StatisticsObjectname = @CampaignName OR '''' = @CampaignName) AND  HitsStartTime <= [DATE])   
  AS DECIMAL (15,2)), 0) AS ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''day'') AS Dates   
   
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
END', 0, N'line', 738, N'', N'{$reports_general.label_days$}', N'{$reports_campgoal.label_valuepervisit$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'ac0f798b-19a9-48a8-9c5d-2e375c29447b', '20120323 11:11:39', NULL, NULL)
SET IDENTITY_INSERT [Reporting_ReportGraph] OFF
