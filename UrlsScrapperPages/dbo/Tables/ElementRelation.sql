CREATE TABLE [dbo].[ElementRelation] (
    [Id]   UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [name] VARCHAR (250)    NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

