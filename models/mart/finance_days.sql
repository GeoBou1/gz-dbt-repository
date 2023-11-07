SELECT
    date_date
    ,COUNT(orders_id) as nb_transactions
    ,ROUND(SUM(revenue)) as revenue
    ,ROUND(AVG(revenue)) as average_basket
    ,ROUND(SUM(margin)) as margin
    ,ROUND(SUM(operational_margin)) as operational_margin
FROM {{ref("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date DESC