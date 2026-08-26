-- Bronze validation

SELECT COUNT(*) AS bronze_rows
FROM harshadatabricksdebt.default.sales_bronze;


-- Silver validation

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT order_id) AS unique_orders,
    SUM(total_amount) AS total_revenue
FROM harshadatabricksdebt.default.sales_silver;


-- Gold validation

SELECT
    COUNT(*) AS customers,
    SUM(order_count) AS total_orders,
    SUM(total_sales) AS total_revenue
FROM harshadatabricksdebt.default.customer_sales_gold;


-- Check duplicate orders

SELECT
    order_id,
    COUNT(*) AS record_count
FROM harshadatabricksdebt.default.sales_silver
GROUP BY order_id
HAVING COUNT(*) > 1;


-- Delta history

DESCRIBE HISTORY
harshadatabricksdebt.default.sales_bronze;