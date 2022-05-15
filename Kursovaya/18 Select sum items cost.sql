USE SQLKursach

--Показывать стоимость произведенного товара за отчетный период времени
SELECT S2.[name], SUM(S2.cost*S1.[count]) as CostSum
FROM conditer_produced as S1
LEFT OUTER JOIN conditer_menu AS S2 ON S1.menu_id = S2.id
WHERE produce_date BETWEEN '2022-05-06' AND '2022-05-07'
AND S2.id = 1
GROUP BY S2.[name];
