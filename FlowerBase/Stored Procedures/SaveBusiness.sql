CREATE PROCEDURE [dbo].[SaveBusiness]
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
	INSERT INTO [dbo].[Businesses]
		(BusinessName, ContactName, StreetAddress, City, Region, Code, PhoneNumber, Email)
	VALUES
		(@BusinessName, @ContactName, @StreetAddress, @City, @Region, @Code, @PhoneNumber, @Email)
	SET @BusinessId = SCOPE_IDENTITY()
GO
