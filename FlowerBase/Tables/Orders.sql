CREATE TABLE [dbo].[Orders]
(
	[OrderId] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [OrderDate] SMALLDATETIME NOT NULL,
	[IsDelivery] BIT NOT NULL DEFAULT 0,
    [Recipient] NVARCHAR(50) NULL,
    [RecipientStreetAddress] VARCHAR(50) NULL,
	[RecipientCity] VARCHAR(50) NULL,
	[RecipientCode] VARCHAR(10) NULL,
	[RecipientPhoneNumber] VARCHAR(10) NULL,
	[RecipientEmail] VARCHAR(10) NULL,
	[DeliveryDate] SMALLDATETIME NULL,
	[NumberOfLillies] SMALLINT NOT NULL, 
    [CustomerId] INT NULL, 
    [BusinessId] INT NULL
)
