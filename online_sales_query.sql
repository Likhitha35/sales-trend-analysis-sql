CREATE DATABASE sales_db;
USE sales_db;
CREATE TABLE online_sales (
    transaction_id INT PRIMARY KEY,
    order_date DATE,
    product_category VARCHAR(100),
    product_name VARCHAR(255),
    units_sold INT,
    unit_price DECIMAL(10, 2),
    total_revenue DECIMAL(10, 2),
    region VARCHAR(100),
    payment_method VARCHAR(50)
);

SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(total_revenue) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS monthly_order_volume
FROM
    online_sales
GROUP BY
    order_year, order_month
ORDER BY
    order_year, order_month;


SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(total_revenue) AS monthly_revenue
FROM
    online_sales
GROUP BY
    order_year, order_month
ORDER BY
    monthly_revenue DESC
LIMIT 3;


SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(COALESCE(total_revenue, 0)) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS monthly_order_volume
FROM
    online_sales
GROUP BY
    order_year, order_month
ORDER BY
    order_year, order_month;

