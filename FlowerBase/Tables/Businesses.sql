CREATE TABLE [dbo].[Businesses] (
    [BusinessId]    INT IDENTITY (1, 1) NOT NULL,
    [BusinessName]     NVARCHAR (50) NOT NULL,
    [ContactName]      NVARCHAR (50) NOT NULL,
    [StreetAddress] VARCHAR (50)  NOT NULL,
    [City]          VARCHAR (50)  NOT NULL,
    [Code]          VARCHAR (10)  NOT NULL,
    [PhoneNumber]   VARCHAR (10)  NULL,
	[Extension]   VARCHAR (10)  NULL,
    [Email]         VARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([BusinessId] ASC)
);

GO

CREATE NONCLUSTERED INDEX [IX_Businesss_BusinessName]
    ON [dbo].[Businesses]([BusinessName] ASC);

GO

CREATE NONCLUSTERED INDEX [IX_Businesss_ContactName]
    ON [dbo].[Businesses]([ContactName] ASC);