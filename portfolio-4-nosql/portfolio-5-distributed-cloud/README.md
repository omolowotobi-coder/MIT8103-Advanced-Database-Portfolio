# Portfolio 5: Distributed and Cloud Database Exercise

## Case Study: PayFlow Nigeria

### 1. Introduction

This portfolio examines how distributed database technologies can support the availability, scalability and reliability of PayFlow Nigeria, a simulated fintech platform.

The exercise presents a proposed distributed database architecture using PostgreSQL replication, backup storage, monitoring and failover mechanisms.

### 2. Proposed Architecture

The proposed architecture consists of:

- Primary PostgreSQL database server.
- Synchronous standby replica.
- Asynchronous read replica.
- Cloud object storage for database backups and transaction logs.
- Monitoring and failover mechanisms.
- Application and API layer connecting customers to the database infrastructure.

### 3. Distributed Database Concepts

The design considers the following concepts:

1. **Replication:** Maintaining copies of database records across multiple database servers.
2. **Sharding:** Distributing large datasets across multiple database nodes to support horizontal scalability.
3. **Availability:** Using standby infrastructure and failover mechanisms to reduce service disruption.
4. **Consistency:** Maintaining reliable and accurate financial records across database replicas.
5. **Cloud deployment:** Using cloud infrastructure for database hosting, backups and operational monitoring.

### 4. Technologies Considered

- PostgreSQL
- PostgreSQL streaming replication
- Cloud object storage
- Database monitoring tools
- Application programming interfaces (APIs)

### 5. Implementation Status

This portfolio presents a proposed architecture and technical design. It does not represent a live multi-node cloud deployment.

The proposed architecture demonstrates how replication, backup strategies, monitoring and failover mechanisms can improve the resilience of a fintech database infrastructure. These capabilities are important for a financial platform that requires reliable access to transaction records and customer account information.
