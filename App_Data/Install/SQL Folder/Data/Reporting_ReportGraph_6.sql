SET IDENTITY_INSERT [Reporting_ReportGraph] ON
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1037, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)         
 SELECT [Date] AS StartTime ,T1.Hits,T1.ConversionDisplayName AS Name   
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount)AS hits,ConversionDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')
  AND SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = @CampaignName  
  GROUP BY HitsStartTime,ConversionDisplayName) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 608, N'Conversions count', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><legendposition>None</legendposition><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>yyyy</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat></itemvalueformat><legendtitle>Conversions</legendtitle><displaylegend>True</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>True</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', '50b4a431-142d-4cba-8658-bba1cf2bd181', '20120323 11:11:11', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1038, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)         
 SELECT [Date] AS StartTime ,T1.Hits,T1.ConversionDisplayName AS Name   
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount)AS hits,ConversionDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')
  AND SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = @CampaignName  
  GROUP BY HitsStartTime,ConversionDisplayName) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 609, N'Conversions count', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><legendposition>None</legendposition><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat></seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat>{%yval%}</itemvalueformat><legendtitle>Conversions</legendtitle><displaylegend>True</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>True</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', '8d7bcf73-0637-4204-923b-e9686f691339', '20120323 11:11:11', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1039, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)         
 SELECT [Date] AS StartTime ,T1.Hits,T1.ConversionDisplayName AS Name   
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount)AS hits,ConversionDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')
  AND SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = @CampaignName  
  GROUP BY HitsStartTime,ConversionDisplayName) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 611, N'Conversions count', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><legendposition>None</legendposition><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>y</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat>{%yval%}</itemvalueformat><legendtitle>Conversions</legendtitle><displaylegend>True</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>True</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', 'd5691b9f-acfb-458d-bb45-a9f3e2892954', '20120323 11:11:12', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1040, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)         
 SELECT [Date] AS StartTime ,T1.Hits,T1.ConversionDisplayName AS Name   
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount)AS hits,ConversionDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')
  AND SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = @CampaignName  
  GROUP BY HitsStartTime,ConversionDisplayName) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 612, N'Conversions count', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><legendposition>None</legendposition><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>g</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat>{%yval%}</itemvalueformat><legendtitle>Conversions</legendtitle><displaylegend>True</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>True</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', '3c209e75-23d0-4e0f-9a43-ce7e8386fd53', '20120323 11:11:12', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1041, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits,Name)         
 SELECT [Date] AS StartTime ,T1.Hits,T1.ConversionDisplayName AS Name   
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsCount)AS hits,ConversionDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')
  AND SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = @CampaignName  
  GROUP BY HitsStartTime,ConversionDisplayName) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 610, N'Conversions count', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><legendposition>None</legendposition><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>g</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><legendtitle>Conversions </legendtitle><displaylegend>True</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>True</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', '0b6ff49c-8419-4f54-86f5-a831eb0779ef', '20120323 11:11:12', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1042, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)        
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,
   CASE
    WHEN @ConversionName = '''' THEN CampaignDisplayName
    ELSE ConversionDisplayName
   END
  AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = StatisticsSiteID
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = @CampaignName  
        AND CampaignName = @CampaignName  AND CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')  AND 
  (@CampaignName IN ('''',CampaignName) OR @CampaignName IS NULL) AND 
  (@ConversionName IN ('''',ConversionName) OR @ConversionName IS NULL)  
  
  GROUP BY HitsStartTime,CampaignName,
     CASE
    WHEN @ConversionName = '''' THEN CampaignDisplayName
    ELSE ConversionDisplayName
     END
  ) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 614, N'', N'{$reports_general.label_years$}', N'{$om.trackconversionvalue$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareabordercolor>#bbbbbb</chartareabordercolor><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><seriessymbols>Circle</seriessymbols><seriesgradient>None</seriesgradient><rotatey></rotatey><xaxislabelfont></xaxislabelfont><rotatex></rotatex><seriesitemtooltip>#VALX{yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition>{%CampaignName%}</legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><yaxistitle>{$om.trackconversionvalue$}</yaxistitle><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><legendbordercolor>#000000</legendbordercolor><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '3bb39143-076d-4862-a7dd-a35c197dd87f', '20120323 11:11:12', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1043, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
  
 SELECT [Date] AS StartTime ,T1.Hits,T1.ConversionDisplayName AS Name INTO #AnalyticsTempTable  
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,ConversionDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')
  AND SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = @CampaignName  
  GROUP BY HitsStartTime,ConversionDisplayName) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''year''', 0, N'', 614, N'Conversions value', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>yyyy</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><legendtitle>Conversions</legendtitle><displaylegend>True</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>True</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', '6c3f97e8-f811-4f5d-b171-a17cb9e11772', '20120323 11:11:12', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1044, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)        
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,
   CASE
    WHEN @ConversionName = '''' THEN CampaignDisplayName
    ELSE ConversionDisplayName
   END
  AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = StatisticsSiteID
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = @CampaignName  
        AND CampaignName = @CampaignName  AND CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')  AND 
  (@CampaignName IN ('''',CampaignName) OR @CampaignName IS NULL) AND
  (@ConversionName IN ('''',ConversionName) OR @ConversionName IS NULL)  
  
  GROUP BY HitsStartTime,CampaignName,
     CASE
    WHEN @ConversionName = '''' THEN CampaignDisplayName
    ELSE ConversionDisplayName
     END
  ) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 615, N'', N'{$reports_general.label_weeks$}', N'{$om.trackconversionvalue$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><yaxistitle>{$om.trackconversionvalue$}</yaxistitle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><seriesbordersize>2</seriesbordersize><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><xaxislabelfont></xaxislabelfont><legendinside>False</legendinside><legendfixedposition></legendfixedposition><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><subscriptionenabled>True</subscriptionenabled><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><legendtitle></legendtitle><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '4ac2f798-3fa0-42f3-83fa-3f3ceeeeaf32', '20120323 11:11:12', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1045, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week'');
  
 SELECT [Date] AS StartTime ,T1.Hits,T1.ConversionDisplayName AS Name INTO #AnalyticsTempTable  
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,ConversionDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')
  AND SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = @CampaignName  
  GROUP BY HitsStartTime,ConversionDisplayName) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''week''', 0, N'', 615, N'Conversions value', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat></seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat>{%yval%}</itemvalueformat><legendtitle>Conversions</legendtitle><displaylegend>True</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>True</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', 'fe75e77b-4063-419c-b3e1-b0b06ec9f993', '20120323 11:11:12', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1046, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)        
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,
   CASE
    WHEN @ConversionName = '''' THEN CampaignDisplayName
    ELSE ConversionDisplayName
   END
  AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = StatisticsSiteID
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = @CampaignName  
        AND CampaignName = @CampaignName  AND CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')  AND 
  (@CampaignName IN ('''',CampaignName) OR @CampaignName IS NULL) AND
  (@ConversionName IN ('''',ConversionName) OR @ConversionName IS NULL)  
  
  GROUP BY HitsStartTime,CampaignName,
     CASE
    WHEN @ConversionName = '''' THEN CampaignDisplayName
    ELSE ConversionDisplayName
     END
  ) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 616, N'', N'{$reports_general.label_months$}', N'{$om.trackconversionvalue$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX{y}  -  #SER: #VALY</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><yaxistitle>{$om.trackconversionvalue$}</yaxistitle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><seriesbordersize>2</seriesbordersize><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><xaxislabelfont></xaxislabelfont><legendinside>False</legendinside><legendfixedposition></legendfixedposition><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><subscriptionenabled>True</subscriptionenabled><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>y</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><legendtitle></legendtitle><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'e8f7299a-11f5-4db9-85c5-b5e1827fba93', '20120323 11:11:12', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1047, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month'');
  
 SELECT [Date] AS StartTime ,T1.Hits,T1.ConversionDisplayName AS Name INTO #AnalyticsTempTable  
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,ConversionDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')
  AND SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = @CampaignName  
  GROUP BY HitsStartTime,ConversionDisplayName) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''month''', 0, N'', 616, N'Conversions value', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>y</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat>{%yval%}</itemvalueformat><legendtitle>Conversions</legendtitle><displaylegend>True</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>True</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', 'c14c7d3b-f98c-40b7-bcf2-e8b58ac80bbc', '20120323 11:11:12', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1048, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)        
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,
   CASE
    WHEN @ConversionName = '''' THEN CampaignDisplayName
    ELSE ConversionDisplayName
   END
  AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = StatisticsSiteID
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = @CampaignName  
        AND CampaignName = @CampaignName  AND CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')  AND 
  (@CampaignName IN ('''',CampaignName) OR @CampaignName IS NULL) AND
  (@ConversionName IN ('''',ConversionName) OR @ConversionName IS NULL)  
  
  GROUP BY HitsStartTime,CampaignName,
     CASE
    WHEN @ConversionName = '''' THEN CampaignDisplayName
    ELSE ConversionDisplayName
     END
  ) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 617, N'', N'{$reports_general.label_hours$}', N'{$om.trackconversionvalue$}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><xaxistitlecolor>#000000</xaxistitlecolor><yaxistitle>{$om.trackconversionvalue$}</yaxistitle><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><seriessymbols>Circle</seriessymbols><seriesgradient>None</seriesgradient><legendposition>Bottom</legendposition><rotatex></rotatex><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy HH:mm}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendfixedposition></legendfixedposition><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><querynorecordtext></querynorecordtext><linedrawinstyle>Line</linedrawinstyle><xaxisformat>g</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '839ed4bf-f672-4ebc-982a-adc19f0ff8c8', '20120323 11:11:12', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1049, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour'');
  
 SELECT [Date] AS StartTime ,T1.Hits,T1.ConversionDisplayName AS Name INTO #AnalyticsTempTable  
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,ConversionDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')
  AND SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = @CampaignName  
  GROUP BY HitsStartTime,ConversionDisplayName) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''hour''', 0, N'', 617, N'Conversions value', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>g</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat>{%yval%}</itemvalueformat><legendtitle>Conversions</legendtitle><displaylegend>True</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>True</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', '64145833-0155-4205-a057-69070d44b2c3', '20120323 11:11:12', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1050, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)        
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name 
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,
   CASE
    WHEN @ConversionName = '''' THEN CampaignDisplayName
    ELSE ConversionDisplayName
   END
  AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = StatisticsSiteID
  INNER JOIN Analytics_Campaign ON SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = @CampaignName  
        AND CampaignName = @CampaignName  AND CampaignSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')  AND 
  (@CampaignName IN ('''',CampaignName) OR @CampaignName IS NULL) AND
  (@ConversionName IN ('''',ConversionName) OR @ConversionName IS NULL)  
  
  GROUP BY HitsStartTime,CampaignName,
     CASE
    WHEN @ConversionName = '''' THEN CampaignDisplayName
    ELSE ConversionDisplayName
     END
  ) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 618, N'', N'{$reports_general.label_days$}', N'{$om.trackconversionvalue$}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><yaxistitle>{$om.trackconversionvalue$}</yaxistitle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><seriesbordersize>2</seriesbordersize><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><xaxislabelfont></xaxislabelfont><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><legendfixedposition></legendfixedposition><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><subscriptionenabled>True</subscriptionenabled><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext></querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'b591328d-774e-489b-b1e8-93831e0117a0', '20120323 11:11:13', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1051, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day'');
  
 SELECT [Date] AS StartTime ,T1.Hits,T1.ConversionDisplayName AS Name INTO #AnalyticsTempTable  
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,ConversionDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName AND ConversionSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')
  AND SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = @CampaignName  
  GROUP BY HitsStartTime,ConversionDisplayName) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''day''', 0, N'', 618, N'Conversions value', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>g</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat>{%yval%}</itemvalueformat><legendtitle>Conversions</legendtitle><displaylegend>True</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>True</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', 'd7898061-96a9-4e64-9f99-86e03d5c129f', '20120323 11:11:13', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1052, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)   
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name   
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,
  CASE
  WHEN @Goal=''value'' THEN SUM(HitsValue)
  ELSE SUM(HitsCount)
  END    
  AS hits
  ,  
  CampaignDisplayName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID    
  INNER JOIN Analytics_Campaign ON (@Goal <> ''view'' AND StatisticsCode LIKE @Codename AND SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName)
        OR (@Goal=''view'' AND StatisticsObjectName = CampaignName) AND StatisticsSiteID = CampaignSiteID
  
  WHERE (StatisticsSiteID = @SiteID OR @SiteID = 0) AND
  (StatisticsCode LIKE @CodeName)   
  AND (@Goal = ''view'' OR @ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  GROUP BY HitsStartTime,CampaignName,CampaignDisplayName
  )
  AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 619, N'', N'{$reports_general.label_years$}', N'{%ColumnName|(default)Hits%}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont>Arial;bold;11;;</yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX{yyyy}  -  #SER: #VALY</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition>{%CampaignName%}</legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><xaxissort>True</xaxissort><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><legendtitle></legendtitle><querynorecordtext>No data found</querynorecordtext><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '27329f55-2171-4a80-b0d3-7a924313a898', '20120323 11:11:13', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1053, N'graph_detail', N'graph_detail', N'', 0, N'', 619, N'', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>yyyy</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat></itemvalueformat><legendtitle></legendtitle><displaylegend>False</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>true</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', '4f394a48-6fa5-40a2-952f-141d1f26fca0', '20120323 11:11:13', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1054, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''month''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)   
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name   
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''month'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,
  CASE
  WHEN @Goal=''value'' THEN SUM(HitsValue)
  ELSE SUM(HitsCount)
  END    
  AS hits
  ,  
  CampaignDisplayName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_MonthHits ON Analytics_MonthHits.HitsStatisticsID = Analytics_Statistics.StatisticsID    
  INNER JOIN Analytics_Campaign ON (@Goal <> ''view'' AND StatisticsCode LIKE @Codename AND SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName)
        OR (@Goal=''view'' AND StatisticsObjectName = CampaignName) AND StatisticsSiteID = CampaignSiteID
  
  WHERE (StatisticsSiteID = @SiteID OR @SiteID = 0) AND
  (StatisticsCode LIKE @CodeName)   
  AND (@Goal = ''view'' OR @ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  GROUP BY HitsStartTime,CampaignName,CampaignDisplayName
  )
  AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 620, N'', N'{$reports_general.label_months$}', N'{%ColumnName|(default)Hits%}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><seriesitemtooltip>#VALX{y}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition>{%CampaignName%}</legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>y</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><legendtitle></legendtitle><xaxissort>True</xaxissort><yaxisformat></yaxisformat><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '0e740b1a-bdbd-4e1d-b25f-05f9d726bbb0', '20120323 11:11:13', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1055, N'graph_detail_1', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
  
 SELECT [Date] AS StartTime ,T1.Hits,T1.ConversionDisplayName AS Name INTO #AnalyticsTempTable  
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,ConversionDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')
  AND SUBSTRING(StatisticsCode, 20, LEN(StatisticsCode)-19) = @CampaignName  
  GROUP BY HitsStartTime,ConversionDisplayName) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''year''', 0, N'', 620, N'', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>yyyy</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat></itemvalueformat><legendtitle></legendtitle><displaylegend>False</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>true</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', '5b163ada-df18-4c25-a290-d6f58a17d2c9', '20120323 11:11:13', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1056, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''week''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)   
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name   
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''week'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,
  CASE
  WHEN @Goal=''value'' THEN SUM(HitsValue)
  ELSE SUM(HitsCount)
  END    
  AS hits
  ,  
  CampaignDisplayName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_WeekHits.HitsStatisticsID = Analytics_Statistics.StatisticsID    
  INNER JOIN Analytics_Campaign ON (@Goal <> ''view'' AND StatisticsCode LIKE @Codename AND SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName)
        OR (@Goal=''view'' AND StatisticsObjectName = CampaignName) AND StatisticsSiteID = CampaignSiteID
  
  WHERE (StatisticsSiteID = @SiteID OR @SiteID = 0) AND
  (StatisticsCode LIKE @CodeName)   
  AND (@Goal = ''view'' OR @ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  GROUP BY HitsStartTime,CampaignName,CampaignDisplayName
  )
  AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 621, N'', N'{$reports_general.label_weeks$}', N'{%ColumnName|(default)Hits%}', 700, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition>{%CampaignName%}</legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'bb777522-4c04-44ee-a886-60f05b32106f', '20120323 11:11:13', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1058, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''day''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)   
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name   
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''day'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,
  CASE
  WHEN @Goal=''value'' THEN SUM(HitsValue)
  ELSE SUM(HitsCount)
  END    
  AS hits
  ,  
  CampaignDisplayName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_DayHits ON Analytics_DayHits.HitsStatisticsID = Analytics_Statistics.StatisticsID    
  INNER JOIN Analytics_Campaign ON (@Goal <> ''view'' AND StatisticsCode LIKE @Codename AND SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName)
        OR (@Goal=''view'' AND StatisticsObjectName = CampaignName) AND StatisticsSiteID = CampaignSiteID
  
  WHERE (StatisticsSiteID = @SiteID OR @SiteID = 0) AND
  (StatisticsCode LIKE @CodeName)   
  AND (@Goal = ''view'' OR @ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  GROUP BY HitsStartTime,CampaignName,CampaignDisplayName
  )
  AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 622, N'', N'{$reports_general.label_days$}', N'{%ColumnName|(default)Hits%}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><seriessymbols>Circle</seriessymbols><seriesgradient>None</seriesgradient><legendposition>Bottom</legendposition><yaxisformat></yaxisformat><rotatex></rotatex><rotatey></rotatey><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition>{%CampaignName%}</legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '50b1273e-223c-4610-b8e9-12477d539345', '20120323 11:11:13', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1059, N'graph_detail_3', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
  
 SELECT [Date] AS StartTime ,T1.Hits,T1.ConversionDisplayName AS Name INTO #AnalyticsTempTable  
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,ConversionDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')
  AND SUBSTRING(StatisticsCode, 20, LEN(StatisticsCode)-19) = @CampaignName  
  GROUP BY HitsStartTime,ConversionDisplayName) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''year''', 0, N'', 622, N'', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>yyyy</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat></itemvalueformat><legendtitle></legendtitle><displaylegend>False</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>true</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', '46d2c292-23aa-477b-8686-dd4825468d15', '20120323 11:11:13', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1060, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
CREATE TABLE #AnalyticsTempTable (
  StartTime DATETIME,
  Hits INT,
  Name NVARCHAR(300) COLLATE database_default  
);
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''hour''); 
 
  INSERT INTO #AnalyticsTempTable (StartTime, Hits, Name)   
 SELECT [Date] AS StartTime ,T1.Hits,T1.Name AS Name   
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''hour'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,
  CASE
  WHEN @Goal=''value'' THEN SUM(HitsValue)
  ELSE SUM(HitsCount)
  END    
  AS hits
  ,  
  CampaignDisplayName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_HourHits ON Analytics_HourHits.HitsStatisticsID = Analytics_Statistics.StatisticsID    
  INNER JOIN Analytics_Campaign ON (@Goal <> ''view'' AND StatisticsCode LIKE @Codename AND SUBSTRING(StatisticsCode, 16, LEN(StatisticsCode)) = CampaignName)
        OR (@Goal=''view'' AND StatisticsObjectName = CampaignName) AND StatisticsSiteID = CampaignSiteID
  
  WHERE (StatisticsSiteID = @SiteID OR @SiteID = 0) AND
  (StatisticsCode LIKE @CodeName)   
  AND (@Goal = ''view'' OR @ConversionName IS NULL OR @ConversionName IN ('''',StatisticsObjectName))
  GROUP BY HitsStartTime,CampaignName,CampaignDisplayName
  )
  AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 623, N'', N'{$reports_general.label_hours$}', N'{%ColumnName|(default)Hits%}', 700, 500, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy HH:mm}  -  #SER: #VALY</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth></columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew>Arial;bold;14;;</titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><seriessymbols>Circle</seriessymbols><seriesgradient>None</seriesgradient><legendposition>Bottom</legendposition><yaxisformat></yaxisformat><rotatex></rotatex><rotatey></rotatey><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition>{%CampaignName%}</legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>g</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont>Arial;bold;11;;</xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'af23887d-ea78-4268-a08a-d8dfcd20f101', '20120323 11:11:13', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1061, N'graph_detail_4', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
 SET @FromDate ={%DatabaseSchema%}.Func_Analytics_DateTrim(@FromDate,''year'');
  
 SELECT [Date] AS StartTime ,T1.Hits,T1.ConversionDisplayName AS Name INTO #AnalyticsTempTable  
 FROM
  {%DatabaseSchema%}.Func_Analytics_EnsureDates (@FromDate,@ToDate,''year'') AS Dates   
  LEFT JOIN
  (SELECT HitsStartTime AS StartTime,SUM(HitsValue)AS hits,ConversionDisplayName
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_YearHits.HitsStatisticsID = Analytics_Statistics.StatisticsID  
  INNER JOIN Analytics_Conversion ON StatisticsObjectName = ConversionName
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID) AND
  (StatisticsCode LIKE @CodeName+'';%'')
  AND SUBSTRING(StatisticsCode, 20, LEN(StatisticsCode)-19) = @CampaignName  
  GROUP BY HitsStartTime,ConversionDisplayName) AS T1
  ON T1.StartTime = [Date]  
  
 EXEC Proc_Analytics_Pivot ''year''', 0, N'', 623, N'', NULL, NULL, NULL, NULL, NULL, N'<customdata><plotareaborderstyle>Solid</plotareaborderstyle><xaxistitlecolor>#000000</xaxistitlecolor><chartareabordersize>1</chartareabordersize><subscriptionenabled>True</subscriptionenabled><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisfont></yaxisfont><seriesitemnameformat>yyyy</seriesitemnameformat><yaxistitleposition>Center</yaxistitleposition><borderskinstyle>None</borderskinstyle><itemvalueformat></itemvalueformat><legendtitle></legendtitle><displaylegend>False</displaylegend><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareabordercolor>#bbbbbb</plotareabordercolor><chartareabordercolor>#bbbbbb</chartareabordercolor><exportenabled>true</exportenabled><seriesitemlink></seriesitemlink><seriesitemtooltip>{%ser%}</seriesitemtooltip><yaxistitlecolor>#000000</yaxistitlecolor><plotareabordersize>1</plotareabordersize><querynorecordtext>No data found</querynorecordtext><titlecolor>#000000</titlecolor><chartareagradient>BottomTop</chartareagradient><yaxislabelfont></yaxislabelfont><chartareaborderstyle>Solid</chartareaborderstyle></customdata>', 'cd1a6c4b-091f-4aea-90ab-cc894992cef8', '20120323 11:11:14', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1120, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
  SUM(HitsCount) AS Hits ,OM_MVTest.MVTestDisplayName AS Name
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
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 631, N'Conversions count', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisformat></yaxisformat><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatey></rotatey><xaxislabelfont></xaxislabelfont><rotatex></rotatex><seriesitemtooltip>#VALX{yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '96e05610-5dde-4e0e-9d22-70f996f5706e', '20120323 11:11:14', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1121, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 632, N'Conversions count', N'', N'', 800, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><querynorecordtext>No data found</querynorecordtext><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont>Arial;regular;8;;</xaxislabelfont><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>d</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><reverseyaxis>False</reverseyaxis><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle></customdata>', '362817ba-850c-47a2-8c68-1ad463aff0dc', '20120323 11:11:14', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1122, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
  SUM(HitsCount) AS Hits ,OM_MVTest.MVTestDisplayName AS Name
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
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 633, N'Conversions count', N'', N'', 800, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><xaxislabelfont>Arial;regular;8;;</xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle></customdata>', 'c24c1337-05a7-42da-ae4e-1dd012198c4b', '20120323 11:11:14', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1123, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 634, N'Conversions count', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisformat></yaxisformat><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><seriesitemtooltip>#VALX{y}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle></customdata>', '3a0520e8-6b56-4bdf-a1df-4bcbd5b788a0', '20120323 11:11:14', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1124, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 635, N'Conversions count', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>g</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy HH:mm}  -  #SER: #VALY</seriesitemtooltip><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesborderstyle>Solid</seriesborderstyle></customdata>', '3f0ffee6-bada-45b2-a88a-a853b1e02ecb', '20120323 11:11:14', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1324, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
  AND (@MVTestName IS NULL OR @MVTestName = OM_MVTest.MVTestName OR @MVTestName ='''')
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 653, N'Conversions value', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><xaxistitlecolor>#000000</xaxistitlecolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><seriesitemtooltip>#VALX{yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><querynorecordtext>No data found</querynorecordtext><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><legendtitle></legendtitle><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '8baefa5b-e230-4db9-9fd0-011a24af6a4e', '20120323 11:11:31', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1325, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
  AND (@MVTestName IS NULL OR @MVTestName = OM_MVTest.MVTestName OR @MVTestName ='''')
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''day''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 654, N'Conversions value', N'', N'', 800, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><chartareaborderstyle>Solid</chartareaborderstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont>Arial;regular;8;;</xaxislabelfont><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><legendtitle></legendtitle><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '1675ace8-3af9-4e20-a3e1-b9ed2d795a48', '20120323 11:11:31', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1326, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
  AND (@MVTestName IS NULL OR @MVTestName = OM_MVTest.MVTestName OR @MVTestName ='''')
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''hour''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 655, N'Conversions value', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy HH:mm}  -  #SER: #VALY</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>g</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'cee34788-36e1-44ec-9d2f-c70dd688f32e', '20120323 11:11:31', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1327, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
  AND (@MVTestName IS NULL OR @MVTestName = OM_MVTest.MVTestName OR @MVTestName ='''')
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''month''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 656, N'Conversions value', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><xaxistitlecolor>#000000</xaxistitlecolor><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><seriesitemtooltip>#VALX{y}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><scalemin></scalemin><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><querynorecordtext>No data found</querynorecordtext><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><legendtitle></legendtitle><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat></yaxisformat><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '4d719e2d-066e-47a0-a356-102fef1c7ff1', '20120323 11:11:31', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1328, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
  AND (@MVTestName IS NULL OR @MVTestName = OM_MVTest.MVTestName OR @MVTestName ='''')
  AND (@ConversionName IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 657, N'Conversions value', N'', N'', 800, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont>Arial;regular;8;;</xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'cdaae363-dbe5-4065-9df2-2d96a5af692c', '20120323 11:11:31', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1329, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
   AND (@MVTestName IN('''',MVTestName) OR @MVTestName IS NULL)
   AND (@ConversionName IN('''',StatisticsObjectName) OR @ConversionName IS NULL)
  ) AS x   
  ON x.HitsStartTime = Dates.Date
  GROUP BY [Date], Name
  
       
   UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT SUM (HitsCount) FROM Analytics_Statistics
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
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 658, N'Conversions rate', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatey></rotatey><xaxislabelfont></xaxislabelfont><rotatex></rotatex><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><seriesitemtooltip>#VALX{yyyy}  -  #SER: #VALY%</seriesitemtooltip><chartareabordercolor>#bbbbbb</chartareabordercolor><reverseyaxis>False</reverseyaxis><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat>{0:0\%}</yaxisformat><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '8bd9afdc-5e7e-4993-8b91-62256e45baa7', '20120323 11:11:31', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1330, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
   AND (@MVTestName IN('''',MVTestName) OR @MVTestName IS NULL)
   AND (@ConversionName IN('''',StatisticsObjectName) OR @ConversionName IS NULL)
  ) AS x   
  ON x.HitsStartTime = Dates.Date
  GROUP BY [Date], Name
  
       
   UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT SUM (HitsCount) FROM Analytics_Statistics
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
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 659, N'Conversions rate', N'', N'', 800, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0:0\%}</yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy}  -  #SER: #VALY%</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>d</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><legendtitle></legendtitle><xaxislabelfont>Arial;regular;8;;</xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'fffdeb1a-6e3f-4f1e-986c-67e86df166d6', '20120323 11:11:31', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1331, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
   AND (@MVTestName IN('''',MVTestName) OR @MVTestName IS NULL)
   AND (@ConversionName IN('''',StatisticsObjectName) OR @ConversionName IS NULL)
  ) AS x   
  ON x.HitsStartTime = Dates.Date
  GROUP BY [Date], Name
  
       
   UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT SUM (HitsCount) FROM Analytics_Statistics
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
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 660, N'Conversions rate', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><scalemin></scalemin><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><seriesitemtooltip>#VALX{dddd, MMMM d, yyyy HH:mm}  -  #SER: #VALY%</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><querynorecordtext>No data found</querynorecordtext><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>g</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><reverseyaxis>False</reverseyaxis><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><yaxisformat>{0:0\%}</yaxisformat><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaborderstyle>Solid</chartareaborderstyle><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '75841323-8cd4-4955-b1cc-750dae4ebe94', '20120323 11:11:32', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1332, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
   AND (@MVTestName IN('''',MVTestName) OR @MVTestName IS NULL)
   AND (@ConversionName IN('''',StatisticsObjectName) OR @ConversionName IS NULL)
  ) AS x   
  ON x.HitsStartTime = Dates.Date
  GROUP BY [Date], Name
  
       
   UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT SUM (HitsCount) FROM Analytics_Statistics
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
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 661, N'Conversions rate', N'', N'', 600, 400, 100, N'<customdata><subscriptionenabled>True</subscriptionenabled><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisformat>{0:0\%}</yaxisformat><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><seriesbordercolor>#000000</seriesbordercolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><bardrawingstyle>Cylinder</bardrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessymbols>Circle</seriessymbols><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><borderskinstyle>None</borderskinstyle><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><xaxislabelfont></xaxislabelfont><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><displayitemvalue>False</displayitemvalue><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><piedoughnutradius>60</piedoughnutradius><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendposition>Bottom</legendposition><legendtitle></legendtitle><scalemin></scalemin><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><linedrawinstyle>Line</linedrawinstyle><xaxisformat>y</xaxisformat><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesitemtooltip>#VALX{y}  -  #SER: #VALY%</seriesitemtooltip><xaxistitleposition>Center</xaxistitleposition><xaxissort>True</xaxissort><legendbordercolor>#000000</legendbordercolor><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><piedrawingstyle>Pie</piedrawingstyle><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'f3f32c2b-2263-454f-99d5-02dd2460316d', '20120323 11:11:32', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1333, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
   AND (@MVTestName IN('''',MVTestName) OR @MVTestName IS NULL)
   AND (@ConversionName IN('''',StatisticsObjectName) OR @ConversionName IS NULL)
  ) AS x   
  ON x.HitsStartTime = Dates.Date
  GROUP BY [Date], Name
  
       
   UPDATE #AnalyticsTempTable SET Hits = Hits/
     (
   SELECT SUM (HitsCount) FROM Analytics_Statistics
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
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 662, N'Conversions rate', N'', N'', 800, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat>{0:0\%}</yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX  -  #SER: #VALY%</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat></itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont>Arial;regular;8;;</xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', 'c9843bf8-6d34-4635-bce2-14ba8e9a8a71', '20120323 11:11:32', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1334, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
  SUM(HitsCount) AS Hits ,OM_MVTest.MVTestDisplayName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_YearHits ON Analytics_Statistics.StatisticsID = Analytics_YearHits.HitsStatisticsID
  INNER JOIN OM_MVTest ON OM_MVTest.MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND MVTestSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (@MVTestName IS NULL OR @MVTestName = '''' OR @MVTestName = OM_MVTest.MVTestName)
  AND (@ConversionNAme IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 663, N'', N'', N'', 600, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX{yyyy}  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition>{%TestName%}</legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle></customdata>', 'c152f348-b171-495d-98fc-673c82c91334', '20120323 11:11:32', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1335, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
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
  SUM(HitsCount) AS Hits ,
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
  (StatisticsObjectName = @ConversionName OR @ConversionName IS NULL OR @ConversionName ='''')
  GROUP BY HitsStartTime,MVTCombinationName,MVTCombinationCustomName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''year''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'', 663, N'Conversions count', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><plotareaborderstyle>Solid</plotareaborderstyle><seriesitemnameformat>yyyy</seriesitemnameformat><yaxisformat></yaxisformat><yaxistitlecolor>#000000</yaxistitlecolor><piedoughnutradius>60</piedoughnutradius><plotareagradient>None</plotareagradient><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>True</exportenabled><xaxistitlecolor>#000000</xaxistitlecolor><xaxisangle></xaxisangle><tenpowers>False</tenpowers><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><xaxisformat>{yyyy}</xaxisformat><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><plotareabordercolor>#bbbbbb</plotareabordercolor><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><scalemin></scalemin><legendtitle>Combinations</legendtitle><seriesgradient>None</seriesgradient><rotatey></rotatey><xaxislabelfont></xaxislabelfont><rotatex></rotatex><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><yaxistitleposition>Center</yaxistitleposition><displayitemvalue>True</displayitemvalue><subscriptionenabled>True</subscriptionenabled><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}|(user)administrator|(hash)385dc24ce3ba1884e91a4017ed2120cdd36a97b216f3a7234ceec7ad53fb6dba%}% ({%yval%})</itemvalueformat><seriesbordercolor>#000000</seriesbordercolor><legendfixedposition></legendfixedposition><valuesaspercent>False</valuesaspercent><xaxisinterval></xaxisinterval><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><yaxisusexaxissettings>True</yaxisusexaxissettings><querynorecordtext>No data found</querynorecordtext><plotareaprbgcolor></plotareaprbgcolor><plotareabordersize>1</plotareabordersize><showas3d>False</showas3d><xaxisfont></xaxisfont><linedrawinstyle>Line</linedrawinstyle><seriesitemtooltip>{%ser%}</seriesitemtooltip><chartareabordercolor>#bbbbbb</chartareabordercolor><reverseyaxis>False</reverseyaxis><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><bardrawingstyle>Cylinder</bardrawingstyle><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><chartareagradient>BottomTop</chartareagradient><stackedbarmaxstacked>False</stackedbarmaxstacked><seriesprbgcolor></seriesprbgcolor><yaxisangle></yaxisangle><displaylegend>True</displaylegend><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '72b983ee-74bd-4ec0-96d5-b16b3c10cd31', '20120330 13:51:50', 1, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1336, N'graph', N'graph', N'EXEC Proc_Analytics_RemoveTempTable
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
  SUM(HitsCount) AS Hits ,OM_MVTest.MVTestDisplayName AS Name
  FROM Analytics_Statistics
  INNER JOIN Analytics_WeekHits ON Analytics_Statistics.StatisticsID = Analytics_WeekHits.HitsStatisticsID
  INNER JOIN OM_MVTest ON OM_MVTest.MVTestName = SUBSTRING(StatisticsCode, 15, CHARINDEX('';'',StatisticsCode,15)-15) AND MVTestSiteID = StatisticsSiteID
  WHERE (StatisticsSiteID = @CMSContextCurrentSiteID ) AND StatisticsCode LIKE ''mvtconversion;%''
  AND (@MVTestName IS NULL OR @MVTestName = '''' OR @MVTestName = OM_MVTest.MVTestName)
  AND (@ConversionNAme IS NULL OR @ConversionName = '''' OR @ConversionName = StatisticsObjectName)
  GROUP BY HitsStartTime,OM_MVTest.MVTestDisplayName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'line', 664, N'', N'', N'', 600, 500, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle>0</xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><seriesitemtooltip>#VALX  -  #SER: #VALY</seriesitemtooltip><displayitemvalue>False</displayitemvalue><subscriptionenabled>True</subscriptionenabled><xaxisfont></xaxisfont><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><legendfixedposition>{%TestName%}</legendfixedposition><barorientation>Vertical</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>2</seriesbordersize><legendinside>False</legendinside><legendtitle></legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat></xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><reverseyaxis>False</reverseyaxis><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Bottom</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><querynorecordtext>No data found</querynorecordtext><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><yaxistitleposition>Center</yaxistitleposition><yaxisangle></yaxisangle><yaxisusexaxissettings>True</yaxisusexaxissettings><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle></customdata>', '8b48b96b-c6ea-4dfd-9cc8-cb0be9d1e855', '20120323 11:11:32', NULL, NULL)
INSERT INTO [Reporting_ReportGraph] ([GraphID], [GraphName], [GraphDisplayName], [GraphQuery], [GraphQueryIsStoredProcedure], [GraphType], [GraphReportID], [GraphTitle], [GraphXAxisTitle], [GraphYAxisTitle], [GraphWidth], [GraphHeight], [GraphLegendPosition], [GraphSettings], [GraphGUID], [GraphLastModified], [GraphIsHtml], [GraphConnectionString]) VALUES (1337, N'graph_detail', N'graph_detail', N'EXEC Proc_Analytics_RemoveTempTable
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
  SUM(HitsCount) AS Hits ,
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
  (StatisticsObjectName = @ConversionName OR @ConversionName IS NULL OR @ConversionName ='''')
  GROUP BY HitsStartTime,MVTCombinationName,MVTCombinationCustomName
  ) AS T1
 ON Dates.Date=T1.Interval;
 EXEC Proc_Analytics_Pivot ''week''
 EXEC Proc_Analytics_RemoveTempTable', 0, N'bar', 664, N'Conversions count', N'', N'', 600, 400, 100, N'<customdata><legendbordercolor>#000000</legendbordercolor><pieshowpercentage>False</pieshowpercentage><yaxisfont></yaxisfont><chartareasecbgcolor>#d3dde7</chartareasecbgcolor><piedoughnutradius>60</piedoughnutradius><bardrawingstyle>Cylinder</bardrawingstyle><linedrawinstyle>Line</linedrawinstyle><yaxistitlecolor>#000000</yaxistitlecolor><xaxisinterval></xaxisinterval><plotareagradient>None</plotareagradient><plotareaborderstyle>Solid</plotareaborderstyle><pielabelstyle>Outside</pielabelstyle><seriesitemlink></seriesitemlink><exportenabled>true</exportenabled><seriesprbgcolor></seriesprbgcolor><xaxisangle></xaxisangle><titleposition>Center</titleposition><legendbgcolor></legendbgcolor><reverseyaxis>False</reverseyaxis><piedrawingdesign>SoftEdge</piedrawingdesign><seriessymbols>Circle</seriessymbols><piedrawingstyle>Pie</piedrawingstyle><showmajorgrid>True</showmajorgrid><legendbordersize>1</legendbordersize><columnwidth>20</columnwidth><seriessecbgcolor></seriessecbgcolor><titlefontnew></titlefontnew><yaxislabelfont></yaxislabelfont><plotareabordercolor>#bbbbbb</plotareabordercolor><seriesgradient>None</seriesgradient><rotatex></rotatex><yaxisformat></yaxisformat><rotatey></rotatey><stackedbardrawingstyle>Cylinder</stackedbardrawingstyle><yaxistitleposition>Center</yaxistitleposition><displayitemvalue>True</displayitemvalue><itemvalueformat>{%pval|(todouble)0.0|(format){0:0.0}%}% ({%yval%})</itemvalueformat><plotareaprbgcolor></plotareaprbgcolor><tenpowers>False</tenpowers><valuesaspercent>False</valuesaspercent><legendfixedposition></legendfixedposition><barorientation>Horizontal</barorientation><borderskinstyle>None</borderskinstyle><scalemax></scalemax><seriesbordersize>1</seriesbordersize><legendinside>False</legendinside><yaxisusexaxissettings>True</yaxisusexaxissettings><legendtitle>Combinations</legendtitle><scalemin></scalemin><chartareagradient>BottomTop</chartareagradient><showas3d>False</showas3d><xaxistitlecolor>#000000</xaxistitlecolor><seriesbordercolor>#000000</seriesbordercolor><xaxisformat>{yyyy}</xaxisformat><chartareaprbgcolor>#FFFFFF</chartareaprbgcolor><seriesitemtooltip>{%ser%}</seriesitemtooltip><xaxislabelfont></xaxislabelfont><xaxissort>True</xaxissort><legendposition>Right</legendposition><legendborderstyle>Solid</legendborderstyle><baroverlay>False</baroverlay><titlecolor>#000000</titlecolor><xaxisfont></xaxisfont><subscriptionenabled>True</subscriptionenabled><plotareasecbgcolor></plotareasecbgcolor><chartareabordersize>1</chartareabordersize><chartareaborderstyle>Solid</chartareaborderstyle><xaxistitleposition>Center</xaxistitleposition><plotareabordersize>1</plotareabordersize><stackedbarmaxstacked>False</stackedbarmaxstacked><querynorecordtext>No data found</querynorecordtext><yaxisangle></yaxisangle><displaylegend>True</displaylegend><chartareabordercolor>#bbbbbb</chartareabordercolor><seriesborderstyle>Solid</seriesborderstyle><pieothervalue></pieothervalue></customdata>', '76810b53-7b78-4852-ae6d-c24f08f2a5b9', '20120330 13:51:50', 1, NULL)
SET IDENTITY_INSERT [Reporting_ReportGraph] OFF
