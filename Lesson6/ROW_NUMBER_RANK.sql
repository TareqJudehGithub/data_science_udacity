-- ROW_NUMBER () & RANK

-- Order by id:
SELECT	id,
		account_id,
		occurred_at,
		ROW_NUMBER () OVER (ORDER BY id) AS row_num
FROM orders;
-- This shows us, the order row number within each id account, where row_num 1 is the first order that occurred.

-- Order By occurred_at:
SELECT	id,
		account_id,
		occurred_at,
		ROW_NUMBER () OVER (PARTITION BY account_id ORDER BY occurred_at) AS row_num
FROM orders;
-- This now shows us the order row number within each account_id, where row_num 1 is the first order that occurred.


-- RANK

-- By order date:
SELECT	id,
		account_id,
		occurred_at,
		RANK () OVER (PARTITION BY account_id ORDER BY occurred_at) AS row_num
FROM orders;

-- By month:
SELECT	id,
		account_id,
		DATE_TRUNC ('month', occurred_at) AS month,
		RANK () OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS row_now
FROM orders;
-- AS we can see, entries with the same month, are giving the same rank.
RANK () -- skips rank for similar records with same date here in our example. Dense_rank however, does not.


-- DENSE_RANK ()

SELECT	id,
		account_id,
		DATE_TRUNC ('month', occurred_at) AS month,
		DENSE_RANK () OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS row_num
FROM orders;








