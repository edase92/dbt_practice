select 
    channel, 
    count(distinct user_id) as users, 
    countif(margin = 'High') as profitable, 
    countif(margin = 'Low') as not_profitable, 
    countif(margin = 'High') / count(*) as ratio
from 
    {{ ref('int_user_segments')}} 
group by 
    1