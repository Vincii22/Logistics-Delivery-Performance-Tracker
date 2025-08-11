-- Inserting data (driver_name) from raw_data to dim_driver table 

INSERT INTO dim_driver (driver_name)
SELECT DISTINCT driver_name FROM raw_data;

-- Inserting data (region_name) from raw_data to the dim_region table

INSERT INTO dim_region (region_name)
SELECT DISTINCT region FROM raw_data;


