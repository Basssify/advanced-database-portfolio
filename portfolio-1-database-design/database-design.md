 VIFSET E-Commerce Management System
Database Design and Modelling

Introduction

VIFSET E-Commerce Management System is a simulated Nigerian online retail platform designed to manage customers, products, orders, payments, inventory and deliveries.

The database was designed to provide structured data storage, maintain data integrity, reduce unnecessary duplication and support efficient retrieval of business information.

The database is implemented using a relational database management system through MySQL/MariaDB in XAMPP and phpMyAdmin.
2. Database Overview

The database is named `vifset_ecommerce` and contains eight related tables:

1. Customers
2. Categories
3. Products
4. Orders
5. Order Items
6. Payments
7. Inventory
8. Deliveries

Each table stores information about a specific part of the business.

3. Relational Database Schema

The relational schema is presented below.

CUSTOMERS
- customer_id (Primary Key)
- first_name
- last_name
- email (Unique)
- phone
- address
- city
- created_at

CATEGORIES
- category_id (Primary Key)
- category_name (Unique)
- description

PRODUCTS
- product_id (Primary Key)
- category_id (Foreign Key)
- product_name
- sku (Unique)
- description
- price

ORDERS
- order_id (Primary Key)
- customer_id (Foreign Key)
- order_date
- order_status
- total_amount

ORDER_ITEMS
- order_item_id (Primary Key)
- order_id (Foreign Key)
- product_id (Foreign Key)
- quantity
- unit_price

PAYMENTS
- payment_id (Primary Key)
- order_id (Foreign Key)
- payment_reference (Unique)
- payment_method
- payment_amount
- payment_status
- payment_date

INVENTORY
- inventory_id (Primary Key)
- product_id (Foreign Key and Unique)
- quantity_available
- reorder_level
- last_updated

DELIVERIES
- delivery_id (Primary Key)
- order_id (Foreign Key and Unique)
- delivery_address
- delivery_city
- tracking_number (Unique)
- delivery_status
- shipped_at
- delivered_at

4. Primary Keys and Foreign Keys

Primary keys uniquely identify individual records in each table. They prevent two records from having the same identifier.

Foreign keys establish relationships between tables and maintain referential integrity.

The following foreign-key relationships were implemented:

| Child Table | Foreign Key | Referenced Table |
|---|---|---|
| Products | category_id | Categories |
| Orders | customer_id | Customers |
| Order Items | order_id | Orders |
| Order Items | product_id | Products |
| Payments | order_id | Orders |
| Inventory | product_id | Products |
| Deliveries | order_id | Orders |

The order_items table connects orders and products, allowing an order to contain multiple products.

5. Relationships Between Tables

The database uses the following relationships:

- One customer can place many orders (one-to-many).
- One category can contain many products (one-to-many).
- One order can contain many order items (one-to-many).
- One product can appear in many order items (one-to-many).
- One order can have multiple payment records (one-to-many).
- Each product has one inventory record (one-to-one).
- Each order has at most one delivery record (one-to-one).

These relationships support the major operations of the VIFSET business.

 6. Constraints and Data Integrity

Several database constraints were applied to ensure accurate and consistent data.

Primary Key Constraints: Each table has a primary key to uniquely identify its records.

Foreign Key Constraints: Foreign keys ensure that related records exist before references are created.

Unique Constraints: Unique constraints were applied to customer email addresses, category names, product SKUs, payment references, inventory product identifiers, delivery order identifiers and tracking numbers.

Check Constraints: Product prices and payment amounts cannot be negative. Order quantities must be greater than zero. Inventory quantities and reorder levels cannot be negative.

Default Values: Inventory quantities and order totals have appropriate default values.

Enumerated Values: Order status, payment method, payment status and delivery status are restricted to predefined values.

These constraints help protect the database against invalid entries and inconsistent relationships.

  7. Database Normalisation

Normalisation was considered during the design to reduce data duplication and improve data consistency.

First Normal Form (1NF)

Each table contains atomic values, and each record can be uniquely identified using its primary key. Repeating groups and multiple values in a single field were avoided.

Second Normal Form (2NF)

The tables use primary keys to identify records, and non-key attributes depend on their respective table keys. The order_items table stores individual product details for each order rather than placing multiple products in one order record.

Third Normal Form (3NF)

The design separates entities into related tables to reduce unnecessary duplication and transitive dependencies. For example, customer details are stored in the customers table rather than repeated in every order. Product category information is also maintained separately in the categories table.

The resulting structure follows the principles of 3NF for the intended business data model.

 8. Conclusion

The VIFSET E-Commerce Management System database provides a structured foundation for managing the operations of a simulated online retail business.

The eight-table design supports customer management, product categorisation, order processing, payment tracking, inventory monitoring and delivery management.

The use of primary keys, foreign keys, unique constraints and normalisation principles improves data integrity and provides a foundation for the query optimisation, transaction management, NoSQL and distributed database exercises in the remaining portfolio activities.

 9. Supporting Evidence

The following implementation files and evidence are included in this portfolio:

- `schema.sql` – SQL statements used to create the database tables.
- `sample_data.sql` – Sample records used to populate the database.
- `vifset_erd.png` – Entity Relationship Diagram showing the database structure and relationships.

