Portfolio 2: Query Processing and Optimisation

Case Study: PayFlow Nigeria

bjective
This practical exercise investigates query processing and optimisation using PostgreSQL in the PayFlow Nigeria database.

Practical Activities
- Executed SQL queries to retrieve transaction records.
- Used `EXPLAIN ANALYZE` to examine query execution plans.
- Examined sequential scans and sorting operations.
- Created a composite index on transaction account and transaction date.
- Compared query execution statistics before and after index creation.

 Database Technology
- PostgreSQL
- pgAdmin 4
- SQL

Files in This Portfolio

| File | Description |
|---|---|
| query_example.sql | SQL queries and index creation |
| performance_analysis.md | Performance comparison and interpretation |
| evidence/ | Screenshots of execution plans and index verification |

Key Observation
The query planner selected a sequential scan after the composite index was created. This illustrates that PostgreSQL considers estimated query costs and dataset characteristics when choosing an execution plan.

The exercise demonstrates practical query optimisation, index creation, and execution-plan analysis in a relational database environment.
