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