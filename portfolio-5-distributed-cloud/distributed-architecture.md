PORTFOLIO 5: DISTRIBUTED AND CLOUD DATABASE EXERCISE

Case Study: VIFSET E-Commerce Management System
Student: Ebebe Ifunanya Glad
Course: MIT 8103 – Advanced Database Systems

1. INTRODUCTION

This exercise demonstrates the use of cloud-hosted database services and distributed database concepts using the VIFSET E-Commerce Management System.

MongoDB Atlas was used to host the NoSQL database in the cloud. Logical data partitioning was implemented by separating customer orders according to their delivery location.

2. CLOUD DATABASE DEPLOYMENT

The VIFSET NoSQL database was deployed using MongoDB Atlas on the VIFSET-Cluster deployment.

Database name: vifset_nosql

The cloud database contains the original orders collection and two additional logical partition collections.

3. PARTITIONING STRATEGY

Orders were separated into two logical partitions:

orders_lagos:
Contains orders belonging to customers in Lagos.
- Order 1001: John Ade
- Order 1003: David Bello

orders_other:
Contains orders belonging to customers outside Lagos.
- Order 1002: Mary Okafor, Abuja

This approach demonstrates horizontal data partitioning by customer location.

4. CROSS-PARTITION QUERY

The MongoDB aggregation operator $unionWith was used to combine records from orders_lagos and orders_other.

A subsequent $group stage calculated the total number of orders and the combined payment amount.

Observed results:
Total orders: 3
Combined payment amount: ₦481,000

5. REPLICATION AND AVAILABILITY

In a distributed database environment, replication involves maintaining copies of data across multiple database nodes. It can improve availability and support recovery when a node becomes unavailable.

MongoDB Atlas provides managed cloud database infrastructure. However, this exercise did not independently configure or test replica-set failover. Replication is discussed as an architectural concept rather than a manually verified experiment.

6. CONSISTENCY

Database consistency ensures that stored information remains valid and follows defined rules.

For VIFSET, order identifiers, customer details, payment amounts and order statuses must remain accurate across the logical partitions.

7. LIMITATIONS

The two collections represent logical partitions created for this practical exercise. They are not actual MongoDB sharding configurations.

The cross-partition aggregation demonstrates how records from separate collections can be combined. Actual distributed sharding, replication failover and multi-node performance testing were outside the scope of this implementation.

8. CONCLUSION

The exercise demonstrated cloud database deployment, location-based logical partitioning and cross-partition aggregation using MongoDB Atlas.

It also examined the importance of replication, availability and consistency in distributed database systems.
