{{
    config(
        materialized='view'
    )
}}
with customer as(
    select * from {{ source('AmazonBI', 'customers') }}

)

select * from customer