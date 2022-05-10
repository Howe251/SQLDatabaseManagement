--Показать сотрудника, который работает дольше всех
SELECT p.FirstName, p.MiddleName, p.LastName, DATEDIFF(YEAR,e.HireDate,GETDATE()) AS WorkingAge 
FROM Person.Person AS p
INNER JOIN HumanResources.Employee as e
ON p.BusinessEntityID = e.BusinessEntityID
WHERE e.HireDate = (
	SELECT MIN(HireDate)
	FROM HumanResources.Employee
);
