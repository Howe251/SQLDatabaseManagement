SELECT ProductLine, MAX(ListPrice) As MaxPrice
FROM Production.Product
WHERE ProductLine IS NOT NULL
GROUP BY ProductLine;