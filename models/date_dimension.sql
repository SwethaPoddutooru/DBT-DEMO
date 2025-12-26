WITH CTE AS (
    SELECT 
    STARTED_AT,
    to_date(STARTED_AT) as date_started_at,
    hour(to_timestamp(started_at)) as hour_started,
    dayname(to_timestamp(started_at)) as day_number_started,
    {{get_seasons(started_at)}} as Season,
    {{function1('started_at')}} as timeline

    from 
    {{ source('DEMO1', 'BIKE_TBL') }}
    where STARTED_AT != 'started_at'
)

select * from CTE