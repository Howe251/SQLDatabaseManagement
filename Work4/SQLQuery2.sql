--Показать товары, цена которых выше средней цены 
--(не учитывать товары с ценой, равной нулю) (Таблица Production.Product). 
--Вывести [Name] и ListPrice.

SELECT [Name]
     , ListPrice
FROM Production.Product
WHERE ListPrice > 
(
    SELECT AVG(ListPrice)
    FROM Production.Product
    WHERE ListPrice > 0
)
ORDER BY ListPrice;
