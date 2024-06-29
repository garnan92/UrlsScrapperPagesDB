CREATE TABLE [dbo].[PageElements] (
    [Id]                  UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [id_element_relation] UNIQUEIDENTIFIER NOT NULL,
    [element_name]        VARCHAR (250)    NULL,
    [elements]            VARBINARY (MAX)  NULL,
    [created_date]        DATETIME         DEFAULT (getdate()) NOT NULL,
    [modified_date]       DATETIME         DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);



