SELECT *
FROM {{source('tlc_taxi_trips','raw_yellow_tripdata')}}
LIMIT 10