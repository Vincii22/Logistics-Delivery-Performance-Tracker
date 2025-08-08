CREATE TABLE raw_data (
	delivery_id VARCHAR(50),
	driver_name VARCHAR(50),
	delivery_date DATE,
	region VARCHAR(50),
	delivery_type VARCHAR(50),
	delivery_time_minutes INTEGER,
	on_time BOOLEAN
);


CREATE TABLE dim_driver (
	driver_id SERIAL PRIMARY KEY,
	driver_name VARCHAR(50)
);

CREATE TABLE dim_region (
	region_id SERIAL PRIMARY KEY,
	region_name VARCHAR(50)
);

CREATE TABLE dim_delivery_type (
	delivery_type_id SERIAL PRIMARY KEY,
	delivery_type VARCHAR(50)
);

