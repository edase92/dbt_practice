with sources_products as (
    select 
        *
    from 
        {{ source('thelook', 'products')}}
)

select 
  id as product_id, 
  cost, 
  category, 
  name, 
  retail_price, 
  department
from  
    sources_products    