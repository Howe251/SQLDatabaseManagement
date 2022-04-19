SELECT
      DENSE_RANK() OVER(
        PARTITION BY Color
        ORDER BY ListPrice
      ) AS N
    , [Name]
    , ListPrice
    , Color
FROM Production.Product
WHERE ListPrice > 0 AND Color IS NOT NULL;
