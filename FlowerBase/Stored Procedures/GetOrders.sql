CREATE PROCEDURE [dbo].[GetOrders]
AS
	SELECT
		o.OrderId
		,o.OrderDate
		,o.IsDelivery
		,o.BusinessId
		,o.CustomerId
		,CASE
			WHEN o.BusinessId IS NULL THEN o.CustomerId
			ELSE o.BusinessId
		END AS "ClientId"
		,CASE
			WHEN o.BusinessId IS NULL THEN 0
			ELSE 1
		END AS "IsBusiness"
		,CASE
			WHEN o.BusinessId IS NOT NULL THEN 
				CASE
					WHEN b.ContactName IS NULL OR b.ContactName = ''
						THEN b.BusinessName
					ELSE
						CONCAT(b.BusinessName, ' - ', b.ContactName)
					END
			ELSE CONCAT(c.FirstName,' ', "LastName")
		END AS "ClientName"
		,o.Recipient
		,o.RecipientStreetAddress
		,o.RecipientCity
		,o.RecipientRegion
		,o.RecipientCode
		,o.RecipientPhoneNumber
		,o.RecipientEmail
		,o.DeliveryDate
		,o.[NumberOfLilies]
		,n.[Text]
	FROM [dbo].[Orders] o
	LEFT JOIN [dbo].[Customers] c
		ON o.CustomerId = c.CustomerId
	LEFT JOIN [dbo].[Businesses] b
		ON o.BusinessId = B.BusinessId
	LEFT JOIN [dbo].[Notes] n
		ON o.OrderId = n.NoteId
GO
