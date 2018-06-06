CREATE PROCEDURE [dbo].[DeleteBusiness]
	@BusinessId int
AS
	DELETE FROM [dbo].[Businesses]
	WHERE BusinessId = @BusinessId
GO