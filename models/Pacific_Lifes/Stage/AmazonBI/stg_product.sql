with products as (
    select * from {{ source('AmazonBI', 'products') }}
)

select * from products