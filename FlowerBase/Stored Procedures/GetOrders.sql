CREATE PROCEDURE [dbo].[GetOrders]
AS
	SELECT
		o.OrderId
		,o.OrderDate
		,o.BusinessId
		,o.CustomerId
		,CASE
			WHEN o.BusinessId IS NOT NULL THEN CONCAT(b.BusinessName, '-', b.ContactName)
			ELSE CONCAT(c.FirstName,' ', "LastName")
		END
		,o.Recipient
		,o.OrderDate
	FROM [dbo].[Orders] o
	LEFT JOIN [dbo].[Customers] c
		ON o.CustomerId = c.CustomerId
	LEFT JOIN [dbo].[Businesses] b
		ON o.BusinessId = B.BusinessId
GO
