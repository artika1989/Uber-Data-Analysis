SELECT VendorID, sum(fare_amount) FROM `majestic-nimbus-415922.uber_data_engineering.fact_table` 
GROUP BY VendorID;

select b.payment_type_name, avg(tip_amount) from `majestic-nimbus-415922.uber_data_engineering.fact_table` a
JOIN `majestic-nimbus-415922.uber_data_engineering.payment_type_dim` b
on a.payment_type_id = b.payment_type_id
group by b.payment_type_name;

select b.pickup_location_id, avg(a.trip_distance_id) from `majestic-nimbus-415922.uber_data_engineering.fact_table` a
JOIN `majestic-nimbus-415922.uber_data_engineering.pickup_location_dim` b
on a.pickup_location_id = b.pickup_location_id
group by b.pickup_location_id
limit 10;