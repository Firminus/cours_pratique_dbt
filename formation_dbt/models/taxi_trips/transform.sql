/* .read 'models/taxi_trips/transform.sql'*/

SELECT total_amount, tpep_pickup_datetime ,tpep_dropoff_datetime , passenger_count,trip_distance, total_amount
FROM {{source('tlc_taxi_trips','raw_yellow_tripdata')}}
LIMIT 10