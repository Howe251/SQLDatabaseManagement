--Показать категорию продуктов ([Name] и ProductSubcategoryID) 
--(Таблица Production.ProductSubcategory), для которой представлено 
--максимальное количество продуктов (Таблица Production.Product).

SELECT [Name], ProductSubcategoryID
FROM Production.ProductSubcategory
WHERE ProductSubcategoryID = 
(
	SELECT TOP 1 ProductSubcategoryID
	FROM Production.Product
	WHERE ProductSubcategoryID IS NOT NULL
	GROUP BY ProductSubcategoryID
	HAVING COUNT(*) > 1
	ORDER BY COUNT(*) DESC
);
