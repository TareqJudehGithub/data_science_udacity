-- COALESCE

SELECT 	*,
		COALESCE (primary_poc, 'no POC') AS primary_poc_modified
FROM accounts
WHERE primary_poc is NULL;

SELECT	bcolor,
		COALESCE (bcolor, 'black') AS new_color
FROM distinct_demo
WHERE bcolor is NULL;

SELECT	bcolor AS with_value,
		COALESCE (bcolor, 'no_value') AS null_column
FROM distinct_demo;


-- Quiz: COALESCE
-- 1.
SELECT *
FROM accounts a
LEFT JOIN orders o
ON a.id = o.account_id
WHERE o.total IS NULL;

--2.
SELECT 	a.id,
		COALESCE (o.id, a.id) AS orders_id
FROM accounts AS a
LEFT JOIN orders AS o
ON a.id = o.account_id
WHERE o.total IS NULL;

--3.
SELECT 	a.id,
		COALESCE (o.account_id, a.id) AS orders_account_id
FROM accounts AS a
LEFT JOIN orders AS o
ON a.id = o.account_id
WHERE o.total IS NULL;

--4.
SELECT 	a.id,
		COALESCE (o.id, a.id) AS orders_id,
		COALESCE (o.account_id, a.id) AS orders_account_id,
		COALESCE (o.standard_qty, 0) AS standard_qty,
		COALESCE (o.gloss_qty, 0) AS gloss_qty,
		COALESCE (o.poster_qty, 0) AS poster_qty,
		COALESCE (o.total, 0) AS total,
		COALESCE (o.standard_amt_usd, 0) AS standard_qty,
		COALESCE (o.gloss_amt_usd, 0) AS gloss_qty,
		COALESCE (o.poster_amt_usd, 0) AS poster_qty,
		COALESCE (o.total_amt_usd, 0) AS total_amt_usd
FROM accounts AS a
LEFT JOIN orders AS o
ON a.id = o.account_id
WHERE o.total IS NULL;

--5.
SELECT 	COUNT (a.id)
FROM accounts AS a
LEFT JOIN orders AS o
ON a.id = o.account_id;

--6.
SELECT 	COUNT (a.id) AS ids_count,
		COALESCE (o.id, a.id ) AS account_id,
		COALESCE (o.account_id, a.id) AS orders_account_id,
		COALESCE (o.standard_qty, 0) AS standard_qty,
		COALESCE (o.gloss_qty, 0) AS gloss_qty,
		COALESCE (o.poster_qty, 0) AS poster_qty,
		COALESCE (o.total, 0) AS total,
		COALESCE (o.standard_amt_usd, 0) AS standard_qty,
		COALESCE (o.gloss_amt_usd, 0) AS gloss_qty,
		COALESCE (o.poster_amt_usd, 0) AS poster_qty,
		COALESCE (o.total_amt_usd, 0) AS total_amt_usd
FROM accounts AS a
LEFT JOIN orders AS o
ON a.id = o.account_id
WHERE o.total IS NULL
GROUP BY 2, 3, 4, 5, 6, 7, 8, 9, 10, 11;




