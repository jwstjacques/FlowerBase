CREATE PROCEDURE [dbo].[GetOrdersByBusinessId]
	@BusinessId Int
AS
	SELECT
		o.OrderId
		,o.OrderDate
		,o.DeliveryDate
		,o.Recipient
		,o.RecipientCity
		,o.[NumberOfLilies]
	FROM [dbo].[Orders] o
	WHERE o.BusinessId = @BusinessId
	ORDER BY o.OrderDate DESC
GO
