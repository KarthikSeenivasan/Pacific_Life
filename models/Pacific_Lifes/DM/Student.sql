{{
    config(
        materialized='table'
    )
}}

with students as(
    select * from {{ ref('stg_student') }}
)

select * from students