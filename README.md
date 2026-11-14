MIT8103: Advanced Database Systems
Portfolio Practical Summary
Case Study: PayFlow Nigeria
Student Name: Omolowo Tobi Alfred
Academic Session: 2026/2027
GitHub Repository: https://github.com/omolowotobi-coder/MIT8103-Advanced-Database-Portfolio
1. Introduction and Portfolio Overview
This practical portfolio demonstrates the application of advanced database concepts using PayFlow Nigeria, a simulated fintech and digital banking platform. The portfolio covers relational database design, query processing and optimisation, transaction management, NoSQL data modelling, and distributed and cloud database architecture.
The practical activities involved PostgreSQL, pgAdmin 4, MongoDB Community Server, and MongoDB Shell. The work combined database implementation, SQL queries, document-oriented data modelling, performance analysis, and distributed database architecture design.
2. Summary of Practical Activities
Portfolio 1: Database Design and Modelling
The PayFlow Nigeria case study was modelled around four relational database tables: customers, accounts, transactions, and audit_logs.
The design demonstrates how customer information, account records, financial transactions and audit events can be organised into related relational structures. Primary keys and foreign-key relationships provide a basis for maintaining referential integrity and organising the database.
The design documentation also discusses database constraints and normalisation as measures for reducing unnecessary duplication and improving data consistency.
Portfolio 2: Query Processing and Optimisation
PostgreSQL was used to examine query processing and optimisation.
The practical work involved executing queries against the transactions table, inspecting execution plans with EXPLAIN ANALYZE, and creating a composite index on from_account_id and created_at DESC. The measured execution time changed from 0.096 ms before the new index to 0.049 ms afterwards. However, the query returned zero rows, and PostgreSQL continued to select a sequential scan. Therefore, the measurements are illustrative rather than conclusive evidence of improved performance.
Portfolio 3: Transactions and Concurrency
This activity examined transaction management and concurrency control in PostgreSQL.
A ₦1,000 transfer was executed from Amina Yusuf's account to Chinedu Okafor's account. The transaction was recorded with the reference PFN-LIVE-TRANSFER-0001.
A rollback exercise was also performed to demonstrate how uncommitted changes can be reversed using ROLLBACK.
Additionally, a row-locking exercise using SELECT FOR UPDATE was conducted across two PostgreSQL sessions. The second session experienced a wait while the first session held a row lock. This demonstrated how database locking coordinates competing operations on the same record.
Portfolio 4: NoSQL and Advanced Data Models
MongoDB was implemented using the database payflow_nosql and the collection customers.
Three sample customer documents were inserted. The documents included customer details, embedded account information, and nested preferences.
Practical activities included retrieving customer records, filtering customers based on account balances, searching embedded account numbers, and performing aggregation using $unwind, $group, and $sort.
Indexes were created on customer ID, email, and embedded account number. The default MongoDB _id index was also verified.
Portfolio 5: Distributed and Cloud Database Exercise
This portfolio presented a proposed distributed database architecture for PayFlow Nigeria.
The design considered a primary PostgreSQL server, synchronous standby replica, asynchronous read replica, cloud object storage for backups and transaction logs, monitoring and failover mechanisms.
It also examined replication, sharding, availability, consistency, and cloud deployment considerations.
The architecture is a conceptual design exercise rather than a live cloud deployment. It demonstrates how distributed database technologies could support the future scalability and resilience of the PayFlow platform.
3. Technical Skills and Learning Outcomes
The practical exercises strengthened my understanding of:
Relational database design and relationships.
SQL querying and database indexing.
Query execution plans and performance interpretation.
Transaction management using BEGIN, COMMIT, and ROLLBACK.
Concurrency control and row-level locking.
MongoDB document modeling and aggregation.
Database replication, sharding and availability concepts.
Technical documentation and version control using GitHub.
An important lesson from the exercises is that database performance and reliability depend not only on selecting appropriate technologies but also on understanding workload characteristics, transaction requirements, and system architecture.
4. Personal Reflection
Working through the PayFlow Nigeria case study helped me connect theoretical database concepts with practical implementation.
One of the most useful experiences was examining query execution plans in PostgreSQL. I learned that creating an index does not automatically mean the database will use it. The query planner considers factors such as table size, selectivity, and estimated execution cost when selecting an execution strategy.
The transaction and concurrency exercise also demonstrated the importance of controlling simultaneous access to financial records. In a banking application, poorly managed concurrent updates can create inconsistencies in account balances.
The MongoDB exercise provided a practical understanding of how document-oriented databases differ from relational databases. I also gained a clearer appreciation of why a hybrid architecture may be appropriate for a fintech platform: PostgreSQL can manage core financial transactions, while MongoDB can support flexible customer-oriented information.
Finally, the distributed database design exercise improved my understanding of replication, failover, backup strategies, and the trade-offs involved in designing highly available database systems.
5. Evidence and GitHub Repository
The GitHub repository contains the practical documentation, SQL examples, MongoDB queries, architecture design, and supporting evidence.
6. Declaration of AI Tool Usage
I used ChatGPT as an academic support tool while preparing this portfolio. Its assistance included explaining database concepts, helping organise technical documentation, reviewing SQL examples, interpreting query execution results, and supporting the preparation of the GitHub repository.

