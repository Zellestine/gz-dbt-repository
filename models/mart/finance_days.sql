select
    date_date,
    count(distinct orders_id) as nb_transactions,
    avg(revenue) as average_basket,
    sum(revenue) as revenue,
    sum(margin) as margin,
    sum(operational_margin) as operational_margin
from {{ ref("int_orders_operational") }}
group by date_date

