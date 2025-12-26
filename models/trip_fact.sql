with trips as (
    select rideid, rideable_type,
    date(to_timestamp(started_at)) as trip_date,
    start_station_id,
    end_station_id, 
    member_casual,
    timestampdiff(seconds, to_timestamp(started_at),to_timestamp(ended_at)) as trip_duration_review
    from {{source('DEMO1','BIKE_TBL')}}
)

select * from trips
where RIDEID <> 'ride_id'