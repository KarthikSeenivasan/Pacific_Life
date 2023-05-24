with orders as(
    select * from {{ ref('stg_order') }}
),
order_items as (
    select * from {{ ref('stg_order_items') }}
),

fact_orders as (

select 
    o.customer_id,
    ot.product_id,
    --ot.item_id,
    ot.quantity,
    ot.item_price,
    --o.total_amount,
    o.order_date    
from orders o
join order_items ot on ot.order_id = o.order_id

)

select * from fact_orders