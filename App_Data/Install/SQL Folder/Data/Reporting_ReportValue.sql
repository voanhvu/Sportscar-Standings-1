SET IDENTITY_INSERT [Reporting_ReportValue] ON
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (3, N'UserCount', N'UserCount', N'select count(userid) from CMS_User', 0, N'', 142, '748d38d8-9f62-41df-b229-80280f94072b', '20120323 11:16:04', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (28, N'DocumentCount', N'DocumentCount', N'SELECT Count(NodeId)
FROM View_CMS_Tree_Joined
WHERE (@OnlyPublished = 0 OR Published = @OnlyPublished)  
AND (NodeSiteID = @CMSContextCurrentSiteID)
AND (@ModifiedFrom IS NULL OR DocumentModifiedWhen >= @ModifiedFrom)
AND (@ModifiedTo IS NULL OR DocumentModifiedWhen < @ModifiedTo) 
AND (NodeAliasPath LIKE @path)
AND (@Language IS NULL OR @Language = ''-1'' OR DocumentCulture = @Language)
AND (@name IS NULL OR DocumentName LIKE ''%''+@name+''%'')', 0, N'', 186, '526030e0-b87b-4f0c-bc2a-54d12e485a38', '20120323 11:16:04', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (88, N'SampleValue', N'Sample value', N'Select 20', 0, N'Report value: {0}', 361, '01ccf6f3-e3e9-4fc2-912b-8f0ae4cb19b7', '20120504 15:51:15', N'<customdata><subscriptionenabled>True</subscriptionenabled></customdata>', NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (142, N'BannerHitsValue', N'Banner Hits', N'SELECT sum(t2.HitsCount)
FROM Analytics_Statistics as t1, Analytics_HourHits as t2
WHERE 
(t1.StatisticsCode = ''bannerhit'') 
AND (t1.StatisticsObjectID = @BannerId) 
AND (t1.StatisticsID = t2.HitsStatisticsID) 
AND (@FromDate IS NULL OR t2.HitsStartTime >= @FromDate) 
AND (@ToDate IS NULL OR t2.HitsEndTime <= @ToDate)', 0, N'', 801, '47f3a145-52cd-4025-8a9d-baff3201494f', '20120323 11:16:06', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (143, N'BannerClicksValue', N'Banner Clicks', N'SELECT sum(t2.HitsCount)
FROM Analytics_Statistics as t1, Analytics_HourHits as t2
WHERE (t1.StatisticsCode = ''bannerclick'') 
AND (t1.StatisticsObjectID = @BannerId) 
AND (t1.StatisticsID = t2.HitsStatisticsID) 
AND (@FromDate IS NULL OR t2.HitsStartTime >= @FromDate) 
AND (@ToDate IS NULL OR t2.HitsEndTime <= @ToDate)', 0, N'', 801, 'd9643eb1-220e-4ab0-85e9-f9827dfc156c', '20120323 11:16:06', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (144, N'NotAvailableCaption', N'Report not available caption', N'IF (@BannerId IS NULL)
BEGIN
  SELECT ''{$bannermanagement.reportnotavailable.caption$}: {$bannermanagement.reportnotavailable.description$}''
END', 0, N'', 801, '6f323505-5077-4ab3-a03e-99f0e4a2cf07', '20120517 18:26:49', N'<customdata><subscriptionenabled>True</subscriptionenabled></customdata>', NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (145, N'BannerClicksValue_1', N'Banner Clicks', N'SELECT sum(t2.HitsCount)
FROM Analytics_Statistics as t1, Analytics_HourHits as t2
WHERE (t1.StatisticsCode = ''bannerclick'') 
AND (t1.StatisticsObjectID = @BannerId) 
AND (t1.StatisticsID = t2.HitsStatisticsID) 
AND (@FromDate IS NULL OR t2.HitsStartTime >= @FromDate) 
AND (@ToDate IS NULL OR t2.HitsEndTime <= @ToDate)', 0, N'', 802, '580fa3e9-aeef-4c9a-b1fd-f710b760b0a5', '20120323 11:16:06', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (146, N'BannerHitsValue_1', N'Banner Hits', N'SELECT sum(t2.HitsCount)
FROM Analytics_Statistics as t1, Analytics_HourHits as t2
WHERE 
(t1.StatisticsCode = ''bannerhit'') 
AND (t1.StatisticsObjectID = @BannerId) 
AND (t1.StatisticsID = t2.HitsStatisticsID) 
AND (@FromDate IS NULL OR t2.HitsStartTime >= @FromDate) 
AND (@ToDate IS NULL OR t2.HitsEndTime <= @ToDate)', 0, N'', 802, 'f4a69c2e-c0fd-41c9-b706-9f619f71489e', '20120323 11:16:06', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (147, N'NotAvailableCaption', N'Report not available caption', N'IF (@BannerId IS NULL)
BEGIN
  SELECT ''{$bannermanagement.reportnotavailable.caption$}: {$bannermanagement.reportnotavailable.description$}''
END', 0, N'', 802, 'ee7cbc73-3e73-41d1-9c20-62c305149c02', '20120323 11:16:06', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (153, N'value', N'value', N'SELECT ISNULL(ROUND(AVG(OrderItems.OrderItemTotalPriceInMainCurrency),2),0)  
FROM 
COM_OrderItem AS OrderItems
LEFT JOIN COM_Order AS Orders
ON (Orders.OrderID = OrderItems.OrderItemOrderID)
	LEFT JOIN COM_SKU AS SKUs
        ON (SKUs.SKUID = OrderItems.OrderItemSKUID)
WHERE Orders.OrderSiteID = @CMSContextCurrentSiteID 
	AND (@OnlyPaid = 0 OR ISNULL(Orders.OrderIsPaid, 0) = 1)
        AND SKUs.SKUProductType = ''DONATION''
        AND (Orders.Orderdate > @FromDate OR @FromDate IS NULL)
        AND (Orders.OrderDate < @ToDate  OR @ToDate IS NULL)', 0, N'', 820, 'd9fffebf-48be-4595-a1e8-a856a05b37eb', '20120109 13:24:40', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (154, N'value', N'value', N'/* Selects the total amount of donations */
SELECT 
   CAST(ISNULL(SUM(OrderItemTotalPriceInMainCurrency),0) AS DECIMAL(38,1))
FROM 
   COM_OrderItem
   LEFT JOIN COM_Order
      ON OrderItemOrderID = OrderID
   LEFT JOIN COM_SKU
      ON OrderItemSKUID = SKUID
WHERE 
   (SKUProductType = ''DONATION'') 
   AND (OrderSiteID = @CMSContextCurrentSiteID)
   AND (@FromDate <= OrderDate OR @FromDate IS NULL)
   AND (@ToDate >= OrderDate OR @ToDate IS NULL)', 0, N'', 825, '44711aea-608d-47f2-ab2d-6ed334bd88aa', '20120405 16:08:54', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (155, N'value', N'value', N'/* Selects the total amount of donations */
SELECT 
   CAST(ISNULL(SUM(OrderItemTotalPriceInMainCurrency),0) AS DECIMAL(38,1))
FROM 
   COM_OrderItem
   LEFT JOIN COM_Order
      ON OrderItemOrderID = OrderID
   LEFT JOIN COM_SKU
      ON OrderItemSKUID = SKUID
WHERE 
   (SKUProductType = ''DONATION'') 
   AND (OrderSiteID = @CMSContextCurrentSiteID)
   AND (@FromDate <= OrderDate OR @FromDate IS NULL)
   AND (@ToDate >= OrderDate OR @ToDate IS NULL)', 0, N'', 826, 'a7821442-4c20-4932-abc2-cf4e3d878eff', '20120405 15:52:27', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (156, N'value', N'value', N'/* Selects the total amount of donations */
SELECT 
   CAST(ISNULL(SUM(OrderItemTotalPriceInMainCurrency),0) AS DECIMAL(38,1))
FROM 
   COM_OrderItem
   LEFT JOIN COM_Order
      ON OrderItemOrderID = OrderID
   LEFT JOIN COM_SKU
      ON OrderItemSKUID = SKUID
WHERE 
   (SKUProductType = ''DONATION'') 
   AND (OrderSiteID = @CMSContextCurrentSiteID)
   AND (@FromDate <= OrderDate OR @FromDate IS NULL)
   AND (@ToDate >= OrderDate OR @ToDate IS NULL)', 0, N'', 827, '0774b8df-766f-45d4-92ce-4157a5c943e5', '20120405 16:14:40', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (157, N'value', N'value', N'/* Selects the total amount of donations */
SELECT 
   CAST(ISNULL(SUM(OrderItemTotalPriceInMainCurrency),0) AS DECIMAL(38,1))
FROM 
   COM_OrderItem
   LEFT JOIN COM_Order
      ON OrderItemOrderID = OrderID
   LEFT JOIN COM_SKU
      ON OrderItemSKUID = SKUID
WHERE 
   (SKUProductType = ''DONATION'') 
   AND (OrderSiteID = @CMSContextCurrentSiteID)
   AND (dateadd(hour,datediff(hour,0,@FromDate),0) <= OrderDate OR @FromDate IS NULL)
   AND (dateadd(hour,datediff(hour,0,dateadd(hour,1,@ToDate)),0) > OrderDate OR @ToDate IS NULL)', 0, N'', 828, '65ae8918-6f40-47f1-a784-34540ee4b9ab', '20120410 14:49:02', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (158, N'value', N'value', N'/* Selects the total amount of donations */
SELECT 
   CAST(ISNULL(SUM(OrderItemTotalPriceInMainCurrency),0) AS DECIMAL(38,1))
FROM 
   COM_OrderItem
   LEFT JOIN COM_Order
      ON OrderItemOrderID = OrderID
   LEFT JOIN COM_SKU
      ON OrderItemSKUID = SKUID
WHERE 
   (SKUProductType = ''DONATION'') 
   AND (OrderSiteID = @CMSContextCurrentSiteID)
   AND (@FromDate <= OrderDate OR @FromDate IS NULL)
   AND (@ToDate >= OrderDate OR @ToDate IS NULL)', 0, N'', 829, '8e86a453-2880-42bd-9dad-7b9bffb2d33c', '20120405 15:49:55', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (159, N'value', N'value', N'/* Returns the number of products meeting the conditions from the filter */
DECLARE @GlobalProducts bit;
SET @GlobalProducts = {%Settings.CMSStoreAllowGlobalProducts?1:0|(user)administrator|(hash)794a0933e0a07b0b019dd8342fa313e52c639613b4ff99b5963ecc5f73a4a1ed%};
DECLARE @GlobalOptions bit;
SET @GlobalOptions = {%Settings.CMSStoreAllowGlobalProductOptions?1:0|(user)administrator|(hash)1a4c3084069a433e042cca3c018f864b892cbb6d6f8cb6d6e9297ded5016eec3%};
SELECT
   CAST(COUNT(SKUID) AS DECIMAL(38,0)) 
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
   AND SKUEnabled = 1', 0, N'', 105, 'c728b8a1-c8c6-448c-9171-00d73d8556e6', '20120718 10:18:08', N'<customdata><subscriptionenabled>True</subscriptionenabled></customdata>', N'')
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (160, N'value', N'value', N'/* Selects the number of donations which meet the filter conditions */
SELECT
   COUNT( DISTINCT OrderItemID)
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
   AND (@Email IS NULL OR @Email = '''' OR COM_Customer.CustomerEmail LIKE (''%'' + @Email + ''%''))', 0, N'', 741, '08d7382b-fc93-41a2-860e-e67709297a9e', '20120730 08:13:21', N'<customdata><subscriptionenabled>True</subscriptionenabled></customdata>', N'')
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (161, N'value', N'value', N'/* Returns the number of orders from @FromDate to @ToDate */ 
SELECT
   CAST(ISNULL(COUNT(OrderTotalPriceInMainCurrency),0) AS DECIMAL(38,0)) 
FROM 
   COM_Order  
WHERE
   OrderSiteID = @CMSContextCurrentSiteID
   AND (@FromDate <= OrderDate OR @FromDate IS NULL)
   AND (@ToDate >= OrderDate OR @ToDate IS NULL)', 0, N'', 754, 'b56beb49-228b-41d4-bded-aaec2a950140', '20120123 10:03:06', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (162, N'value', N'value', N'/* Returns the number of orders from @FromDate to @ToDate */ 
SELECT
   CAST(ISNULL(COUNT(OrderTotalPriceInMainCurrency),0) AS DECIMAL(38,0)) 
FROM 
   COM_Order  
WHERE
   OrderSiteID = @CMSContextCurrentSiteID
   AND (dateadd(hour,datediff(hour,0,@FromDate),0) <= OrderDate OR @FromDate IS NULL)
   AND (dateadd(hour,datediff(hour,0,dateadd(hour,1,@ToDate)),0) > OrderDate OR @ToDate IS NULL)', 0, N'', 490, 'b8f9923d-a570-4b8f-bc70-9db9c29d4787', '20120410 14:51:44', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (163, N'value', N'value', N'/* Returns the number of orders from @FromDate to @ToDate */ 
SELECT
   CAST(ISNULL(COUNT(OrderTotalPriceInMainCurrency),0) AS DECIMAL(38,0)) 
FROM 
   COM_Order  
WHERE
   OrderSiteID = @CMSContextCurrentSiteID
   AND (@FromDate <= OrderDate OR @FromDate IS NULL)
   AND (@ToDate >= OrderDate OR @ToDate IS NULL)', 0, N'', 753, 'b67a581b-8e55-493c-b662-3b15c3c9925f', '20120123 10:04:31', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (164, N'value', N'value', N'/* Returns the number of orders from @FromDate to @ToDate */ 
SELECT
   CAST(ISNULL(COUNT(OrderTotalPriceInMainCurrency),0) AS DECIMAL(38,0)) 
FROM 
   COM_Order  
WHERE
   OrderSiteID = @CMSContextCurrentSiteID
   AND (@FromDate <= OrderDate OR @FromDate IS NULL)
   AND (@ToDate >= OrderDate OR @ToDate IS NULL)', 0, N'', 489, '32bdbc12-24d6-4965-9ba7-14ff9c6abcf6', '20120123 10:05:16', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (165, N'value', N'value', N'/* Returns the number of orders from @FromDate to @ToDate */ 
SELECT
   CAST(ISNULL(COUNT(OrderTotalPriceInMainCurrency),0) AS DECIMAL(38,0)) 
FROM 
   COM_Order  
WHERE
   OrderSiteID = @CMSContextCurrentSiteID
   AND (@FromDate <= OrderDate OR @FromDate IS NULL)
   AND (@ToDate >= OrderDate OR @ToDate IS NULL)', 0, N'', 752, 'bee30906-a786-46b4-82eb-9f8324c8b4a1', '20120123 10:05:43', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (166, N'value', N'value', N'/* Returns the volume of sales from @FromDate to @ToDate */ 
SELECT
   CAST(ISNULL(SUM(OrderTotalPriceInMainCurrency),0) AS DECIMAL(38,1)) 
FROM 
   COM_Order  
WHERE
   OrderSiteID = @CMSContextCurrentSiteID
   AND (@FromDate <= OrderDate OR @FromDate IS NULL)
   AND (@ToDate >= OrderDate OR @ToDate IS NULL)', 0, N'', 500, '7d7cf742-47f9-45cc-a06d-be115374c538', '20120123 14:10:09', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (167, N'value', N'value', N'/* Returns the volume of sales from @FromDate to @ToDate */ 
SELECT
   CAST(ISNULL(SUM(OrderTotalPriceInMainCurrency),0) AS DECIMAL(38,1)) 
FROM 
   COM_Order
WHERE
   OrderSiteID = @CMSContextCurrentSiteID
   AND (dateadd(hour,datediff(hour,0,@FromDate),0) <= OrderDate)
   AND (dateadd(hour,datediff(hour,0,dateadd(hour,1,@ToDate)),0) > OrderDate)', 0, N'', 499, '9ebc9f68-464a-4ec6-addc-5a140b45c997', '20120412 11:53:12', N'<customdata><subscriptionenabled>True</subscriptionenabled></customdata>', NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (168, N'value', N'value', N'/* Returns the volume of sales from @FromDate to @ToDate */ 
SELECT
   CAST(ISNULL(SUM(OrderTotalPriceInMainCurrency),0) AS DECIMAL(38,1)) 
FROM 
   COM_Order  
WHERE
   OrderSiteID = @CMSContextCurrentSiteID
   AND (@FromDate <= OrderDate OR @FromDate IS NULL)
   AND (@ToDate >= OrderDate OR @ToDate IS NULL)', 0, N'', 498, '79b50223-e3bd-4762-9cd5-0181fef9789d', '20120123 14:10:28', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (169, N'value', N'value', N'/* Returns the volume of sales from @FromDate to @ToDate */ 
SELECT
   CAST(ISNULL(SUM(OrderTotalPriceInMainCurrency),0) AS DECIMAL(38,1)) 
FROM 
   COM_Order  
WHERE
   OrderSiteID = @CMSContextCurrentSiteID
   AND (@FromDate <= OrderDate OR @FromDate IS NULL)
   AND (@ToDate >= OrderDate OR @ToDate IS NULL)', 0, N'', 497, '49302fdb-d747-4715-ac97-ca83ad9e95fa', '20120123 14:10:36', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (170, N'value', N'value', N'/* Returns the volume of sales from @FromDate to @ToDate */ 
SELECT
   CAST(ISNULL(SUM(OrderTotalPriceInMainCurrency),0) AS DECIMAL(38,1)) 
FROM 
   COM_Order  
WHERE
   OrderSiteID = @CMSContextCurrentSiteID
   AND (@FromDate <= OrderDate OR @FromDate IS NULL)
   AND (@ToDate >= OrderDate OR @ToDate IS NULL)', 0, N'', 496, '14415140-ba67-4372-9459-5efd5da93e39', '20120123 14:10:49', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (171, N'from1', N'from1', N'DECLARE @from1 datetime;
DECLARE @from2 datetime;
DECLARE @to1 datetime;
DECLARE @to2 datetime;
IF (@Period1 = ''custom'')
	BEGIN
		SET @from1 = @Period1From;
		SET @to1 = @Period1To;
        END
ELSE
	BEGIN
		SET @from1 ={%DatabaseSchema%}.Func_Analytics_StartingDate(@Period1);
		SET @to1 ={%DatabaseSchema%}.Func_Analytics_EndingDate(@Period1);
        END
IF (@Period2 = ''custom'')
	BEGIN
		SET @from2 = @Period2From;
		SET @to2 = @Period2To;
        END
ELSE
	BEGIN
		SET @from2 ={%DatabaseSchema%}.Func_Analytics_StartingDate(@Period2);
		SET @to2 ={%DatabaseSchema%}.Func_Analytics_EndingDate(@Period2);
        END
        
SELECT @from1', 0, N'', 849, '8a71be04-0a79-4898-8da4-37d7ea61a823', '20120130 08:12:51', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (172, N'from2', N'from2', N'DECLARE @from1 datetime;
DECLARE @from2 datetime;
DECLARE @to1 datetime;
DECLARE @to2 datetime;
IF (@Period1 = ''custom'')
	BEGIN
		SET @from1 = @Period1From;
		SET @to1 = @Period1To;
        END
ELSE
	BEGIN
		SET @from1 ={%DatabaseSchema%}.Func_Analytics_StartingDate(@Period1);
		SET @to1 ={%DatabaseSchema%}.Func_Analytics_EndingDate(@Period1);
        END
IF (@Period2 = ''custom'')
	BEGIN
		SET @from2 = @Period2From;
		SET @to2 = @Period2To;
        END
ELSE
	BEGIN
		SET @from2 ={%DatabaseSchema%}.Func_Analytics_StartingDate(@Period2);
		SET @to2 ={%DatabaseSchema%}.Func_Analytics_EndingDate(@Period2);
        END
SELECT @from2', 0, N'', 849, '797bbb62-2752-4094-acb5-0d393ffab8fb', '20120130 08:12:51', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (173, N'to1', N'to1', N'DECLARE @from1 datetime;
DECLARE @from2 datetime;
DECLARE @to1 datetime;
DECLARE @to2 datetime;
IF (@Period1 = ''custom'')
	BEGIN
		SET @from1 = @Period1From;
		SET @to1 = @Period1To;
        END
ELSE
	BEGIN
		SET @from1 ={%DatabaseSchema%}.Func_Analytics_StartingDate(@Period1);
		SET @to1 ={%DatabaseSchema%}.Func_Analytics_EndingDate(@Period1);
        END
IF (@Period2 = ''custom'')
	BEGIN
		SET @from2 = @Period2From;
		SET @to2 = @Period2To;
        END
ELSE
	BEGIN
		SET @from2 ={%DatabaseSchema%}.Func_Analytics_StartingDate(@Period2);
		SET @to2 ={%DatabaseSchema%}.Func_Analytics_EndingDate(@Period2);
        END
SELECT @to1', 0, N'', 849, '663794ce-4a5f-4cbf-94b0-1cd08c595fab', '20120130 08:12:51', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (174, N'to2', N'to2', N'DECLARE @from1 datetime;
DECLARE @from2 datetime;
DECLARE @to1 datetime;
DECLARE @to2 datetime;
IF (@Period1 = ''custom'')
	BEGIN
		SET @from1 = @Period1From;
		SET @to1 = @Period1To;
        END
ELSE
	BEGIN
		SET @from1 ={%DatabaseSchema%}.Func_Analytics_StartingDate(@Period1);
		SET @to1 ={%DatabaseSchema%}.Func_Analytics_EndingDate(@Period1);
        END
IF (@Period2 = ''custom'')
	BEGIN
		SET @from2 = @Period2From;
		SET @to2 = @Period2To;
        END
ELSE
	BEGIN
		SET @from2 ={%DatabaseSchema%}.Func_Analytics_StartingDate(@Period2);
		SET @to2 ={%DatabaseSchema%}.Func_Analytics_EndingDate(@Period2);
        END
SELECT @to2', 0, N'', 849, 'd435adc5-3b97-4883-936f-02d32988acc7', '20120130 08:12:51', NULL, NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (193, N'BannerClicksValue', N'Banner Clicks', N'SELECT sum(t2.HitsCount)
FROM Analytics_Statistics as t1, Analytics_HourHits as t2
WHERE (t1.StatisticsCode = ''bannerclick'') 
AND (t1.StatisticsObjectID = @BannerId) 
AND (t1.StatisticsID = t2.HitsStatisticsID) 
AND (@FromDate IS NULL OR t2.HitsStartTime >= @FromDate) 
AND (@ToDate IS NULL OR t2.HitsEndTime <= @ToDate)', 0, N'', 872, 'd4ffa329-dda6-4508-8473-9adfb9d9ab34', '20120528 13:47:13', N'', NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (194, N'BannerHitsValue', N'Banner Hits', N'SELECT sum(t2.HitsCount)
FROM Analytics_Statistics as t1, Analytics_HourHits as t2
WHERE 
(t1.StatisticsCode = ''bannerhit'') 
AND (t1.StatisticsObjectID = @BannerId) 
AND (t1.StatisticsID = t2.HitsStatisticsID) 
AND (@FromDate IS NULL OR t2.HitsStartTime >= @FromDate) 
AND (@ToDate IS NULL OR t2.HitsEndTime <= @ToDate)', 0, N'', 872, '4c300077-308d-4da6-adad-0784d1ed96bc', '20120528 13:47:13', N'', NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (195, N'NotAvailableCaption', N'Report not available caption', N'IF (@BannerId IS NULL)
BEGIN
  SELECT ''{$bannermanagement.reportnotavailable.caption$}: {$bannermanagement.reportnotavailable.description$}''
END', 0, N'', 872, 'db7d8f28-cb84-4515-9946-b538cd342132', '20120528 13:47:13', N'<customdata><subscriptionenabled>True</subscriptionenabled></customdata>', NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (196, N'BannerClicksValue', N'Banner Clicks', N'SELECT sum(t2.HitsCount)
FROM Analytics_Statistics as t1, Analytics_HourHits as t2
WHERE (t1.StatisticsCode = ''bannerclick'') 
AND (t1.StatisticsObjectID = @BannerId) 
AND (t1.StatisticsID = t2.HitsStatisticsID) 
AND (@FromDate IS NULL OR t2.HitsStartTime >= @FromDate) 
AND (@ToDate IS NULL OR t2.HitsEndTime <= @ToDate)', 0, N'', 873, 'f5c32b64-e11c-47f8-bfb7-b22e4e389d39', '20120528 15:50:23', N'', NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (197, N'BannerHitsValue', N'Banner Hits', N'SELECT sum(t2.HitsCount)
FROM Analytics_Statistics as t1, Analytics_HourHits as t2
WHERE 
(t1.StatisticsCode = ''bannerhit'') 
AND (t1.StatisticsObjectID = @BannerId) 
AND (t1.StatisticsID = t2.HitsStatisticsID) 
AND (@FromDate IS NULL OR t2.HitsStartTime >= @FromDate) 
AND (@ToDate IS NULL OR t2.HitsEndTime <= @ToDate)', 0, N'', 873, '54f4ec3b-77fd-40c6-afa8-07dda76b4a38', '20120528 15:50:23', N'', NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (198, N'NotAvailableCaption', N'Report not available caption', N'IF (@BannerId IS NULL)
BEGIN
  SELECT ''{$bannermanagement.reportnotavailable.caption$}: {$bannermanagement.reportnotavailable.description$}''
END', 0, N'', 873, 'd7e539e1-ad6c-4615-a7d5-ed2e4066ad7a', '20120528 15:50:23', N'<customdata><subscriptionenabled>True</subscriptionenabled></customdata>', NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (199, N'BannerClicksValue_1', N'Banner Clicks', N'SELECT sum(t2.HitsCount)
FROM Analytics_Statistics as t1, Analytics_HourHits as t2
WHERE (t1.StatisticsCode = ''bannerclick'') 
AND (t1.StatisticsObjectID = @BannerId) 
AND (t1.StatisticsID = t2.HitsStatisticsID) 
AND (@FromDate IS NULL OR t2.HitsStartTime >= @FromDate) 
AND (@ToDate IS NULL OR t2.HitsEndTime <= @ToDate)', 0, N'', 874, 'bb89c181-0757-4374-a9ec-298be56e9ca8', '20120528 15:51:09', N'', NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (200, N'BannerHitsValue_1', N'Banner Hits', N'SELECT sum(t2.HitsCount)
FROM Analytics_Statistics as t1, Analytics_HourHits as t2
WHERE 
(t1.StatisticsCode = ''bannerhit'') 
AND (t1.StatisticsObjectID = @BannerId) 
AND (t1.StatisticsID = t2.HitsStatisticsID) 
AND (@FromDate IS NULL OR t2.HitsStartTime >= @FromDate) 
AND (@ToDate IS NULL OR t2.HitsEndTime <= @ToDate)', 0, N'', 874, '059a2f14-fead-41dd-aae3-c675f7da1f14', '20120528 15:51:09', N'', NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (201, N'NotAvailableCaption', N'Report not available caption', N'IF (@BannerId IS NULL)
BEGIN
  SELECT ''{$bannermanagement.reportnotavailable.caption$}: {$bannermanagement.reportnotavailable.description$}''
END', 0, N'', 874, '2df1e481-72c2-4956-b2e1-c1adf76c7737', '20120528 15:51:09', N'', NULL)
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (211, N'NumberOfDocumentsInWorkflow', N'NumberOfDocumentsInWorkflow', N'SELECT COUNT(DocumentID)
FROM View_CMS_Tree_Joined
WHERE DocumentWorkflowStepID IN (
    SELECT StepID FROM CMS_WorkflowStep WHERE StepWorkflowID = @WorkflowID
) AND NodeSiteID = @CMSContextCurrentSiteID', 0, N'', 882, '93812c92-3be3-48f8-87db-84847fb50746', '20120822 16:31:43', N'<customdata><subscriptionenabled>True</subscriptionenabled></customdata>', N'')
INSERT INTO [Reporting_ReportValue] ([ValueID], [ValueName], [ValueDisplayName], [ValueQuery], [ValueQueryIsStoredProcedure], [ValueFormatString], [ValueReportID], [ValueGUID], [ValueLastModified], [ValueSettings], [ValueConnectionString]) VALUES (212, N'NumberOfContactsInProcess', N'NumberOfContactsInProcess', N'SELECT COUNT(StateObjectID)
FROM CMS_AutomationState
WHERE StateObjectType = ''om.contact'' AND StateStepID IN (
  SELECT StepID FROM CMS_WorkflowStep WHERE StepWorkflowID = @AutomationProcessID
) AND ((@SiteID = -1) OR ((@SiteID = -4) AND (StateSiteID IS NULL)) OR (StateSiteID = @SiteID) OR ((@SiteID = -5) AND ((StateSiteID IS NULL) OR (StateSiteID = @CMSContextCurrentSiteID))))', 0, N'', 883, '9c7aadc5-b805-4aec-ac09-d8b3f0dbb5c7', '20120829 17:22:21', N'<customdata><subscriptionenabled>True</subscriptionenabled></customdata>', N'')
SET IDENTITY_INSERT [Reporting_ReportValue] OFF
