CREATE TABLE [dbo].[ElementRelation] (
    [Id]            UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [name]          VARCHAR (250)    NOT NULL,
    [created_date]  DATETIME         DEFAULT (getdate()) NOT NULL,
    [modified_date] DATETIME         DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);



