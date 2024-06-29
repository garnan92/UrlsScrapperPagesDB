CREATE PROCEDURE [dbo].PagesList
AS
	SELECT [pa].[Id], [pa].[name], [pa].[url], [pe].[element_name], [pe].[elements]
	  FROM [dbo].[Pages] [pa]
	  inner join [dbo].[PageElements] [pe] on [pa].[id_element_relation] = [pe].[id_element_relation]
	  order by [pa].[name]