with source as (
    select * from {{ ref('raw_orders') }}
),

renamed as (
    select
        id as order_id,
        tour_id,
        client_id,
        order_date,
        total_price
    from source
)

select * from renamed
