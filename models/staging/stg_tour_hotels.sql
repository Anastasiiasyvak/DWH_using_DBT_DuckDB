with source as (
    select * from {{ ref('raw_tour_hotels') }}
),

renamed as (
    select
        tour_id,
        hotel_id
    from source
)

select * from renamed
