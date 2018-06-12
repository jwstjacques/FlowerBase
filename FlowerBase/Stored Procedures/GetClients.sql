CREATE PROCEDURE [dbo].[GetClients]
AS
	SELECT
	x.[ClientId]
	,x.[ClientName]
	,x.[IsBusiness]
	FROM (
		(SELECT
			b.[BusinessId] AS "ClientId"
			,CASE WHEN b.ContactName = '' OR b.ContactName IS NULL
				THEN b.[BusinessName]
			ELSE
				CONCAT(b.[BusinessName], ' - ', b.[ContactName])
			END AS "ClientName"
			,1 AS "IsBusiness"
		FROM [dbo].[Businesses] b
		)
		UNION
		(SELECT
			c.CustomerId AS "ClientId"
			,CONCAT(c.[FirstName], ' ', c.[LastName]) AS "ClientName"
			,0 AS "IsBusiness"
		FROM [dbo].[Customers] c
		)
	) x
	ORDER BY [ClientName]
GO
