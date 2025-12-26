WITH daily_weather AS (
    SELECT 
    date(time) as daily_weather_stats,
    main,
    temp,
    pressure,
    humidity
    from 
    {{ source('DEMO1', 'WEATHER_TBL') }}
),

daily_weather_agg as (
select daily_weather_stats, sum(pressure)
from daily_weather
group by daily_weather_stats
)

select * from daily_weather