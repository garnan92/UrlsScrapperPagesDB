CREATE PROCEDURE [dbo].GetPage
	@id uniqueidentifier
AS

  SELECT [pa].[Id]
		,[pa].[name]
		,[pa].[url]
		,[pa].[html]
		,[pa].[json]
		,[pe].[element_name]
		,[pe].[elements]
	  FROM [dbo].[Pages] [pa]
	  inner join [dbo].[PageElements] [pe] on [pa].[id_element_relation] = [pe].[id_element_relation]
	  where [pa].[Id] = @id