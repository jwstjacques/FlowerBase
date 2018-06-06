CREATE PROCEDURE [dbo].[UpdateCustomer]
	@CustomerId int output
	,@FirstName nvarchar(50)
	,@LastName nvarchar(50)
	,@StreetAddress varchar(50)
	,@City varchar(50)
	,@Code varchar(10)
	,@PhoneNumber varchar(10)
	,@Email varchar(50)
AS
	UPDATE [dbo].[Customers]
	SET
		FirstName = @FirstName,
		LastName = @LastName,
		StreetAddress = @StreetAddress,
		City = @City,
		Code = @Code,
		PhoneNumber = @PhoneNumber,
		Email = @Email
	WHERE CustomerId = @CustomerId
GO
