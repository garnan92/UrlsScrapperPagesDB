CREATE PROCEDURE [dbo].GetUser
	@email varchar(250),
	@password varchar(50)
AS
	SELECT id, email, name from Users where email = @email and password = @password;