-- Продуктивність гідів
select
    g.guide_id,
    concat(g.guide_name, ' ', g.guide_surname) as full_guide_name,
    count(o.order_id) as total_orders,
    sum(o.total_price) as total_sales
from {{ ref('stg_guides') }} g
left join {{ ref('stg_tour_guides') }} tg on g.guide_id = tg.guide_id
left join {{ ref('stg_tours') }} t on tg.tour_id = t.tour_id
left join {{ ref('stg_orders') }} o on t.tour_id = o.tour_id
group by g.guide_id, full_guide_name
order by total_sales desc
