CREATE TABLE [dbo].[Customers] (
    [CustomerId]    INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]     NVARCHAR (50) NOT NULL,
    [LastName]      NVARCHAR (50) NOT NULL,
    [StreetAddress] VARCHAR (50)  NOT NULL,
    [City]          VARCHAR (50)  NOT NULL,
    [Code]          VARCHAR (10)  NOT NULL,
    [PhoneNumber]   VARCHAR (10)  NULL,
    [Email]         VARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([CustomerId] ASC)
);

GO

CREATE NONCLUSTERED INDEX [IX_Customers_FirstName]
    ON [dbo].[Customers]([FirstName] ASC);

GO

CREATE NONCLUSTERED INDEX [IX_Customers_LastName]
    ON [dbo].[Customers]([LastName] ASC);
