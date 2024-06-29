CREATE PROCEDURE [dbo].PagesList
AS
	SELECT [Id],[name],[url]
	  FROM [dbo].[Pages] order by name