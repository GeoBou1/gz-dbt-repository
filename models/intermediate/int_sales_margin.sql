SELECT
    sales.*
    ,CAST(product.purchase_price as FLOAT64) as purchase_price
    ,ROUND(sales.quantity*CAST(product.Purchase_price as FLOAT64),2) as purchase_cost
    ,ROUND(sales.revenue - sales.quantity*CAST(product.purchase_price as FLOAT64),2) as margin
FROM {{ref('stg_raw__sales')}} as sales
LEFT JOIN {{ref('stg_raw__product')}} as product
ON sales.products_id = product.products_id