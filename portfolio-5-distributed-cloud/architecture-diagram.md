VIFSET E-COMMERCE DISTRIBUTED DATABASE ARCHITECTURE

CUSTOMERS
    |
    v
VIFSET E-COMMERCE SYSTEM
    |
    v
MONGODB ATLAS CLOUD DATABASE
    |
    v
VIFSET NOSQL DATABASE
    |
    +-------------------------+
    |                         |
    v                         v
ORDERS_LAGOS              ORDERS_OTHER
    |                         |
    v                         v
LAGOS CUSTOMERS           CUSTOMERS OUTSIDE LAGOS
    |                         |
    +------------+------------+
                 |
                 v
          $UNIONWITH QUERY
                 |
                 v
       CROSS-PARTITION AGGREGATION
                 |
                 v
       COMBINED ORDER REPORT
       3 ORDERS - NGN 481,000

DISTRIBUTION CONCEPTS

1. Logical partitioning separates order records by customer location.
2. Cloud hosting provides access to the database through MongoDB Atlas.
3. Replication can improve availability by maintaining copies of database data.
4. Consistency ensures that order and payment information remains accurate.

IMPLEMENTATION NOTE

The two collections represent logical partitions created for this exercise. They are not actual MongoDB sharded clusters. Replication and failover are discussed conceptually and were not independently configured or tested.
