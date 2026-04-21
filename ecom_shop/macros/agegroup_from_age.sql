{% macro agegroup_from_age(age_column)%}
    case 
        when {{ age_column }} < 18 then 'Under 18' 
        when {{ age_column }} between 18 and 24 then '18-24' 
        when {{ age_column }} between 25 and 34 then '25-34' 
        when {{ age_column }} between 35 and 44 then '35-44' 
        when {{ age_column }} between 45 and 54 then '45-54' 
        when {{ age_column }} between 55 and 64 then '55-64' 
        else '65+'
    end
{% endmacro %}