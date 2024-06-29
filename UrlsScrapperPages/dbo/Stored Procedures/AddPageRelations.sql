CREATE PROCEDURE [dbo].AddPageRelations
	@id_element_relation uniqueidentifier,
	@element_name varchar(250),
	@elements varbinary(max) = null
AS
	declare @id uniqueidentifier;

	select @id = id from [PageElements] where element_name = @element_name;

	if @id is not null
		UPDATE [dbo].[PageElements]
		SET  [id_element_relation] = @id_element_relation
			,[element_name] = @element_name
			,[elements] = @elements
			,[modified_date] = getdate()
		WHERE id = @id;
	else
		INSERT INTO [dbo].[id_element_relation] 
		(
			 [id_element_relation],
			 [element_name],
			 [elements]
		) 
		VALUES 
		(
			 @id_element_relation
			,@element_name
			,@elements
		);