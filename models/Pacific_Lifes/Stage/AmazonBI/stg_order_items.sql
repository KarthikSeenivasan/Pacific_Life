with order_items as (

    select * from {{ source('AmazonBI', 'order_items') }}
)

select * from order_items