SELECT
	ProductID,
	[Name],
	COALESCE(Class, Style, 'Unknown') AS Measurment
FROM
	Production.Product;
	