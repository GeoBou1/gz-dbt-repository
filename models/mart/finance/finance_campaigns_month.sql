WITH bymonth AS (
    SELECT
        EXTRACT(YEAR from date_date) as dateyear
        ,EXTRACT(MONTH from date_date) as datemonth
        ,ads_margin
        ,average_basket
        ,margin
        ,operational_margin
        ,revenue
        ,nb_transactions
    FROM {{ref('finance_campaigns_day')}}
)

SELECT
    CONCAT(dateyear,"-",datemonth) as datemonth
    ,ROUND(SUM(ads_margin)) as ads_margin
    ,ROUND(SUM(average_basket)) as average_basket
    ,ROUND(SUM(margin)) as margin
    ,ROUND(SUM(operational_margin)) as operational_margin
    ,ROUND(SUM(revenue)) as revenue
    ,ROUND(SUM(nb_transactions)) as nb_transactions
FROM bymonth
GROUP BY datemonth
ORDER BY datemonth DESC