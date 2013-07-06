SET IDENTITY_INSERT [Reporting_ReportGraph] ON
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (663, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Year'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABTestDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_YearHits ON StatisticsID = Analytics_YearHits.HitsStatisticsID
  INNER JOIN OM_ABTest ON ABTestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND ABTestSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = '''' OR @TestName = ABTestName)
  AND (@ConversionNAme IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 429, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '2d5e9d4c-f89f-4f3f-adc9-7f8c8d1ae1dd', '20120323 11:10:54', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (664, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Month'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABTestDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_MonthHits ON StatisticsID = Analytics_MonthHits.HitsStatisticsID
  INNER JOIN OM_ABTest ON ABTestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND ABTestSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = '''' OR @TestName = ABTestName)
  AND (@ConversionNAme IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 431, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><chartareaborderstyle>Solid</chartareaborderstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><seriessymbols>Circle</seriessymbols><seriesgradient>None</seriesgradient><legendposition>Bottom</legendposition><rotatex></rotatex><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesitemtooltip>#VALX{y}  -  #SER: #VALY</seriesitemtooltip><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '179d0746-6ce5-44df-90a7-26fe42c80c41', '20120323 11:10:54', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (666, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Week'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABTestDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_WeekHits ON StatisticsID = Analytics_WeekHits.HitsStatisticsID
  INNER JOIN OM_ABTest ON ABTestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND ABTestSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = '''' OR @TestName = ABTestName)
  AND (@ConversionNAme IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 432, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '38e940e2-a050-4a84-be91-7d8ffe7ffb43', '20120323 11:10:54', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (667, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime ,T1.Hits AS Hits  ,T1.Name AS Name
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Week'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABVariantDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_WeekHits ON StatisticsID = Analytics_WeekHits.HitsStatisticsID
  INNER JOIN OM_ABVariant ON ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))  AND ABVariantSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = ''''  OR  @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14))
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABVariantDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
  
  EXEC Proc_Analytics_Pivot ''week''
  EXEC Proc_Analytics_RemoveTempTable', 0, N'', 432, N'Conversions count', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><pieothervalue></pieothervalue><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat></seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><displaylegend>True</displaylegend><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><legendposition>Right</legendposition><xaxislabelfont></xaxislabelfont><rotatex></rotatex><rotatey></rotatey><displayitemvalue>True</displayitemvalue><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><legendtitle>Variants</legendtitle><querynorecordtext>No data found</querynorecordtext><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><reverseyaxis>False</reverseyaxis><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', 'ead565a4-7102-4b63-996b-e7638f36e1a8', '20120323 11:10:54', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (668, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Hour'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABTestDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_HourHits ON StatisticsID = Analytics_HourHits.HitsStatisticsID
  INNER JOIN OM_ABTest ON ABTestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND ABTestSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = '''' OR @TestName = ABTestName)
  AND (@ConversionNAme IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 433, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>g</xaxisformat><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy HH:mm}  -  #SER: #VALY</seriesitemtooltip><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '0492565e-15bd-4cb7-b842-3168f54e5fa6', '20120323 11:10:55', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (669, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime ,T1.Hits AS Hits  ,T1.Name AS Name
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Hour'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABVariantDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_HourHits ON StatisticsID = Analytics_HourHits.HitsStatisticsID
  INNER JOIN OM_ABVariant ON ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))  AND ABVariantSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = ''''  OR  @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14))
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABVariantDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
  
  EXEC Proc_Analytics_Pivot ''hour''
  EXEC Proc_Analytics_RemoveTempTable', 0, N'', 433, N'Conversions count', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><pieothervalue></pieothervalue><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat>g</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendposition>Right</legendposition><yaxisusexaxissettings>True</yaxisusexaxissettings><legendtitle>Variants</legendtitle><querynorecordtext>No data found</querynorecordtext><exportenabled>True</exportenabled><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>g</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesitemtooltip>{%ser%}</seriesitemtooltip><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><displaylegend>True</displaylegend><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', '16b89ab5-868a-4ada-94c5-eca12c48e60b', '20120323 11:10:55', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (670, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
 SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name 
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Day'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABTestDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_DayHits ON StatisticsID = Analytics_DayHits.HitsStatisticsID
  INNER JOIN OM_ABTest ON ABTestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND ABTestSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = '''' OR @TestName = ABTestName)
  AND (@ConversionNAme IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 434, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'af5af882-2451-418e-8c16-92aef34fed03', '20120323 11:10:55', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (671, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime ,T1.Hits AS Hits  ,T1.Name AS Name
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Day'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABVariantDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_DayHits ON StatisticsID = Analytics_DayHits.HitsStatisticsID
  INNER JOIN OM_ABVariant ON ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))  AND ABVariantSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = ''''  OR  @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14))
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABVariantDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
  
  EXEC Proc_Analytics_Pivot ''day''
  EXEC Proc_Analytics_RemoveTempTable', 0, N'', 434, N'Conversions count', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><querynorecordtext>No data found</querynorecordtext><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><pieothervalue></pieothervalue><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat>d</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatey></rotatey><xaxislabelfont></xaxislabelfont><rotatex></rotatex><seriesitemtooltip>{%ser%}</seriesitemtooltip><displayitemvalue>True</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><displaylegend>True</displaylegend><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendtitle>Variants</legendtitle><scalemin></scalemin><exportenabled>True</exportenabled><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><reverseyaxis>False</reverseyaxis><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', '6a18bc32-5804-442e-b9c9-e70b2192026f', '20120323 11:10:55', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (674, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name  
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Year'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsValue) AS Hits ,ABTestDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_YearHits ON StatisticsID = Analytics_YearHits.HitsStatisticsID
  INNER JOIN OM_ABTest ON ABTestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND ABTestSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = '''' OR @TestName = ABTestName)
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 437, N'', N'', N'', 600, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '1b5c68e2-e56e-4ca3-89d7-45f5fd7fe943', '20120323 11:10:55', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (675, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime ,T1.Hits AS Hits  ,T1.Name AS Name
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Year'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsValue) AS Hits ,ABVariantDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_YearHits ON StatisticsID = Analytics_YearHits.HitsStatisticsID
  INNER JOIN OM_ABVariant ON ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))  AND ABVariantSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = ''''  OR  @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14))
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABVariantDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
  
  EXEC Proc_Analytics_Pivot ''year''
  EXEC Proc_Analytics_RemoveTempTable', 0, N'', 437, N'Conversions value', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat>yyyy</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><legendposition>Right</legendposition><xaxislabelfont></xaxislabelfont><rotatex></rotatex><rotatey></rotatey><displayitemvalue>True</displayitemvalue><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>1</seriesbordersize><yaxisformat></yaxisformat><yaxisusexaxissettings>True</yaxisusexaxissettings><scalemin></scalemin><exportenabled>True</exportenabled><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle>Variants</legendtitle><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><displaylegend>True</displaylegend><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '0b85b94b-575a-4a74-bb88-3542c0073297', '20120323 11:10:55', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (676, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name  
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Month'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsValue) AS Hits ,ABTestDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_MonthHits ON StatisticsID = Analytics_MonthHits.HitsStatisticsID
  INNER JOIN OM_ABTest ON ABTestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND ABTestSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = '''' OR @TestName = ABTestName)
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 438, N'', N'', N'', 600, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><seriesitemtooltip>#VALX{y}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><querynorecordtext>No data found</querynorecordtext><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><chartareabordercolor>#bbbbbb</chartareabordercolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '36660c4a-c6af-421c-8654-8bfaf708bc8f', '20120323 11:10:55', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (677, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime ,T1.Hits AS Hits  ,T1.Name AS Name
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Month'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsValue) AS Hits ,ABVariantDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_MonthHits ON StatisticsID = Analytics_MonthHits.HitsStatisticsID
  INNER JOIN OM_ABVariant ON ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))  AND ABVariantSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = ''''  OR  @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14))
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABVariantDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
  
  EXEC Proc_Analytics_Pivot ''month''
  EXEC Proc_Analytics_RemoveTempTable', 0, N'', 438, N'Conversions value', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat>y</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><xaxistitlecolor>#000000</xaxistitlecolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><seriesitemtooltip>{%ser%}</seriesitemtooltip><displayitemvalue>True</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><displaylegend>True</displaylegend><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendtitle>Variants</legendtitle><scalemin></scalemin><exportenabled>True</exportenabled><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><querynorecordtext>No data found</querynorecordtext><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><chartareabordercolor>#bbbbbb</chartareabordercolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', '25e9be47-70fa-4b4e-afb9-62adc637853a', '20120323 11:10:55', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (678, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name  
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Week'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsValue) AS Hits ,ABTestDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_WeekHits ON StatisticsID = Analytics_WeekHits.HitsStatisticsID
  INNER JOIN OM_ABTest ON ABTestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND ABTestSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = '''' OR @TestName = ABTestName)
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 439, N'', N'', N'', 600, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><querynorecordtext>No data found</querynorecordtext><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><chartareabordercolor>#bbbbbb</chartareabordercolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '42303267-0d64-4a04-a327-d65b1ea6cfbe', '20120323 11:10:55', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (679, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime ,T1.Hits AS Hits  ,T1.Name AS Name
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Week'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsValue) AS Hits ,ABVariantDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_WeekHits ON StatisticsID = Analytics_WeekHits.HitsStatisticsID
  INNER JOIN OM_ABVariant ON ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))  AND ABVariantSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = ''''  OR  @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14))
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABVariantDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
  
  EXEC Proc_Analytics_Pivot ''week''
  EXEC Proc_Analytics_RemoveTempTable', 0, N'', 439, N'Conversions value', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat></seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><xaxisformat>{yyyy}</xaxisformat><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><yaxisusexaxissettings>True</yaxisusexaxissettings><legendtitle>Variants</legendtitle><querynorecordtext>No data found</querynorecordtext><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><seriesitemtooltip>{%ser%}</seriesitemtooltip><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><chartareabordercolor>#bbbbbb</chartareabordercolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><displaylegend>True</displaylegend><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', 'f37269be-a21e-4f11-b8c3-92f6a0bbf562', '20120323 11:10:56', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (680, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name  
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Day'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsValue) AS Hits ,ABTestDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_DayHits ON StatisticsID = Analytics_DayHits.HitsStatisticsID
  INNER JOIN OM_ABTest ON ABTestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND ABTestSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = '''' OR @TestName = ABTestName)
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 440, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '96ba8f34-2f3a-47ad-b990-8c52a8bec894', '20120323 11:10:56', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (681, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime ,T1.Hits AS Hits  ,T1.Name AS Name
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Day'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsValue) AS Hits ,ABVariantDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_DayHits ON StatisticsID = Analytics_DayHits.HitsStatisticsID
  INNER JOIN OM_ABVariant ON ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))  AND ABVariantSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = ''''  OR  @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14))
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABVariantDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
  
  EXEC Proc_Analytics_Pivot ''day''
  EXEC Proc_Analytics_RemoveTempTable', 0, N'', 440, N'Conversions value', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat>d</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><xaxistitlecolor>#000000</xaxistitlecolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendposition>Right</legendposition><yaxisusexaxissettings>True</yaxisusexaxissettings><legendtitle>Variants</legendtitle><scalemin></scalemin><exportenabled>True</exportenabled><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><querynorecordtext>No data found</querynorecordtext><linedrawinstyle>Line</linedrawinstyle><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip>{%ser%}</seriesitemtooltip><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><chartareabordercolor>#bbbbbb</chartareabordercolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><displaylegend>True</displaylegend><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', 'bf72f72d-f9f8-4d47-a8f9-7362f97ee850', '20120323 11:10:56', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (682, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime ,T1.Hits AS Hits ,T1.Name AS Name  
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Hour'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsValue) AS Hits ,ABTestDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_HourHits ON StatisticsID = Analytics_HourHits.HitsStatisticsID
  INNER JOIN OM_ABTest ON ABTestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND ABTestSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = '''' OR @TestName = ABTestName)
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 441, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy HH:mm}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'd44cda3b-3afb-4fe2-8322-75e856b8f0be', '20120323 11:10:56', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (683, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime ,T1.Hits AS Hits  ,T1.Name AS Name
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Hour'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsValue) AS Hits ,ABVariantDisplayName AS Name
  FROM Analytics_Statistics 
  INNER JOIN Analytics_HourHits ON StatisticsID = Analytics_HourHits.HitsStatisticsID
  INNER JOIN OM_ABVariant ON ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))  AND ABVariantSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%'' 
  AND (@TestName IS NULL OR @TestName = ''''  OR  @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14))
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,ABVariantDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
  
  EXEC Proc_Analytics_Pivot ''hour''
  EXEC Proc_Analytics_RemoveTempTable', 0, N'', 441, N'Conversions value', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><querynorecordtext>No data found</querynorecordtext><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat>g</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><xaxisformat>g</xaxisformat><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><displaylegend>True</displaylegend><barorientation>Horizontal</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendtitle>Variants</legendtitle><scalemin></scalemin><exportenabled>True</exportenabled><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><seriesitemtooltip>{%ser%}</seriesitemtooltip><chartareabordercolor>#bbbbbb</chartareabordercolor><reverseyaxis>False</reverseyaxis><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '99d157ed-6418-4a52-b330-17585960475a', '20120323 11:10:56', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (685, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default,
  TestID INT,
  Culture NVARCHAR(10) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name,TestID,Culture)
   SELECT [Date] AS StartTime ,CAST (T1.Hits AS DECIMAL(10,1)) AS Hits  ,T1.DisplayName AS Name,T1.TestID AS TestID,T1.Culture AS Culture
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABTestDisplayName AS DisplayName,ABTestID AS TestID,
      ABTestCulture AS Culture
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON StatisticsID = Analytics_YearHits.HitsStatisticsID
  INNER JOIN OM_ABTest ON ABTestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND ABTestSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%''
  AND (@TestName IS NULL OR @TestName = '''' OR @TestName = ABTestName)
  AND (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  GROUP BY HitsStartTime,ABTestName,ABTestDisplayName,ABTestID,ABTestCulture
  ) AS T1
 ON Dates.Date=T1.Interval;
     
 UPDATE #AnalyticsTempTable SET Hits = Hits/(
   SELECT CAST(SUM (HitsCount) AS DECIMAL (10,1)) FROM Analytics_Statistics
   JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_YearHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
  (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath IN 
    (
      SELECT ABVariantPath  From OM_ABVariant WHERE ABVariantSiteID = @CMSContextCurrentSiteID
      AND  ABVariantTestID = TestID
      AND NodeSiteID = @CMSContextCurrentSiteID AND (DocumentCulture = StatisticsObjectCulture OR StatisticsObjectCulture IS NULL)
     )
  )
        AND (StatisticsObjectCulture IS NULL OR StatisticsObjectCulture = Culture OR Culture IS NULL)             
   ) * 100
   
   -- Prepare for PIVOT - delete all help columns
 ALTER TABLE #AnalyticsTempTable DROP COLUMN TestID  
 ALTER TABLE #AnalyticsTempTable DROP COLUMN Culture      
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 443, N'', N'', N'', 600, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX{yyyy}  -  #SER: #VALY%</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'd5004ef5-897a-448c-8719-773046503ded', '20120323 11:10:56', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (686, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
 
SELECT [Date] AS StartTime ,CAST (T1.Hits AS DECIMAL(10,2)) Hits  ,T1.Name AS Name
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Year'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABVariantName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON StatisticsID = Analytics_YearHits.HitsStatisticsID
  INNER JOIN OM_ABVariant ON ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))  AND ABVariantSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%''
  AND (@TestName IS NULL OR @TestName = ''''  OR  @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14))
  AND (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  GROUP BY HitsStartTime,ABVariantName
  ) AS T1
 ON Dates.Date=T1.Interval;
  
  UPDATE #AnalyticsTempTable SET Hits = Hits/(
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_YearHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
  (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath IN
    (
      SELECT ABVariantPath  From OM_ABVariant WHERE ABVariantName = Name AND ABVariantSiteID = @CMSContextCurrentSiteID
      AND  ABVariantTestID = (SELECT ABTestID FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID)  
      AND NodeSiteID = @CMSContextCurrentSiteID AND (DocumentCulture = StatisticsObjectCulture OR StatisticsObjectCulture IS NULL)
              /*culture */
      AND (StatisticsObjectCulture IS NULL OR StatisticsObjectCulture = (SELECT ABTestCulture FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID)
          OR ((SELECT ABTestCulture FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID) IS NULL)       
     )
    )
  )
   ) * 100
   
   UPDATE #AnalyticsTempTable SET Name =
    (SELECT ABVariantDisplayName FROM OM_ABVariant WHERE ABVariantName = Name
    AND ABVariantTestID IN (SELECT ABTestID FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID))
   
 EXEC Proc_Analytics_Pivot ''Year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 443, N'Conversions rate', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><seriesitemnameformat>yyyy</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>None</seriessymbols><displaylegend>True</displaylegend><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><itemvalueformat>{%yval|(user)administrator|(hash)48d99c0166b2601fe3c2bd009b41791d32678c2da9b8a852ca54cb8cbc92a29e%}%</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendposition>Right</legendposition><legendtitle>Variants</legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><exportenabled>True</exportenabled><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip>{%ser|(user)administrator|(hash)88b2eb4368ba145ee9649cc738535aa65530d54421376e3a00b7b7d9699f343b%}</seriesitemtooltip><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', 'b024a991-77ee-4433-b3a5-639c99e30ee7', '20120323 11:10:56', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (687, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
 
SELECT [Date] AS StartTime ,CAST (T1.Hits AS DECIMAL(10,2)) Hits  ,T1.Name AS Name
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Month'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABVariantName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON StatisticsID = Analytics_MonthHits.HitsStatisticsID
  INNER JOIN OM_ABVariant ON ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))  AND ABVariantSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%''
  AND (@TestName IS NULL OR @TestName = ''''  OR  @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14))
  AND (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  GROUP BY HitsStartTime,ABVariantName
  ) AS T1
 ON Dates.Date=T1.Interval;
  
  UPDATE #AnalyticsTempTable SET Hits = Hits/(
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_MonthHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
  (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath IN
    (
      SELECT ABVariantPath  From OM_ABVariant WHERE ABVariantName = Name AND ABVariantSiteID = @CMSContextCurrentSiteID
      AND  ABVariantTestID = (SELECT ABTestID FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID)  
      AND NodeSiteID = @CMSContextCurrentSiteID AND (DocumentCulture = StatisticsObjectCulture OR StatisticsObjectCulture IS NULL)
              /*culture */
      AND (StatisticsObjectCulture IS NULL OR StatisticsObjectCulture = (SELECT ABTestCulture FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID)
          OR ((SELECT ABTestCulture FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID) IS NULL)       
     )
    )
  )
   ) * 100
   
   UPDATE #AnalyticsTempTable SET Name =
    (SELECT ABVariantDisplayName FROM OM_ABVariant WHERE ABVariantName = Name
    AND ABVariantTestID IN (SELECT ABTestID FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID))
   
 EXEC Proc_Analytics_Pivot ''Month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 444, N'Conversions rate', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><seriesitemnameformat>y</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>None</seriessymbols><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><seriesitemtooltip>{%ser%}</seriesitemtooltip><displayitemvalue>True</displayitemvalue><itemvalueformat>{%yval%}%</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendposition>Right</legendposition><yaxisusexaxissettings>True</yaxisusexaxissettings><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><exportenabled>True</exportenabled><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle>Variants</legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><displaylegend>True</displaylegend><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', '1692ed77-c1cf-49cf-bc1a-593cd4b4fc07', '20120323 11:10:56', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (688, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default,
  TestID INT,
  Culture NVARCHAR(10) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name,TestID,Culture)
   SELECT [Date] AS StartTime ,CAST (T1.Hits AS DECIMAL(10,1)) AS Hits  ,T1.DisplayName AS Name,T1.TestID AS TestID,T1.Culture AS Culture
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABTestDisplayName AS DisplayName,ABTestID AS TestID,
      ABTestCulture AS Culture
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON StatisticsID = Analytics_MonthHits.HitsStatisticsID
  INNER JOIN OM_ABTest ON ABTestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND ABTestSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%''
  AND (@TestName IS NULL OR @TestName = '''' OR @TestName = ABTestName)
  AND (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  GROUP BY HitsStartTime,ABTestName,ABTestDisplayName,ABTestID,ABTestCulture
  ) AS T1
 ON Dates.Date=T1.Interval;
     
 UPDATE #AnalyticsTempTable SET Hits = Hits/(
   SELECT CAST(SUM (HitsCount) AS DECIMAL (10,1)) FROM Analytics_Statistics
   JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_MonthHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
  (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath IN 
    (
      SELECT ABVariantPath  From OM_ABVariant WHERE ABVariantSiteID = @CMSContextCurrentSiteID
      AND  ABVariantTestID = TestID
      AND NodeSiteID = @CMSContextCurrentSiteID AND (DocumentCulture = StatisticsObjectCulture OR StatisticsObjectCulture IS NULL)
     )
  )
        AND (StatisticsObjectCulture IS NULL OR StatisticsObjectCulture = Culture OR Culture IS NULL)             
   ) * 100
   
   -- Prepare for PIVOT - delete all help columns
 ALTER TABLE #AnalyticsTempTable DROP COLUMN TestID  
 ALTER TABLE #AnalyticsTempTable DROP COLUMN Culture      
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 444, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>y</xaxisformat><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><seriesitemtooltip>#VALX{y}  -  #SER: #VALY%</seriesitemtooltip><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '61daa313-8a79-423e-a7dc-ee56e0078fff', '20120323 11:10:56', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (689, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
 
SELECT [Date] AS StartTime ,CAST (T1.Hits AS DECIMAL(10,2)) Hits  ,T1.Name AS Name
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Week'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABVariantName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON StatisticsID = Analytics_WeekHits.HitsStatisticsID
  INNER JOIN OM_ABVariant ON ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))  AND ABVariantSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%''
  AND (@TestName IS NULL OR @TestName = ''''  OR  @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14))
  AND (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  GROUP BY HitsStartTime,ABVariantName
  ) AS T1
 ON Dates.Date=T1.Interval;
  
  UPDATE #AnalyticsTempTable SET Hits = Hits/(
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_WeekHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
  (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath IN
    (
      SELECT ABVariantPath  From OM_ABVariant WHERE ABVariantName = Name AND ABVariantSiteID = @CMSContextCurrentSiteID
      AND  ABVariantTestID = (SELECT ABTestID FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID)  
      AND NodeSiteID = @CMSContextCurrentSiteID AND (DocumentCulture = StatisticsObjectCulture OR StatisticsObjectCulture IS NULL)
              /*culture */
      AND (StatisticsObjectCulture IS NULL OR StatisticsObjectCulture = (SELECT ABTestCulture FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID)
          OR ((SELECT ABTestCulture FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID) IS NULL)       
     )
    )
  )
   ) * 100
   
   UPDATE #AnalyticsTempTable SET Name =
    (SELECT ABVariantDisplayName FROM OM_ABVariant WHERE ABVariantName = Name
    AND ABVariantTestID IN (SELECT ABTestID FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID))
   
 EXEC Proc_Analytics_Pivot ''Week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 445, N'Conversions rate', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><seriesitemnameformat></seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>None</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><seriesitemtooltip>{%ser%}</seriesitemtooltip><displayitemvalue>True</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat>{%yval%}%</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisusexaxissettings>True</yaxisusexaxissettings><legendtitle>Variants</legendtitle><scalemin></scalemin><exportenabled>true</exportenabled><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><displaylegend>True</displaylegend><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', 'b47ec361-07df-4227-9503-8afeb5cd7006', '20120323 11:10:56', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (690, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default,
  TestID INT,
  Culture NVARCHAR(10) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name,TestID,Culture)
   SELECT [Date] AS StartTime ,CAST (T1.Hits AS DECIMAL(10,1)) AS Hits  ,T1.DisplayName AS Name,T1.TestID AS TestID,T1.Culture AS Culture
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABTestDisplayName AS DisplayName,ABTestID AS TestID,
      ABTestCulture AS Culture
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON StatisticsID = Analytics_WeekHits.HitsStatisticsID
  INNER JOIN OM_ABTest ON ABTestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND ABTestSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%''
  AND (@TestName IS NULL OR @TestName = '''' OR @TestName = ABTestName)
  AND (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  GROUP BY HitsStartTime,ABTestName,ABTestDisplayName,ABTestID,ABTestCulture
  ) AS T1
 ON Dates.Date=T1.Interval;
     
 UPDATE #AnalyticsTempTable SET Hits = Hits/(
   SELECT CAST(SUM (HitsCount) AS DECIMAL (10,1)) FROM Analytics_Statistics
   JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_WeekHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
  (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath IN 
    (
      SELECT ABVariantPath  From OM_ABVariant WHERE ABVariantSiteID = @CMSContextCurrentSiteID
      AND  ABVariantTestID = TestID
      AND NodeSiteID = @CMSContextCurrentSiteID AND (DocumentCulture = StatisticsObjectCulture OR StatisticsObjectCulture IS NULL)
     )
  )
        AND (StatisticsObjectCulture IS NULL OR StatisticsObjectCulture = Culture OR Culture IS NULL)             
   ) * 100
   
   -- Prepare for PIVOT - delete all help columns
 ALTER TABLE #AnalyticsTempTable DROP COLUMN TestID  
 ALTER TABLE #AnalyticsTempTable DROP COLUMN Culture      
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 445, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX  -  #SER: #VALY%</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'd1005068-cb30-4a4e-88b9-e8338a9c81f9', '20120323 11:10:56', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (691, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
 
SELECT [Date] AS StartTime ,CAST (T1.Hits AS DECIMAL(10,2)) Hits  ,T1.Name AS Name
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Day'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABVariantName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON StatisticsID = Analytics_DayHits.HitsStatisticsID
  INNER JOIN OM_ABVariant ON ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))  AND ABVariantSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%''
  AND (@TestName IS NULL OR @TestName = ''''  OR  @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14))
  AND (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  GROUP BY HitsStartTime,ABVariantName
  ) AS T1
 ON Dates.Date=T1.Interval;
  
  UPDATE #AnalyticsTempTable SET Hits = Hits/(
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_DayHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
  (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath IN
    (
      SELECT ABVariantPath  From OM_ABVariant WHERE ABVariantName = Name AND ABVariantSiteID = @CMSContextCurrentSiteID
      AND  ABVariantTestID = (SELECT ABTestID FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID)  
      AND NodeSiteID = @CMSContextCurrentSiteID AND (DocumentCulture = StatisticsObjectCulture OR StatisticsObjectCulture IS NULL)
              /*culture */
      AND (StatisticsObjectCulture IS NULL OR StatisticsObjectCulture = (SELECT ABTestCulture FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID)
          OR ((SELECT ABTestCulture FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID) IS NULL)       
     )
    )
  )
   ) * 100
   
   UPDATE #AnalyticsTempTable SET Name =
    (SELECT ABVariantDisplayName FROM OM_ABVariant WHERE ABVariantName = Name
    AND ABVariantTestID IN (SELECT ABTestID FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID))
   
 EXEC Proc_Analytics_Pivot ''Day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 446, N'Conversions rate', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><seriesitemnameformat>d</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>None</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><seriesitemtooltip>{%ser%}</seriesitemtooltip><displayitemvalue>True</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat>{%yval%}%</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><displaylegend>True</displaylegend><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendtitle>Variants</legendtitle><scalemin></scalemin><exportenabled>true</exportenabled><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', '351f7b1d-33ce-4b78-984e-4d525598e1e5', '20120323 11:10:56', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (692, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default,
  TestID INT,
  Culture NVARCHAR(10) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name,TestID,Culture)
   SELECT [Date] AS StartTime ,CAST (T1.Hits AS DECIMAL(10,1)) AS Hits  ,T1.DisplayName AS Name,T1.TestID AS TestID,T1.Culture AS Culture
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABTestDisplayName AS DisplayName,ABTestID AS TestID,
      ABTestCulture AS Culture
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON StatisticsID = Analytics_DayHits.HitsStatisticsID
  INNER JOIN OM_ABTest ON ABTestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND ABTestSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%''
  AND (@TestName IS NULL OR @TestName = '''' OR @TestName = ABTestName)
  AND (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  GROUP BY HitsStartTime,ABTestName,ABTestDisplayName,ABTestID,ABTestCulture
  ) AS T1
 ON Dates.Date=T1.Interval;
     
 UPDATE #AnalyticsTempTable SET Hits = Hits/(
   SELECT CAST(SUM (HitsCount) AS DECIMAL (10,1)) FROM Analytics_Statistics
   JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_DayHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
  (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath IN 
    (
      SELECT ABVariantPath  From OM_ABVariant WHERE ABVariantSiteID = @CMSContextCurrentSiteID
      AND  ABVariantTestID = TestID
      AND NodeSiteID = @CMSContextCurrentSiteID AND (DocumentCulture = StatisticsObjectCulture OR StatisticsObjectCulture IS NULL)
     )
  )
        AND (StatisticsObjectCulture IS NULL OR StatisticsObjectCulture = Culture OR Culture IS NULL)             
   ) * 100
   
   -- Prepare for PIVOT - delete all help columns
 ALTER TABLE #AnalyticsTempTable DROP COLUMN TestID  
 ALTER TABLE #AnalyticsTempTable DROP COLUMN Culture      
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 446, N'', N'', N'', 600, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY%</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '2868f95a-9fe0-4aa4-b5ba-7b74315825c0', '20120323 11:10:57', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (693, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
 
SELECT [Date] AS StartTime ,CAST (T1.Hits AS DECIMAL(10,2)) Hits  ,T1.Name AS Name
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''Hour'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABVariantName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON StatisticsID = Analytics_HourHits.HitsStatisticsID
  INNER JOIN OM_ABVariant ON ABVariantName = SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode))  AND ABVariantSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%''
  AND (@TestName IS NULL OR @TestName = ''''  OR  @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14))
  AND (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  GROUP BY HitsStartTime,ABVariantName
  ) AS T1
 ON Dates.Date=T1.Interval;
  
  UPDATE #AnalyticsTempTable SET Hits = Hits/(
   SELECT CAST (SUM (HitsCount) AS DECIMAL (15,2)) FROM Analytics_Statistics
   JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_HourHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
  (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath IN
    (
      SELECT ABVariantPath  From OM_ABVariant WHERE ABVariantName = Name AND ABVariantSiteID = @CMSContextCurrentSiteID
      AND  ABVariantTestID = (SELECT ABTestID FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID)  
      AND NodeSiteID = @CMSContextCurrentSiteID AND (DocumentCulture = StatisticsObjectCulture OR StatisticsObjectCulture IS NULL)
              /*culture */
      AND (StatisticsObjectCulture IS NULL OR StatisticsObjectCulture = (SELECT ABTestCulture FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID)
          OR ((SELECT ABTestCulture FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID) IS NULL)       
     )
    )
  )
   ) * 100
   
   UPDATE #AnalyticsTempTable SET Name =
    (SELECT ABVariantDisplayName FROM OM_ABVariant WHERE ABVariantName = Name
    AND ABVariantTestID IN (SELECT ABTestID FROM OM_ABTest WHERE ABTestName = @TestName AND ABTestSiteID = @CMSContextCurrentSiteID))
   
 EXEC Proc_Analytics_Pivot ''Hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 447, N'Conversions rate', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><seriesitemnameformat>g</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>None</seriessymbols><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><seriesitemtooltip>{%ser%}</seriesitemtooltip><displayitemvalue>True</displayitemvalue><itemvalueformat>{%yval%}%</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><legendposition>Right</legendposition><yaxisusexaxissettings>True</yaxisusexaxissettings><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><exportenabled>True</exportenabled><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle>Variants</legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><displaylegend>True</displaylegend><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', '52e2dd16-f969-427d-b536-a8b80d5c9d6b', '20120323 11:10:57', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (694, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits DECIMAL(10,1),
  Name NVARCHAR(300) COLLATE database_default,
  TestID INT,
  Culture NVARCHAR(10) COLLATE database_default 
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name,TestID,Culture)
   SELECT [Date] AS StartTime ,CAST (T1.Hits AS DECIMAL(10,1)) AS Hits  ,T1.DisplayName AS Name,T1.TestID AS TestID,T1.Culture AS Culture
FROM {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates
 LEFT JOIN
  (SELECT HitsStartTime AS Interval, SUM(HitsCount) AS Hits ,ABTestDisplayName AS DisplayName,ABTestID AS TestID,
      ABTestCulture AS Culture
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON StatisticsID = Analytics_HourHits.HitsStatisticsID
  INNER JOIN OM_ABTest ON ABTestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14) AND ABTestSiteID = @CMSContextCurrentSiteID
  WHERE StatisticsSiteID = @CMSContextCurrentSiteID   AND  StatisticsCode LIKE ''abconversion;%''
  AND (@TestName IS NULL OR @TestName = '''' OR @TestName = ABTestName)
  AND (@ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  GROUP BY HitsStartTime,ABTestName,ABTestDisplayName,ABTestID,ABTestCulture
  ) AS T1
 ON Dates.Date=T1.Interval;
     
 UPDATE #AnalyticsTempTable SET Hits = Hits/(
   SELECT CAST(SUM (HitsCount) AS DECIMAL (10,1)) FROM Analytics_Statistics
   JOIN Analytics_HourHits ON Analytics_Statistics.StatisticsID = Analytics_HourHits.HitsStatisticsID
   WHERE Analytics_Statistics.StatisticsCode = ''pageviews''  
   AND Analytics_HourHits.HitsStartTime = StartTime
   AND Analytics_Statistics.StatisticsObjectID IN
  (SELECT NodeID FROM View_CMS_Tree_Joined WHERE NodeAliasPath IN 
    (
      SELECT ABVariantPath  From OM_ABVariant WHERE ABVariantSiteID = @CMSContextCurrentSiteID
      AND  ABVariantTestID = TestID
      AND NodeSiteID = @CMSContextCurrentSiteID AND (DocumentCulture = StatisticsObjectCulture OR StatisticsObjectCulture IS NULL)
     )
  )
        AND (StatisticsObjectCulture IS NULL OR StatisticsObjectCulture = Culture OR Culture IS NULL)             
   ) * 100
   
   -- Prepare for PIVOT - delete all help columns
 ALTER TABLE #AnalyticsTempTable DROP COLUMN TestID  
 ALTER TABLE #AnalyticsTempTable DROP COLUMN Culture      
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 447, N'', N'', N'', 600, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy HH:mm}  -  #SER: #VALY%</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0.0\%}</yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '9b93c03f-7346-42b7-acd4-e8a201ed5691', '20120323 11:10:57', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (695, N'graph', N'graph', N'DECLARE @StartDate DateTime; 
-- Trim time
SET @FromDate =  DATEADD(dd, DATEDIFF(dd, 0, @FromDate), 0);
        
-- Get first day of day
SET @StartDate = DATEADD(yy, DATEDIFF(yy, 0, @FromDate), 0)
    
-- if not same show next day
IF (@StartDate <> @FromDate)
BEGIN
  SET @FromDate = DATEADD (DAY,1,@STARTDATE);
END;
WITH Dates AS (
        SELECT
         [Date] = CONVERT(DATETIME,@FromDate)
        UNION ALL SELECT
         [Date] = DATEADD(DAY, 1, [Date])
        FROM
         Dates
        WHERE
         Date < DATEADD(DAY,-1,@toDate)
)
SELECT Dates.Date AS StartTime ,SUM(Hits) AS ''Hits''
FROM Dates   
 LEFT JOIN
  (SELECT HitsStartTime AS Interval,
  SUM (HitsValue) AS Hits
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID )   
  AND StatisticsCode LIKE ''%abconversion;%''
  AND @TestName =  SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)  
  AND (StatisticsObjectName = @ConversionName OR @ConversionName IS NULL OR  @ConversionName = '''')
  GROUP BY HitsStartTime,StatisticsCode, SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)  ) AS T1
 ON Dates.Date=T1.Interval
 GROUP BY Dates.Date', 0, N'line', 448, N'Conversions source pages', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval>1</xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax>100</scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle></customdata>', 'f34f08e8-0d4a-4430-858f-e4260e4b341b', '20120323 11:10:57', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (696, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime,SUM(HitsCount) AS Hits,ABVariantPath AS Name
    FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'')
  LEFT OUTER JOIN
  (SELECT * FROM
  Analytics_DayHits
  LEFT JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_DayHits.HitsStatisticsID     
  LEFT JOIN OM_ABVariant ON SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode)) = OM_ABVariant.ABVariantName
  AND OM_ABVariant.ABVariantTestID IN (SELECT ABTestID FROM OM_ABTest WHERE OM_ABTest.ABTestName = @TestName    
    AND OM_ABTest.ABTestSiteID = @CMSContextCurrentSiteID)    
   WHERE    
   (StatisticsSiteID = @CMSContextCurrentSiteID)    
   AND StatisticsCode LIKE ''abconversion;%''
   AND @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)
   AND (StatisticsObjectName = @ConversionName OR @ConversionName = '''')
   )
   AS X ON [Date] = X.HitsStartTime
  GROUP BY [Date],ABVariantPath  
   
  EXEC Proc_Analytics_Pivot ''day''
  EXEC Proc_Analytics_RemoveTempTable', 0, N'bar', 448, N'Conversions source pages', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat>d</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval>1</xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><displaylegend>True</displaylegend><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatey></rotatey><xaxislabelfont></xaxislabelfont><rotatex></rotatex><seriesitemtooltip>{%ser%}</seriesitemtooltip><displayitemvalue>True</displayitemvalue><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>True</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><pieothervalue></pieothervalue><scalemax>100</scalemax><seriesbordersize>1</seriesbordersize><legendposition>Right</legendposition><querynorecordtext>No data found</querynorecordtext><exportenabled>true</exportenabled><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>d</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><legendtitle>Pages</legendtitle><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><piedoughnutradius>60</piedoughnutradius></customdata>', '5a016805-7a13-4358-a78e-603e2cd45b40', '20120323 11:10:57', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (697, N'graph', N'graph', N'DECLARE @StartDate DateTime; 
-- Trim time
SET @FromDate =  DATEADD(dd, DATEDIFF(dd, 0, @FromDate), 0);
        
-- Get first day of month
SET @StartDate = DATEADD(yy, DATEDIFF(yy, 0, @FromDate), 0)
    
-- if not same show next month
IF (@StartDate <> @FromDate)
BEGIN
  SET @FromDate = DATEADD (MONTH,1,@STARTDATE);
END;
WITH Dates AS (
        SELECT
         [Date] = CONVERT(DATETIME,@FromDate)
        UNION ALL SELECT
         [Date] = DATEADD(MONTH, 1, [Date])
        FROM
         Dates
        WHERE
         Date < DATEADD(MONTH,-1,@toDate)
)
SELECT Dates.Date AS StartTime ,SUM(Hits) AS ''Hits''
FROM Dates   
 LEFT JOIN
  (SELECT HitsStartTime AS Interval,
  SUM (HitsValue) AS Hits
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID )   
  AND StatisticsCode LIKE ''%abconversion;%''
  AND @TestName =  SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)  
  AND (StatisticsObjectName = @ConversionName OR @ConversionName IS NULL OR  @ConversionName = '''')
  GROUP BY HitsStartTime,StatisticsCode, SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)  ) AS T1
 ON Dates.Date=T1.Interval
 GROUP BY Dates.Date', 0, N'line', 449, N'Conversions source pages', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval>1</xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{y}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax>100</scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle></customdata>', 'fecd2c3d-5df8-4b49-8886-177a21fc0966', '20120323 11:10:57', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (698, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime,SUM(HitsCount) AS Hits,ABVariantPath AS Name
    FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'')
  LEFT OUTER JOIN
  (SELECT * FROM
  Analytics_MonthHits
  LEFT JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_MonthHits.HitsStatisticsID     
  LEFT JOIN OM_ABVariant ON SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode)) = OM_ABVariant.ABVariantName
  AND OM_ABVariant.ABVariantTestID IN (SELECT ABTestID FROM OM_ABTest WHERE OM_ABTest.ABTestName = @TestName    
    AND OM_ABTest.ABTestSiteID = @CMSContextCurrentSiteID)    
   WHERE    
   (StatisticsSiteID = @CMSContextCurrentSiteID)    
   AND StatisticsCode LIKE ''abconversion;%''
   AND @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)
   AND (StatisticsObjectName = @ConversionName OR @ConversionName = '''')
   )
   AS X ON [Date] = X.HitsStartTime
  GROUP BY [Date],ABVariantPath  
   
  EXEC Proc_Analytics_Pivot ''month''
  EXEC Proc_Analytics_RemoveTempTable', 0, N'bar', 449, N'Conversions source pages', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat>y</seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval>1</xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><xaxisformat>y</xaxisformat><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedoughnutradius>60</piedoughnutradius><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>True</valuesaspercent><legendfixedposition></legendfixedposition><displaylegend>True</displaylegend><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax>100</scalemax><seriesbordersize>1</seriesbordersize><yaxisformat></yaxisformat><legendtitle>Pages</legendtitle><scalemin></scalemin><exportenabled>true</exportenabled><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><seriesitemtooltip>{%ser%}</seriesitemtooltip><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '0bb8a9e9-cd65-4bf4-8d7c-4b0e1863aece', '20120323 11:10:57', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (699, N'graph', N'graph', N'DECLARE @StartDate DateTime; 
-- Trim time
SET @FromDate =  DATEADD(dd, DATEDIFF(dd, 0, @FromDate), 0);
        
-- Get first day of week
SET @StartDate = DATEADD(yy, DATEDIFF(yy, 0, @FromDate), 0)
    
-- if not same show next week
IF (@StartDate <> @FromDate)
BEGIN
  SET @FromDate = DATEADD (WEEK,1,@STARTDATE);
END;
WITH Dates AS (
        SELECT
         [Date] = CONVERT(DATETIME,@FromDate)
        UNION ALL SELECT
         [Date] = DATEADD(WEEK, 1, [Date])
        FROM
         Dates
        WHERE
         Date < DATEADD(WEEK,-1,@toDate)
)
SELECT Dates.Date AS StartTime ,SUM(Hits) AS ''Hits''
FROM Dates   
 LEFT JOIN
  (SELECT HitsStartTime AS Interval,
  SUM (HitsValue) AS Hits
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID )   
  AND StatisticsCode LIKE ''%abconversion;%''
  AND @TestName =  SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)  
  AND (StatisticsObjectName = @ConversionName OR @ConversionName IS NULL OR  @ConversionName = '''')
  GROUP BY HitsStartTime,StatisticsCode, SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)  ) AS T1
 ON Dates.Date=T1.Interval
 GROUP BY Dates.Date', 0, N'line', 450, N'Conversions source pages', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval>1</xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax>100</scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle></customdata>', 'f79980eb-fc00-4e2e-8127-bd8ebec7eb14', '20120323 11:10:57', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (700, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300)
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)
   SELECT [Date] AS StartTime,SUM(HitsCount) AS Hits,ABVariantPath AS Name
    FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'')
  LEFT OUTER JOIN
  (SELECT * FROM
  Analytics_WeekHits
  LEFT JOIN Analytics_Statistics ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID     
  LEFT JOIN OM_ABVariant ON SUBSTRING(StatisticsCode, CHARINDEX('';'',StatisticsCode,14)+1,LEN (StatisticsCode)) = OM_ABVariant.ABVariantName
  AND OM_ABVariant.ABVariantTestID IN (SELECT ABTestID FROM OM_ABTest WHERE OM_ABTest.ABTestName = @TestName    
    AND OM_ABTest.ABTestSiteID = @CMSContextCurrentSiteID)    
   WHERE    
   (StatisticsSiteID = @CMSContextCurrentSiteID)    
   AND StatisticsCode LIKE ''abconversion;%''
   AND @TestName = SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)
   AND (StatisticsObjectName = @ConversionName OR @ConversionName = '''')
   )
   AS X ON [Date] = X.HitsStartTime
  GROUP BY [Date],ABVariantPath  
   
  EXEC Proc_Analytics_Pivot ''week''
  EXEC Proc_Analytics_RemoveTempTable', 0, N'', 450, N'Conversions source pages', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemnameformat></seriesitemnameformat><bardrawingstyle>Cylinder</bardrawingstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval>1</xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><legendinside>False</legendinside><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><displaylegend>True</displaylegend><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>True</displayitemvalue><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>True</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax>100</scalemax><seriesbordersize>1</seriesbordersize><yaxisformat></yaxisformat><legendposition>Right</legendposition><legendtitle>Pages</legendtitle><scalemin></scalemin><exportenabled>true</exportenabled><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip>{%ser%}</seriesitemtooltip><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '766e3dac-1cc5-4d98-887b-ed5cfa619d5d', '20120323 11:10:57', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (701, N'graph', N'graph', N'DECLARE @StartDate DateTime; 
-- Trim time
SET @FromDate =  DATEADD(dd, DATEDIFF(dd, 0, @FromDate), 0);
        
-- Get first day of year
SET @StartDate = DATEADD(yy, DATEDIFF(yy, 0, @FromDate), 0)
    
-- if not same show next year
IF (@StartDate <> @FromDate)
BEGIN
  SET @FromDate = DATEADD (YEAR,1,@STARTDATE);
END;
WITH Dates AS (
        SELECT
         [Date] = CONVERT(DATETIME,@FromDate)
        UNION ALL SELECT
         [Date] = DATEADD(YEAR, 1, [Date])
        FROM
         Dates
        WHERE
         Date < DATEADD(YEAR,-1,@toDate)
)
SELECT Dates.Date AS StartTime ,SUM(Hits) AS ''Hits''
FROM Dates   
 LEFT JOIN
  (SELECT HitsStartTime AS Interval,
  SUM (HitsValue) AS Hits
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID )   
  AND StatisticsCode LIKE ''%abconversion;%''
  AND @TestName =  SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)  
  AND (StatisticsObjectName = @ConversionName OR @ConversionName IS NULL OR  @ConversionName = '''')
  GROUP BY HitsStartTime,StatisticsCode, SUBSTRING(StatisticsCode, 14, CHARINDEX('';'',StatisticsCode,14)-14)  ) AS T1
 ON Dates.Date=T1.Interval
 GROUP BY Dates.Date', 0, N'line', 451, N'Conversions source pages', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval>1</xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax>100</scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle></customdata>', '1c451182-9d0a-4845-861c-50b3c50c25a1', '20120323 11:10:57', NULL, NULL)
SET IDENTITY_INSERT [Reporting_ReportGraph] OFF
