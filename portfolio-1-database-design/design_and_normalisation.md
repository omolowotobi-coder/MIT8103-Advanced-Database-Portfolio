Portfolio 1: Database Design and Modelling

1. Case Study: PayFlow Nigeria

PayFlow Nigeria is a simulated fintech and digital banking platform that provides digital wallet, savings and electronic fund transfer services.

The database supports customers, account holders and administrative personnel. Its major operations include customer registration, account management, deposits, withdrawals, transfers and transaction auditing.

2. Database Technology

PostgreSQL was selected as the relational database management system. The implementation was carried out using PostgreSQL and pgAdmin 4.

3. Relational Database Design

Four principal tables were implemented:

customers: Stores customer identity and contact information.

accounts: Stores account numbers, account types, currencies and balances.

transactions: Records deposits, withdrawals and transfers.

audit_logs: Stores records of important customer and system activities.

4. Relationships and Constraints

The database uses primary keys to uniquely identify records and foreign keys to establish relationships between tables.

Unique constraints prevent duplicate customer email addresses, phone numbers and account numbers. Check constraints validate account types, transaction amounts, currencies and account statuses.

The relationships include:

One customer can own multiple accounts.

One customer can generate multiple audit records.

One account can participate in multiple transactions as a sending or receiving account.

5. Normalisation

The relational design separates customer, account, transaction and audit information into different tables. This reduces unnecessary duplication and supports data integrity.

Customer details are maintained independently of account records, while transaction records reference the relevant accounts through foreign keys.

6. Implementation Evidence

The database was created in PostgreSQL under the name payflow_mit8103.

Four tables were successfully implemented, with three sample records in each table. The implementation was verified using SQL queries in pgAdmin 4.

An entity-relationship diagram was also prepared to illustrate the database entities, attributes and relationships.
