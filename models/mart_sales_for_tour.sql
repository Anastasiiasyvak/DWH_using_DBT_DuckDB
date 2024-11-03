-- Загальні продажі за тур
with total_sales as (
    select
        tour_id,
        sum(total_price) as total_sales_amount,
        count(order_id) as total_orders
    from {{ ref('stg_orders') }}
    group by tour_id
)

select
    t.tour_name,
    ts.total_sales_amount,
    ts.total_orders
from {{ ref('stg_tours') }} as t
join total_sales as ts
on t.tour_id = ts.tour_id
