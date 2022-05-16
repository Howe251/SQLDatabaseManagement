--Показать товар ([Name]) с минимальной разницей Стоимости последнего поступления
--(LastReceiptCost) и Стандартной стоимости (StandardPrice) 
--(Таблица Purchasing.ProductVendor)

SELECT product.[Name], ABS(vendor.LastReceiptCost - vendor.StandardPrice) as [ABS]
FROM Purchasing.ProductVendor AS vendor
INNER JOIN Production.Product AS product
ON product.ProductID = vendor.ProductID
WHERE ABS(vendor.LastReceiptCost - vendor.StandardPrice) = 
(
    SELECT TOP 1 MIN(ABS(LastReceiptCost - StandardPrice)) AS AB
    FROM Purchasing.ProductVendor
    WHERE ABS(LastReceiptCost - StandardPrice) > 0
    GROUP BY ProductID
	ORDER BY AB
)