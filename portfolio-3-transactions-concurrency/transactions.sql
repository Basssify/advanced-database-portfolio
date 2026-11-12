USE vifset_ecommerce;

CREATE TABLE IF NOT EXISTS transaction_demo (
    demo_id INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

START TRANSACTION;

INSERT INTO transaction_demo (description)
VALUES ('COMMIT demonstration - transaction saved');

COMMIT;

 
SELECT * FROM transaction_demo;

 
START TRANSACTION;

INSERT INTO transaction_demo (description)
VALUES ('ROLLBACK demonstration - this record should not remain');

ROLLBACK;
 
SELECT * FROM transaction_demo;

 
SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;

START TRANSACTION;

SELECT order_id, order_status, total_amount
FROM orders
ORDER BY order_id;

COMMIT;

START TRANSACTION;

SELECT product_id, quantity_available
FROM inventory
WHERE product_id = 1
FOR UPDATE;

COMMIT;
