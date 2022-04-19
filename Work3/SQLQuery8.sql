SELECT S1.ProductModelID
FROM Production.ProductModel AS S1
INTERSECT
SELECT S2.ProductModelID
FROM Production.ProductModelIllustration AS S2
