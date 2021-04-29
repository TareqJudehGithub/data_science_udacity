-- CASE Quiz:

-- Q1. Write a query to display total for each order, the account ID, total amount of the 
-- order, and the level of the order - ‘Large’ or ’Small’ - depending on if the order 
-- is $3000 or more, or smaller than $3000.
SELECT 
	account_id,
	total_amt_usd,
	CASE
		WHEN total_amt_usd > 3000 THEN 'Large'
		ELSE 'Small' END AS order_level
FROM orders
ORDER BY 1;


-- Q2.
SELECT
		CASE 
			WHEN total >= 2000 THEN 'At Least 2000'
			WHEN total BETWEEN 1000 AND 1999 THEN 'Between 1000 and 2000'
			ELSE 'Less than 1000' END AS order_category,
		COUNT (*) AS order_count
FROM orders
GROUP BY 1;


-- Q3.
SELECT 
		acc.name,
		SUM (ord.total_amt_usd) AS total_sales,
		CASE
			WHEN SUM (ord.total_amt_usd) > 200000 THEN 'Top'
			WHEN SUM (ord.total_amt_usd) BETWEEN 100000 AND 200000 THEN 'Middle'
			ELSE 'Low' END AS customer_level
FROM orders AS ord
JOIN accounts AS acc
ON ord.account_id = acc.id
GROUP BY 1
ORDER BY 1;


-- Q4.
SELECT 
		acc.name,
		SUM (ord.total_amt_usd) AS total_spent,
		CASE
			WHEN SUM (ord.total_amt_usd) > 200000 THEN 'Top'
			WHEN SUM (ord.total_amt_usd) BETWEEN 100000 AND 200000 THEN 'Middle'
			ELSE 'Low' END AS Customer_level 
FROM orders AS ord
JOIN accounts AS acc
ON ord.account_id = acc.id
WHERE occurred_at BETWEEN '2016-01-01' AND '2017-12-31'
GROUP BY 1
ORDER BY 2 DESC;


-- Q5.
SELECT 
		sales.name,
		COUNT (ord.total) AS total_orders,
		CASE
			WHEN COUNT (ord.total) > 200 THEN 'top'
			ELSE 'not' END AS sales_level
FROM accounts AS acc
JOIN sales_reps AS sales
ON acc.sales_rep_id = sales.id
JOIN orders AS ord
ON ord.account_id = acc.id
GROUP BY 1
ORDER BY 2 DESC;


-- Q6.
SELECT
		sales.name,
		COUNT (total) AS total_orders,
		SUM (total_amt_usd) AS total_sales,
		CASE
			WHEN COUNT (total) > 200 OR SUM (total_amt_usd) > 750000 THEN 'top'
			WHEN COUNT (total)  BETWEEN 150 AND 200 OR SUM (total_amt_usd) BETWEEN 500000 AND 750000 THEN 'middle'
			ELSE 'low' END AS sales_level
FROM accounts AS acc
JOIN sales_reps AS sales
ON acc.sales_rep_id = sales.id
JOIN orders AS ord
ON acc.id = ord.account_id
GROUP BY 1
ORDER BY 3 DESC;









