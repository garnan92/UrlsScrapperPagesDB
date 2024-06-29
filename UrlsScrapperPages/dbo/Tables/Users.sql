CREATE TABLE [dbo].[Users] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [email]        VARCHAR (250)    NOT NULL,
    [name]         VARCHAR (50)     NOT NULL,
    [password]     VARCHAR (50)     NOT NULL,
    [created_date] DATETIME         DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED ([Id] ASC)
);



