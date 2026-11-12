
USE vifset_ecommerce;

INSERT INTO categories (category_name, description) VALUES
('Electronics', 'Electronic gadgets and accessories'),
('Fashion', 'Clothing, shoes and fashion accessories'),
('Home Appliances', 'Appliances for household use'),
('Beauty', 'Beauty and personal care products'),
('Food and Groceries', 'Food items and household groceries');

INSERT INTO customers (first_name, last_name, email, phone, address, city) VALUES
('John', 'Ade', 'john@example.com', '08030000001', '12 Allen Avenue', 'Ikeja'),
('Mary', 'Bello', 'mary@example.com', '08030000002', '5 Admiralty Way', 'Lekki'),
('David', 'Okafor', 'david@example.com', '08030000003', '8 Marina Road', 'Lagos Island'),
('Grace', 'Eze', 'grace@example.com', '08030000004', '20 Ikorodu Road', 'Ikorodu'),
('Peter', 'James', 'peter@example.com', '08030000005', '4 Airport Road', 'Ikeja'),
('Sarah', 'Musa', 'sarah@example.com', '08030000006', '15 Road 5', 'Festac'),
('Daniel', 'Obi', 'daniel@example.com', '08030000007', '9 Bode Thomas Street', 'Surulere'),
('Esther', 'Udo', 'esther@example.com', '08030000008', '3 Ajah Road', 'Ajah'),
('Michael', 'Ayo', 'michael@example.com', '08030000009', '17 Ikoyi Crescent', 'Ikoyi'),
('Faith', 'Nnamdi', 'faith@example.com', '08030000010', '6 Ogudu Road', 'Ogudu');

INSERT INTO products (category_id, product_name, sku, description, price) VALUES
(1, 'Samsung Galaxy Smartphone', 'VIF-ELEC-001', 'Android smartphone', 85000),
(1, 'Bluetooth Headphones', 'VIF-ELEC-002', 'Wireless headphones', 12000),
(1, 'HP Laptop', 'VIF-ELEC-003', 'Laptop for work and study', 180000),
(2, 'Men Casual Shirt', 'VIF-FASH-001', 'Cotton casual shirt', 18000),
(2, 'Ladies Handbag', 'VIF-FASH-002', 'Fashion handbag', 25000),
(2, 'Sneakers', 'VIF-FASH-003', 'Casual sneakers', 30000),
(3, 'Electric Blender', 'VIF-HOME-001', 'Kitchen blender', 55000),
(3, 'Standing Fan', 'VIF-HOME-002', 'Electric standing fan', 7000),
(3, 'Microwave Oven', 'VIF-HOME-003', 'Digital microwave oven', 65000),
(4, 'Face Cream', 'VIF-BEAUTY-001', 'Daily skincare cream', 9500),
(4, 'Body Lotion', 'VIF-BEAUTY-002', 'Moisturising body lotion', 7000),
(4, 'Perfume', 'VIF-BEAUTY-003', 'Personal fragrance', 15000),
(5, 'Rice 5kg', 'VIF-FOOD-001', 'Five kilogram bag of rice', 12000),
(5, 'Cooking Oil', 'VIF-FOOD-002', 'Cooking oil', 9500),
(5, 'Breakfast Cereal', 'VIF-FOOD-003', 'Packaged breakfast cereal', 7000);

INSERT INTO inventory (product_id, quantity_available, reorder_level) VALUES
(1, 25, 5), (2, 40, 10), (3, 12, 3),
(4, 35, 8), (5, 20, 5), (6, 30, 8),
(7, 15, 4), (8, 50, 10), (9, 10, 3),
(10, 45, 10), (11, 38, 8), (12, 28, 6),
(13, 60, 15), (14, 55, 12), (15, 42, 10);


INSERT INTO orders (customer_id, order_date, order_status, total_amount) VALUES
(1, '2026-10-01 10:00:00', 'Delivered', 130000),
(2, '2026-10-02 11:30:00', 'Delivered', 24000),
(3, '2026-10-03 12:15:00', 'Shipped', 180000),
(4, '2026-10-04 09:45:00', 'Processing', 36000),
(5, '2026-10-05 14:00:00', 'Delivered', 90000),
(6, '2026-10-06 15:20:00', 'Shipped', 120000),
(7, '2026-10-07 08:30:00', 'Pending', 55000),
(8, '2026-10-08 16:10:00', 'Delivered', 21000),
(9, '2026-10-09 13:40:00', 'Pending', 9500),
(10, '2026-10-10 17:00:00', 'Cancelled', 30000);

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 85000),
(1, 2, 1, 45000),
(2, 2, 2, 12000),
(3, 3, 1, 180000),
(4, 4, 2, 18000),
(5, 5, 1, 65000),
(5, 6, 1, 25000),
(6, 7, 1, 120000),
(7, 8, 1, 55000),
(8, 8, 3, 7000),
(9, 14, 1, 9500),
(10, 12, 2, 15000);


INSERT INTO payments
(order_id, payment_reference, payment_method, payment_amount, payment_status, payment_date)
VALUES
(1, 'VIF-PAY-001', 'Card', 130000, 'Successful', '2026-10-01 10:15:00'),
(2, 'VIF-PAY-002', 'Bank Transfer', 24000, 'Successful', '2026-10-02 11:45:00'),
(3, 'VIF-PAY-003', 'Card', 180000, 'Successful', '2026-10-03 12:30:00'),
(4, 'VIF-PAY-004', 'USSD', 36000, 'Pending', '2026-10-04 10:00:00'),
(5, 'VIF-PAY-005', 'Card', 90000, 'Successful', '2026-10-05 14:20:00'),
(6, 'VIF-PAY-006', 'Bank Transfer', 120000, 'Successful', '2026-10-06 15:40:00'),
(7, 'VIF-PAY-007', 'Card', 55000, 'Successful', '2026-10-07 08:45:00'),
(8, 'VIF-PAY-008', 'USSD', 21000, 'Successful', '2026-10-08 16:30:00'),
(9, 'VIF-PAY-009', 'Bank Transfer', 9500, 'Pending', '2026-10-09 14:00:00'),
(10, 'VIF-PAY-010', 'Card', 30000, 'Failed', '2026-10-10 17:15:00');

 
INSERT INTO deliveries
(order_id, delivery_address, delivery_city, tracking_number, delivery_status, shipped_at, delivered_at)
VALUES
(1, '12 Allen Avenue', 'Ikeja', 'VIF-TRK-001', 'Delivered', '2026-10-01 13:00:00', '2026-10-02 10:00:00'),
(2, '5 Admiralty Way', 'Lekki', 'VIF-TRK-002', 'Delivered', '2026-10-02 14:00:00', '2026-10-03 12:00:00'),
(3, '8 Marina Road', 'Lagos Island', 'VIF-TRK-003', 'In Transit', '2026-10-04 09:00:00', NULL),
(5, '4 Airport Road', 'Ikeja', 'VIF-TRK-005', 'Delivered', '2026-10-05 16:00:00', '2026-10-06 11:00:00'),
(6, '15 Road 5', 'Festac', 'VIF-TRK-006', 'In Transit', '2026-10-07 09:00:00', NULL),
(8, '3 Ajah Road', 'Ajah', 'VIF-TRK-008', 'Delivered', '2026-10-08 18:00:00', '2026-10-09 13:00:00');

