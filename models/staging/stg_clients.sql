with source as (
    select * from {{ ref('raw_clients') }}
),

renamed as (
    select
        id as client_id,
        name as client_name,
        surname as client_surname,
        email as client_email,
        phone as client_phone
    from source
)

select * from renamed
