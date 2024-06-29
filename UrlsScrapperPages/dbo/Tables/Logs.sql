CREATE TABLE [dbo].[Logs] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [title]        VARBINARY (250)  NULL,
    [message]      VARCHAR (MAX)    NULL,
    [created_date] DATETIME         DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);



