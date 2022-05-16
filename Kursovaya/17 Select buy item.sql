USE SQLKursach

--Показывать список продуктов, заказываемых у данного поставщика.
SELECT company_name, a.[name]
FROM conditer_ingredients as a
INNER JOIN conditer_suplier ON a.delivery_id = conditer_suplier.id
WHERE conditer_suplier.id = 7;
