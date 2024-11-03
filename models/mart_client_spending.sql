-- Середні витрати клієнтів
select
    c.client_id,
    concat(c.client_name, ' ', c.client_surname) as full_client_name,
    count(o.order_id) as total_orders,
    sum(o.total_price) as total_spent,
    avg(o.total_price) as avg_spent_per_order
from {{ ref('stg_clients') }} c
left join {{ ref('stg_orders') }} o on c.client_id = o.client_id
group by c.client_id, full_client_name
order by total_spent desc
