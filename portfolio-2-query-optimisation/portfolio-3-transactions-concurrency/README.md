###Portfolio 3: Transactions and Concurrency

###Case Study: PayFlow Nigeria

### 1. Introduction

This practical exercise examines transaction management and concurrency control in the PayFlow Nigeria relational database using PostgreSQL.

Financial applications require reliable transaction processing to ensure that account balances and transaction records remain consistent.

### 2. Practical Activities

The following activities were performed:

1. Executed a ₦1,000 transfer from Amina Yusuf's account to Chinedu Okafor's account.
2. Verified the transaction record in the transactions table.
3. Checked account balances after the transfer.
4. Performed a rollback test to demonstrate transaction reversal.
5. Conducted a row-locking exercise using `SELECT FOR UPDATE` and a second database session.

### 3. Transaction Verification

The successful transfer was recorded with the reference:

`PFN-LIVE-TRANSFER-0001`

The transaction was recorded as successful in the database.

### 4. Transaction Control

PostgreSQL transaction commands were used to demonstrate:

- `BEGIN` – starts a transaction.
- `COMMIT` – makes changes permanent.
- `ROLLBACK` – reverses uncommitted changes.

### 5. Concurrency Control

A row-locking exercise was performed to observe how PostgreSQL handles competing updates to the same account record.

The second session experienced a wait while the first session held a row lock. This demonstrated how database locking helps coordinate concurrent operations.

### 6. Conclusion

The exercise demonstrated transaction processing, rollback, ledger verification, and row-level locking in PostgreSQL. These mechanisms are important for maintaining financial data consistency in applications such as PayFlow Nigeria.
