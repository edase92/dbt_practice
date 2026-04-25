{{ config(
    severity = "error",
    tags = ["num_of_items_not_zero"],
    warn_if = ">0", 
    error_if = ">10"
) }}

select 
    * 
from 
    {{ ref('stg_orders') }} 
where 
    num_of_item = 0 