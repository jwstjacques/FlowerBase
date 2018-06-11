CREATE PROCEDURE [dbo].[GetClients]
AS
	SELECT
	x.[Id]
	,x.[Name]
	,x.[IsBusiness]
	FROM (
		(SELECT
			b.[BusinessId] AS "Id"
			,CASE WHEN b.ContactName = ''
				THEN b.[BusinessName]
			ELSE
				CONCAT(b.[BusinessName], ' - ', b.[ContactName])
			END AS "Name"
			,1 AS "IsBusiness"
		FROM [dbo].[Businesses] b
		)
		UNION
		(SELECT
			c.CustomerId AS "Id"
			,CONCAT(c.[FirstName], ' ', c.[LastName]) AS "Name"
			,0 AS "IsBusiness"
		FROM [dbo].[Customers] c
		)
	) x
	ORDER BY [Name]
GO
