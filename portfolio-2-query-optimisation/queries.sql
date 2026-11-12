USE vifset_ecommerce;

 
SELECT * FROM customers;
 
SELECT product_name, price
FROM products
WHERE price > 10000;
 
SELECT product_name, price
FROM products
ORDER BY price DESC;
 
SELECT *
FROM orders
WHERE order_date >= '2026-10-01'
  AND order_date < '2026-11-01';


 
SELECT
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date,
    o.order_status,
    o.total_amount
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id;
 
SELECT
    p.product_name,
    p.price,
    c.category_name
FROM products p
INNER JOIN categories c
    ON p.category_id = c.category_id;

SELECT
    o.order_id,
    c.first_name,
    c.last_name,
    p.product_name,
    oi.quantity,
    oi.unit_price,
    (oi.quantity * oi.unit_price) AS item_total
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id
INNER JOIN order_items oi
    ON o.order_id = oi.order_id
INNER JOIN products p
    ON oi.product_id = p.product_id;


 
SELECT COUNT(*) AS total_customers
FROM customers;

 
SELECT SUM(payment_amount) AS total_successful_payments
FROM payments
WHERE payment_status = 'Successful';
 
SELECT AVG(price) AS average_product_price
FROM products;
 
SELECT
    order_status,
    COUNT(*) AS number_of_orders
FROM orders
GROUP BY order_status;


SELECT
    c.category_name,
    SUM(oi.quantity * oi.unit_price) AS category_sales
FROM categories c
INNER JOIN products p
    ON c.category_id = p.category_id
INNER JOIN order_items oi
    ON p.product_id = oi.product_id
GROUP BY c.category_id, c.category_name;

 
SELECT product_name, price
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);
 
SELECT first_name, last_name, email
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
);

 
CREATE INDEX idx_orders_order_date
ON orders(order_date);

CREATE INDEX idx_products_category
ON products(category_id);

CREATE INDEX idx_payments_status
ON payments(payment_status);

EXPLAIN
SELECT order_id, order_date, order_status
FROM orders
WHERE order_date >= '2026-10-01'
  AND order_date < '2026-11-01';
 
EXPLAIN
SELECT product_name, price
FROM products
WHERE category_id = 1;
