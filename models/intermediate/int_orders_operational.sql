SELECT *, margin + shipping_fee - logcost - CAST(ship_cost AS FLOAT64) AS operational_margin 
FROM {{ ref('int_orders_margin') }} AS ma
LEFT JOIN {{ ref('stg_raw__ship') }} AS sh
ON ma.orders_id = sh.orders_id
