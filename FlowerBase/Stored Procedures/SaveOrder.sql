CREATE PROCEDURE [dbo].[SaveOrder]
(
	@OrderDate smalldatetime
	,@DeliveryDate smalldatetime
	,@Recipient varchar(5)
	,@RecipientStreetAddress varchar(50)
	,@RecipientCity varchar(50)
	,@RecipientRegion varchar(50)
	,@RecipientCode varchar(10)
	,@RecipientPhoneNumber varchar(10)
	,@RecipientEmail varchar(50)
	,@NumberOfLillies smallint
	,@CustomersId int
	,@BusinessId int
	,@Text nvarchar(255) = null
)
AS
	DECLARE @OrderId int

	-- ORDER
	INSERT INTO [dbo].[Orders]
		(OrderDate, DeliveryDate, Recipient, RecipientStreetAddress, RecipientCity, RecipientRegion, RecipientCode, RecipientPhoneNumber, RecipientEmail, [NumberOfLilies], CustomerId, BusinessId)
	VALUES
		(@OrderDate, @DeliveryDate, @Recipient, @RecipientStreetAddress, @RecipientCity, @RecipientRegion, @RecipientCode, @RecipientPhoneNumber, @RecipientEmail, @NumberOfLillies, @CustomersId, @BusinessId)
	SET @OrderId = SCOPE_IDENTITY()

	-- NOTE
	INSERT INTO [dbo].[Notes]
		(OrderId, [Text])
	VALUES
		(@OrderId, @Text)

	SELECT @OrderId
GO
