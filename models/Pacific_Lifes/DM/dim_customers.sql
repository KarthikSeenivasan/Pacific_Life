with stg_customers as (
    select * from {{ ref('stg_customer') }}
),

customers as (
select 
customer_id,
customer_name
email,
concat('+91 ',phone) as phone,
address
from stg_customers
)

select * from customers
