{{
    config(
        materialized='view'
    )
}}

with orders as (

    select * from {{ source('AmazonBI', 'orders') }}
)

select * from orders