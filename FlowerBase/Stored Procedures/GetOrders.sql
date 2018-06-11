CREATE PROCEDURE [dbo].[GetOrders]
AS
	SELECT
		o.OrderId
		,o.OrderDate
		,o.IsDelivery
		,o.BusinessId
		,o.CustomerId
		,CASE
			WHEN o.BusinessId IS NOT NULL THEN CONCAT(b.BusinessName, '-', b.ContactName)
			ELSE CONCAT(c.FirstName,' ', "LastName")
		END
		,o.Recipient
		,o.RecipientStreetAddress
		,o.RecipientCity
		,o.RecipientRegion
		,o.RecipientCode
		,o.RecipientPhoneNumber
		,o.RecipientEmail
		,o.DeliveryDate
		,o.NumberOfLillies
		,n.[Text]
	FROM [dbo].[Orders] o
	LEFT JOIN [dbo].[Customers] c
		ON o.CustomerId = c.CustomerId
	LEFT JOIN [dbo].[Businesses] b
		ON o.BusinessId = B.BusinessId
	LEFT JOIN [dbo].[Notes] n
		ON o.OrderId = n.NoteId
GO
