{% set var = "John Doe" %}

{{ var }}  

-- Incremental load flag and last load date
{% set inc_flag = 1 %}
{% set interval = 3 %}

select 
    *
from 
    {{ ref('int_user_segments') }}  
{% if inc_flag == 1 %}   
    where created_date >= date_sub(current_date(), interval {{ interval }} day)
{% endif %} 


-- For Select Loop
{% set list = ["user_id", "gender", "country"] %} 
select
    {% for i in list %}
        {{ i }}
        {% if not loop.last %}, {% endif %}
    {% endfor %} 
from 
    {{ ref('int_user_segments') }} 

