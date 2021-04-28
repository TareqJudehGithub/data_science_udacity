-- CASE 
SELECT
		id,
		account_id,
		occurred_at,
		channel,
		CASE WHEN channel = 'facebook' THEN 'yes' END AS is_facebook
FROM web_events
ORDER BY 3;

-- including ELSE, OR,
SELECT 
		id,
		account_id,
		occurred_at,
		channel,
		CASE WHEN channel = 'facebook' OR channel = 'direct' THEN 'True' ELSE 'False' END AS if_facebook
FROM web_events
ORDER BY 1;

 -- Using LIKE in CASE statements
SELECT
		id,
		name,
		CASE WHEN name LIKE '%s' THEN 'True' ELSE 'False' END as ends_with_s
FROM accounts
ORDER BY 1;

-- multiple WHEN statements
SELECT
	account_id,
	occurred_at,
	total,
	CASE WHEN total > 500 THEN 'Over 500' 
	 	 WHEN total BETWEEN 301 AND 500 THEN '301 - 500' 
		 WHEN total BETWEEN 101 AND 300 THEN '101 - 300'
		 ELSE 'Below 100' END AS total
FROM orders
ORDER BY 1;

-- Is total above 300?
SELECT
        id,
        account_id,
        total,
        CASE WHEN total > 300 THEN 'True' ELSE 'False' END AS is_above_300
FROM orders
ORDER BY 1;


-- Create a column that divides the standard_amt_usd by the standard_qty to find the 
-- unit price for standard paper for each order
SELECT 
		id,
		account_id,
		standard_amt_usd,
		standard_qty,
		CASE 
			WHEN standard_qty = 0 OR standard_amt_usd = 0 THEN 0
			ELSE ROUND ((standard_amt_usd / standard_qty)::NUMERIC,2) END AS unit_price
FROM orders
ORDER BY 2
LIMIT 10;


-- Count total rows above 500, and also total rows below 500 for total column
SELECT
		CASE WHEN total > 500 THEN 'Over 500' 
		ELSE 'Below 500' END AS total_group,
		COUNT(*) AS order_count
FROM orders
GROUP BY 1
ORDER BY 1 DESC;


-- Count total rows above 10000, and also total rows below 10000 for total_amt_usd column.
SELECT 
		 CASE 
		 WHEN total_amt_usd > 10000 THEN 'Above 10000'
		 ELSE 'Below 10000' END AS total_group,
		 COUNT (*) AS order_count
FROM orders
GROUP BY 1
ORDER BY 1;






