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
    *, 
    cast(created_at as date) as created_date
from 
    segments
left join 
    {{ ref('margins') }} 
using(channel)