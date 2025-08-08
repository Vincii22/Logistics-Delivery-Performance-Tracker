# Logistics Delivery Performance Tracker


## Project Overview

Analyze delivery times and on-time performance across drivers, regions, and delivery types using PostgreSQL

## Data

Located in `data/raw/delivery_data.csv`

## Warehouse Schema

Includes dimensions: driver, region, delivery_type
And Fact: delivery performance

See `sql/create_tables.sql` for schema setup.

## Setup

1. Create PostgreSQL DB
2. Run schema `sql/create_tables.sql`
3. Load data: `scripts/load_data.py`
4. Run queries from `sql/queries/`


## Query GOals

- Average delivery time by type
- On-time vs late by driver
- Ranked regions by delivery count
- Daily average delivery time
- % on-time deliveries by region