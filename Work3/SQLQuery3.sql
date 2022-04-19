SELECT S2.AccountNumber, S1.SubTotal, S1.SalesOrderID
FROM Sales.SalesOrderHeader AS S1
RIGHT OUTER JOIN Sales.Customer AS S2
ON S1.CustomerID = S2.CustomerID;
