SELECT S2.AddressID, S1.[Name], S2.rowguid
FROM Person.AddressType as S1
LEFT OUTER JOIN Person.BusinessEntityAddress AS S2
ON S1.AddressTypeID=S2.AddressTypeID;