CREATE PROCEDURE [Proc_COM_Reports_DeleteSampleData]
	-- Add the parameters for the stored procedure here
	@siteId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @AddressIDs TABLE (ID int);
	DECLARE @CustomerIDs TABLE (CustomerID int, UserID int);
	
	INSERT INTO @CustomerIDs (CustomerID, UserID) (SELECT CustomerID, ISNULL(CustomerUserID, 0) FROM COM_Customer WHERE CustomerFirstName LIKE 'GENERATED%' AND ((CustomerSiteID = @siteId) OR (CustomerUserID IN (SELECT UserID FROM CMS_UserSite WHERE SiteID = @siteId))));
	
	DELETE FROM COM_Wishlist WHERE SiteID = @SiteID AND UserID IN (SELECT UserID FROM @CustomerIDs);
	DELETE FROM COM_OrderItem WHERE OrderItemOrderID IN (SELECT OrderID FROM COM_Order WHERE OrderCustomerID IN (SELECT CustomerID FROM @CustomerIDs) AND OrderSiteID = @siteId);
	DELETE FROM COM_OrderStatusUser WHERE OrderID IN (SELECT OrderID FROM COM_Order WHERE OrderCustomerID IN (SELECT CustomerID FROM @CustomerIDs) AND OrderSiteID = @siteId);
	--DELETE FROM COM_Order WHERE OrderNote = '- GENERATED -' AND OrderSiteID = @siteId;
	
	INSERT INTO @AddressIDs (ID) ((SELECT OrderBillingAddressID  FROM COM_Order WHERE OrderCustomerID  IN (SELECT CustomerID FROM @CustomerIDs) AND OrderSiteID = @siteId)
	                 UNION (SELECT OrderShippingAddressID FROM COM_Order WHERE OrderCustomerID IN (SELECT CustomerID FROM @CustomerIDs) AND OrderSiteID = @siteId))
	DELETE FROM COM_Order WHERE OrderCustomerID IN (SELECT CustomerID FROM @CustomerIDs) AND OrderSiteID = @siteId;
	DELETE FROM COM_Address WHERE AddressID IN (SELECT ID FROM @AddressIDs) OR AddressCustomerID  IN (SELECT CustomerID FROM @CustomerIDs);
	
	DELETE FROM COM_CustomerCreditHistory WHERE EventCustomerID IN (SELECT CustomerID FROM @CustomerIDs) AND EventSiteID = @siteId;
	DELETE FROM COM_Customer WHERE CustomerID IN (SELECT CustomerID FROM @CustomerIDs);
                            
	DELETE FROM CMS_UserSite WHERE UserID IN (SELECT UserID FROM @CustomerIDs) AND SiteID = @siteId;
	DELETE FROM CMS_User WHERE UserID IN (SELECT UserID FROM @CustomerIDs);
	DELETE FROM @AddressIDs;
	DELETE FROM @CustomerIDs;
--	INSERT INTO @IDs (ID) SELECT NewsletterID FROM Newsletter_SubscriberNewsletter WHERE SubscriberID IN (SELECT SubscriberID FROM Newsletter_Subscriber WHERE SubscriberFirstName LIKE 'GENERATED -%' AND SubscriberSiteID = @siteId);
	DELETE FROM Newsletter_SubscriberNewsletter WHERE SubscriberID IN (SELECT SubscriberID FROM Newsletter_Subscriber WHERE SubscriberFirstName LIKE 'GENERATED%' AND SubscriberSiteID = @siteId);
	DELETE FROM Newsletter_Subscriber WHERE SubscriberFirstName LIKE 'GENERATED%' AND SubscriberSiteID = @siteId;
END
