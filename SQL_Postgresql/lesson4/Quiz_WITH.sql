-- Quiz: WITH

--Q1

--Q2

--Q3

--Q4

--Q5

-- Step1. Query Average for top 10 total spending accounts.
WITH CTE1 AS
(
	SELECT	a.id AS account_id,
			a.name AS account_name,
			SUM (o.total_amt_usd) AS total_spent
	
-- 	SELECT ROUND (AVG (o.total_amt_usd)::NUMERIC, 2) AS avg_all
	FROM accounts AS a
	JOIN orders AS o
	ON a.id = o.account_id
	GROUP BY 1, 2
	ORDER BY 3 DESC
	LIMIT 10
)
SELECT ROUND (AVG (total_spent)::NUMERIC, 2)
FROM CTE1;


--Q6

-- Step1. Query AVG total_amt_usd for all orders.
WITH CTE1 AS
	(
		SELECT ROUND (AVG (o.total_amt_usd)::NUMERIC, 2) AS avg_all
		FROM orders AS o
		JOIN accounts AS a
		ON o.account_id = a.id
	),
-- Step2. Query for companies that spent per day more than all orders average (Step1).
	CTE2 AS
	(
		SELECT	o.account_id AS account_id,
				ROUND (AVG (o.total_amt_usd)::NUMERIC, 2) AS avg_amt
		FROM orders AS o
		GROUP BY 1
		HAVING ROUND (AVG (o.total_amt_usd)::NUMERIC, 2) > (SELECT * FROM CTE1)
	)
-- Step3 Query average amount spent for these companies from Step2.
SELECT ROUND (AVG (avg_amt)::NUMERIC, 2) AS avg_spent
FROM CTE2;






	
	

