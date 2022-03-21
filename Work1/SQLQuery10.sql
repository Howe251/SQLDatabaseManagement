SELECT 
	CountryRegionCode,
	[Name],
	CASE WHEN CountryRegionCode = 'US' THEN NULL ELSE CountryRegionCode END AS NullCountryRegionCode
FROM Person.StateProvince;
