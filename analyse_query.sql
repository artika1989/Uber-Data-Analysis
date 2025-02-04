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

-- Total number of trips by passenger count id

select p.passenger_count_id, sum(t.trip_distance_id) as total_trip
from `majestic-nimbus-415922.uber_data_engineering.fact_table` t
join `majestic-nimbus-415922.uber_data_engineering.passenger_count_dim` p
on p.passenger_count_id = t.passenger_count_id
group by p.passenger_count_id
order by p.passenger_count_id;

-- AVERAGE FARE AMOUNT BY THE HOUR OF THE DAY
select avg(t.fare_amount) as avg_fare_amount , p.pick_hour, p.pick_day
from majestic-nimbus-415922.uber_data_engineering.fact_table t
join majestic-nimbus-415922.uber_data_engineering.datetime_dim p
on p.datetime_id = t.datetime_id
where p.pick_day = 1
group by p.pick_hour, p.pick_day;
