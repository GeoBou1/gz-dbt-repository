SELECT
    date_date
    ,ROUND(SUM(ads_cost)) as ads_cost
    ,ROUND(SUM(impression)) as ads_impression
    ,ROUND(SUM(click)) as ads_clicks
FROM {{ref('int_campaigns')}}
GROUP BY date_date
ORDER BY date_date DESC