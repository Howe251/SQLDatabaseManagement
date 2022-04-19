SELECT DISTINCT
	S2.CustomerID,
	S2.ShipDate
FROM Sales.SalesOrderHeader AS S1
INNER JOIN Sales.SalesOrderHeader AS S2
ON (S1.CustomerID = S2.CustomerID)
AND S1.ShipDate <> S2.ShipDate
ORDER BY S2.CustomerID;
