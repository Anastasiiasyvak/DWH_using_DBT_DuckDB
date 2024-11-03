with source as (
    select * from {{ ref('raw_hotels') }}
),

renamed as (
    select
        id as hotel_id,
        name as hotel_name,
        country as hotel_country,
        address as hotel_address,
        rating as hotel_rating
    from source
)

select * from renamed
