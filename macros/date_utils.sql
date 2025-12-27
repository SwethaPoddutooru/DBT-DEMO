{% macro function1(x)%}

CASE WHEN to_timestamp({{x}}) < current_date then 'PAST'
ELSE 'FUTURE'
END 

{%endmacro%}

{% macro get_seasons(x)%}

case when month(to_timestamp(started_at)) in (12,1,2)
        then 'WINTER'
        WHEN month(to_timestamp(started_at)) in (3,4,5)
        THEN 'SPRING'
        WHEN month(to_timestamp(started_at)) in (6,7,8)
        THEN 'SUMMER'
        ELSE 'AUTUMN'
        END

{%endmacro%}