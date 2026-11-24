-- ==========================================
-- PROJECT: Sales Data Analysis
-- FILE: 02_Intermediate_Analysis.sql
-- ==========================================


-- 1. Calculate total revenue by each customer

SELECT 
    customer_id,
    SUM(total_amount) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC;


-- 2. Find total sales by payment method

SELECT 
    payment_method,
    SUM(total_amount) AS total_revenue
FROM sales
GROUP BY payment_method;


-- 3. Find customers who spent more than 10000

SELECT 
    customer_id,
    SUM(total_amount) AS total_spent
FROM sales
GROUP BY customer_id
HAVING SUM(total_amount) > 10000;


-- 4. Find total orders by each city

SELECT 
    c.city,
    COUNT(s.order_id) AS total_orders
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id
GROUP BY c.city
ORDER BY total_orders DESC;


-- 5. Display customer names and their purchases

SELECT 
    c.customer_name,
    s.order_id,
    s.total_amount
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id;


-- 6. Find customers whose spending is above average

SELECT 
    customer_id,
    SUM(total_amount) AS total_spent
FROM sales
GROUP BY customer_id
HAVING SUM(total_amount) > (
    SELECT AVG(total_amount)
    FROM sales
);


-- 7. Find the highest order value for each customer

SELECT 
    customer_id,
    MAX(total_amount) AS highest_order
FROM sales
GROUP BY customer_id;


-- 8. Find the number of orders placed by each customer

SELECT 
    c.customer_name,
    COUNT(s.order_id) AS order_count
FROM customers c
LEFT JOIN sales s
ON c.customer_id = s.customer_id
GROUP BY c.customer_name
ORDER BY order_count DESC;
