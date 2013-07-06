CREATE PROCEDURE [Proc_COM_Reports_GenerateSampleData]
	-- Add the parameters for the stored procedure here
	@SiteID	INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @DonationSKU_SKUID    INT;
	DECLARE @DonationSKU_SKUName  NVARCHAR(450);
	DECLARE @DonationSKU_SKUPrice INT;
	SET @DonationSKU_SKUID	  = (SELECT TOP(1) SKUID    FROM COM_SKU WHERE SKUProductType = 'DONATION' AND SKUSiteID = @SiteID);
	SET @DonationSKU_SKUName  = (SELECT TOP(1) SKUName  FROM COM_SKU WHERE SKUProductType = 'DONATION' AND SKUSiteID = @SiteID);
	SET @DonationSKU_SKUPrice = (SELECT TOP(1) SKUPrice FROM COM_SKU WHERE SKUProductType = 'DONATION' AND SKUSiteID = @SiteID);
	DECLARE @ID INT;
	DECLARE @Rand VARCHAR(3);
	DECLARE @ShippingOptionID INT;
	DECLARE @CustomerID INT;
	DECLARE @UserID INT;
	DECLARE @ShippingCharge FLOAT;
	DECLARE @RandUserID INT;
	DECLARE @UserName VARCHAR(15);
	------------------
	-- Global options
	------------------
	DECLARE @GlobalOptionsShipping bit;
	SET @GlobalOptionsShipping = (SELECT ISNULL(KeyValue, (SELECT KeyValue FROM CMS_SettingsKey WHERE (SiteID IS NULL) AND (KeyName = N'CMSStoreAllowGlobalShippingOptions')))
									FROM CMS_SettingsKey WHERE (SiteID = @SiteID) AND (KeyName = N'CMSStoreAllowGlobalShippingOptions'))
	DECLARE @GlobalOptionsPayment bit;
	SET @GlobalOptionsPayment = (SELECT ISNULL(KeyValue, (SELECT KeyValue FROM CMS_SettingsKey WHERE (SiteID IS NULL) AND (KeyName = N'CMSStoreAllowGlobalPaymentMethods')))
									FROM CMS_SettingsKey WHERE (SiteID = @SiteID) AND (KeyName = N'CMSStoreAllowGlobalPaymentMethods'))
	DECLARE @GlobalOptionsDiscountLevel bit;
	SET @GlobalOptionsDiscountLevel = (SELECT ISNULL(KeyValue, (SELECT KeyValue FROM CMS_SettingsKey WHERE (SiteID IS NULL) AND (KeyName = N'CMSStoreAllowGlobalDiscountLevels')))
									     FROM CMS_SettingsKey WHERE (SiteID = @SiteID) AND (KeyName = N'CMSStoreAllowGlobalDiscountLevels'))
	--------------------------------
	DECLARE @GlobalOptionsOrderStatus bit;
	SET @GlobalOptionsOrderStatus = (SELECT ISNULL(KeyValue, (SELECT KeyValue
														   FROM CMS_SettingsKey 
														   WHERE (SiteID IS NULL) AND (KeyName = N'CMSStoreUseGlobalOrderStatus')))
								  FROM CMS_SettingsKey
								  WHERE (SiteID = @SiteID) AND (KeyName = N'CMSStoreUseGlobalOrderStatus'))
	DECLARE @GlobalOptionsCurrency bit;
	SET @GlobalOptionsCurrency = (SELECT ISNULL(KeyValue, (SELECT KeyValue
														   FROM CMS_SettingsKey 
														   WHERE (SiteID IS NULL) AND (KeyName = N'CMSStoreUseGlobalCurrencies')))
								  FROM CMS_SettingsKey
								  WHERE (SiteID = @SiteID) AND (KeyName = N'CMSStoreUseGlobalCurrencies'))
	
	DECLARE @RandDiscountLevel1 INT;
	DECLARE @RandDiscountLevel2 INT;
	SET @RandDiscountLevel1 = (SELECT TOP(1) DiscountLevelID FROM COM_DiscountLevel WHERE ((DiscountLevelSiteID = @SiteID) OR ((@GlobalOptionsDiscountLevel = 1) AND (DiscountLevelSiteID IS NULL))) ORDER BY DiscountLevelName ASC);
	SET @RandDiscountLevel2 = (SELECT TOP(1) DiscountLevelID FROM COM_DiscountLevel WHERE ((DiscountLevelSiteID = @SiteID) OR ((@GlobalOptionsDiscountLevel = 1) AND (DiscountLevelSiteID IS NULL))) ORDER BY DiscountLevelName DESC);
	
	-- 4 anonymous user
	SET @Rand = Cast(Abs(Checksum(NewId())) % 1000000 As VARCHAR(6));
	INSERT INTO COM_Customer (CustomerFirstName, CustomerLastName, CustomerEnabled, CustomerLastModified, CustomerCreated, CustomerSiteID)
			VALUES ('GENERATED - James', 'Smith ' + @Rand, 1, CURRENT_TIMESTAMP, DATEADD(MINUTE, -(Cast((Abs(Checksum(NewId())) % 432000) + 43200  As INT)), CURRENT_TIMESTAMP), @SiteID);
	SET @Rand = Cast(Abs(Checksum(NewId())) % 1000000 As VARCHAR(6));
	INSERT INTO COM_Customer (CustomerFirstName, CustomerLastName, CustomerEnabled, CustomerLastModified, CustomerCreated, CustomerSiteID)
	       VALUES ('GENERATED - John', 'Johnson ' + @Rand, 1, CURRENT_TIMESTAMP, DATEADD(MINUTE, -(Cast((Abs(Checksum(NewId())) % 432000) + 43200  As INT)), CURRENT_TIMESTAMP), @SiteID);
	SET @Rand = Cast(Abs(Checksum(NewId())) % 1000000 As VARCHAR(6));
	INSERT INTO COM_Customer (CustomerFirstName, CustomerLastName, CustomerEnabled, CustomerLastModified, CustomerCreated, CustomerSiteID)
	       VALUES ('GENERATED - Robert', 'Williams ' + @Rand, 1, CURRENT_TIMESTAMP, DATEADD(MINUTE, -(Cast((Abs(Checksum(NewId())) % 432000) + 43200  As INT)), CURRENT_TIMESTAMP), @SiteID);
	SET @Rand = Cast(Abs(Checksum(NewId())) % 1000000 As VARCHAR(6));
	INSERT INTO COM_Customer (CustomerFirstName, CustomerLastName, CustomerEnabled, CustomerLastModified, CustomerCreated, CustomerSiteID)
	       VALUES ('GENERATED - Michael', 'Jones ' + @Rand, 1, CURRENT_TIMESTAMP, DATEADD(MINUTE, -(Cast((Abs(Checksum(NewId())) % 432000) + 43200  As INT)), CURRENT_TIMESTAMP), @SiteID);
    -- 6 registered users
	SET @Rand = Cast(Abs(Checksum(NewId())) % 1000000 As VARCHAR(6));
	SET @UserName = 'williamb' + @Rand;
	SET @RandUserID = (SELECT TOP 1 UserID FROM CMS_User WHERE UserName = @UserName);
	IF @RandUserID IS NULL
	BEGIN
		INSERT INTO CMS_User (UserName, UserPassword, FirstName, LastName, FullName, Email, UserEnabled, UserGUID, UserLastModified, UserCreated)
			   VALUES (@UserName, 'williambp', 'GENERATED - William', 'Brown', 'GENERATED - William Brown', 'william' + @Rand + '@brown' + @Rand + '.com', 1, NewId(), CURRENT_TIMESTAMP, DATEADD(MINUTE, -(Cast((Abs(Checksum(NewId())) % 432000) + 43200  As INT)), CURRENT_TIMESTAMP));
		SET @ID = SCOPE_IDENTITY();
		INSERT INTO CMS_UserSite (UserID, SiteID) VALUES (@ID, @SiteID);
		INSERT INTO COM_Customer (CustomerFirstName, CustomerLastName, CustomerEnabled, CustomerLastModified, CustomerCreated, CustomerSiteID, CustomerUserID)
			   VALUES ('GENERATED - William', 'Brown ' + @Rand, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, null, @ID);
	END;
	--------------------
	SET @Rand = Cast(Abs(Checksum(NewId())) % 1000000 As VARCHAR(6));
	SET @UserName = 'davidd' + @Rand;
	SET @RandUserID = (SELECT TOP 1 UserID FROM CMS_User WHERE UserName = @UserName);
	IF @RandUserID IS NULL
	BEGIN
		INSERT INTO CMS_User (UserName, UserPassword, FirstName, LastName, FullName, Email, UserEnabled, UserGUID, UserLastModified, UserCreated)
			   VALUES (@UserName, 'daviddp', 'GENERATED - David', 'Davis', 'GENERATED - David Davis', 'david' + @Rand + '@davis' + @Rand + '.com', 1, NewId(), CURRENT_TIMESTAMP, DATEADD(MINUTE, -(Cast((Abs(Checksum(NewId())) % 432000) + 43200  As INT)), CURRENT_TIMESTAMP));
		SET @ID = SCOPE_IDENTITY();
		INSERT INTO CMS_UserSite (UserID, SiteID) VALUES (@ID, @SiteID);
		INSERT INTO COM_Customer (CustomerFirstName, CustomerLastName, CustomerEnabled, CustomerLastModified, CustomerCreated, CustomerSiteID, CustomerUserID)
			   VALUES ('GENERATED - David', 'Davis ' + @Rand, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, null, @ID);
	END;
	--------------------
	-- GOLDEN PARTNER
	--------------------
	SET @Rand = Cast(Abs(Checksum(NewId())) % 1000000 As VARCHAR(6));
	SET @UserName = 'richardm' + @Rand;
	SET @RandUserID = (SELECT TOP 1 UserID FROM CMS_User WHERE UserName = @UserName);
	IF @RandUserID IS NULL
	BEGIN
		INSERT INTO CMS_User (UserName, UserPassword, FirstName, LastName, FullName, Email, UserEnabled, UserGUID, UserLastModified, UserCreated)
			   VALUES (@UserName, 'richardmp', 'GENERATED - Richard', 'Miller', 'GENERATED - Richard Miller', 'richard' + @Rand + '@miller' + @Rand + '.com', 1, NewId(), CURRENT_TIMESTAMP, DATEADD(MINUTE, -(Cast((Abs(Checksum(NewId())) % 432000) + 43200  As INT)), CURRENT_TIMESTAMP));
		SET @ID = SCOPE_IDENTITY();
		INSERT INTO CMS_UserSite (UserID, SiteID) VALUES (@ID, @SiteID);
		INSERT INTO COM_Customer (CustomerFirstName, CustomerLastName, CustomerEnabled, CustomerLastModified, CustomerCreated, CustomerSiteID, CustomerUserID, CustomerDiscountLevelID)
			   VALUES ('GENERATED - Richard', 'Miller ' + @Rand, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, null, @ID, @RandDiscountLevel1);
	END;
	--------------------
	-- SILVER PARTNER
	--------------------
	SET @Rand = Cast(Abs(Checksum(NewId())) % 1000000 As VARCHAR(6));
	SET @UserName = 'charlesw' + @Rand;
	SET @RandUserID = (SELECT TOP 1 UserID FROM CMS_User WHERE UserName = @UserName);
	IF @RandUserID IS NULL
	BEGIN
		INSERT INTO CMS_User (UserName, UserPassword, FirstName, LastName, FullName, Email, UserEnabled, UserGUID, UserLastModified, UserCreated)
			   VALUES (@UserName, 'charleswp', 'GENERATED - Charles', 'Wilson', 'GENERATED - Charles Wilson', 'charles' + @Rand + '@wilson' + @Rand + '.com', 1, NewId(), CURRENT_TIMESTAMP, DATEADD(MINUTE, -(Cast((Abs(Checksum(NewId())) % 432000) + 43200  As INT)), CURRENT_TIMESTAMP));
		SET @ID = SCOPE_IDENTITY();
		INSERT INTO CMS_UserSite (UserID, SiteID) VALUES (@ID, @SiteID);
		INSERT INTO COM_Customer (CustomerFirstName, CustomerLastName, CustomerEnabled, CustomerLastModified, CustomerCreated, CustomerSiteID, CustomerUserID, CustomerDiscountLevelID)
			   VALUES ('GENERATED - Charles', 'Wilson ' + @Rand, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, null, @ID, @RandDiscountLevel2);
	END;
	--------------------
	-- SILVER PARTNER + CREDIT
	--------------------
	SET @Rand = Cast(Abs(Checksum(NewId())) % 1000000 As VARCHAR(6));
	SET @UserName = 'josephm' + @Rand;
	SET @RandUserID = (SELECT TOP 1 UserID FROM CMS_User WHERE UserName = @UserName);
	IF @RandUserID IS NULL
	BEGIN
		INSERT INTO CMS_User (UserName, UserPassword, FirstName, LastName, FullName, Email, UserEnabled, UserGUID, UserLastModified, UserCreated)
			   VALUES (@UserName, 'josephmp', 'GENERATED - Joseph', 'Moore', 'GENERATED - Joseph Moore', 'joseph' + @Rand + '@moore' + @Rand + '.com', 1, NewId(), CURRENT_TIMESTAMP, DATEADD(MINUTE, -(Cast((Abs(Checksum(NewId())) % 432000) + 43200  As INT)), CURRENT_TIMESTAMP));
		SET @ID = SCOPE_IDENTITY();
		INSERT INTO CMS_UserSite (UserID, SiteID) VALUES (@ID, @SiteID);
		INSERT INTO COM_Customer (CustomerFirstName, CustomerLastName, CustomerEnabled, CustomerLastModified, CustomerCreated, CustomerSiteID, CustomerUserID, CustomerDiscountLevelID)
			   VALUES ('GENERATED - Joseph', 'Moore ' + @Rand, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, null, @ID, @RandDiscountLevel2);
		SET @ID = SCOPE_IDENTITY();
		INSERT INTO COM_CustomerCreditHistory (EventName, EventCreditChange, EventDate, EventDescription, EventCustomerID, EventCreditGUID, EventCreditLastModified, EventSiteID)
			   VALUES ('GENERATED - ' + @Rand, 200, CURRENT_TIMESTAMP, '', @ID, NewId(), CURRENT_TIMESTAMP, @SiteID);
	END;
	--------------------
	-- CREDIT
	--------------------
	SET @Rand = Cast(Abs(Checksum(NewId())) % 1000000 As VARCHAR(6));
	SET @UserName = 'thomast' + @Rand;
	SET @RandUserID = (SELECT TOP 1 UserID FROM CMS_User WHERE UserName = @UserName);
	IF @RandUserID IS NULL
	BEGIN
		INSERT INTO CMS_User (UserName, UserPassword, FirstName, LastName, FullName, Email, UserEnabled, UserGUID, UserLastModified, UserCreated)
			   VALUES (@UserName, 'thomastp', 'GENERATED -  Thomas', 'Taylor', 'GENERATED - Thomas Taylor', 'thomas' + @Rand + '@taylor' + @Rand + '.com', 1, NewId(), CURRENT_TIMESTAMP, DATEADD(MINUTE, -(Cast((Abs(Checksum(NewId())) % 432000) + 43200  As INT)), CURRENT_TIMESTAMP));
		SET @ID = SCOPE_IDENTITY();
		INSERT INTO CMS_UserSite (UserID, SiteID) VALUES (@ID, @SiteID);
		INSERT INTO COM_Customer (CustomerFirstName, CustomerLastName, CustomerEnabled, CustomerLastModified, CustomerCreated, CustomerSiteID, CustomerUserID)
			   VALUES ('GENERATED - Thomas', 'Taylor ' + @Rand, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, null, @ID);
		SET @ID = SCOPE_IDENTITY();
		INSERT INTO COM_CustomerCreditHistory (EventName, EventCreditChange, EventDate, EventDescription, EventCustomerID, EventCreditGUID, EventCreditLastModified, EventSiteID)
			   VALUES ('GENERATED - ' + @Rand, 400, CURRENT_TIMESTAMP, '', @ID, NewId(), CURRENT_TIMESTAMP, @SiteID);
	END;
	--##################
	--# Orders
	--##################
	-- Currency FKs
	DECLARE @CurrencyCzkID INT;
	DECLARE @CurrencyUsdID INT;
	DECLARE @CurrencyEurID INT;
	SET @CurrencyCzkID = (SELECT TOP(1) CurrencyID FROM COM_Currency WHERE (CurrencySiteID = @SiteID) AND CurrencyName = 'CZK');
	IF (@CurrencyCzkID IS NULL) BEGIN SET @CurrencyCzkID = (SELECT TOP(1) CurrencyID FROM COM_Currency WHERE ((@GlobalOptionsCurrency = 0 AND CurrencySiteID = @SiteID) OR (@GlobalOptionsCurrency = 1 AND CurrencySiteID IS NULL)) ORDER BY NewId()); END;
	SET @CurrencyUsdID = (SELECT TOP(1) CurrencyID FROM COM_Currency WHERE (CurrencySiteID = @SiteID) AND CurrencyName = 'USD');
	IF (@CurrencyUsdID IS NULL) BEGIN SET @CurrencyUsdID = (SELECT TOP(1) CurrencyID FROM COM_Currency WHERE ((@GlobalOptionsCurrency = 0 AND CurrencySiteID = @SiteID) OR (@GlobalOptionsCurrency = 1 AND CurrencySiteID IS NULL)) ORDER BY NewId()); END;
	SET @CurrencyEurID = (SELECT TOP(1) CurrencyID FROM COM_Currency WHERE (CurrencySiteID = @SiteID) AND CurrencyName = 'EUR');
	IF (@CurrencyEurID IS NULL) BEGIN SET @CurrencyEurID = (SELECT TOP(1) CurrencyID FROM COM_Currency WHERE ((@GlobalOptionsCurrency = 0 AND CurrencySiteID = @SiteID) OR (@GlobalOptionsCurrency = 1 AND CurrencySiteID IS NULL)) ORDER BY NewId()); END;
	
	-- Status FKs
	DECLARE @StatusNewID				INT;
	DECLARE @StatusInProgressID			INT;
	DECLARE @StatusPaymentReceivedID	INT;
	DECLARE @StatusPaymentFailedID		INT;
	DECLARE @StatusCompletedID			INT;
	DECLARE @StatusClosedID				INT;
	DECLARE @StatusCanceledID			INT;
	SET @StatusNewID				= (SELECT TOP(1) StatusID FROM COM_OrderStatus WHERE StatusSiteID = @SiteID AND StatusName = 'New');
	IF (@StatusNewID IS NULL) BEGIN SET @StatusNewID = (SELECT TOP(1) StatusID FROM COM_OrderStatus WHERE (StatusName = 'New') AND ((@GlobalOptionsOrderStatus = 0 AND StatusSiteID = @SiteID) OR (@GlobalOptionsOrderStatus = 1 AND StatusSiteID IS NULL)) ORDER BY NewId()); END;
	SET @StatusInProgressID			= (SELECT TOP(1) StatusID FROM COM_OrderStatus WHERE StatusSiteID = @SiteID AND StatusName = 'InProgress');
	IF (@StatusInProgressID IS NULL) BEGIN SET @StatusInProgressID = (SELECT TOP(1) StatusID FROM COM_OrderStatus WHERE (StatusName = 'InProgress') AND ((@GlobalOptionsOrderStatus = 0 AND StatusSiteID = @SiteID) OR (@GlobalOptionsOrderStatus = 1 AND StatusSiteID IS NULL)) ORDER BY NewId()); END;
	SET @StatusPaymentReceivedID	= (SELECT TOP(1) StatusID FROM COM_OrderStatus WHERE StatusSiteID = @SiteID AND StatusName = 'PaymentReceived');
	IF (@StatusPaymentReceivedID IS NULL) BEGIN SET @StatusPaymentReceivedID = (SELECT TOP(1) StatusID FROM COM_OrderStatus WHERE (StatusName = 'PaymentReceived') AND ((@GlobalOptionsOrderStatus = 0 AND StatusSiteID = @SiteID) OR (@GlobalOptionsOrderStatus = 1 AND StatusSiteID IS NULL)) ORDER BY NewId()); END;
	SET @StatusPaymentFailedID		= (SELECT TOP(1) StatusID FROM COM_OrderStatus WHERE StatusSiteID = @SiteID AND StatusName = 'PaymentFailed');
	IF (@StatusPaymentFailedID IS NULL) BEGIN SET @StatusPaymentFailedID = (SELECT TOP(1) StatusID FROM COM_OrderStatus WHERE (StatusName = 'PaymentFailed') AND ((@GlobalOptionsOrderStatus = 0 AND StatusSiteID = @SiteID) OR (@GlobalOptionsOrderStatus = 1 AND StatusSiteID IS NULL)) ORDER BY NewId()); END;
	SET @StatusCompletedID			= (SELECT TOP(1) StatusID FROM COM_OrderStatus WHERE StatusSiteID = @SiteID AND StatusName = 'Completed');
	IF (@StatusCompletedID IS NULL) BEGIN SET @StatusCompletedID = (SELECT TOP(1) StatusID FROM COM_OrderStatus WHERE (StatusName = 'Completed') AND ((@GlobalOptionsOrderStatus = 0 AND StatusSiteID = @SiteID) OR (@GlobalOptionsOrderStatus = 1 AND StatusSiteID IS NULL)) ORDER BY NewId()); END;
	SET @StatusClosedID				= (SELECT TOP(1) StatusID FROM COM_OrderStatus WHERE StatusSiteID = @SiteID AND StatusName = 'Closed');
	IF (@StatusClosedID IS NULL) BEGIN SET @StatusClosedID = (SELECT TOP(1) StatusID FROM COM_OrderStatus WHERE (StatusName = 'Closed') AND ((@GlobalOptionsOrderStatus = 0 AND StatusSiteID = @SiteID) OR (@GlobalOptionsOrderStatus = 1 AND StatusSiteID IS NULL)) ORDER BY NewId()); END;
	SET @StatusCanceledID			= (SELECT TOP(1) StatusID FROM COM_OrderStatus WHERE StatusSiteID = @SiteID AND StatusName = 'Canceled');
	IF (@StatusCanceledID IS NULL) BEGIN SET @StatusCanceledID = (SELECT TOP(1) StatusID FROM COM_OrderStatus WHERE (StatusName = 'Canceled') AND ((@GlobalOptionsOrderStatus = 0 AND StatusSiteID = @SiteID) OR (@GlobalOptionsOrderStatus = 1 AND StatusSiteID IS NULL))ORDER BY NewId()); END;
	-- Countries FKs
	DECLARE @CountryUkID INT;
	DECLARE @CountryCzID INT;
	DECLARE @CountryFrID INT;
	DECLARE @CountryDeID INT;
	DECLARE @CountryUsID INT;
	SET @CountryUkID = (SELECT TOP(1) CountryID FROM CMS_Country WHERE CountryName = 'UnitedKingdom');
	SET @CountryCzID = (SELECT TOP(1) CountryID FROM CMS_Country WHERE CountryName = 'CzechRepublic');
	SET @CountryFrID = (SELECT TOP(1) CountryID FROM CMS_Country WHERE CountryName = 'France');
	SET @CountryDeID = (SELECT TOP(1) CountryID FROM CMS_Country WHERE CountryName = 'Germany');
	SET @CountryUsID = (SELECT TOP(1) CountryID FROM CMS_Country WHERE CountryName = 'USA');
	
	-- Addresses
	--------------------
	-- UK
	--------------------
	DECLARE @AddressUk1 INT;
	DECLARE @AddressUk2 INT;
	DECLARE @AddressUk3 INT;
	DECLARE @RndCustomerID INT;
	SET @RndCustomerID = (SELECT TOP(1) CustomerID FROM COM_Customer WHERE CustomerFirstName LIKE 'GENERATED -%' AND (CustomerSiteID = @SiteID OR (CustomerUserID IN(SELECT UserID FROM CMS_UserSite WHERE SiteID = @SiteID AND UserID IN  (SELECT UserID FROM CMS_User WHERE FirstName LIKE 'GENERATED -%')))) ORDER BY NewId());
	INSERT INTO COM_Address (AddressName, AddressPersonalName, AddressLine1, AddressLine2, AddressCity, AddressZip, AddressEnabled,
						     AddressCustomerID,
							 AddressCountryID, AddressStateID, AddressIsBilling, AddressIsShipping, AddressIsCompany, AddressGUID, AddressLastModified)
		VALUES ('GENERATED - UK Address 1', 'GENERATED - UK Address 1', 'Green street 15', '', 'London', '454544', 1,
		        @RndCustomerID,	@CountryUkID, null, 1, 1, 1, NewId(), CURRENT_TIMESTAMP);
	SET @AddressUk1 = SCOPE_IDENTITY();
	
    SET @RndCustomerID = (SELECT TOP(1) CustomerID FROM COM_Customer WHERE CustomerFirstName LIKE 'GENERATED -%' AND (CustomerSiteID = @SiteID OR (CustomerUserID IN(SELECT UserID FROM CMS_UserSite WHERE SiteID = @SiteID AND UserID IN  (SELECT UserID FROM CMS_User WHERE FirstName LIKE 'GENERATED -%')))) ORDER BY NewId());
	INSERT INTO COM_Address (AddressName, AddressPersonalName, AddressLine1, AddressLine2, AddressCity, AddressZip, AddressEnabled,
						     AddressCustomerID,
							 AddressCountryID, AddressStateID, AddressIsBilling, AddressIsShipping, AddressIsCompany, AddressGUID, AddressLastModified)
		VALUES ('GENERATED - UK Address 2', 'GENERATED - UK Address 2', 'Red street 12', '', 'London', '454544', 1,
		        @RndCustomerID,	@CountryUkID, null, 1, 1, 1, NewId(), CURRENT_TIMESTAMP);
	SET @AddressUk2 = SCOPE_IDENTITY();
    SET @RndCustomerID = (SELECT TOP(1) CustomerID FROM COM_Customer WHERE CustomerFirstName LIKE 'GENERATED -%' AND (CustomerSiteID = @SiteID OR (CustomerUserID IN(SELECT UserID FROM CMS_UserSite WHERE SiteID = @SiteID AND UserID IN  (SELECT UserID FROM CMS_User WHERE FirstName LIKE 'GENERATED -%')))) ORDER BY NewId());
	INSERT INTO COM_Address (AddressName, AddressPersonalName, AddressLine1, AddressLine2, AddressCity, AddressZip, AddressEnabled,
						     AddressCustomerID,
							 AddressCountryID, AddressStateID, AddressIsBilling, AddressIsShipping, AddressIsCompany, AddressGUID, AddressLastModified)
		VALUES ('GENERATED - UK Address 3', 'GENERATED - UK Address 3', 'Black street 22', '', 'Glasgow', '85442', 1,
		        @RndCustomerID,	@CountryUkID, null, 1, 1, 1, NewId(), CURRENT_TIMESTAMP);
	SET @AddressUk3 = SCOPE_IDENTITY();
	--------------------
	-- CZ
	--------------------
	DECLARE @AddressCz1 INT;
	DECLARE @AddressCz2 INT;
    SET @RndCustomerID = (SELECT TOP(1) CustomerID FROM COM_Customer WHERE CustomerFirstName LIKE 'GENERATED -%' AND (CustomerSiteID = @SiteID OR (CustomerUserID IN(SELECT UserID FROM CMS_UserSite WHERE SiteID = @SiteID AND UserID IN  (SELECT UserID FROM CMS_User WHERE FirstName LIKE 'GENERATED -%')))) ORDER BY NewId());
	INSERT INTO COM_Address (AddressName, AddressPersonalName, AddressLine1, AddressLine2, AddressCity, AddressZip, AddressEnabled,
						     AddressCustomerID,
							 AddressCountryID, AddressStateID, AddressIsBilling, AddressIsShipping, AddressIsCompany, AddressGUID, AddressLastModified)
		VALUES ('GENERATED - CZ Address 1', 'GENERATED - CZ Address 1', 'Pankracova 13', '', 'Praha', '05489', 1,
		        @RndCustomerID,	@CountryCzID, null, 1, 1, 1, NewId(), CURRENT_TIMESTAMP);
	SET @AddressCz1 = SCOPE_IDENTITY();
    SET @RndCustomerID = (SELECT TOP(1) CustomerID FROM COM_Customer WHERE CustomerFirstName LIKE 'GENERATED -%' AND (CustomerSiteID = @SiteID OR (CustomerUserID IN(SELECT UserID FROM CMS_UserSite WHERE SiteID = @SiteID AND UserID IN  (SELECT UserID FROM CMS_User WHERE FirstName LIKE 'GENERATED -%')))) ORDER BY NewId());
	INSERT INTO COM_Address (AddressName, AddressPersonalName, AddressLine1, AddressLine2, AddressCity, AddressZip, AddressEnabled,
						     AddressCustomerID,
							 AddressCountryID, AddressStateID, AddressIsBilling, AddressIsShipping, AddressIsCompany, AddressGUID, AddressLastModified)
		VALUES ('GENERATED - CZ Address 2', 'GENERATED - CZ Address 2', 'Vlhka 154', '', 'Brno', '60200', 1,
		        @RndCustomerID,	@CountryCzID, null, 1, 1, 1, NewId(), CURRENT_TIMESTAMP);
	SET @AddressCz2 = SCOPE_IDENTITY();
	--------------------
	-- FR
	--------------------
	DECLARE @AddressFr1 INT;
	SET @RndCustomerID = (SELECT TOP(1) CustomerID FROM COM_Customer WHERE CustomerFirstName LIKE 'GENERATED -%' AND (CustomerSiteID = @SiteID OR (CustomerUserID IN(SELECT UserID FROM CMS_UserSite WHERE SiteID = @SiteID AND UserID IN  (SELECT UserID FROM CMS_User WHERE FirstName LIKE 'GENERATED -%')))) ORDER BY NewId());
	INSERT INTO COM_Address (AddressName, AddressPersonalName, AddressLine1, AddressLine2, AddressCity, AddressZip, AddressEnabled,
						     AddressCustomerID,
							 AddressCountryID, AddressStateID, AddressIsBilling, AddressIsShipping, AddressIsCompany, AddressGUID, AddressLastModified)
		VALUES ('GENERATED - FR Address 1', 'GENERATED - FR Address 1', 'Rouge rue 28', '', 'Paris', '54712', 1,
		        @RndCustomerID, @CountryFrID, null, 1, 1, 1, NewId(), CURRENT_TIMESTAMP);
	SET @AddressFr1 = SCOPE_IDENTITY();
	--------------------
	-- DE
	--------------------
	DECLARE @AddressDe1 INT;
	SET @RndCustomerID = (SELECT TOP(1) CustomerID FROM COM_Customer WHERE CustomerFirstName LIKE 'GENERATED -%' AND (CustomerSiteID = @SiteID OR (CustomerUserID IN(SELECT UserID FROM CMS_UserSite WHERE SiteID = @SiteID AND UserID IN  (SELECT UserID FROM CMS_User WHERE FirstName LIKE 'GENERATED -%')))) ORDER BY NewId());
	INSERT INTO COM_Address (AddressName, AddressPersonalName, AddressLine1, AddressLine2, AddressCity, AddressZip, AddressEnabled,
						     AddressCustomerID,
							 AddressCountryID, AddressStateID, AddressIsBilling, AddressIsShipping, AddressIsCompany, AddressGUID, AddressLastModified)
		VALUES ('GENERATED - DE Address 1', 'GENERATED - DE Address 1', 'Schwarzenstrase 42', '', 'Hannover', '22642', 1,
		        @RndCustomerID, @CountryDeID, null, 1, 1, 1, NewId(), CURRENT_TIMESTAMP);
	SET @AddressDe1 = SCOPE_IDENTITY();
	DECLARE @RndPaymentOptionID INT;
	--------------------------------------------------------------------------------------------------------
	-- Insert orders ---------------------------------------------------------------------------------------
	--------------------------------------------------------------------------------------------------------
	SET @ShippingOptionID = (SELECT TOP(1) ShippingOptionID FROM COM_ShippingOption WHERE (ShippingOptionSiteID = @SiteID) OR (@GlobalOptionsShipping = 1 AND ShippingOptionSiteID IS NULL) ORDER BY NewId());
	SET @CustomerID = (SELECT TOP(1) AddressCustomerID FROM COM_Address WHERE AddressID = @AddressUk1 ORDER BY NewId());
	SET @UserID = (SELECT TOP(1) CustomerUserID FROM COM_Customer WHERE CustomerID = @CustomerID);
	SET @RndPaymentOptionID = (SELECT TOP(1) PaymentOptionID FROM COM_PaymentOption WHERE ((PaymentOptionSiteID = @SiteID) OR ((@GlobalOptionsPayment = 1) AND (PaymentOptionSiteID IS NULL))) AND PaymentOptionID IN (SELECT PaymentOptionID FROM COM_PaymentShipping WHERE ShippingOptionID = @ShippingOptionID) ORDER BY NewId());
	INSERT INTO COM_Order (OrderBillingAddressID, OrderShippingAddressID, OrderShippingOptionID, OrderTotalPrice, OrderTotalTax, OrderDate, OrderStatusID, OrderCurrencyID, OrderCustomerID, OrderNote, OrderSiteID, 
							OrderPaymentOptionID, OrderGUID, OrderLastModified, OrderIsPaid, OrderTotalPriceInMainCurrency, OrderCreatedByUserID)
		VALUES (@AddressUk1, @AddressUk1, @ShippingOptionID, 0, 0,
				DATEADD(MINUTE, -(Cast((Abs(Checksum(NewId())) % 432000) + 43200  As INT)), CURRENT_TIMESTAMP), @StatusPaymentFailedID, @CurrencyEurID, 
				@CustomerID,
				'- GENERATED -', @SiteID, @RndPaymentOptionID,
				NewId(), CURRENT_TIMESTAMP, 0, 0, @UserID);
	SET @ID = SCOPE_IDENTITY();
	-- Donation
	INSERT INTO COM_OrderItem (OrderItemOrderID, OrderItemSKUID, OrderItemSKUName, OrderItemUnitPrice, OrderItemUnitCount, OrderItemGuid, OrderItemLastModified,
							   OrderItemPrice, OrderItemTotalPriceInMainCurrency, OrderItemText)
		VALUES (@ID, @DonationSKU_SKUID, @DonationSKU_SKUName, @DonationSKU_SKUPrice, 1, NewId(), CURRENT_TIMESTAMP, 
						@DonationSKU_SKUPrice, @DonationSKU_SKUPrice, '- GENERATED - ' + Cast(@SiteID As VARCHAR(15)));
	UPDATE COM_Order SET OrderTotalPrice=OrderTotalPrice+@DonationSKU_SKUPrice WHERE OrderID=@ID;
	SET @ShippingOptionID = (SELECT TOP(1) ShippingOptionID FROM COM_ShippingOption WHERE (ShippingOptionSiteID = @SiteID) OR (@GlobalOptionsShipping = 1 AND ShippingOptionSiteID IS NULL) ORDER BY NewId());
	SET @CustomerID = (SELECT TOP(1) AddressCustomerID FROM COM_Address WHERE AddressID = @AddressUk2 ORDER BY NewId());
	SET @UserID = (SELECT TOP(1) CustomerUserID FROM COM_Customer WHERE CustomerID = @CustomerID);
	SET @RndPaymentOptionID = (SELECT TOP(1) PaymentOptionID FROM COM_PaymentOption WHERE ((PaymentOptionSiteID = @SiteID) OR ((@GlobalOptionsPayment = 1) AND (PaymentOptionSiteID IS NULL))) AND PaymentOptionID IN (SELECT PaymentOptionID FROM COM_PaymentShipping WHERE ShippingOptionID = @ShippingOptionID) ORDER BY NewId());
	INSERT INTO COM_Order (OrderBillingAddressID, OrderShippingAddressID, OrderShippingOptionID, OrderTotalPrice, OrderTotalTax, OrderDate, OrderStatusID, OrderCurrencyID, OrderCustomerID, OrderNote, OrderSiteID, 
							OrderPaymentOptionID, OrderGUID, OrderLastModified, OrderIsPaid, OrderTotalPriceInMainCurrency, OrderCreatedByUserID)
		VALUES (@AddressUk2, @AddressUk2, @ShippingOptionID, 0, 0,
				DATEADD(MINUTE, -(Cast((Abs(Checksum(NewId())) % 432000) + 43200  As INT)), CURRENT_TIMESTAMP), @StatusPaymentFailedID, @CurrencyEurID, 
				@CustomerID,
				'- GENERATED -', @SiteID, @RndPaymentOptionID,
				NewId(), CURRENT_TIMESTAMP, 0, 0, @UserID);
	SET @ID = SCOPE_IDENTITY();
	-- Donation
	INSERT INTO COM_OrderItem (OrderItemOrderID, OrderItemSKUID, OrderItemSKUName, OrderItemUnitPrice, OrderItemUnitCount, OrderItemGuid, OrderItemLastModified,
							   OrderItemPrice, OrderItemTotalPriceInMainCurrency, OrderItemText)
		VALUES (@ID, @DonationSKU_SKUID, @DonationSKU_SKUName, @DonationSKU_SKUPrice, 1, NewId(), CURRENT_TIMESTAMP, 
						@DonationSKU_SKUPrice, @DonationSKU_SKUPrice, '- GENERATED - ' + Cast(@SiteID As VARCHAR(15)));
	UPDATE COM_Order SET OrderTotalPrice=OrderTotalPrice+@DonationSKU_SKUPrice WHERE OrderID=@ID;
	SET @ShippingOptionID = (SELECT TOP(1) ShippingOptionID FROM COM_ShippingOption WHERE (ShippingOptionSiteID = @SiteID) OR (@GlobalOptionsShipping = 1 AND ShippingOptionSiteID IS NULL) ORDER BY NewId());
	SET @CustomerID = (SELECT TOP(1) AddressCustomerID FROM COM_Address WHERE AddressID = @AddressUk3 ORDER BY NewId());
	SET @UserID = (SELECT TOP(1) CustomerUserID FROM COM_Customer WHERE CustomerID = @CustomerID);
	SET @RndPaymentOptionID = (SELECT TOP(1) PaymentOptionID FROM COM_PaymentOption WHERE ((PaymentOptionSiteID = @SiteID) OR ((@GlobalOptionsPayment = 1) AND (PaymentOptionSiteID IS NULL))) AND PaymentOptionID IN (SELECT PaymentOptionID FROM COM_PaymentShipping WHERE ShippingOptionID = @ShippingOptionID) ORDER BY NewId());
	INSERT INTO COM_Order (OrderBillingAddressID, OrderShippingAddressID, OrderShippingOptionID, OrderTotalPrice, OrderTotalTax, OrderDate, OrderStatusID, OrderCurrencyID, OrderCustomerID, OrderNote, OrderSiteID, 
							OrderPaymentOptionID, OrderGUID, OrderLastModified, OrderIsPaid, OrderTotalPriceInMainCurrency, OrderCreatedByUserID)
		VALUES (@AddressUk3, @AddressUk3, @ShippingOptionID, 0, 0,
				DATEADD(MINUTE, -(Cast((Abs(Checksum(NewId())) % 432000) + 43200  As INT)), CURRENT_TIMESTAMP), @StatusNewID, @CurrencyEurID, 
				@CustomerID,
				'- GENERATED -', @SiteID, @RndPaymentOptionID,
				NewId(), CURRENT_TIMESTAMP, 0, 0, @UserID);
	--------------------
	-- Last 30 days
	--------------------
	SET @ShippingOptionID = (SELECT TOP(1) ShippingOptionID FROM COM_ShippingOption WHERE (ShippingOptionSiteID = @SiteID) OR (@GlobalOptionsShipping = 1 AND ShippingOptionSiteID IS NULL) ORDER BY NewId());		
	SET @CustomerID = (SELECT TOP(1) AddressCustomerID FROM COM_Address WHERE AddressID = @AddressCz1 ORDER BY NewId());
	SET @UserID = (SELECT TOP(1) CustomerUserID FROM COM_Customer WHERE CustomerID = @CustomerID);		
	SET @RndPaymentOptionID = (SELECT TOP(1) PaymentOptionID FROM COM_PaymentOption WHERE ((PaymentOptionSiteID = @SiteID) OR ((@GlobalOptionsPayment = 1) AND (PaymentOptionSiteID IS NULL))) AND PaymentOptionID IN (SELECT PaymentOptionID FROM COM_PaymentShipping WHERE ShippingOptionID = @ShippingOptionID) ORDER BY NewId());
	INSERT INTO COM_Order (OrderBillingAddressID, OrderShippingAddressID, OrderShippingOptionID, OrderTotalPrice, OrderTotalTax, OrderDate, OrderStatusID, OrderCurrencyID, OrderCustomerID, OrderNote, OrderSiteID, 
							OrderPaymentOptionID, OrderGUID, OrderLastModified, OrderIsPaid, OrderTotalPriceInMainCurrency, OrderCreatedByUserID)
		VALUES (@AddressCz1, @AddressCz1, @ShippingOptionID, 0, 0,
				DATEADD(SECOND, -(Cast(Abs(Checksum(NewId())) % 2592000 As INT)), CURRENT_TIMESTAMP), @StatusPaymentReceivedID, @CurrencyCzkID, 
				@CustomerID,
				'- GENERATED -', @SiteID, @RndPaymentOptionID,
				NewId(), CURRENT_TIMESTAMP, 1, 0, @UserID);
	SET @ShippingOptionID = (SELECT TOP(1) ShippingOptionID FROM COM_ShippingOption WHERE (ShippingOptionSiteID = @SiteID) OR (@GlobalOptionsShipping = 1 AND ShippingOptionSiteID IS NULL) ORDER BY NewId());
	SET @CustomerID = (SELECT TOP(1) AddressCustomerID FROM COM_Address WHERE AddressID = @AddressCz2 ORDER BY NewId());
	SET @UserID = (SELECT TOP(1) CustomerUserID FROM COM_Customer WHERE CustomerID = @CustomerID);
	SET @RndPaymentOptionID = (SELECT TOP(1) PaymentOptionID FROM COM_PaymentOption WHERE ((PaymentOptionSiteID = @SiteID) OR ((@GlobalOptionsPayment = 1) AND (PaymentOptionSiteID IS NULL))) AND PaymentOptionID IN (SELECT PaymentOptionID FROM COM_PaymentShipping WHERE ShippingOptionID = @ShippingOptionID) ORDER BY NewId());
	INSERT INTO COM_Order (OrderBillingAddressID, OrderShippingAddressID, OrderShippingOptionID, OrderTotalPrice, OrderTotalTax, OrderDate, OrderStatusID, OrderCurrencyID, OrderCustomerID, OrderNote, OrderSiteID, 
							OrderPaymentOptionID, OrderGUID, OrderLastModified, OrderIsPaid, OrderTotalPriceInMainCurrency, OrderCreatedByUserID)
		VALUES (@AddressCz2, @AddressCz2, @ShippingOptionID, 0, 0,
				DATEADD(SECOND, -(Cast(Abs(Checksum(NewId())) % 2592000 As INT)), CURRENT_TIMESTAMP), @StatusPaymentReceivedID, @CurrencyCzkID, 
				@CustomerID,
				'- GENERATED -', @SiteID,  @RndPaymentOptionID,
				NewId(), CURRENT_TIMESTAMP, 1, 0, @UserID);
	SET @ShippingOptionID = (SELECT TOP(1) ShippingOptionID FROM COM_ShippingOption WHERE (ShippingOptionSiteID = @SiteID) OR (@GlobalOptionsShipping = 1 AND ShippingOptionSiteID IS NULL) ORDER BY NewId());
	SET @CustomerID = (SELECT TOP(1) AddressCustomerID FROM COM_Address WHERE AddressID = @AddressFr1 ORDER BY NewId());
	SET @UserID = (SELECT TOP(1) CustomerUserID FROM COM_Customer WHERE CustomerID = @CustomerID);
	SET @RndPaymentOptionID = (SELECT TOP(1) PaymentOptionID FROM COM_PaymentOption WHERE ((PaymentOptionSiteID = @SiteID) OR ((@GlobalOptionsPayment = 1) AND (PaymentOptionSiteID IS NULL))) AND PaymentOptionID IN (SELECT PaymentOptionID FROM COM_PaymentShipping WHERE ShippingOptionID = @ShippingOptionID) ORDER BY NewId());
	INSERT INTO COM_Order (OrderBillingAddressID, OrderShippingAddressID, OrderShippingOptionID, OrderTotalPrice, OrderTotalTax, OrderDate, OrderStatusID, OrderCurrencyID, OrderCustomerID, OrderNote, OrderSiteID, 
							OrderPaymentOptionID, OrderGUID, OrderLastModified, OrderIsPaid, OrderTotalPriceInMainCurrency, OrderCreatedByUserID)
		VALUES (@AddressFr1, @AddressFr1, @ShippingOptionID, 0, 0,
				DATEADD(SECOND, -(Cast(Abs(Checksum(NewId())) % 2592000 As INT)), CURRENT_TIMESTAMP), @StatusNewID, @CurrencyEurID, 
				@CustomerID,
				'- GENERATED -', @SiteID,  @RndPaymentOptionID,
				NewId(), CURRENT_TIMESTAMP, 0, 0, @UserID);
	SET @ShippingOptionID = (SELECT TOP(1) ShippingOptionID FROM COM_ShippingOption WHERE (ShippingOptionSiteID = @SiteID) OR (@GlobalOptionsShipping = 1 AND ShippingOptionSiteID IS NULL) ORDER BY NewId());
	SET @CustomerID = (SELECT TOP(1) AddressCustomerID FROM COM_Address WHERE AddressID = @AddressDe1 ORDER BY NewId());
	SET @UserID = (SELECT TOP(1) CustomerUserID FROM COM_Customer WHERE CustomerID = @CustomerID);
	SET @RndPaymentOptionID = (SELECT TOP(1) PaymentOptionID FROM COM_PaymentOption WHERE ((PaymentOptionSiteID = @SiteID) OR ((@GlobalOptionsPayment = 1) AND (PaymentOptionSiteID IS NULL))) AND PaymentOptionID IN (SELECT PaymentOptionID FROM COM_PaymentShipping WHERE ShippingOptionID = @ShippingOptionID) ORDER BY NewId());
	INSERT INTO COM_Order (OrderBillingAddressID, OrderShippingAddressID, OrderShippingOptionID, OrderTotalPrice, OrderTotalTax, OrderDate, OrderStatusID, OrderCurrencyID, OrderCustomerID, OrderNote, OrderSiteID, 
							OrderPaymentOptionID, OrderGUID, OrderLastModified, OrderIsPaid, OrderTotalPriceInMainCurrency, OrderCreatedByUserID)
		VALUES (@AddressDe1, @AddressDe1, @ShippingOptionID, 0, 0,
				DATEADD(SECOND, -(Cast(Abs(Checksum(NewId())) % 2592000 As INT)), CURRENT_TIMESTAMP), @StatusCanceledID, @CurrencyEurID, 
				@CustomerID,
				'- GENERATED -', @SiteID,  @RndPaymentOptionID,
				NewId(), CURRENT_TIMESTAMP, 1, 0, @UserID);
	--------------------
	-- US generated 9x "Completed", 4x "In Progress"
	--------------------
	DECLARE @AddressID INT;
	DECLARE @StatusID INT; 
	DECLARE @Zip VARCHAR(5);
    DECLARE @Count INT;
	DECLARE @IsPaid INT;
	DECLARE @RndStateID INT;
    SET @StatusID = @StatusCompletedID;
	SET @IsPaid = 1;
	SET @Count = 0;
    WHILE (@Count < 13)
    BEGIN
		-- Generate random suffix
		SET @Rand = Cast(Abs(Checksum(NewId())) % 1000 As VARCHAR(3));
		SET @Zip  = Cast(Abs(Checksum(NewId())) % 100000 As VARCHAR(5));
		-- Change status
		IF (@Count > 8)
		BEGIN
		  SET @StatusID = @StatusInProgressID;
		  SET @IsPaid = 1;
		END;
		SET @RndCustomerID = (SELECT TOP(1) CustomerID FROM COM_Customer WHERE CustomerFirstName LIKE 'GENERATED%' AND ((CustomerSiteID = @SiteID) OR (CustomerUserID IN (SELECT UserID FROM CMS_UserSite WHERE SiteID = @SiteID))) ORDER BY NewId());
		SET @RndStateID = (SELECT TOP(1) StateID FROM CMS_State ORDER BY NewId());
		-- Generate address
		INSERT INTO COM_Address (AddressName, AddressPersonalName, AddressLine1, AddressLine2, AddressCity, AddressZip, AddressEnabled,
								 AddressCustomerID,
								 AddressCountryID, AddressStateID, AddressIsBilling, AddressIsShipping, AddressIsCompany, AddressGUID, AddressLastModified)
			VALUES ('GENERATED - US Address ' + @Rand, 'GENERATED - US Address ' + @Rand, 'Yellow street ' + @Rand, '', 'City ' + @Rand, @Zip, 1,
					@RndCustomerID,
					@CountryUsID, 
					@RndStateID,
					1, 1, 1, NewId(), CURRENT_TIMESTAMP);
		SET @AddressID = SCOPE_IDENTITY();
		SET @ShippingOptionID = (SELECT TOP(1) ShippingOptionID FROM COM_ShippingOption WHERE (ShippingOptionSiteID = @SiteID) OR (@GlobalOptionsShipping = 1 AND ShippingOptionSiteID IS NULL) ORDER BY NewId());
		SET @CustomerID = (SELECT TOP(1) AddressCustomerID FROM COM_Address WHERE AddressID = @AddressID ORDER BY NewId());
		SET @UserID = (SELECT TOP(1) CustomerUserID FROM COM_Customer WHERE CustomerID = @CustomerID);
		SET @ShippingCharge = (SELECT TOP(1) ShippingOptionCharge FROM COM_ShippingOption WHERE ShippingOptionID = @ShippingOptionID);
		SET @RndPaymentOptionID = (SELECT TOP(1) PaymentOptionID FROM COM_PaymentOption WHERE ((PaymentOptionSiteID = @SiteID) OR ((@GlobalOptionsPayment = 1) AND (PaymentOptionSiteID IS NULL))) AND PaymentOptionID IN (SELECT PaymentOptionID FROM COM_PaymentShipping WHERE ShippingOptionID = @ShippingOptionID) ORDER BY NewId());
		INSERT INTO COM_Order (OrderBillingAddressID, OrderShippingAddressID, OrderShippingOptionID, OrderTotalPrice, OrderTotalTax, OrderDate, OrderStatusID, OrderCurrencyID, OrderCustomerID, OrderNote, OrderSiteID, 
							OrderPaymentOptionID, OrderGUID, OrderLastModified, OrderIsPaid, OrderTotalPriceInMainCurrency, OrderCreatedByUserID)
		VALUES (@AddressID, @AddressID, @ShippingOptionID, ISNULL(@ShippingCharge, 0), 0,
				DATEADD(SECOND, -(Cast(Abs(Checksum(NewId())) % 2592000 As INT)), CURRENT_TIMESTAMP), @StatusID, @CurrencyUsdID, 
				@CustomerID,
				'- GENERATED -', @SiteID, @RndPaymentOptionID,
				NewId(), CURRENT_TIMESTAMP, @IsPaid, ISNULL(@ShippingCharge, 0), @UserID);
		--SELECT PaymentOptionID FROM COM_PaymentShipping WHERE ShippingOptionID = @ShippingOptionID;
        SET @Count = (@Count + 1)
    END;
	--------------------
	-- US 2x Closed
	--------------------
	SET @AddressID = (SELECT TOP(1) AddressID FROM COM_Address WHERE AddressCountryID = @CountryUsID AND AddressCustomerID IN (SELECT CustomerID FROM COM_Customer WHERE CustomerFirstName LIKE 'GENERATED%' AND ((CustomerSiteID = @SiteID) OR (CustomerUserID IN (SELECT UserID FROM CMS_UserSite WHERE SiteID = @SiteID)))) ORDER BY NewId());
	SET @ShippingOptionID = (SELECT TOP(1) ShippingOptionID FROM COM_ShippingOption WHERE (ShippingOptionSiteID = @SiteID) OR (@GlobalOptionsShipping = 1 AND ShippingOptionSiteID IS NULL) ORDER BY NewId());
	SET @CustomerID = (SELECT TOP(1) AddressCustomerID FROM COM_Address WHERE AddressID = @AddressID ORDER BY NewId());
	SET @UserID = (SELECT TOP(1) CustomerUserID FROM COM_Customer WHERE CustomerID = @CustomerID);
	SET @RndPaymentOptionID = (SELECT TOP(1) PaymentOptionID FROM COM_PaymentOption WHERE ((PaymentOptionSiteID = @SiteID) OR ((@GlobalOptionsPayment = 1) AND (PaymentOptionSiteID IS NULL))) AND PaymentOptionID IN (SELECT PaymentOptionID FROM COM_PaymentShipping WHERE ShippingOptionID = @ShippingOptionID) ORDER BY NewId());
	INSERT INTO COM_Order (OrderBillingAddressID, OrderShippingAddressID, OrderShippingOptionID, OrderTotalPrice, OrderTotalTax, OrderDate, OrderStatusID, OrderCurrencyID, OrderCustomerID, OrderNote, OrderSiteID, 
							OrderPaymentOptionID, OrderGUID, OrderLastModified, OrderIsPaid, OrderTotalPriceInMainCurrency, OrderCreatedByUserID)
		VALUES (@AddressID, @AddressID, @ShippingOptionID, 0, 0,
				DATEADD(SECOND, -(Cast(Abs(Checksum(NewId())) % 2592000 As INT)), CURRENT_TIMESTAMP), @StatusClosedID, @CurrencyUsdID, 
				@CustomerID,
				'- GENERATED -', @SiteID, @RndPaymentOptionID,
				NewId(), CURRENT_TIMESTAMP, 1, 0, @UserID);
	SET @ID = SCOPE_IDENTITY();
	-- Donation
	INSERT INTO COM_OrderItem (OrderItemOrderID, OrderItemSKUID, OrderItemSKUName, OrderItemUnitPrice, OrderItemUnitCount, OrderItemGuid, OrderItemLastModified,
							   OrderItemPrice, OrderItemTotalPriceInMainCurrency, OrderItemText)
		VALUES (@ID, @DonationSKU_SKUID, @DonationSKU_SKUName, @DonationSKU_SKUPrice, 1, NewId(), CURRENT_TIMESTAMP, 
						@DonationSKU_SKUPrice, @DonationSKU_SKUPrice, '- GENERATED - ' + Cast(@SiteID As VARCHAR(15)));
	UPDATE COM_Order SET OrderTotalPrice=OrderTotalPrice+@DonationSKU_SKUPrice WHERE OrderID=@ID;
	SET @AddressID = (SELECT TOP(1) AddressID FROM COM_Address WHERE AddressCountryID = @CountryUsID AND AddressCustomerID IN (SELECT CustomerID FROM COM_Customer WHERE CustomerFirstName LIKE 'GENERATED%' AND ((CustomerSiteID = @SiteID) OR (CustomerUserID IN (SELECT UserID FROM CMS_UserSite WHERE SiteID = @SiteID)))) ORDER BY NewId());
	SET @ShippingOptionID = (SELECT TOP(1) ShippingOptionID FROM COM_ShippingOption WHERE (ShippingOptionSiteID = @SiteID) OR (@GlobalOptionsShipping = 1 AND ShippingOptionSiteID IS NULL) ORDER BY NewId());
	SET @CustomerID = (SELECT TOP(1) AddressCustomerID FROM COM_Address WHERE AddressID = @AddressID ORDER BY NewId());
	SET @UserID = (SELECT TOP(1) CustomerUserID FROM COM_Customer WHERE CustomerID = @CustomerID);
	SET @RndPaymentOptionID = (SELECT TOP(1) PaymentOptionID FROM COM_PaymentOption WHERE ((PaymentOptionSiteID = @SiteID) OR ((@GlobalOptionsPayment = 1) AND (PaymentOptionSiteID IS NULL))) AND PaymentOptionID IN (SELECT PaymentOptionID FROM COM_PaymentShipping WHERE ShippingOptionID = @ShippingOptionID) ORDER BY NewId());
	INSERT INTO COM_Order (OrderBillingAddressID, OrderShippingAddressID, OrderShippingOptionID, OrderTotalPrice, OrderTotalTax, OrderDate, OrderStatusID, OrderCurrencyID, OrderCustomerID, OrderNote, OrderSiteID, 
							OrderPaymentOptionID, OrderGUID, OrderLastModified, OrderIsPaid, OrderTotalPriceInMainCurrency, OrderCreatedByUserID)
		VALUES (@AddressID, @AddressID, @ShippingOptionID, 0, 0,
				DATEADD(SECOND, -(Cast(Abs(Checksum(NewId())) % 2592000 As INT)), CURRENT_TIMESTAMP), @StatusClosedID, @CurrencyUsdID, 
				@CustomerID,
				'- GENERATED -', @SiteID, @RndPaymentOptionID,
				NewId(), CURRENT_TIMESTAMP, 1, 0, @UserID);
	SET @ID = SCOPE_IDENTITY();
	-- Donation
	INSERT INTO COM_OrderItem (OrderItemOrderID, OrderItemSKUID, OrderItemSKUName, OrderItemUnitPrice, OrderItemUnitCount, OrderItemGuid, OrderItemLastModified,
							   OrderItemPrice, OrderItemTotalPriceInMainCurrency, OrderItemText)
		VALUES (@ID, @DonationSKU_SKUID, @DonationSKU_SKUName, @DonationSKU_SKUPrice, 1, NewId(), CURRENT_TIMESTAMP, 
						@DonationSKU_SKUPrice, @DonationSKU_SKUPrice, '- GENERATED - ' + Cast(@SiteID As VARCHAR(15)));
	UPDATE COM_Order SET OrderTotalPrice=OrderTotalPrice+@DonationSKU_SKUPrice WHERE OrderID=@ID;
	--------------------
	-- Products
	--------------------
	
	DECLARE @OrderID INT;
	DECLARE @OrderTotalPrice INT;
	DECLARE @SKU_SKUID    INT;
	DECLARE @SKU_SKUName  NVARCHAR(450);
	DECLARE @SKU_SKUPrice INT;
	DECLARE @UnitCount INT;
    
	DECLARE @OrdersCursor CURSOR; 
	SET @OrdersCursor = CURSOR FOR SELECT OrderID, OrderTotalPrice FROM COM_Order WHERE OrderNote = '- GENERATED -' AND OrderSiteID = @SiteID;
	OPEN @OrdersCursor;
	FETCH NEXT FROM @OrdersCursor INTO @OrderID, @OrderTotalPrice;
	WHILE @@FETCH_STATUS = 0
	BEGIN		
		DECLARE @ProductCursor CURSOR;
		SET @ProductCursor= CURSOR FOR SELECT TOP(1 + (Cast(Abs(Checksum(NewId())) % 5 As int))) SKUID, SKUName, SKUPrice FROM COM_SKU WHERE SKUName NOT LIKE 'Donate%' AND SKUSiteID = @SiteID AND SKUOptionCategoryID IS NULL ORDER BY NewId();
		OPEN @ProductCursor;
		FETCH NEXT FROM @ProductCursor INTO @SKU_SKUID, @SKU_SKUName, @SKU_SKUPrice;
		WHILE @@FETCH_STATUS = 0
		BEGIN		
			SET @UnitCount = (1 + (Cast(Abs(Checksum(NewId())) % 5 As int)));
			INSERT INTO COM_OrderItem (OrderItemOrderID, OrderItemSKUID, OrderItemSKUName, OrderItemUnitPrice, OrderItemUnitCount, OrderItemGuid, OrderItemLastModified,
									   OrderItemPrice, OrderItemTotalPriceInMainCurrency, OrderItemText)
				VALUES (@OrderID, @SKU_SKUID, @SKU_SKUName, @SKU_SKUPrice, @UnitCount, NewId(), CURRENT_TIMESTAMP, 
								@SKU_SKUPrice, @SKU_SKUPrice, '- GENERATED - ' + Cast(@SiteID As VARCHAR(15)));
			UPDATE COM_Order SET OrderTotalPrice=OrderTotalPrice+(@SKU_SKUPrice * @UnitCount), OrderTotalPriceInMainCurrency=OrderTotalPrice+(@SKU_SKUPrice * @UnitCount * (Cast(Abs(Checksum(NewId())) % 5 As float))) WHERE OrderID=@OrderID;
			FETCH NEXT FROM @ProductCursor INTO @SKU_SKUID, @SKU_SKUName, @SKU_SKUPrice;
		END
		CLOSE @ProductCursor;
		DEALLOCATE @ProductCursor;
		FETCH NEXT FROM @OrdersCursor INTO @OrderID, @OrderTotalPrice;
	END;
	CLOSE @OrdersCursor;
	DEALLOCATE @OrdersCursor;
	--------------------
	-- Generate wishlist
	--------------------
	DECLARE @CustomerUserIDs TABLE (UserID INT);
	DECLARE @Iter INT;
	DECLARE @ActualSKUID INT;
	DECLARE @ActualUserID INT;
	INSERT INTO @CustomerUserIDs (UserID) (SELECT ISNULL(CustomerUserID, 0) FROM COM_Customer WHERE (CustomerFirstName LIKE 'GENERATED%' AND ((CustomerSiteID = @siteId) OR (CustomerUserID IN (SELECT UserID FROM CMS_UserSite WHERE SiteID = @siteId)))) AND CustomerUserID != 0);
	
	SET @Iter =  (SELECT COUNT(UserID) FROM @CustomerUserIDs);
	WHILE (@Iter > 0)
	BEGIN
		SET @ActualSKUID = (SELECT TOP 1 SKUID FROM COM_SKU WHERE SKUSiteID = @SiteID  ORDER BY NEWID());
		SET @ActualUserID = (SELECT TOP 1 UserID FROM @CustomerUserIDs ORDER BY NEWID());
		
		IF NOT EXISTS (SELECT TOP(1) * FROM COM_Wishlist WHERE SKUID=@ActualSKUID AND UserID = @ActualUserID AND SiteID=@SiteID)
		BEGIN
			INSERT INTO COM_Wishlist(UserID,SKUID,SiteID) VALUES(@ActualUserID,@ActualSKUID,@SiteID);
			SET @Iter = @Iter-1;
		END
	END
END
