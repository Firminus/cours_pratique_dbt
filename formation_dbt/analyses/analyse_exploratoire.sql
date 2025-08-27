/*SELECT * FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet' limit 10 ;*/


/*.read './analyses/analyse_exploratoire.sql'*/


SELECT COUNT(*)
FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
;

SUMMARIZE 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
;

DESCRIBE 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
;

/************************VISUALISATION**************/
SELECT *
FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
WHERE trip_distance <=0
LIMIT 10 ;

/************VENDOR ID*****************/
SELECT VendorID,COUNT(*) as trips_count
FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
GROUP BY VendorID ;


/************************payment_type**************/
SELECT payment_type , COUNT(*) as trips_count
FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
GROUP BY payment_type;

/************************compter  les occu par rapport**************/
SELECT  COUNT(*) as trips_count
FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
WHERE tpep_pickup_datetime >tpep_dropoff_datetime
;


-- /************************nombre de trajet**************/
SELECT COUNT(*) as trips_count
FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
WHERE total_amount<=0
;
-- /************************trajet à prix negatif**************/
SELECT   total_amount, tpep_pickup_datetime ,tpep_dropoff_datetime , passenger_count,trip_distance, total_amount
FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
WHERE total_amount<0 
LIMIT 10 ;


