SELECT BusinessEntityID, [Name]
FROM Purchasing.Vendor
UNION
SELECT BusinessEntityID, LastName
FROM Person.Person;
