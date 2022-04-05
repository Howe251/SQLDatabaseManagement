SELECT DISTINCT
	S2.CustomerID,
	S2.Freight
FROM Sales.SalesOrderHeader AS S1
INNER JOIN Sales.SalesOrderHeader AS S2
ON S1.Freight > 30 AND S2.Freight > 30
AND (S1.CustomerID = S2.CustomerID)
AND S1.Freight <> S2.Freight
ORDER BY S2.CustomerID;
