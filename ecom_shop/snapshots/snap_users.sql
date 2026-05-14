{% snapshot snap_users %}
{{
    config(
        target_schema='snapshots', 
        unique_key='user_id', 
        strategy='check', 
        check_cols=['full_name', 'age', 'city', 'country']
    )
}}
select 
    * 
from 
    {{ ref('stg_users') }}
{% endsnapshot %}