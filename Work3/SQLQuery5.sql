SELECT DISTINCT
	S2.ShipDate, S2.CustomerID
FROM Sales.SalesOrderHeader AS S1
INNER JOIN Sales.SalesOrderHeader AS S2
ON (S1.ShipDate = S2.ShipDate)
AND S1.CustomerID <> S2.CustomerID
ORDER BY S2.ShipDate;
