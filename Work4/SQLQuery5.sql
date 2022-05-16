--Показать товары, цена которых равна минимальной (больше нуля) цене товара 
--того же веса (вес определен). Показать поля [Name], ListPrice и [Weight].
SELECT product.[Name], product.ListPrice, product.[Weight]
FROM Production.Product AS product
WHERE product.ListPrice = 
(
    SELECT MIN(p.ListPrice)
    FROM Production.Product AS p
    WHERE p.ListPrice > 0
	AND product.[Weight] IS NOT NULL
    AND p.[Weight] = product.[Weight])

