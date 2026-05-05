with stg_users as (
    select 
        *
    from 
        {{ref ('stg_users') }}
), segments as (
select 
    *, 
    {{ channel_from_source('source')}} as channel, 
    {{ agegroup_from_age('age') }} as age_group
from 
    stg_users 
)
select 
    *
from 
    segments
left join 
    {{ ref('margins') }} 
using(channel)