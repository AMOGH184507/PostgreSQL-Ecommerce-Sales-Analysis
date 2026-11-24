INSERT INTO customers
SELECT
    i,
    'Customer_' || i,
    'customer' || i || '@gmail.com',
    (ARRAY[
        'Bangalore',
        'Chennai',
        'Mumbai',
        'Hyderabad',
        'Delhi',
        'Pune',
        'Kochi'
    ])[((i - 1) % 7) + 1],
    DATE '2025-01-01' + (i * 10)
FROM generate_series(1,20) AS i;

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 55000),
(2, 'Mouse', 'Accessories', 800),
(3, 'Keyboard', 'Accessories', 1500),
(4, 'Monitor', 'Electronics', 12000),
(5, 'Headphones', 'Electronics', 2500),
(6, 'Mobile Phone', 'Electronics', 25000),
(7, 'Tablet', 'Electronics', 18000),
(8, 'USB Cable', 'Accessories', 300),
(9, 'Power Bank', 'Accessories', 1800),
(10, 'Smart Watch', 'Electronics', 5000),
(11, 'Office Chair', 'Furniture', 7500),
(12, 'Desk', 'Furniture', 9000),
(13, 'Notebook', 'Stationery', 100),
(14, 'Pen Set', 'Stationery', 250),
(15, 'Printer', 'Electronics', 15000),
(16, 'Webcam', 'Electronics', 3500),
(17, 'Speaker', 'Electronics', 4000),
(18, 'Backpack', 'Accessories', 2200),
(19, 'External SSD', 'Electronics', 6500),
(20, 'Mouse Pad', 'Accessories', 400);

INSERT INTO orders
SELECT
    i,
    ((i - 1) % 20) + 1,
    DATE '2026-01-01' + (i * 3),
    (ARRAY[
        'Delivered',
        'Pending',
        'Cancelled',
        'Shipped'
    ])[((i - 1) % 4) + 1]
FROM generate_series(1,30) AS i;

INSERT INTO order_items
SELECT
    i,
    ((i - 1) / 2) + 1,
    ((i - 1) % 20) + 1,
    ((i - 1) % 5) + 1
FROM generate_series(1,60) AS i;
