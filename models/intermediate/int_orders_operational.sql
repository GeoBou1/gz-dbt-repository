SELECT
    ordmarg.*
    ,ROUND(((ordmarg.margin+ship.shipping_fee)-(ship.logcost+ship.ship_cost)),2) as operational_margin
FROM {{ref("int_orders_margin")}} ordmarg
LEFT JOIN {{ref("stg_raw__ship")}} ship
ON ordmarg.orders_id=ship.orders_id
ORDER BY orders_id DESC