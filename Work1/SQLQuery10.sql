SELECT 
	CountryRegionCode,
	[Name],
	case when CountryRegionCode = 'US' then NULL else CountryRegionCode end AS NullCountryRegionCode
FROM Person.StateProvince;
