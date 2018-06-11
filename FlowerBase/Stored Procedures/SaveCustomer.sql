CREATE PROCEDURE [dbo].[SaveCustomer]
	@CustomerId int output
	,@FirstName nvarchar(50)
	,@LastName nvarchar(50)
	,@StreetAddress varchar(50)
	,@City varchar(50)
	,@Region varchar(50)
	,@Code varchar(10)
	,@PhoneNumber varchar(10)
	,@Email varchar(50)
AS
	INSERT INTO [dbo].[Customers]
		(FirstName, LastName, StreetAddress, City, Region, Code, PhoneNumber, Email)
	VALUES
		(@FirstName, @LastName, @StreetAddress, @City, @Region, @Code, @PhoneNumber, @Email)
	SET @CustomerId = SCOPE_IDENTITY()
GO
