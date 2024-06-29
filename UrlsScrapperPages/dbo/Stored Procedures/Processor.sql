CREATE PROCEDURE [dbo].Processor
	@url varchar(max) = null,
	@name varchar(250) = null,
	@html varbinary(max) = null,
	@json varbinary(max) = null
AS
	INSERT INTO Pages (name, url, html, json) VALUES (@name, @url, @html, @json)