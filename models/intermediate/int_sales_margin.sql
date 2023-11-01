SELECT *, 
CAST(purchase_price AS FLOAT64) * quantity AS purchase_cost,
revenue - (CAST(purchase_price AS FLOAT64) * quantity) AS margin 
FROM {{ ref('stg_raw__product') }} AS pr
LEFT JOIN {{ ref('stg_raw__sales') }} AS sa
ON pr.products_id = sa.pdt_id