-- Subquery Mania

-- Q1. Provide the name of the sales_rep in each region with the 
-- largest amount of total_amt_usd sales.

	-- Step1. JOIN all tables involved:
SELECT	sr.name AS sales_rep_name,
		r.name AS region_name,
		SUM (o.total_amt_usd)  AS total_sales
FROM accounts AS a
JOIN sales_reps AS sr
ON a.sales_rep_id = sr.id
JOIN region AS r
ON sr.region_id = r.id
JOIN orders AS o
ON a.id = o.account_id
GROUP BY 1, 2
ORDER BY 3 DESC;

	-- Step2. TOP sales_rep from every region
-- In this query, we provide each region with its MAX sales:
SELECT	region_name,
		MAX (total_sales)
FROM 
(
SELECT	sr.name AS sales_rep_name,
			r.name AS region_name,
			SUM (o.total_amt_usd)  AS total_sales
	FROM accounts AS a
	JOIN sales_reps AS sr
	ON a.sales_rep_id = sr.id
	JOIN region AS r
	ON sr.region_id = r.id
	JOIN orders AS o
	ON a.id = o.account_id
	GROUP BY 1, 2
)table1
GROUP BY 1
	
-- STEP 3
-- Now we need to match each region and total sales from the table in Step2,
-- to the original query (Where the regions match in both queries, and the
-- MAX sales in step2 matches total sales in step1):

-- table3
SELECT	table3.sales_rep_name,
		table2.region_name, 
		table2.max_sales_t2
FROM
(
	-- table2
	SELECT	region_name,
		MAX (total_sales) AS max_sales_t2
	FROM 
	(
		SELECT	sr.name AS sales_rep_name,
					r.name AS region_name,
					SUM (o.total_amt_usd)  AS total_sales
			FROM accounts AS a
			JOIN sales_reps AS sr
		-- table1
			ON a.sales_rep_id = sr.id
			JOIN region AS r
			ON sr.region_id = r.id
			JOIN orders AS o
			ON a.id = o.account_id
			GROUP BY 1, 2
		) AS table1
	GROUP BY 1
	) AS table2
JOIN 
(
	SELECT	sr.name AS sales_rep_name,
			r.name AS region_name,
			SUM (o.total_amt_usd)  AS total_sales_t3
	FROM accounts AS a
	JOIN sales_reps AS sr
	ON a.sales_rep_id = sr.id
	JOIN region AS r
	ON sr.region_id = r.id
	JOIN orders AS o
	ON a.id = o.account_id
	GROUP BY 1, 2
) AS table3
ON table2.region_name = table3.region_name AND table2.max_sales_t2 = table3.total_sales_t3
ORDER BY 3 DESC;
------------------------------------------------


-- Q2. For the region with the largest (sum) of sales total_amt_usd, how many total (count) orders were placed?

--Step1. Query the region wuth the largest sales SUM:
SELECT	region_name,	
		MAX (total_sales)
FROM 
(
	SELECT	r.name AS region_name,
			SUM (o.total_amt_usd) AS total_sales
	FROM accounts AS a
	JOIN sales_reps AS sr
	ON a.sales_rep_id = sr.id
	JOIN region AS r
	ON sr.region_id = r.id
	JOIN orders AS o
	ON a.id = o.account_id
	GROUP BY 1
) sub
GROUP BY 1;



-- Step2. total COUNTs for orders 
SELECT	r.name AS region_name,
		COUNT (o.total) AS total_orders 
FROM accounts AS a
JOIN sales_reps AS sr
ON a.sales_rep_id = sr.id
JOIN region AS r
ON sr.region_id = r.id
JOIN orders AS o
ON a.id = o.account_id
GROUP BY 1
HAVING SUM (o.total_amt_usd) = 
(
	SELECT	MAX (total_sales)
	FROM 
	(
		SELECT	r.name AS region_name,
		SUM (o.total_amt_usd) AS total_sales
		FROM accounts AS a
		JOIN sales_reps AS sr
		ON a.sales_rep_id = sr.id
		JOIN region AS r
		ON sr.region_id = r.id
		JOIN orders AS o
		ON a.id = o.account_id
		GROUP BY 1
	) AS sub
);
------------------------------------------------

--Q3. 

-- Step1. The account that bought the most standard quality papers.

SELECT	a.name AS account_name,
		SUM (o.standard_qty) AS standard_total,
		SUM (o.total) AS total_orders
FROM accounts AS a
JOIN orders AS o
ON a.id = o.account_id
GROUP BY 1
ORDER BY  2 DESC 
LIMIT 1


-- Step2 . How many accounts had more total purchases than the account name in Step1?

SELECT	COUNT (account_name) AS total_orders
FROM 
(
	SELECT a.name AS account_name
	FROM accounts AS a
	JOIN orders AS o
	ON a.id = o.account_id
	GROUP BY 1
	HAVING SUM (o.total) > 
		(
			SELECT total_orders
			FROM
			(
			SELECT	a.name AS account_name,
				SUM (o.standard_qty) AS standard_total,
				SUM (o.total) AS total_orders
			FROM accounts AS a
			JOIN orders AS o
			ON a.id = o.account_id
			GROUP BY 1
			ORDER BY  2 DESC 
			LIMIT 1
			) AS inner_sub
		)
) AS outer_sub;
------------------------------------------------


--Q4. 

-- Step 1. Query for the customer that spent the most (in total over their lifetime as a customer) total_amt_usd
SELECT	a.id AS account_id,
		a.name AS account_name,
		SUM (o.total_amt_usd) AS total_amt
FROM accounts AS a
JOIN web_events as e
ON a.id = e.account_id
JOIN orders AS o
ON a.id = o.account_id
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 1;


-- Step 2. How many web events did that account from Step 1 had?
SELECT	a.name AS account_name,
		e.channel AS channel,
		COUNT (*) AS events_total
	FROM accounts AS a
	JOIN web_events as e
	ON a.id = e.account_id AND a.id = (
		SELECT account_id
		FROM 
			(
			SELECT	a.id AS account_id,
					a.name AS account_name,
					SUM (o.total_amt_usd) AS total_amt
			FROM accounts AS a
			JOIN web_events as e
			ON a.id = e.account_id
			JOIN orders AS o
			ON a.id = o.account_id
			GROUP BY 1, 2
			ORDER BY 3 DESC
			LIMIT 1
			) AS inner_q
		)
GROUP BY 1, 2
ORDER BY 3 DESC;

------------------------------------------------

-- Q5. What is the lifetime average amount spent in terms of total_amt_usd for the top 10 total spending accounts?

-- Step1. Query for top 10 total spending account.
SELECT	a.id AS account_id,
		a.name AS account_name,
		SUM (o.total_amt_usd) AS total_amt_spent
FROM accounts AS a
JOIN orders AS o
ON a.id = o.account_id
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10;

-- Step2. Query for avgerage lifetime amount spent based of Step1 query result.
SELECT ROUND(AVG (total_amt_spent)::NUMERIC, 2) AS avg_amt_spent
FROM (
	SELECT	a.id AS account_id,
			a.name AS account_name,
			SUM (o.total_amt_usd) AS total_amt_spent
	FROM accounts AS a
	JOIN orders AS o
	ON a.id = o.account_id
	GROUP BY 1, 2
	ORDER BY 3 DESC
	LIMIT 10
	) AS inner_q;
-------------------------------------------------

-- Q6. What is the lifetime average amount spent in terms of total_amt_usd, including
-- only the companies that spent more per order, on average, than the average of all orders.

-- Step1. Query AVG of total_amt_usd for ALL orders.
SELECT	ROUND(AVG (total_amt_usd)::NUMERIC, 2) AS avg_spent
FROM orders;

-- Step2. Query for companies that spent more per day, on average, than the average of all orders (Step1).
SELECT	a.name AS account_name,
		ROUND(AVG(o.total_amt_usd)::NUMERIC, 2) AS avg_spent
FROM accounts AS a
JOIN orders AS o 
ON a.id = o.account_id
GROUP BY 1
HAVING AVG (o.total_amt_usd) > 
(
	SELECT	ROUND(AVG (total_amt_usd)::NUMERIC, 2) AS avg_spent
	FROM orders
) 
ORDER BY 1;

-- Step3 Query for average lifetime spent for only accounts from Step2.
SELECT ROUND (AVG(avg_spent)::NUMERIC, 2) AS avg_spent
FROM 
(
	SELECT	a.name AS account_name,
		ROUND(AVG(o.total_amt_usd)::NUMERIC, 2) AS avg_spent
	FROM accounts AS a
	JOIN orders AS o 
	ON a.id = o.account_id
	GROUP BY 1
	HAVING AVG (o.total_amt_usd) > 
	(
		SELECT	ROUND(AVG (total_amt_usd)::NUMERIC, 2) AS avg_spent
		FROM orders
	) 
	ORDER BY 1
) AS inner_q;

















































