SELECT Rating, [Name], ReviewerName
FROM Production.Product AS S1
INNER JOIN Production.ProductReview AS S2
ON S1.ProductID = S2.ProductID;