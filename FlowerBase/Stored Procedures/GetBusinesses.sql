CREATE PROCEDURE [dbo].[GetBusinesses]
AS
	SET NOCOUNT ON;

	SELECT
		b.BusinessId
		,b.BusinessName
		,b.ContactName
		,b.StreetAddress
		,b.City
		,b.Region
		,b.Code
		,b.PhoneNumber
		,b.Extension
		,b.Email
	FROM [dbo].[Businesses] b

GO
