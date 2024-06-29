CREATE PROCEDURE [dbo].AddPage
	@url varchar(max) = null,
	@id_element_relation uniqueidentifier,
	@name varchar(250),
	@html varbinary(max) = null,
	@json varbinary(max) = null
AS
	declare @id uniqueidentifier;

	select @id = id from Pages where name = @name;

	if @id is not null
		UPDATE [dbo].[Pages]
		SET  [id_element_relation] = @id_element_relation
			,[url] = @url
			,[html] = @html
			,[json] = @json
			,[modified_date] = getdate()
		WHERE id = @id;
	else
		INSERT INTO [dbo].[Pages] 
		(
			 [id_element_relation]
			,[name]
			,[url]
			,[html]
			,[json]
		) 
		VALUES 
		(
			 @id_element_relation
			,@name
			,@url
			,@html
			,@json
		);