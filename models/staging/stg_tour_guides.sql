with source as (
    select * from {{ ref('raw_tour_guides') }}
),

renamed as (
    select
        tour_id,
        guide_id
    from source
)

select * from renamed
