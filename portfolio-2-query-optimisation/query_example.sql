-- Portfolio 2: Query Processing and Optimisation
-- Case Study: PayFlow Nigeria

-- 1. Retrieve transactions belonging to a source account
EXPLAIN ANALYZE
SELECT *
FROM transactions
WHERE from_account_id = 1
ORDER BY created_at DESC;


-- 2. Create a composite index to support filtering
--    by source account and ordering by transaction date
CREATE INDEX idx_transactions_from_created
ON transactions (from_account_id, created_at DESC);


-- 3. Re-run the query to inspect the execution plan
EXPLAIN ANALYZE
SELECT *
FROM transactions
WHERE from_account_id = 1
ORDER BY created_at DESC;


-- 4. Verify the index
SELECT indexname, indexdef
FROM pg_indexes
WHERE tablename = 'transactions';


-- 5. Inspect transaction table size and row count
SELECT COUNT(*) AS total_transactions
FROM transactions;
