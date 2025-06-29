
-- 1. Total Sales by Region
SELECT region, SUM(amount) AS total_sales
FROM customer_sales
GROUP BY region
ORDER BY total_sales DESC;

-- 2. Monthly Sales Trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(amount) AS total_sales
FROM customer_sales
GROUP BY month
ORDER BY month;

-- 3. Top 5 Customers by Revenue
SELECT customer_id, SUM(amount) AS total_spent
FROM customer_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- 4. Sales by Category and Region
SELECT region, category, SUM(amount) AS sales
FROM customer_sales
GROUP BY region, category
ORDER BY region, sales DESC;
