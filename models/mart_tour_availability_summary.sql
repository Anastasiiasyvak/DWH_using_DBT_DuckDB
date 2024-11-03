-- Підсумок доступності турів
select
    t.tour_id,
    t.tour_name,
    count(o.order_id) as total_booked,
    (t.max_participants - count(o.order_id)) as available_spots
from {{ ref('stg_tours') }} t
left join {{ ref('stg_orders') }} o on t.tour_id = o.tour_id
group by t.tour_id, t.tour_name, t.max_participants
order by available_spots desc
