DECLARE @T DATETIME
SELECT 
	StandardCost,
	StartDate,
CASE WHEN EndDate IS NULL 
	THEN GETDATE() ELSE EndDate END AS EndDate
FROM Production.ProductCostHistory;