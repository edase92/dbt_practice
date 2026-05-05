select 
    * 
from 
    {{ ref('int_user_segments') }} 
left join 
    {{ ref('margins') }} 
using(channel)