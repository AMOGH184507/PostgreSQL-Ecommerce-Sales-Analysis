-- ==========================================
-- PROJECT: Sales Data Analysis
-- DATABASE: PostgreSQL
-- FILE: 01_Basic_Analysis.sql
-- ==========================================


-- 1. Display all customer records

SELECT *
FROM customers;


-- 2. Display all sales records

SELECT *
FROM sales;


-- 3. Find the total number of customers

SELECT COUNT(*) AS total_customers
FROM customers;


-- 4. Find the total number of orders

SELECT COUNT(*) AS total_orders
FROM sales;


-- 5. Calculate total revenue

SELECT SUM(total_amount) AS total_revenue
FROM sales;


-- 6. Find the average order value

SELECT ROUND(AVG(total_amount), 2) AS average_order_value
FROM sales;


-- 7. Find the highest order value

SELECT MAX(total_amount) AS highest_order
FROM sales;


-- 8. Find the lowest order value

SELECT MIN(total_amount) AS lowest_order
FROM sales;


-- 9. Display orders above ₹5,000

SELECT *
FROM sales
WHERE total_amount > 5000;


-- 10. Display orders in descending order of amount

SELECT *
FROM sales
ORDER BY total_amount DESC;
