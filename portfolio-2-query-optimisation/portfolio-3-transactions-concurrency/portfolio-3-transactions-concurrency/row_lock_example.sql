-- Portfolio 3: Concurrency Control
-- PayFlow Nigeria

-- Start a transaction and lock account 1.

BEGIN;

SELECT account_id, balance
FROM accounts
WHERE account_id = 1
FOR UPDATE;

-- Keep this transaction open while testing Session B.
-- After the second session has demonstrated waiting,
-- execute COMMIT in Session A.

COMMIT;


-- SESSION B:
-- Run this separately in a second PostgreSQL query window.
-- It will wait if Session A still holds the row lock.

BEGIN;

UPDATE accounts
SET balance = balance - 20
WHERE account_id = 1;

COMMIT;
