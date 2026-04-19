with source_order_items as (
    select 
        * 
    from 
        {{ source('thelook', 'order_items')}}
)

select 
  created_at, 
  id as order_items_id, 
  order_id, 
  user_id, 
  product_id,
  inventory_item_id, 
  status, 
  round(sale_price, 2) as sale_price
from 
    source_order_items