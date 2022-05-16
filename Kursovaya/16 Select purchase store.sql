USE SQLKursach

--Показывать список магазинов, заказывающих данный товар.
SELECT store_name, conditer_menu.[name]
FROM conditer_menu_transfer_to
INNER JOIN conditer_menu
    ON conditer_menu_transfer_to.menu_id = conditer_menu.id
INNER JOIN conditer_store
    ON conditer_menu_transfer_to.store_id = conditer_store.id
WHERE menu_id = 2;
