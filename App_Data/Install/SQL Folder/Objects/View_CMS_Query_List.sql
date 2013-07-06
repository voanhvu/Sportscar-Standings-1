CREATE VIEW [View_CMS_Query_List]
AS
SELECT     QueryID, QueryName, QueryTypeID, QueryText, QueryRequiresTransaction, ClassID, QueryIsLocked, QueryLastModified, QueryGUID, QueryLoadGeneration, 
                      QueryIsCustom, QueryConnectionString
FROM         dbo.CMS_Query WHERE ClassID IS NOT NULL
UNION ALL
SELECT 0 AS QueryID, q.QueryName, q.QueryTypeID, q.QueryText, q.QueryRequiresTransaction, c.ClassID AS ClassID, q.QueryIsLocked, q.QueryLastModified, q.QueryGUID, q.QueryLoadGeneration, q.QueryIsCustom, c.ClassConnectionString AS QueryConnectionString FROM CMS_Query q CROSS JOIN CMS_Class c WHERE q.ClassID IS NULL AND c.ClassID NOT IN (SELECT ClassID FROM CMS_Query WHERE QueryName = 'selectall' AND ClassID IS NOT NULL)
GO
