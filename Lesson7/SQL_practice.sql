SELECT *
FROM orders;

-- First poster order for every account:
SELECT 	account_id,
		name,
		DATE_TRUNC('month', occurred_at) AS date,
		SUM(poster_qty) 
FROM orders
JOIN accounts
ON orders.account_id = accounts.id
WHERE DATE_TRUNC('month', occurred_at) = 
	(
		SELECT	DATE_TRUNC('month', MIN(occurred_at))
		FROM orders
	)
	AND poster_qty > 0
GROUP BY 1, 2, 3

ORDER BY 1;


-- Aggregating monthly posters amount for each account for year 2014:

SELECT 	account_id,
		name,
		occurred_at AS date,
		poster_qty,
		SUM(poster_qty) OVER (PARTITION BY DATE_TRUNC('month', occurred_at) ORDER BY occurred_at) AS sum_posters,
		DENSE_RANK () OVER (PARTITION BY DATE_TRUNC('month', occurred_at) ORDER BY occurred_at) AS rank
FROM orders
JOIN accounts
ON orders.account_id = accounts.id
WHERE poster_qty > 0
AND DATE_TRUNC('month', occurred_at) BETWEEN '2014-01-01' AND '2014-12-31';


	
-- 	FIRST order every month for just 1 account:
SELECT	account_id,
		name,
		occurred_at,
		total_amt_usd,
		SUM(total_amt_usd) OVER(PARTITION BY DATE_TRUNC('year', occurred_at) ORDER BY occurred_at) AS total_amount
FROM accounts
JOIN orders
ON accounts.id = orders.account_id
WHERE account_id = 1001;


-- Compare 2015 total_amount with year 2016 for account 1001:
SELECT	account_id,
		name,
		year,
		total_amount,
-- 		LAG(total_amount) OVER total_amt_temp AS previous_year,
		total_amount - LAG(total_amount) OVER total_amt_temp  AS last_year_diff,
-- 		LEAD(total_amount) OVER total_amt_temp AS next_year,
		LEAD(total_amount) OVER total_amt_temp - total_amount AS next_year_diff
FROM
(
	SELECT	account_id AS account_id,
			name AS name,
			DATE_PART('year', orders.occurred_at) AS year, 
			SUM (total_amt_usd) AS total_amount
	FROM orders
	JOIN accounts
	ON accounts.id = orders.account_id
	WHERE account_id = 1001
	GROUP BY 1, 2, 3
) AS inner_q
-- WHERE account_id = 1001
WINDOW total_amt_temp AS (ORDER BY total_amount);





