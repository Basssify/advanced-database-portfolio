 MIT 8103 – Advanced Database Systems
 Individual Practical Portfolio Report

Student Name: Ebebe Ifunanya Glad  
Case Study: VIFSET E-Commerce Management System  
Repository:https://github.com/Basssify/advanced-database-portfolio

1. Introduction

This portfolio presents the design, implementation and evaluation of database technologies for VIFSET, a simulated Nigerian e-commerce business. The system manages customers, products, categories, orders, payments, inventory and deliveries.

The purpose of the project was to apply advanced database concepts through practical exercises involving relational database design, query processing and optimisation, transaction management, NoSQL databases, and distributed and cloud database concepts.

### 2. Portfolio 1: Database Design and Modelling

A relational database named `vifset_ecommerce` was implemented using MySQL through XAMPP and phpMyAdmin.

The database contains eight related tables: customers, categories, products, orders, order_items, payments, inventory and deliveries.

Primary keys, foreign keys, unique constraints, data types and validation constraints were applied to maintain data integrity. The relationships between the tables were represented in an Entity Relationship Diagram.

Normalisation principles were considered to reduce unnecessary duplication and improve consistency. Sample records were inserted and the database structure was verified through phpMyAdmin.

### 3. Portfolio 2: Query Processing and Optimisation

SQL queries were developed to retrieve and analyse information from the VIFSET database.

The exercises included filtering, sorting, date-based searches, table joins, aggregate functions, grouping and subqueries.

Indexes were created on selected columns, including order dates, product categories and payment statuses. EXPLAIN was used to inspect query execution plans and understand how MySQL processes selected queries.

The exercise demonstrated the importance of appropriate indexing and query analysis in improving database performance.

### 4. Portfolio 3: Transactions and Concurrency

Transaction management was explored using MySQL and InnoDB.

COMMIT and ROLLBACK operations were tested using a transaction demonstration table to show how database changes can be permanently saved or reversed.

The database isolation level was inspected and the environment reported REPEATABLE-READ. Row-level locking and concurrent update operations were also explored using separate database sessions.

These exercises demonstrated the importance of transaction control, isolation and locking in maintaining reliable database operations when multiple users access shared data.

### 5. Portfolio 4: NoSQL and Advanced Data Models

MongoDB Atlas was used to implement a NoSQL database named `vifset_nosql`, containing an `orders` collection with embedded customer, item, payment and delivery information.

MongoDB documents were inserted, retrieved and updated. Queries were performed to identify delivered orders, Lagos customers and successful payments.

An aggregation pipeline grouped orders by status and calculated the total payment amounts.

The observed results were:

- Delivered: 1 order, ₦95,000.
- Processing: 2 orders, ₦386,000.
- Combined payment amount: ₦481,000.

The exercise demonstrated document-oriented data modelling, embedded documents, querying, updating and aggregation.

### 6. Portfolio 5: Distributed and Cloud Database Exercise

MongoDB Atlas was used to host the VIFSET NoSQL database in a cloud environment.

Two logical collections, `orders_lagos` and `orders_other`, were created to demonstrate horizontal partitioning based on customer location.

The Lagos collection contained orders 1001 and 1003, while the other collection contained order 1002 from Abuja.

The `$unionWith` aggregation stage was used to combine records from both collections. A subsequent grouping stage returned three orders with a combined payment amount of ₦481,000.

The exercise also examined replication, availability and consistency as important distributed database concepts.

The implementation used logical partitioning through separate collections. It did not configure an actual MongoDB sharded cluster or independently test replica-set failover. These limitations are acknowledged in the project documentation.

 7. Individual Reflection

Completing this portfolio improved my understanding of how database systems are designed, implemented and managed in practical environments.

I gained practical experience with relational database modelling, SQL queries, indexing, transaction operations, MongoDB document structures and cloud-hosted databases.

One important lesson was that database performance and reliability depend not only on writing queries but also on choosing appropriate structures, constraints and transaction strategies.

I also learned that NoSQL and relational databases serve different data-management needs and that distributed database concepts require careful consideration of data distribution, availability and consistency.

The practical exercises strengthened my ability to use database tools, investigate errors and verify results independently.

8. References

1. MySQL Documentation. MySQL Reference Manual. https://dev.mysql.com/doc/
2. MongoDB Documentation. MongoDB Manual. https://www.mongodb.com/docs/manual/
3. MongoDB Atlas Documentation. https://www.mongodb.com/docs/atlas/
4. Course materials for MIT 8103 – Advanced Database Systems.

9. AI Assistance Declaration

AI assistance was used as a learning and development aid during parts of this project. It supported explanations of database concepts, guidance on SQL and MongoDB operations, troubleshooting, and assistance with organising technical documentation.

The database structures, queries, sample data and practical exercises were reviewed and tested using the relevant database tools. The student remains responsible for understanding the implementation, verifying the submitted work and explaining the results.

