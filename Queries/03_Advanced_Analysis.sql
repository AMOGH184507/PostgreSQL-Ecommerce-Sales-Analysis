-- ==========================================
-- PROJECT: Sales Data Analysis
-- FILE: 03_Advanced_Analysis.sql
-- ==========================================


-- 1. Find the top 3 highest spending customers

SELECT *
FROM (
    SELECT
        customer_id,
        SUM(total_amount) AS total_spent,
        DENSE_RANK() OVER (
            ORDER BY SUM(total_amount) DESC
        ) AS spending_rank
    FROM sales
    GROUP BY customer_id
) ranked_customers
WHERE spending_rank <= 3;


-- 2. Rank customers based on their total spending

SELECT
    customer_id,
    SUM(total_amount) AS total_spent,
    RANK() OVER (
        ORDER BY SUM(total_amount) DESC
    ) AS customer_rank
FROM sales
GROUP BY customer_id;


-- 3. Calculate running revenue

SELECT
    order_id,
    order_date,
    total_amount,
    SUM(total_amount) OVER (
        ORDER BY order_date, order_id
    ) AS running_revenue
FROM sales;


-- 4. Find each customer's highest order

SELECT *
FROM (
    SELECT
        customer_id,
        order_id,
        total_amount,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id
            ORDER BY total_amount DESC
        ) AS order_rank
    FROM sales
) ranked_orders
WHERE order_rank = 1;


-- 5. Calculate average spending by customer

WITH customer_spending AS (
    SELECT
        customer_id,
        SUM(total_amount) AS total_spent
    FROM sales
    GROUP BY customer_id
)
SELECT
    customer_id,
    total_spent,
    ROUND(AVG(total_spent) OVER (), 2) AS average_spending
FROM customer_spending;


-- 6. Find monthly revenue

SELECT
    DATE_TRUNC('month', order_date) AS sales_month,
    SUM(total_amount) AS monthly_revenue
FROM sales
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY sales_month;


-- 7. Find the top-selling payment method

SELECT
    payment_method,
    COUNT(*) AS total_transactions,
    SUM(total_amount) AS total_revenue,
    RANK() OVER (
        ORDER BY SUM(total_amount) DESC
    ) AS payment_rank
FROM sales
GROUP BY payment_method;
