use gold_db;

CREATE TABLE gold_db.transportation_gold AS 
SELECT 
    route_name,
    COUNT(*) AS total_deliveries,
    AVG(delivery_time) AS avg_delivery_time,
    AVG(fuel_consumed) AS avg_fuel_consumed,
    vehicle_id,
    SUM(distance_covered) AS total_distance,
    (SUM(distance_covered) / SUM(fuel_consumed)) AS fuel_efficiency,
    driver_name,
    delivery_status,
    COUNT(DISTINCT delivery_id) AS total_deliveries_by_driver,
    AVG(rating) AS driver_rating,
    CURDATE() AS report_date
FROM silver_db.delivery_data_silver
GROUP BY route_name, vehicle_id, driver_name, delivery_status;

select*from  transportation_gold;

drop table transportation_gold;

select *from silver_db.delivery_data_silver;

desc gold_db.transportation_gold;
