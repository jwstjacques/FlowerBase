CREATE PROCEDURE [dbo].[GetCustomers]
AS
	SET NOCOUNT ON;

	SELECT
		c.CustomerId
		,c.FirstName
		,c.LastName
		,c.StreetAddress
		,c.City
		,c.Region
		,c.Code
		,c.PhoneNumber
		,c.Email
	FROM [dbo].[Customers] c

GO
