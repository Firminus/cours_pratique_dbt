/*SELECT * FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet' limit 10 ;*/

/************VENDOR ID*****************/
-- SELECT VendorID,COUNT(*) as trips_count
-- FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
-- GROUP BY VendorID ;


/************************payment_type**************/
-- SELECT payment_type , COUNT(*) as trips_count
-- FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
-- GROUP BY payment_type;
-- .read './analyses/analyse_exploratoire.sql'
/************************payment_type**************/
SELECT *
FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
WHERE trip_distance <=0
LIMIT 10 ;

with source_data as (
    select *
    from {{ source('tlc_taxi_trips', 'raw_yellow_tripdata') }}
)

select
    pickup_datetime,
    dropoff_datetime,
    passenger_count,
    trip_distance,
    payment_type,
    fare_amount,
    total_amount
from source_data
limit 100 ;