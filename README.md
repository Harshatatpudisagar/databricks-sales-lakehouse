# Databricks Sales Lakehouse

Hands-on Databricks data engineering project.

## Technologies

- Databricks
- PySpark
- Apache Spark
- Delta Lake
- Delta Time Travel
- Databricks SQL
- AI/BI Dashboard

## Architecture

Source
↓
Bronze
↓
Silver
↓
Gold
↓
SQL Warehouse
↓
Dashboard

## Bronze

Table:

harshadatabricksdebt.default.sales_bronze

Contains raw sales data.

## Silver

Table:

harshadatabricksdebt.default.sales_silver

Operations:

- Deduplication
- Data cleaning
- total_amount calculation

## Gold

Table:

harshadatabricksdebt.default.customer_sales_gold

Business metrics:

- Customer sales
- Order count
- Average order value

## Delta Time Travel

Demonstrated:

- DESCRIBE HISTORY
- VERSION AS OF
- TIMESTAMP AS OF
- INSERT
- DELETE
- Historical version comparison

## Validation

Bronze:
7 records during the exercise

Silver:
6 unique orders

Gold:
5 customers

Total revenue:
218000

Total orders:
6

Average order value:
36333.33