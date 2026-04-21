{% macro channel_from_source(source_column)%}
    case 
        when {{ source_column }} in ('Display', 'Facebook') then 'Paid' 
        else 'Organic'
    end
{% endmacro %}