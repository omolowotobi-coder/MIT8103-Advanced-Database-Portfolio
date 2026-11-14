# Portfolio 4: NoSQL and Advanced Data Models

## Case Study: PayFlow Nigeria

### 1. Introduction

This practical exercise explores the use of MongoDB as a NoSQL database for the PayFlow Nigeria fintech application.

Unlike relational databases, MongoDB stores data as flexible BSON documents. This allows related information, such as customer accounts and preferences, to be embedded within a single customer document.

### 2. Database Implementation

The following MongoDB database objects were created:

- Database: `payflow_nosql`
- Collection: `customers`

Three sample customer documents were inserted:

1. Amina Yusuf
2. Chinedu Okafor
3. Zainab Bello

Each document contains customer information, an embedded accounts array and nested preference information.

### 3. Practical Activities

The implementation included:

- Creating a MongoDB database and collection.
- Inserting customer documents.
- Retrieving all customer records.
- Filtering customers based on account balances.
- Searching embedded account information.
- Performing aggregation using `$unwind`, `$group` and `$sort`.
- Creating indexes to improve query access.

### 4. Indexing

The following indexes were created and verified:

- Unique index on `customer_id`.
- Unique index on `email`.
- Index on `accounts.account_number`.

MongoDB's default `_id` index was also present.

### 5. Conclusion

The exercise demonstrated document-oriented data modelling, embedded documents, indexing, filtering and aggregation in MongoDB. The flexible document structure is suitable for customer profiles and account information where related data can be retrieved together.
