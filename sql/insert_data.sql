-- Inserting data (driver_name) from raw_data to dim_driver table 

INSERT INTO dim_driver (driver_name)
SELECT DISTINCT driver_name FROM raw_data;

-- Inserting data (region_name) from raw_data to the dim_region table

INSERT INTO dim_region (region_name)
SELECT DISTINCT region FROM raw_data;


-- Inserting data (delivery_type) from raw_data to the dim_delivery_type table

INSERT INTO dim_delivery_type (delivery_type)
SELECT DISTINCT delivery_type FROM raw_data;

-- Inserting from raw_data to the fact_table (normalized version) table

INSERT INTO fact_delivery (
        delivery_id, 
        delivery_date, 
        driver_id,
        region_id,
        delivery_type_id,
        delivery_time_minutes,
        on_time
        )
SELECT 
	rd.delivery_id, 
	rd.delivery_date,
	dd.driver_id,
	dr.region_id,
	ddt.delivery_type_id,
	rd.delivery_time_minutes,
	rd.on_time
FROM raw_data AS rd
JOIN dim_driver AS dd ON rd.driver_name = dd.driver_name
JOIN dim_region AS dr ON rd.region = dr.region_name
JOIN dim_delivery_type AS ddt ON rd.delivery_type = ddt.delivery_type;