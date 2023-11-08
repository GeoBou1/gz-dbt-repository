SELECT
    cda.date_date
    ,(fda.operational_margin-cda.ads_cost) as ads_margin
    ,fda.average_basket
    ,fda.margin
    ,fda.operational_margin
    ,fda.revenue
    ,fda.nb_transactions
FROM {{ref('int_campaigns_days')}} cda
LEFT JOIN {{ref('finance_days')}} fda
ON cda.date_date=fda.date_date
ORDER BY cda.date_date DESC