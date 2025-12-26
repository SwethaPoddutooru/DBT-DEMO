with bike as (
    select 
    start_station_id,
    start_station_name,
    start_lat,
    start_lng
    from {{ source('DEMO1', 'BIKE_TBL') }}
    WHERE RIDEID != 'ride_id'
    
)

select * from bike 