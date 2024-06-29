CREATE PROCEDURE [dbo].AddElementRelation
	@name varchar(250)
AS
	INSERT INTO [dbo].[ElementRelation]
           ([name])
     VALUES
           (@name)