with source_orders as (
    select 
        * 
    from 
        {{ source('thelook', 'orders')}}
)

select 
  created_at,
  order_id, 
  user_id,
  status, 
  num_of_item
from 
    source_orders 