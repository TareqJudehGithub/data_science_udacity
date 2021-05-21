-- Aggregates in Window Functions:

SELECT	id,
		account_id,
		DATE_TRUNC ('month', occurred_at) AS month,
		DENSE_RANK () OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS dense_rank,
		SUM (standard_qty) OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS sum_stand_qty,
		COUNT (standard_qty) OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS count_stand_qty,
		AVG (standard_qty) OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS avg_stand_qty,
		MIN (standard_qty) OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS min_standard_qty,
		MAX (standard_qty) OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS max_stand_qty
FROM orders;


-- total quantity aggregate report:

SELECT	DATE_TRUNC('month', occurred_at) AS month,
		total,
		SUM (total) OVER (PARTITION BY DATE_TRUNC('month', occurred_at) ORDER BY occurred_at) AS running_total
from orders;

-- Aggregating monthly posters amount for each account for year 2014:

SELECT 	account_id,
		name,
		occurred_at AS date,
		poster_qty,
		SUM(poster_qty) OVER (PARTITION BY DATE_TRUNC('month', occurred_at) ORDER BY occurred_at) AS sum_posters
FROM orders
JOIN accounts
ON orders.account_id = accounts.id
WHERE poster_qty > 0
AND DATE_TRUNC('month', occurred_at) BETWEEN '2014-01-01' AND '2014-12-31';


-- total yearly report:

SELECT	DATE_TRUNC('year', occurred_at) AS year,
		SUM (total) AS annual_total
from orders
GROUP BY 1
ORDER BY 1;


-- RANK 
SELECT	account_id AS account_id,
		id AS order_id,
		DATE_TRUNC ('month', occurred_at) AS month,
		DENSE_RANK () OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS rank,
		total_amt_usd,
		SUM (total_amt_usd) OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS accumilated_total
FROM orders;