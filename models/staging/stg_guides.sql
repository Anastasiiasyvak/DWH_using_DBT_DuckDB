with source as (
    select * from {{ ref('raw_guides') }}
),

renamed as (
    select
        id as guide_id,
        name as guide_name,
        surname as guide_surname,
        phone as guide_phone,
        email as guide_email
    from source
)

select * from renamed
