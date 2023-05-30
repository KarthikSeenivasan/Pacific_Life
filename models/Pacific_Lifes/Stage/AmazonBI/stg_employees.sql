{{
    config(
        materialized='incremental'
    
    )
}}

with stg_Employee as (
    select * from {{ source('AmazonBI', 'Employee') }}
),

final as (
    select id, name, age, position, salary, hire_date from stg_Employee
    {% if is_incremental() %}
        -- this filter will only be applied on an incremental run
        where hire_date > (select max(hire_date) from {{ this }}) 
    {% endif %}
)
select * from final