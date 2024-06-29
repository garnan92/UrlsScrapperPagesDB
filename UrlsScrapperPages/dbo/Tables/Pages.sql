CREATE TABLE [dbo].[Pages] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [name]         VARCHAR (250)    NOT NULL,
    [url]          VARCHAR (MAX)    NULL,
    [html]         VARBINARY (MAX)  NULL,
    [json]         VARBINARY (MAX)  NULL,
    [created_date] DATETIME         DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);



