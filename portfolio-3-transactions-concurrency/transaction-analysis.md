VIFSET E-COMMERCE MANAGEMENT SYSTEM

TRANSACTIONS AND CONCURRENCY ANALYSIS

1. Introduction

This portfolio demonstrates transaction management and concurrency control using the VIFSET E-Commerce Management System database.

2. COMMIT Operation

The COMMIT operation was tested by inserting a record into the transaction_demo table and permanently saving the transaction. A SELECT query confirmed that the record remained in the database.

3. ROLLBACK Operation

The ROLLBACK operation was tested by inserting another record and cancelling the transaction. Verification confirmed that the cancelled record was not saved.

4. Transaction Isolation

The database isolation level was checked using the SQL command SELECT @@tx_isolation.

The result was REPEATABLE-READ. This isolation level helps maintain consistent reads within a transaction and reduces certain concurrency problems.

5. Concurrency Control

A two-session test was performed using the inventory table.

The first session started a transaction and updated an inventory row without changing its quantity. The second session attempted to update the same row.

The transactions were completed and the first session released its transaction using COMMIT. The test demonstrated how database transactions and row-level locking can be used to manage concurrent access.

No specific lock-wait duration or timeout was recorded.

6. Conclusion

The exercises demonstrated transaction commitment, rollback, isolation-level verification and concurrent database access. These concepts are important for maintaining data consistency and reliability in an e-commerce database.

7. Evidence

The implementation evidence includes:

- COMMIT demonstration screenshot.
- ROLLBACK demonstration screenshot.
- Transaction isolation screenshot.
- First database session screenshot.
- Second database session screenshot.
- SQL implementation file.
