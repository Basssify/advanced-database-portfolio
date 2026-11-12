VIFSET E-Commerce Management System
  Query Processing and Optimisation Analysis

 1. Introduction

This exercise evaluates SQL query processing and optimisation using the VIFSET E-Commerce Management System. The database contains eight related tables populated with sample business records.

The objective is to retrieve useful business information, analyse relationships between tables and improve query performance through indexing and execution-plan analysis.
  2. Query Processing Techniques

The following SQL techniques were implemented:

- SELECT and WHERE clauses for retrieving specific records.
- ORDER BY for sorting products by price.
- INNER JOIN for combining customers, orders, products and categories.
- Aggregate functions including COUNT, SUM and AVG.
- GROUP BY for summarising orders and category sales.
- Subqueries for identifying products above the average price and customers who have placed orders.

These queries support customer management, product analysis, order tracking and sales reporting.

3. Indexing and Optimisation

Three additional indexes were created:

| Index | Table | Column | Purpose |
|---|---|---|---|
| idx_orders_order_date | orders | order_date | Supports date-based order searches |
| idx_products_category | products | category_id | Supports product category searches |
| idx_payments_status | payments | payment_status | Supports payment status searches |

Indexes help the database locate records more efficiently when suitable queries use the indexed columns.

 4. Execution Plan Analysis

The SQL EXPLAIN command was used to inspect the execution plans of two queries.

Order date query

The first execution plan examined a query that retrieves orders within October 2026. The order_date index provides an access path for date-based filtering.

Product category query

The second execution plan examined a query that retrieves products belonging to category 1. The category index provides an access path for category-based searches.

The EXPLAIN output was used to inspect access type, possible keys, selected keys and estimated rows examined.

An optimiser may still choose a table scan for a small table because reading a few records directly can be cheaper than using an index. This is not necessarily a sign of poor database design.

 5. Performance Considerations

The following practices were considered during optimisation:

1. Creating indexes on frequently searched columns.
2. Selecting only required columns instead of retrieving unnecessary data.
3. Using appropriate JOIN conditions.
4. Applying filtering conditions to reduce unnecessary records.
5. Using EXPLAIN to understand how queries are processed.

The sample database is relatively small. A larger production database would be needed to measure the full performance benefits of indexing under heavier workloads.

6. Conclusion

The exercise demonstrated the use of SQL queries, joins, aggregate functions, subqueries, indexing and execution-plan analysis.

The VIFSET database successfully executed the implemented queries and provided a practical environment for understanding query processing and optimisation.

7. Supporting Evidence

- queries.sql – SQL implementation.
- orders_execution_plan.png – Order date query execution plan.
- products_execution_plan.png – Product category query execution plan.
