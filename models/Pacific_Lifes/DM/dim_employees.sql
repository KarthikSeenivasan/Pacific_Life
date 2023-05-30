{{
    config(
        materialized='table'
    )
}}

with stg_Employee as(
    select * from {{ ref('stg_employees') }}


),
final as 
(
    select * from stg_Employee
)

select * from final