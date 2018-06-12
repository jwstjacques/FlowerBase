CREATE PROCEDURE [dbo].[GetOrdersByCustomerId]
	@CustomerId Int
AS
	SELECT
		o.OrderId
		,o.OrderDate
		,o.DeliveryDate
		,o.Recipient
		,o.RecipientCity
		,o.[NumberOfLilies]
	FROM [dbo].[Orders] o
	WHERE o.CustomerId = @CustomerId
	ORDER BY o.OrderDate DESC
GO

