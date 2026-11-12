VIFSET E-COMMERCE MANAGEMENT SYSTEM

NOSQL AND ADVANCED DATA MODELS

1. Introduction

This portfolio demonstrates the implementation of a document-oriented NoSQL database using MongoDB Atlas. The VIFSET E-Commerce Management System was used as the case study.

2. Document Data Model

A MongoDB database named vifset_nosql was created with a collection named orders.

Each order document contains customer information, product items, payment details and delivery information.

Customer and payment information were embedded within order documents. This demonstrates the flexible document structure supported by MongoDB.

3. Implementation

Three order documents were inserted into the orders collection.

The following operations were performed:

- Insertion of order documents.
- Retrieval of delivered orders.
- Filtering orders by customer city.
- Searching for successful payments.
- Updating an order status.
- Aggregating orders by status and calculating payment totals.

4. Aggregation Results

The aggregation operation grouped orders according to their status.

Delivered:
Total orders: 1
Total payment: 95,000

Processing:
Total orders: 2
Total payment: 386,000

Total payment across the three documents: 481,000.

5. Relational Database and NoSQL Comparison

The relational MySQL database uses structured tables, primary keys and foreign keys to organise information.

MongoDB uses flexible documents and supports embedded data structures.

The relational model is useful where strong relationships and structured transactions are important.

The document model is useful where related information needs to be retrieved together and where flexible data structures are beneficial.

6. Advantages and Limitations

Advantages:
- Flexible document structure.
- Supports embedded documents.
- Convenient retrieval of related order information.
- Aggregation framework for data analysis.

Limitations:
- Embedded information can become duplicated.
- Large documents can become difficult to manage.
- Relationships across documents may require additional queries.
- Data consistency must be carefully managed.

7. Conclusion

The practical implementation demonstrated document modelling, document retrieval, updates and aggregation using MongoDB Atlas.

MongoDB provides an alternative to relational databases for applications requiring flexible data structures and document-oriented storage.

8. Evidence

The evidence includes MongoDB document records, query results, update operations and aggregation results.
