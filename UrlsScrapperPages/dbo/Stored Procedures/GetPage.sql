CREATE PROCEDURE [dbo].GetPage
	@id uniqueidentifier
AS
	SELECT TOP (1000) [Id]
      ,[name]
      ,[url]
      ,[html]
      ,[json]
      ,[created_date]
  FROM [UrlsScrapperPages].[dbo].[Pages]
  where Id = @id