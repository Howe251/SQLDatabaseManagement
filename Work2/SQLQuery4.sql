DECLARE @T DATETIME
SELECT COUNT(LoginID) AS DavidCount
FROM HumanResources.Employee
WHERE lower(LoginID) LIKE '%david%' AND BirthDate < DATEADD(Year, -40,GETDATE());
