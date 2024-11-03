--  загальна кількість замовлень і середні витрати на клієнта за кожен місяць
select
    date_trunc('month', o.order_date) as month,
    count(o.order_id) as total_orders,
    avg(o.total_price) as avg_spent_per_client
from {{ ref('stg_orders') }} o
group by month
order by total_orders desc
