SELECT 
	CurrencyCode,
	[Name]
FROM Sales.Currency
WHERE [Name] IN ('Kroon', 'Armenian Dram', 'US Dollar');
