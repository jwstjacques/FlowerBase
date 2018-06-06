CREATE PROCEDURE [dbo].[DeleteCustomer]
	@CustomerId int
AS
	DELETE FROM [dbo].[Customers]
	WHERE CustomerId = @CustomerId
GO
