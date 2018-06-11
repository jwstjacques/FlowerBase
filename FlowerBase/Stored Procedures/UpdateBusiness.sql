CREATE PROCEDURE [dbo].[UpdateBusiness]
	@BusinessId int output
	,@BusinessName nvarchar(50)
	,@ContactName nvarchar(50)
	,@StreetAddress varchar(50)
	,@City varchar(50)
	,@Region varchar(50)
	,@Code varchar(10)
	,@PhoneNumber varchar(10)
	,@Extension varchar(10)
	,@Email varchar(50)
AS
	UPDATE [dbo].[Businesses]
	SET
		BusinessName = @BusinessName,
		ContactName = @ContactName,
		StreetAddress = @StreetAddress,
		City = @City,
		Region = @Region,
		Code = @Code,
		PhoneNumber = @PhoneNumber,
		Email = @Email
	WHERE BusinessId = @BusinessId
GO
