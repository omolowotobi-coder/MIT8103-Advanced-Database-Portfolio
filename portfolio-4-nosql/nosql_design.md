# NoSQL Data Modelling and Design

## 1. Database Choice

MongoDB was selected for the PayFlow Nigeria NoSQL implementation because it supports flexible, document-oriented data storage.

Customer information can be stored alongside related account information using embedded documents.

## 2. Document Structure

A typical customer document contains:

- Customer ID
- Full name
- Email address
- Account information
- Customer preferences

The accounts array allows a customer to have multiple associated accounts within one document.

## 3. Embedded Data Model

The implementation uses embedded documents for account details and nested documents for customer preferences.

This approach makes it possible to retrieve related customer and account information together without requiring relational joins.

## 4. Indexing Strategy

Indexes were created on customer identifiers, email addresses and embedded account numbers.

Unique indexes on customer ID and email help prevent duplicate values. The account number index supports account-related searches.

## 5. Aggregation

MongoDB aggregation was used to process account information.

The `$unwind` stage separates embedded account records, `$group` calculates grouped account balances, and `$sort` arranges the results.

## 6. Suitability for PayFlow Nigeria

MongoDB is useful for storing flexible customer profile information and related account metadata.

However, financial transactions that require strict multi-record consistency may be better handled by a relational database such as PostgreSQL.

A hybrid architecture can therefore use PostgreSQL for core financial transactions and MongoDB for flexible customer-oriented data.
