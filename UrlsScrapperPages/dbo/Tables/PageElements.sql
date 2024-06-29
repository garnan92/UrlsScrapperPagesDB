CREATE TABLE [dbo].[PageElements] (
    [Id]                  UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [id_element_relation] UNIQUEIDENTIFIER NOT NULL,
    [element_name]        VARCHAR (250)    NULL,
    [url]                 VARCHAR (MAX)    NOT NULL,
    [elements]            VARBINARY (MAX)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

