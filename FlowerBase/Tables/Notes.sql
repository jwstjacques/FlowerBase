CREATE TABLE [dbo].[Notes]
(
	[NoteId] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [OrderId] INT NOT NULL, 
    [Text] NVARCHAR(255) NOT NULL, 
    CONSTRAINT [FK_Notes_Orders] FOREIGN KEY ([OrderId]) REFERENCES [Orders]([OrderId])
)
