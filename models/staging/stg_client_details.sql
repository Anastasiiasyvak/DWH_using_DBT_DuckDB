with source as (
    select * from {{ ref('raw_client_details') }}
),

renamed as (
    select
        client_id,
        additional_info
    from source
)

select * from renamed
