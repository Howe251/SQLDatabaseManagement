--ѕоказывать список магазинов, заказывающих данный товар.
SELECT store_name, conditer_menu.[name]
FROM conditer_menu_transfer_to
INNER JOIN conditer_menu
    ON conditer_menu_transfer_to.menu_id = conditer_menu.id
INNER JOIN conditer_store
    ON conditer_menu_transfer_to.store_id = conditer_store.id
WHERE menu_id = 2;

--ѕоказывать список продуктов, заказываемых у данного поставщика.
SELECT company_name, a.[name]
FROM conditer_ingredients as a
INNER JOIN conditer_suplier ON a.postavka_id = conditer_suplier.id
WHERE conditer_suplier.id = 7;

--ѕоказывать стоимость произведенного товара за отчетный период времени
SELECT S2.[name], SUM(S2.cost*S1.[count]) as CostSum
FROM conditer_produced as S1
LEFT OUTER JOIN conditer_menu AS S2 ON S1.menu_id = S2.id
WHERE produce_date BETWEEN '2022-05-06' AND '2022-05-07'
AND S2.id = 1
GROUP BY S2.[name];

--ѕоказывать ассортимент данного товара и цену.
SELECT [name], cost
FROM conditer_menu
