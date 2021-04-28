-- CASE Quiz:

-- Q1. Write a query to display for each order, the account ID, total amount of the 
-- order, and the level of the order - ‘Large’ or ’Small’ - depending on if the order 
-- is $3000 or more, or smaller than $3000.
SELECT 
		account_id,
		total,
		CASE 
		WHEN total > 3000 THEN 'Above 3000'
		ELSE 'Below 3000' END AS order_level
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


-- Q4.


-- Q5.


-- Q6.
