with source_users as (
    select 
        * 
    from 
        {{ source('thelook', 'users')}}
)

select 
  created_at,
  id as user_id,
  concat(first_name, ' ', last_name) as full_name, 
  age, 
  gender, 
  country,
  coalesce(city, 'unknown') as city, 
  traffic_source as source
from 
    source_users 


