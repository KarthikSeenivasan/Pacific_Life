{{
    config(
        materialized='table'
    )
}}

with product as(
    select * from {{ ref('stg_product') }}
)

select * from product
