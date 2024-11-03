with source as (
    select * from {{ ref('raw_tours')}}
),

renamed as (
    select
        id as tour_id,
        name as tour_name,
        start_date,
        finish_date,
        price,
        availability,
        description,
        max_participants,
        min_participants
    from source
)

select * from renamed
