SET IDENTITY_INSERT [Reporting_ReportGraph] ON
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1338, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Month'') AS Dates
 LEFT JOIN
  (
  SELECT HitsStartTime AS Interval,
  SUM(HitsCount) AS Hits ,OM_MVTest.MVTestDisplayName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  INNER JOIN OM_MVTest ON OM_MVTest.MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND MVTestSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (@MVTestName IS NULL OR @MVTestName = '''' OR @MVTestName = OM_MVTest.MVTestName)
  AND (@ConversionNAme IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 665, N'', N'', N'', 600, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX{y}  -  #SER: #VALY</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><yaxistitleposition>Center</yaxistitleposition><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition>{%TestName%}</legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><chartareabordercolor>#bbbbbb</chartareabordercolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><querynorecordtext>No data found</querynorecordtext><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '51295d41-a841-4aca-b23a-a5acb9265441', '20120323 11:11:32', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1339, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
   
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Month'') AS Dates
 LEFT JOIN
  (
  SELECT
  HitsStartTime AS Interval,
  SUM(HitsCount) AS Hits ,
    CASE 
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name
  
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  INNER JOIN OM_MVTCombination ON   
   MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END    
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)    
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' AND
  MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode))) AND
  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
  (StatisticsObjectName = @ConversionName OR @ConversionName IS NULL OR @ConversionName ='''')
  GROUP BY HitsStartTime,MVTCombinationName,MVTCombinationCustomName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 665, N'Conversion count detail', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>y</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><legendtitle>Combinations</legendtitle><displaylegend>True</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>true</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', '19a035b7-91a1-4d13-939e-7ce706c10e8b', '20120330 13:51:50', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1340, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Hour'') AS Dates
 LEFT JOIN
  (
  SELECT HitsStartTime AS Interval,
  SUM(HitsCount) AS Hits ,OM_MVTest.MVTestDisplayName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  INNER JOIN OM_MVTest ON OM_MVTest.MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND MVTestSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (@MVTestName IS NULL OR @MVTestName = '''' OR @MVTestName = OM_MVTest.MVTestName)
  AND (@ConversionNAme IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 666, N'', N'', N'', 600, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy HH:mm}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition>{%TestName%}</legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle></customdata>', '9b5fbbde-7066-4ab8-a9c1-240730550b3b', '20120323 11:11:33', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1341, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
   
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Hour'') AS Dates
 LEFT JOIN
  (
  SELECT
  HitsStartTime AS Interval,
  SUM(HitsCount) AS Hits ,
    CASE 
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name
  
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  INNER JOIN OM_MVTCombination ON   
   MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END    
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)    
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' AND
  MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode))) AND
  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
  (StatisticsObjectName = @ConversionName OR @ConversionName IS NULL OR @ConversionName ='''')
  GROUP BY HitsStartTime,MVTCombinationName,MVTCombinationCustomName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'bar', 666, N'Conversions count', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat>g</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><chartareaborderstyle>Solid</chartareaborderstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatey></rotatey><xaxislabelfont></xaxislabelfont><rotatex></rotatex><seriesitemtooltip>{%ser%}</seriesitemtooltip><displayitemvalue>True</displayitemvalue><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><displaylegend>True</displaylegend><barorientation>Horizontal</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendtitle>Combinations</legendtitle><xaxistitlecolor>#000000</xaxistitlecolor><exportenabled>true</exportenabled><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><querynorecordtext>No data found</querynorecordtext><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '5811d5c5-733f-407f-aebc-df2977932d72', '20120330 13:51:51', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1344, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Day'') AS Dates
 LEFT JOIN
  (
  SELECT HitsStartTime AS Interval,
  SUM(HitsCount) AS Hits ,OM_MVTest.MVTestDisplayName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  INNER JOIN OM_MVTest ON OM_MVTest.MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND MVTestSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (@MVTestName IS NULL OR @MVTestName = '''' OR @MVTestName = OM_MVTest.MVTestName)
  AND (@ConversionNAme IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 668, N'', N'', N'', 600, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition>{%TestName%}</legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle></customdata>', '2e162d02-66c0-4a39-9e6d-ea133bc097ef', '20120323 11:11:33', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1345, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
   
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Day'') AS Dates
 LEFT JOIN
  (
  SELECT
  HitsStartTime AS Interval,
  SUM(HitsCount) AS Hits ,
    CASE 
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name
  
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  INNER JOIN OM_MVTCombination ON   
   MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END    
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)    
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' AND
  MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode))) AND
  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
  (StatisticsObjectName = @ConversionName OR @ConversionName IS NULL OR @ConversionName ='''')
  GROUP BY HitsStartTime,MVTCombinationName,MVTCombinationCustomName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'bar', 668, N'Conversions count', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat>d</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><chartareaborderstyle>Solid</chartareaborderstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><xaxisformat>d</xaxisformat><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedoughnutradius>60</piedoughnutradius><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><displaylegend>True</displaylegend><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendtitle>Combinations</legendtitle><querynorecordtext>No data found</querynorecordtext><exportenabled>true</exportenabled><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><seriesitemtooltip>{%ser%}</seriesitemtooltip><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '27282198-61e5-4f69-aaac-cf425d5c16f2', '20120330 13:51:50', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1346, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
 
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Year'') AS Dates
 LEFT JOIN
  (
  SELECT HitsStartTime AS Interval,
  SUM(HitsValue) AS Hits ,OM_MVTest.MVTestDisplayName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  INNER JOIN OM_MVTest ON OM_MVTest.MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND MVTestSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (@MVTestName IS NULL OR @MVTestName = '''' OR @MVTestName = OM_MVTest.MVTestName)
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 669, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition>{%TestName%}</legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '821b4eca-ba4c-4db7-b04a-883d6b441cbd', '20120323 11:11:33', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1347, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
 
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Year'') AS Dates
 LEFT JOIN
  (
  SELECT
  HitsStartTime AS Interval,
  SUM(HitsValue) AS Hits ,
    CASE 
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name
  
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  INNER JOIN OM_MVTCombination ON   
   MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END   
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)    
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' AND
  MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode))) AND
  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
  (StatisticsObjectName = @ConversionName OR @ConversionName ='''' OR @ConversionName IS NULL)
  GROUP BY HitsStartTime,MVTCombinationName,MVTCombinationCustomName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 669, N'Conversions value', N'', N'', 600, 400, 100, N'<customdata><barorientation>Horizontal</barorientation><pielabelstyle>Outside</pielabelstyle><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><pieothervalue></pieothervalue><plotareaborderstyle>Solid</plotareaborderstyle><seriesitemnameformat>yyyy</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><legendtitle>Combinations</legendtitle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><legendbordercolor>#000000</legendbordercolor><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><yaxisformat></yaxisformat><rotatex></rotatex><rotatey></rotatey><displayitemvalue>True</displayitemvalue><seriesbordersize>1</seriesbordersize><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}|(user)administrator|(hash)385dc24ce3ba1884e91a4017ed2120cdd36a97b216f3a7234ceec7ad53fb6dba%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><seriesbordercolor>#000000</seriesbordercolor><borderskinstyle>None</borderskinstyle><scalemax></scalemax><xaxislabelfont></xaxislabelfont><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><xaxistitlecolor>#000000</xaxistitlecolor><displaylegend>True</displaylegend><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><querynorecordtext>No data found</querynorecordtext><yaxistitleposition>Center</yaxistitleposition><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip>{%ser%}</seriesitemtooltip><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><xaxisinterval></xaxisinterval></customdata>', '5fcceb2d-d9ae-474a-83de-4756a3323caa', '20120330 13:50:47', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1348, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
 
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Day'') AS Dates
 LEFT JOIN
  (
  SELECT HitsStartTime AS Interval,
  SUM(HitsValue) AS Hits ,OM_MVTest.MVTestDisplayName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  INNER JOIN OM_MVTest ON OM_MVTest.MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND MVTestSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (@MVTestName IS NULL OR @MVTestName = '''' OR @MVTestName = OM_MVTest.MVTestName)
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 670, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition>{%TestName%}</legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '61bbaf91-e406-45e0-b923-0f2215302350', '20120323 11:11:33', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1349, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
 
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Day'') AS Dates
 LEFT JOIN
  (
  SELECT
  HitsStartTime AS Interval,
  SUM(HitsValue) AS Hits ,
    CASE 
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name
  
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  INNER JOIN OM_MVTCombination ON   
   MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END   
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)    
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' AND
  MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode))) AND
  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
  (StatisticsObjectName = @ConversionName OR @ConversionName ='''' OR @ConversionName IS NULL)
  GROUP BY HitsStartTime,MVTCombinationName,MVTCombinationCustomName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 670, N'Conversions value', N'', N'', 600, 400, 100, N'<customdata><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat>d</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><xaxissort>True</xaxissort><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><pieothervalue></pieothervalue><scalemax></scalemax><seriesbordersize>1</seriesbordersize><yaxisformat></yaxisformat><legendposition>Right</legendposition><yaxisusexaxissettings>True</yaxisusexaxissettings><legendtitle>Combinations</legendtitle><scalemin></scalemin><exportenabled>True</exportenabled><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip>{%ser%}</seriesitemtooltip><xaxistitleposition>Center</xaxistitleposition><querynorecordtext>No data found</querynorecordtext><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><displaylegend>True</displaylegend><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', 'be1b3213-2f0c-43d8-9fa9-96d8e4dc7bac', '20120330 13:50:47', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1350, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
 
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Hour'') AS Dates
 LEFT JOIN
  (
  SELECT HitsStartTime AS Interval,
  SUM(HitsValue) AS Hits ,OM_MVTest.MVTestDisplayName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  INNER JOIN OM_MVTest ON OM_MVTest.MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND MVTestSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (@MVTestName IS NULL OR @MVTestName = '''' OR @MVTestName = OM_MVTest.MVTestName)
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 671, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy HH:mm}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition>{%TestName%}</legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '7a0a6289-e722-48fd-920e-7cacf65eb567', '20120323 11:11:33', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1351, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
 
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Hour'') AS Dates
 LEFT JOIN
  (
  SELECT
  HitsStartTime AS Interval,
  SUM(HitsValue) AS Hits ,
    CASE 
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name
  
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
  INNER JOIN OM_MVTCombination ON   
   MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END   
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)    
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' AND
  MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode))) AND
  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
  (StatisticsObjectName = @ConversionName OR @ConversionName ='''' OR @ConversionName IS NULL)
  GROUP BY HitsStartTime,MVTCombinationName,MVTCombinationCustomName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 671, N'Conversions value', N'', N'', 600, 400, 100, N'<customdata><querynorecordtext>No data found</querynorecordtext><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat>g</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedoughnutradius>60</piedoughnutradius><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatey></rotatey><xaxislabelfont></xaxislabelfont><rotatex></rotatex><seriesitemtooltip>{%ser%}</seriesitemtooltip><displayitemvalue>True</displayitemvalue><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><yaxisformat></yaxisformat><legendposition>Right</legendposition><yaxisusexaxissettings>True</yaxisusexaxissettings><scalemin></scalemin><exportenabled>True</exportenabled><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle>Combinations</legendtitle><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><displaylegend>True</displaylegend><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'b0a39e8d-b3f0-4681-af51-66c3bc2dd7da', '20120330 13:50:47', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1352, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
 
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Month'') AS Dates
 LEFT JOIN
  (
  SELECT HitsStartTime AS Interval,
  SUM(HitsValue) AS Hits ,OM_MVTest.MVTestDisplayName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  INNER JOIN OM_MVTest ON OM_MVTest.MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND MVTestSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (@MVTestName IS NULL OR @MVTestName = '''' OR @MVTestName = OM_MVTest.MVTestName)
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 672, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><xaxistitlecolor>#000000</xaxistitlecolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><seriessymbols>Circle</seriessymbols><seriesgradient>None</seriesgradient><legendposition>Bottom</legendposition><rotatex></rotatex><rotatey></rotatey><seriesitemtooltip>#VALX{y}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition>{%TestName%}</legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><querynorecordtext>No data found</querynorecordtext><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><chartareabordercolor>#bbbbbb</chartareabordercolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '8acc669a-2fe9-4a1a-968d-08722295622b', '20120323 11:11:33', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1353, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
 
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Month'') AS Dates
 LEFT JOIN
  (
  SELECT
  HitsStartTime AS Interval,
  SUM(HitsValue) AS Hits ,
    CASE 
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name
  
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  INNER JOIN OM_MVTCombination ON   
   MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END   
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)    
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' AND
  MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode))) AND
  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
  (StatisticsObjectName = @ConversionName OR @ConversionName ='''' OR @ConversionName IS NULL)
  GROUP BY HitsStartTime,MVTCombinationName,MVTCombinationCustomName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 672, N'Conversion count value', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>y</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><legendtitle>Combinations</legendtitle><displaylegend>True</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>True</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', 'a36539cb-5678-44fc-a72a-74095d256658', '20120330 13:50:47', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1354, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
 
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Week'') AS Dates
 LEFT JOIN
  (
  SELECT HitsStartTime AS Interval,
  SUM(HitsValue) AS Hits ,OM_MVTest.MVTestDisplayName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  INNER JOIN OM_MVTest ON OM_MVTest.MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND MVTestSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (@MVTestName IS NULL OR @MVTestName = '''' OR @MVTestName = OM_MVTest.MVTestName)
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 673, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition>{%TestName%}</legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'be04f52f-f354-4732-bc68-0a1b2e0a6793', '20120323 11:11:34', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1355, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name) 
 
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Week'') AS Dates
 LEFT JOIN
  (
  SELECT
  HitsStartTime AS Interval,
  SUM(HitsValue) AS Hits ,
    CASE 
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name
  
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  INNER JOIN OM_MVTCombination ON   
   MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END   
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)    
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%'' AND
  MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode))) AND
  @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND
  (StatisticsObjectName = @ConversionName OR @ConversionName ='''' OR @ConversionName IS NULL)
  GROUP BY HitsStartTime,MVTCombinationName,MVTCombinationCustomName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 673, N'Conversions value', N'', N'', 600, 400, 100, N'<customdata><querynorecordtext>No data found</querynorecordtext><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat></seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><displaylegend>True</displaylegend><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><pieothervalue></pieothervalue><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><legendposition>Right</legendposition><legendtitle>Combinations</legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><seriesitemtooltip>{%ser%}</seriesitemtooltip><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', 'a9dd2f30-ad71-4e5a-ac0e-5e41d0f50a09', '20120330 13:50:47', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1356, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)  
  SELECT [Date] AS StartTime, CAST (SUM(HitsCount) AS DECIMAL(10,1))  AS Hits, Name
  FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates LEFT JOIN
  (SELECT HitsCount,HitsStartTime, OM_MVTest.MVTestName AS Name
   FROM Analytics_YearHits
   JOIN  Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
   JOIN OM_MVTest ON SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) = OM_MVTest.MVTestName
   WHERE Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;%''AND StatisticsSiteID = @CMSContextCurrentSiteID
   AND (@MVTestName IS NULL OR @MVTestName =MVTestName OR @MVTestName ='''')
   AND (@ConversionName = StatisticsObjectName OR @ConversionName = '''' OR @ConversionName IS NULL)
  ) AS x   
  ON x.HitsStartTime = Dates.Date
  GROUP BY [Date], Name
         
   UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_YearHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
   (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath IN (SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID)
   AND NodeSiteID = @CMSContextCurrentSiteID)
    AND (StatisticsObjectCulture IN (SELECT MVTestCulture FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID) OR
    (SELECT MVTestCulture FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID) IS NULL)         
   )*100
   
   UPDATE #AnalyticsTempTable SET Name =
    (SELECT MVTestDisplayName FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID)
   
   EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 674, N'', N'', N'', 600, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX{yyyy}  -  #SER: #VALY%</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition>{%TestName%}</legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle></customdata>', '0225bf8f-e9d1-43ed-93db-84384fc01086', '20120323 11:11:34', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1357, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default,
  Page NVARCHAR(300) COLLATE database_default,
  Culture NVARCHAR(300) COLLATE database_default
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name,Page,Culture)  
 
  SELECT [Date] AS StartTime, CAST (SUM(HitsCount) AS DECIMAL(10,1))  AS Hits, Name,Page,Culture
  FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates LEFT JOIN
  (SELECT HitsCount,HitsStartTime,
    CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,  
   OM_MVTest.MVTestPage AS Page,OM_MVTest.MVTestCulture AS Culture
   FROM Analytics_YearHits
   JOIN  Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
   JOIN OM_MVTest ON SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) = OM_MVTest.MVTestName
   INNER JOIN OM_MVTCombination ON   
   MVTCombinationPageTemplateID IN ( SELECT 
  CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END   
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)  
   
   WHERE Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;%''AND StatisticsSiteID = @CMSContextCurrentSiteID AND
   MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode))) AND
   @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND   
   (@ConversionName IN('''',StatisticsObjectName) OR @ConversionName IS NULL)
  ) AS x   
  ON x.HitsStartTime = Dates.Date
  GROUP BY [Date], Name,Page,Culture
  
       
   UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_YearHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
   (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath = Page AND NodeSiteID = @CMSContextCurrentSiteID)
    AND (StatisticsObjectCulture = Culture OR Culture IS NULL)         
   )*100
   
   ALTER TABLE #AnalyticsTempTable DROP COLUMN Page
   ALTER TABLE #AnalyticsTempTable DROP COLUMN Culture
   
   EXEC Proc_Analytics_Pivot ''year'' 
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 674, N'Conversions rate', N'', N'', 600, 400, 100, N'<customdata><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><seriesitemnameformat>yyyy</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>None</seriessymbols><displaylegend>True</displaylegend><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><itemvalueformat>{%yval%}%</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendposition>Right</legendposition><legendtitle>Combinations</legendtitle><querynorecordtext>No data found</querynorecordtext><xaxistitleposition>Center</xaxistitleposition><exportenabled>True</exportenabled><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip>{%ser%}</seriesitemtooltip><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', '0b1b7b7c-4745-4d5e-b13e-d19f653bbc17', '20120330 13:36:16', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1358, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)  
  SELECT [Date] AS StartTime, CAST (SUM(HitsCount) AS DECIMAL(10,1))  AS Hits, Name
  FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'') AS Dates LEFT JOIN
  (SELECT HitsCount,HitsStartTime, OM_MVTest.MVTestName AS Name
   FROM Analytics_WeekHits
   JOIN  Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
   JOIN OM_MVTest ON SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) = OM_MVTest.MVTestName
   WHERE Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;%''AND StatisticsSiteID = @CMSContextCurrentSiteID
   AND (@MVTestName IS NULL OR @MVTestName =MVTestName OR @MVTestName ='''')
   AND (@ConversionName = StatisticsObjectName OR @ConversionName = '''' OR @ConversionName IS NULL)
  ) AS x   
  ON x.HitsStartTime = Dates.Date
  GROUP BY [Date], Name
         
   UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_WeekHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
   (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath IN (SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID)
   AND NodeSiteID = @CMSContextCurrentSiteID)
    AND (StatisticsObjectCulture IN (SELECT MVTestCulture FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID) OR
    (SELECT MVTestCulture FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID) IS NULL)         
   )*100
   
   UPDATE #AnalyticsTempTable SET Name =
    (SELECT MVTestDisplayName FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID)
   
   EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 675, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition>{%TestName%}</legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><seriesitemtooltip>#VALX  -  #SER: #VALY%</seriesitemtooltip><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle></customdata>', '0314f58b-c94b-44f1-a2e1-8102a8f5b111', '20120323 11:11:34', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1359, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default,
  Page NVARCHAR(300) COLLATE database_default,
  Culture NVARCHAR(300) COLLATE database_default
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name,Page,Culture)  
 
  SELECT [Date] AS StartTime, CAST (SUM(HitsCount) AS DECIMAL(10,1))  AS Hits, Name,Page,Culture
  FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'') AS Dates LEFT JOIN
  (SELECT HitsCount,HitsStartTime,
    CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,  
   OM_MVTest.MVTestPage AS Page,OM_MVTest.MVTestCulture AS Culture
   FROM Analytics_WeekHits
   JOIN  Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
   JOIN OM_MVTest ON SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) = OM_MVTest.MVTestName
   INNER JOIN OM_MVTCombination ON   
   MVTCombinationPageTemplateID IN ( SELECT 
   CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END     FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)  
   
   WHERE Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;%''AND StatisticsSiteID = @CMSContextCurrentSiteID AND
   MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode))) AND
   @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND   
   (@ConversionName IN('''',StatisticsObjectName) OR @ConversionName IS NULL)
  ) AS x   
  ON x.HitsStartTime = Dates.Date
  GROUP BY [Date], Name,Page,Culture
  
       
   UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_WeekHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
   (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath = Page AND NodeSiteID = @CMSContextCurrentSiteID)
    AND (StatisticsObjectCulture = Culture OR Culture IS NULL)         
   )*100
   
   ALTER TABLE #AnalyticsTempTable DROP COLUMN Page
   ALTER TABLE #AnalyticsTempTable DROP COLUMN Culture
   
   EXEC Proc_Analytics_Pivot ''week'' 
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 675, N'Conversions rate', N'', N'', 600, 400, 100, N'<customdata><querynorecordtext>No data found</querynorecordtext><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><seriesitemnameformat></seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>None</seriessymbols><displaylegend>True</displaylegend><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><seriesitemtooltip>{%ser%}</seriesitemtooltip><displayitemvalue>True</displayitemvalue><itemvalueformat>{%yval%}%</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendposition>Right</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><exportenabled>True</exportenabled><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle>Combinations</legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', 'b7302c4c-3379-4d88-8267-e1e8f8714cc9', '20120330 13:35:15', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1360, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)  
  SELECT [Date] AS StartTime, CAST (SUM(HitsCount) AS DECIMAL(10,1))  AS Hits, Name
  FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates LEFT JOIN
  (SELECT HitsCount,HitsStartTime, OM_MVTest.MVTestName AS Name
   FROM Analytics_MonthHits
   JOIN  Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
   JOIN OM_MVTest ON SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) = OM_MVTest.MVTestName
   WHERE Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;%''AND StatisticsSiteID = @CMSContextCurrentSiteID
   AND (@MVTestName IS NULL OR @MVTestName =MVTestName OR @MVTestName ='''')
   AND (@ConversionName = StatisticsObjectName OR @ConversionName = '''' OR @ConversionName IS NULL)
  ) AS x   
  ON x.HitsStartTime = Dates.Date
  GROUP BY [Date], Name
         
   UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_MonthHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
   (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath IN (SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID)
   AND NodeSiteID = @CMSContextCurrentSiteID)
    AND (StatisticsObjectCulture IN (SELECT MVTestCulture FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID) OR
    (SELECT MVTestCulture FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID) IS NULL)         
   )*100
   
   UPDATE #AnalyticsTempTable SET Name =
    (SELECT MVTestDisplayName FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID)
   
   EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 676, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{y}  -  #SER: #VALY%</seriesitemtooltip><displayitemvalue>False</displayitemvalue><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition>{%TestName%}</legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle></customdata>', '19236b36-d54c-4234-b516-25857bd240ef', '20120323 11:11:34', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1361, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default,
  Page NVARCHAR(300) COLLATE database_default,
  Culture NVARCHAR(300) COLLATE database_default
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name,Page,Culture)  
 
  SELECT [Date] AS StartTime, CAST (SUM(HitsCount) AS DECIMAL(10,1))  AS Hits, Name,Page,Culture
  FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates LEFT JOIN
  (SELECT HitsCount,HitsStartTime,
    CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,  
   OM_MVTest.MVTestPage AS Page,OM_MVTest.MVTestCulture AS Culture
   FROM Analytics_MonthHits
   JOIN  Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
   JOIN OM_MVTest ON SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) = OM_MVTest.MVTestName
   INNER JOIN OM_MVTCombination ON   
   MVTCombinationPageTemplateID IN ( SELECT 
  CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END    
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)  
   
   WHERE Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;%''AND StatisticsSiteID = @CMSContextCurrentSiteID AND
   MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode))) AND
   @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND   
   (@ConversionName IN('''',StatisticsObjectName) OR @ConversionName IS NULL)
  ) AS x   
  ON x.HitsStartTime = Dates.Date
  GROUP BY [Date], Name,Page,Culture
  
       
   UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_MonthHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
   (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath = Page AND NodeSiteID = @CMSContextCurrentSiteID)
    AND (StatisticsObjectCulture = Culture OR Culture IS NULL)         
   )*100
   
   ALTER TABLE #AnalyticsTempTable DROP COLUMN Page
   ALTER TABLE #AnalyticsTempTable DROP COLUMN Culture
   
   EXEC Proc_Analytics_Pivot ''month'' 
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 676, N'Conversions rate', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><seriesitemnameformat>y</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>None</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitleposition>Center</yaxistitleposition><displayitemvalue>True</displayitemvalue><itemvalueformat>{%yval%}%</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><displaylegend>True</displaylegend><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendtitle>Combinations</legendtitle><scalemin></scalemin><exportenabled>True</exportenabled><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><querynorecordtext>No data found</querynorecordtext><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', '58879ece-872f-4725-bddb-d7efece15c44', '20120330 13:36:34', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1362, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)  
  SELECT [Date] AS StartTime, CAST (SUM(HitsCount) AS DECIMAL(10,1))  AS Hits, Name
  FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates LEFT JOIN
  (SELECT HitsCount,HitsStartTime, OM_MVTest.MVTestName AS Name
   FROM Analytics_HourHits
   JOIN  Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
   JOIN OM_MVTest ON SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) = OM_MVTest.MVTestName
   WHERE Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;%''AND StatisticsSiteID = @CMSContextCurrentSiteID
   AND (@MVTestName IS NULL OR @MVTestName =MVTestName OR @MVTestName ='''')
   AND (@ConversionName = StatisticsObjectName OR @ConversionName = '''' OR @ConversionName IS NULL)
  ) AS x   
  ON x.HitsStartTime = Dates.Date
  GROUP BY [Date], Name
         
   UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_HourHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
   (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath IN (SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID)
   AND NodeSiteID = @CMSContextCurrentSiteID)
    AND (StatisticsObjectCulture IN (SELECT MVTestCulture FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID) OR
    (SELECT MVTestCulture FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID) IS NULL)         
   )*100
   
   UPDATE #AnalyticsTempTable SET Name =
    (SELECT MVTestDisplayName FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID)
   
   EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 677, N'', N'', N'', 600, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy HH:mm}  -  #SER: #VALY%</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition>{%TestName%}</legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'ca75ca54-02d1-41c4-9953-52962e7b1b76', '20120323 11:11:34', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1363, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default,
  Page NVARCHAR(300) COLLATE database_default,
  Culture NVARCHAR(300) COLLATE database_default
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name,Page,Culture)  
 
  SELECT [Date] AS StartTime, CAST (SUM(HitsCount) AS DECIMAL(10,1))  AS Hits, Name,Page,Culture
  FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates LEFT JOIN
  (SELECT HitsCount,HitsStartTime,
    CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,  
   OM_MVTest.MVTestPage AS Page,OM_MVTest.MVTestCulture AS Culture
   FROM Analytics_HourHits
   JOIN  Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
   JOIN OM_MVTest ON SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) = OM_MVTest.MVTestName
   INNER JOIN OM_MVTCombination ON   
   MVTCombinationPageTemplateID IN ( SELECT 
  CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END    
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)  
   
   WHERE Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;%''AND StatisticsSiteID = @CMSContextCurrentSiteID AND
   MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode))) AND
   @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND   
   (@ConversionName IN('''',StatisticsObjectName) OR @ConversionName IS NULL)
  ) AS x   
  ON x.HitsStartTime = Dates.Date
  GROUP BY [Date], Name,Page,Culture
  
       
   UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_HourHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
   (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath = Page AND NodeSiteID = @CMSContextCurrentSiteID)
    AND (StatisticsObjectCulture = Culture OR Culture IS NULL)         
   )*100
   
   ALTER TABLE #AnalyticsTempTable DROP COLUMN Page
   ALTER TABLE #AnalyticsTempTable DROP COLUMN Culture
   
   EXEC Proc_Analytics_Pivot ''hour'' 
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 677, N'Conversions rate', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><seriesitemnameformat>g</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>None</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitleposition>Center</yaxistitleposition><displayitemvalue>True</displayitemvalue><itemvalueformat>{%yval%}%</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><displaylegend>True</displaylegend><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendtitle>Combinations</legendtitle><scalemin></scalemin><exportenabled>True</exportenabled><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><querynorecordtext>No data found</querynorecordtext><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', 'a1f83ccb-a457-46fb-bca7-bb8bca342887', '20120330 13:36:56', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1364, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)  
  SELECT [Date] AS StartTime, CAST (SUM(HitsCount) AS DECIMAL(10,1))  AS Hits, Name
  FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates LEFT JOIN
  (SELECT HitsCount,HitsStartTime, OM_MVTest.MVTestName AS Name
   FROM Analytics_DayHits
   JOIN  Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
   JOIN OM_MVTest ON SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) = OM_MVTest.MVTestName
   WHERE Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;%''AND StatisticsSiteID = @CMSContextCurrentSiteID
   AND (@MVTestName IS NULL OR @MVTestName =MVTestName OR @MVTestName ='''')
   AND (@ConversionName = StatisticsObjectName OR @ConversionName = '''' OR @ConversionName IS NULL)
  ) AS x   
  ON x.HitsStartTime = Dates.Date
  GROUP BY [Date], Name
         
   UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_DayHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
   (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath IN (SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID)
   AND NodeSiteID = @CMSContextCurrentSiteID)
    AND (StatisticsObjectCulture IN (SELECT MVTestCulture FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID) OR
    (SELECT MVTestCulture FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID) IS NULL)         
   )*100
   
   UPDATE #AnalyticsTempTable SET Name =
    (SELECT MVTestDisplayName FROM OM_MVTest WHERE MVTestName = Name AND MVTestSiteID = @CMSContextCurrentSiteID)
   
   EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 678, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition>{%TestName%}</legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY%</seriesitemtooltip><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle></customdata>', '129eb58c-9eff-4f9a-be3f-57aa97e3e4ee', '20120323 11:11:35', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1365, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default,
  Page NVARCHAR(300) COLLATE database_default,
  Culture NVARCHAR(300) COLLATE database_default
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name,Page,Culture)  
 
  SELECT [Date] AS StartTime, CAST (SUM(HitsCount) AS DECIMAL(10,1))  AS Hits, Name,Page,Culture
  FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates LEFT JOIN
  (SELECT HitsCount,HitsStartTime,
    CASE
      WHEN MVTCombinationCustomName  IS NULL OR MVTCombinationCustomName='''' THEN MVTCombinationName
      ELSE MVTCombinationCustomName
    END   
    AS Name,  
   OM_MVTest.MVTestPage AS Page,OM_MVTest.MVTestCulture AS Culture
   FROM Analytics_DayHits
   JOIN  Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
   JOIN OM_MVTest ON SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) = OM_MVTest.MVTestName
   INNER JOIN OM_MVTCombination ON   
   MVTCombinationPageTemplateID IN ( SELECT 
  CASE 
	WHEN [NodeTemplateForAllCultures] = 1 AND NodeTemplateID <> 0  THEN NodeTemplateID
	ELSE [DocumentPageTemplateID]
   END    
  FROM View_CMS_Tree_Joined WHERE NodeSiteID = @CMSContextCurrentSiteID
        AND NodeAliasPath IN(SELECT MVTestPage FROM OM_MVTest WHERE MVTestName = @MVTestName AND MVTestSiteID = @CMSContextCurrentSiteID)                        
        AND DocumentCulture = StatisticsObjectCulture)  
   
   WHERE Analytics_Statistics.StatisticsCode LIKE ''mvtconversion;%''AND StatisticsSiteID = @CMSContextCurrentSiteID AND
   MVTCombinationName = (SUBSTRING(StatisticsCode,LEN (''mvtconversion;''+@MVTestName+'';'')+1,LEN (StatisticsCode))) AND
   @MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND   
   (@ConversionName IN('''',StatisticsObjectName) OR @ConversionName IS NULL)
  ) AS x   
  ON x.HitsStartTime = Dates.Date
  GROUP BY [Date], Name,Page,Culture
  
       
   UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_DayHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
   (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath = Page AND NodeSiteID = @CMSContextCurrentSiteID)
    AND (StatisticsObjectCulture = Culture OR Culture IS NULL)         
   )*100
   
   ALTER TABLE #AnalyticsTempTable DROP COLUMN Page
   ALTER TABLE #AnalyticsTempTable DROP COLUMN Culture
   
   EXEC Proc_Analytics_Pivot ''day'' 
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 678, N'Conversions rate', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><seriesitemnameformat>d</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>None</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitleposition>Center</yaxistitleposition><displayitemvalue>True</displayitemvalue><itemvalueformat>{%yval%}%</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><displaylegend>True</displaylegend><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendtitle>Combinations</legendtitle><scalemin></scalemin><exportenabled>True</exportenabled><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><querynorecordtext>No data found</querynorecordtext><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', '3c05bff9-2058-45dc-8290-0cc960f2af13', '20120330 13:37:24', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1366, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year''); 
  INSERT INTO #AnalyticsTempTable (StartTime,  Name, Hits) 
 
    SELECT [Date] AS StartTime, X.ConversionDisplayName AS Name,SUM(HitsCount) AS Hits
   FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates
    LEFT OUTER JOIN
      (SELECT HitsStartTime,ConversionDisplayName,HitsCount FROM Analytics_YearHits
        LEFT JOIN   Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID    
        AND StatisticsCode LIKE ''mvtconversion;%''
        AND (@CombinationName = '''' OR @CombinationName IS NULL OR @CombinationName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,15)+1,LEN (StatisticsCode)))
        AND @MVTestName =  SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15)    
        
        RIGHT JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = @CMSContextCurrentSiteID
        WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (@ConversionName IS NULL OR @ConversionName IN ('''',ConversionName))
      ) AS X
    ON [Date] = X.HitsStartTime
    GROUP BY ConversionDisplayName,[Date]  
    
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 679, N'Conversions by combinations', N'', N'', 600, 400, 100, N'<customdata><valuesaspercent>True</valuesaspercent><yaxistitlecolor>#000000</yaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><scalemax>100</scalemax><pieshowpercentage>False</pieshowpercentage><showas3d>False</showas3d><plotareasecbgcolor></plotareasecbgcolor><columnwidth>20</columnwidth><linedrawinstyle>Line</linedrawinstyle><xaxistitleposition>Center</xaxistitleposition><seriesitemlink></seriesitemlink><chartareaborderstyle>Solid</chartareaborderstyle><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><exportenabled>True</exportenabled><piedoughnutradius>60</piedoughnutradius><displaylegend>True</displaylegend><chartareabordersize>1</chartareabordersize><barorientation>Horizontal</barorientation><pielabelstyle>Outside</pielabelstyle><xaxistitlecolor>#000000</xaxistitlecolor><borderskinstyle>None</borderskinstyle><xaxislabelfont></xaxislabelfont><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><stackedbarmaxstacked>False</stackedbarmaxstacked><displayitemvalue>True</displayitemvalue><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}|(user)administrator|(hash)385dc24ce3ba1884e91a4017ed2120cdd36a97b216f3a7234ceec7ad53fb6dba%}% ({%yval%})</itemvalueformat><chartareabordercolor>#bbbbbb</chartareabordercolor><reverseyaxis>False</reverseyaxis><querynorecordtext>No data found</querynorecordtext><xaxisangle></xaxisangle><piedrawingdesign>SoftEdge</piedrawingdesign><legendbordercolor>#000000</legendbordercolor><seriesgradient>None</seriesgradient><legendposition>Right</legendposition><legendtitle>Conversions</legendtitle><plotareaborderstyle>Solid</plotareaborderstyle><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisusexaxissettings>True</yaxisusexaxissettings><baroverlay>False</baroverlay><seriesprbgcolor></seriesprbgcolor><legendbgcolor></legendbgcolor><legendfixedposition></legendfixedposition><rotatex></rotatex><rotatey></rotatey><seriesbordersize>1</seriesbordersize><titlecolor>#000000</titlecolor><plotareabordercolor>#bbbbbb</plotareabordercolor><legendinside>False</legendinside><xaxissort>True</xaxissort><plotareagradient>None</plotareagradient><seriessymbols>Circle</seriessymbols><yaxisformat></yaxisformat><xaxisinterval>1</xaxisinterval><showmajorgrid>True</showmajorgrid><scalemin></scalemin><xaxisfont></xaxisfont><yaxistitleposition>Center</yaxistitleposition><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxislabelfont></yaxislabelfont><legendborderstyle>Solid</legendborderstyle><chartareagradient>BottomTop</chartareagradient><piedrawingstyle>Pie</piedrawingstyle><plotareaprbgcolor></plotareaprbgcolor><titleposition>Center</titleposition><yaxisangle></yaxisangle><bardrawingstyle>Cylinder</bardrawingstyle><seriesborderstyle>Solid</seriesborderstyle><xaxisformat>{yyyy}</xaxisformat><seriessecbgcolor></seriessecbgcolor><pieothervalue></pieothervalue><seriesitemnameformat>yyyy</seriesitemnameformat><titlefontnew></titlefontnew><plotareabordersize>1</plotareabordersize><legendbordersize>1</legendbordersize><subscriptionenabled>True</subscriptionenabled><yaxisfont></yaxisfont><tenpowers>False</tenpowers></customdata>', 'a5707392-ab3e-4ea0-9e3a-fe8fb3547ab1', '20120326 16:03:13', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1367, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week''); 
  INSERT INTO #AnalyticsTempTable (StartTime,  Name, Hits) 
 
    SELECT [Date] AS StartTime, X.ConversionDisplayName AS Name,SUM(HitsCount) AS Hits
   FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'') AS Dates
    LEFT OUTER JOIN
      (SELECT HitsStartTime,ConversionDisplayName,HitsCount FROM Analytics_WeekHits
        LEFT JOIN   Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID    
        AND StatisticsCode LIKE ''mvtconversion;%''
        AND (@CombinationName = ''''  OR @CombinationName IS NULL OR @CombinationName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,15)+1,LEN (StatisticsCode)))
        AND @MVTestName =  SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15)    
        
        LEFT JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = @CMSContextCurrentSiteID
        WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (@ConversionName IS NULL OR @ConversionName IN ('''',ConversionName))
      ) AS X
    ON [Date] = X.HitsStartTime
    GROUP BY ConversionDisplayName,[Date]  
    
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 680, N'Conversions by combinations', N'', N'', 600, 400, 100, N'<customdata><valuesaspercent>True</valuesaspercent><yaxistitlecolor>#000000</yaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><scalemax>100</scalemax><pieshowpercentage>False</pieshowpercentage><showas3d>False</showas3d><plotareasecbgcolor></plotareasecbgcolor><columnwidth>20</columnwidth><linedrawinstyle>Line</linedrawinstyle><xaxistitleposition>Center</xaxistitleposition><seriesitemlink></seriesitemlink><chartareaborderstyle>Solid</chartareaborderstyle><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><exportenabled>True</exportenabled><piedoughnutradius>60</piedoughnutradius><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><pielabelstyle>Outside</pielabelstyle><xaxistitlecolor>#000000</xaxistitlecolor><borderskinstyle>None</borderskinstyle><xaxislabelfont></xaxislabelfont><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><stackedbarmaxstacked>False</stackedbarmaxstacked><displayitemvalue>True</displayitemvalue><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}|(user)administrator|(hash)385dc24ce3ba1884e91a4017ed2120cdd36a97b216f3a7234ceec7ad53fb6dba%}% ({%yval%})</itemvalueformat><chartareabordercolor>#bbbbbb</chartareabordercolor><reverseyaxis>False</reverseyaxis><querynorecordtext>No data found</querynorecordtext><xaxisangle></xaxisangle><piedrawingdesign>SoftEdge</piedrawingdesign><legendbordercolor>#000000</legendbordercolor><seriesgradient>None</seriesgradient><legendposition>Right</legendposition><legendtitle>Conversions</legendtitle><plotareaborderstyle>Solid</plotareaborderstyle><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisusexaxissettings>True</yaxisusexaxissettings><baroverlay>False</baroverlay><seriesprbgcolor></seriesprbgcolor><legendbgcolor></legendbgcolor><legendfixedposition></legendfixedposition><rotatex></rotatex><rotatey></rotatey><seriesbordersize>1</seriesbordersize><titlecolor>#000000</titlecolor><plotareabordercolor>#bbbbbb</plotareabordercolor><legendinside>False</legendinside><xaxissort>True</xaxissort><plotareagradient>None</plotareagradient><seriessymbols>Circle</seriessymbols><displaylegend>True</displaylegend><xaxisinterval>1</xaxisinterval><showmajorgrid>True</showmajorgrid><scalemin></scalemin><titlefontnew></titlefontnew><xaxisfont></xaxisfont><yaxistitleposition>Center</yaxistitleposition><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxislabelfont></yaxislabelfont><legendborderstyle>Solid</legendborderstyle><chartareagradient>BottomTop</chartareagradient><piedrawingstyle>Pie</piedrawingstyle><plotareaprbgcolor></plotareaprbgcolor><titleposition>Center</titleposition><yaxisangle></yaxisangle><bardrawingstyle>Cylinder</bardrawingstyle><seriesborderstyle>Solid</seriesborderstyle><xaxisformat>{yyyy}</xaxisformat><seriessecbgcolor></seriessecbgcolor><pieothervalue></pieothervalue><seriesitemnameformat></seriesitemnameformat><barorientation>Horizontal</barorientation><plotareabordersize>1</plotareabordersize><legendbordersize>1</legendbordersize><subscriptionenabled>True</subscriptionenabled><yaxisfont></yaxisfont><tenpowers>False</tenpowers></customdata>', 'f1966474-44a0-4fdb-82b1-3d5138fa7b77', '20120326 16:03:58', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1368, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month''); 
  INSERT INTO #AnalyticsTempTable (StartTime,  Name, Hits) 
 
    SELECT [Date] AS StartTime, X.ConversionDisplayName AS Name,SUM(HitsCount) AS Hits
   FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates
    LEFT OUTER JOIN
      (SELECT HitsStartTime,ConversionDisplayName,HitsCount FROM Analytics_MonthHits
        LEFT JOIN   Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID    
        AND StatisticsCode LIKE ''mvtconversion;%''
        AND (@CombinationName = ''''  OR @CombinationName IS NULL OR @CombinationName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,15)+1,LEN (StatisticsCode)))
        AND @MVTestName =  SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15)    
        
        LEFT JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = @CMSContextCurrentSiteID
        WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (@ConversionName IS NULL OR @ConversionName IN ('''',ConversionName))
      ) AS X
    ON [Date] = X.HitsStartTime
    GROUP BY ConversionDisplayName,[Date]  
    
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 681, N'Conversions by combinations', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>y</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}|(user)administrator|(hash)385dc24ce3ba1884e91a4017ed2120cdd36a97b216f3a7234ceec7ad53fb6dba%}% ({%yval%})</itemvalueformat><legendtitle>Conversions</legendtitle><displaylegend>True</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>True</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', 'f11c4948-788e-4956-b064-bfc0910a8277', '20120326 16:04:24', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1369, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day''); 
  INSERT INTO #AnalyticsTempTable (StartTime,  Name, Hits) 
 
    SELECT [Date] AS StartTime, X.ConversionDisplayName AS Name,SUM(HitsCount) AS Hits
   FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates
    LEFT OUTER JOIN
      (SELECT HitsStartTime,ConversionDisplayName,HitsCount FROM Analytics_DayHits
        LEFT JOIN   Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID    
        AND StatisticsCode LIKE ''mvtconversion;%''
        AND (@CombinationName = '''' OR @CombinationName IS NULL OR @CombinationName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,15)+1,LEN (StatisticsCode)))
        AND @MVTestName =  SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15)    
        
        LEFT JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = @CMSContextCurrentSiteID
        WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (@ConversionName IS NULL OR @ConversionName IN ('''',ConversionName))
      ) AS X
    ON [Date] = X.HitsStartTime
    GROUP BY ConversionDisplayName,[Date]  
    
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 682, N'Conversions by combinations', N'', N'', 600, 400, 100, N'<customdata><valuesaspercent>True</valuesaspercent><yaxistitlecolor>#000000</yaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><scalemax>100</scalemax><pieshowpercentage>False</pieshowpercentage><showas3d>False</showas3d><plotareasecbgcolor></plotareasecbgcolor><columnwidth>20</columnwidth><linedrawinstyle>Line</linedrawinstyle><xaxistitleposition>Center</xaxistitleposition><seriesitemlink></seriesitemlink><chartareaborderstyle>Solid</chartareaborderstyle><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><exportenabled>True</exportenabled><piedoughnutradius>60</piedoughnutradius><displaylegend>True</displaylegend><chartareabordersize>1</chartareabordersize><barorientation>Horizontal</barorientation><pielabelstyle>Outside</pielabelstyle><xaxistitlecolor>#000000</xaxistitlecolor><borderskinstyle>None</borderskinstyle><xaxislabelfont></xaxislabelfont><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><stackedbarmaxstacked>False</stackedbarmaxstacked><displayitemvalue>True</displayitemvalue><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}|(user)administrator|(hash)385dc24ce3ba1884e91a4017ed2120cdd36a97b216f3a7234ceec7ad53fb6dba%}% ({%yval%})</itemvalueformat><chartareabordercolor>#bbbbbb</chartareabordercolor><reverseyaxis>False</reverseyaxis><querynorecordtext>No data found</querynorecordtext><xaxisangle></xaxisangle><piedrawingdesign>SoftEdge</piedrawingdesign><legendbordercolor>#000000</legendbordercolor><seriesgradient>None</seriesgradient><legendposition>Right</legendposition><legendtitle>Conversions</legendtitle><plotareaborderstyle>Solid</plotareaborderstyle><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisusexaxissettings>True</yaxisusexaxissettings><baroverlay>False</baroverlay><seriesprbgcolor></seriesprbgcolor><legendbgcolor></legendbgcolor><legendfixedposition></legendfixedposition><rotatex></rotatex><rotatey></rotatey><seriesbordersize>1</seriesbordersize><titlecolor>#000000</titlecolor><plotareabordercolor>#bbbbbb</plotareabordercolor><legendinside>False</legendinside><xaxissort>True</xaxissort><plotareagradient>None</plotareagradient><seriessymbols>Circle</seriessymbols><yaxisformat></yaxisformat><xaxisinterval>1</xaxisinterval><showmajorgrid>True</showmajorgrid><scalemin></scalemin><xaxisfont></xaxisfont><yaxistitleposition>Center</yaxistitleposition><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxislabelfont></yaxislabelfont><legendborderstyle>Solid</legendborderstyle><chartareagradient>BottomTop</chartareagradient><piedrawingstyle>Pie</piedrawingstyle><plotareaprbgcolor></plotareaprbgcolor><titleposition>Center</titleposition><yaxisangle></yaxisangle><bardrawingstyle>Cylinder</bardrawingstyle><seriesborderstyle>Solid</seriesborderstyle><xaxisformat>{d}</xaxisformat><seriessecbgcolor></seriessecbgcolor><pieothervalue></pieothervalue><seriesitemnameformat>d</seriesitemnameformat><titlefontnew></titlefontnew><plotareabordersize>1</plotareabordersize><legendbordersize>1</legendbordersize><subscriptionenabled>True</subscriptionenabled><yaxisfont></yaxisfont><tenpowers>False</tenpowers></customdata>', 'eea288ee-a623-4f7f-9f04-31ed59c82030', '20120326 16:05:59', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1370, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour''); 
  INSERT INTO #AnalyticsTempTable (StartTime,  Name, Hits) 
 
    SELECT [Date] AS StartTime, X.ConversionDisplayName AS Name,SUM(HitsCount) AS Hits
   FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates
    LEFT OUTER JOIN
      (SELECT HitsStartTime,ConversionDisplayName,HitsCount FROM Analytics_HourHits
        LEFT JOIN   Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID    
        AND StatisticsCode LIKE ''mvtconversion;%''
        AND (@CombinationName = '''' OR @CombinationName IS NULL OR @CombinationName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,15)+1,LEN (StatisticsCode)))
        AND @MVTestName =  SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15)    
        
        LEFT JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = @CMSContextCurrentSiteID
        WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (@ConversionName IS NULL OR @ConversionName IN ('''',ConversionName))
      ) AS X
    ON [Date] = X.HitsStartTime
    GROUP BY ConversionDisplayName,[Date]  
    
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 683, N'Conversions by combinations', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>g</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}|(user)administrator|(hash)385dc24ce3ba1884e91a4017ed2120cdd36a97b216f3a7234ceec7ad53fb6dba%}% ({%yval%})</itemvalueformat><legendtitle>Conversions</legendtitle><displaylegend>True</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>True</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', '6cd5f804-d551-4510-8aaa-622e7da1eedf', '20120326 16:05:33', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1390, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
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
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)       
SELECT
  [DATE] AS StartTime,
 (SELECT ISNULL(SUM(HitsCount) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_DayHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = [StatisticsObjectName] AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campaign'') AND (StatisticsObjectname = @CampaignName OR '''' = @CampaignName) AND  HitsStartTime <= [DATE])  as ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''day'') AS Dates   
   
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
END', 0, N'line', 688, N'', N'{$reports_general.label_days$}', N'{$reports_campgoal.label_numvisits$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'ccbd1b5b-fda0-46b9-a24b-c2217b28a0a2', '20120323 11:11:36', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1393, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
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
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)       
SELECT
  [DATE] AS StartTime,
 (SELECT ISNULL(SUM(HitsCount) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_HourHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = [StatisticsObjectName] AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campaign'') AND (StatisticsObjectname = @CampaignName OR '''' = @CampaignName) AND  HitsStartTime <= [DATE])  as ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''hour'') AS Dates   
   
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
END', 0, N'line', 690, N'', N'{$reports_general.label_hours$}', N'{$reports_campgoal.label_numvisits$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '5effe755-6fc9-412c-9cf5-52647b382eb6', '20120323 11:11:36', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1394, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
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
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)       
SELECT
  [DATE] AS StartTime,
 (SELECT ISNULL(SUM(HitsCount) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_WeekHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = [StatisticsObjectName] AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campaign'') AND (StatisticsObjectname = @CampaignName OR '''' = @CampaignName) AND  HitsStartTime <= [DATE])  as ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''week'') AS Dates   
   
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
END', 0, N'line', 691, N'', N'{$reports_general.label_weeks$}', N'{$reports_campgoal.label_numvisits$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'b2c79548-3875-4988-818a-9646fb87cbee', '20120323 11:11:36', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1395, N'graph', N'graph', N'IF ISNULL(@CampaignName, '''') != '''' BEGIN
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
    INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)       
SELECT
  [DATE] AS StartTime,
 (SELECT ISNULL(SUM(HitsCount) , 0) FROM  Analytics_Statistics
  LEFT JOIN Analytics_MonthHits ON HitsStatisticsID = StatisticsID  
  LEFT JOIN Analytics_Campaign ON CampaignName = [StatisticsObjectName] AND CampaignSiteID = @CMSContextCurrentSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND (StatisticsCode = N''campaign'') AND (StatisticsObjectname = @CampaignName OR '''' = @CampaignName) AND  HitsStartTime <= [DATE])  as ''Hits''
  , @CampaignDisplayName AS ''Name''
 FROM
 {%DatabaseSchema%}.Func_Analytics_EnsureDates(@FromDate,@ToDate,''month'') AS Dates   
   
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
END', 0, N'line', 692, N'', N'{$reports_general.label_months$}', N'{$reports_campgoal.label_numvisits$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'ed29fc66-3e5f-4af5-88e2-e201d5306b01', '20120323 11:11:36', NULL, NULL)
SET IDENTITY_INSERT [Reporting_ReportGraph] OFF
