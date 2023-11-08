{% macro margin_percent_func(revenue,purchase_cost) %}
    ROUND((SAFE_DIVIDE((revenue-purchase_cost),revenue)),2)
{% endmacro %}