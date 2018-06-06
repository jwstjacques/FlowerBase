CREATE PROCEDURE [dbo].[GetOrderDetailsByOrderId]
	@OrderId int
AS
	SELECT
		o.OrderDate
		,o.DeliveryDate
		,o.Recipient
		,o.RecipientStreetAddress
		,o.RecipientCity
		,o.RecipientCode
		,o.RecipientEmail
		,o.RecipientPhoneNumber
		,n.[Text]
	FROM [dbo].[Orders] o
	LEFT JOIN [dbo].[Notes] n
		ON o.OrderId = n.OrderId
	WHERE o.OrderId = @OrderId
GO
