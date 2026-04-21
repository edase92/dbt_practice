with stg_users as (
    select 
        *
    from 
        {{ref ('stg_users') }}
)
select 
    *, 
    {{ channel_from_source('source')}} as channel, 
    {{ agegroup_from_age('age') }} as age_group
from 
    stg_users