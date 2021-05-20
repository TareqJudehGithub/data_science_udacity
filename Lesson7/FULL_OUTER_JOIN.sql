-- FULL OUTER JOIN

-- INNER JOIN example:
SELECT 	accounts.id AS accounts_id,
		orders.account_id AS orders_acc_id,
		SUM (total_amt_usd) AS sum_total,
		ROUND (AVG (total_amt_usd)::NUMERIC, 2) AS avg_total
FROM accounts
JOIN orders
ON accounts.id = orders.account_id
GROUP BY 1, 2
ORDER BY 1;


-- LEFT JOIN example:
-- Left joins also include unmatched rows from the left table, which is indicated in the “FROM” clause.
SELECT 	accounts.id AS accounts_id,
		orders.account_id AS orders_acc_id,
		SUM (total_amt_usd) AS sum_total,
		ROUND (AVG (total_amt_usd)::NUMERIC, 2) AS avg_total
FROM accounts
LEFT JOIN orders
ON accounts.id = orders.account_id
GROUP BY 1, 2
ORDER BY 1;


-- RIGHT JOIN example:
--Right joins are similar to left joins, but include unmatched data from the right table -- the one that’s 
-- ndicated in the JOIN clause.
SELECT 	accounts.id AS accounts_id,
		orders.account_id AS orders_acc_id,
		SUM (total_amt_usd) AS sum_total,
		ROUND (AVG (total_amt_usd)::NUMERIC, 2) AS avg_total
FROM accounts
RIGHT JOIN orders
ON accounts.id = orders.account_id
GROUP BY 1, 2
ORDER BY 1;


-- FULL OUTER JOIN
-- FULL OUTER JOINs include unmatched rows from both tables.
--  A full outer join returns unmatched records in each table with null values 
--  for the columns that came from the opposite table.
/*
 If you wanted to return unmatched rows only, which is useful for some cases of data assessment, you 
 can isolate them by adding the following line to the end of the query:
 */
WHERE accounts.id IS NULL or orders.account_id is NULL

-- FULL OUTER JOIN example:
SELECT 	accounts.id AS accounts_id,
		orders.account_id AS orders_acc_id,
		SUM (total_amt_usd) AS sum_total,
		ROUND (AVG (total_amt_usd)::NUMERIC, 2) AS avg_total
FROM accounts
FULL OUTER JOIN orders
ON accounts.id = orders.account_id
-- WHERE clause will only return unmatched rows:
WHERE accounts.id IS NULL or orders.account_id is NULL
GROUP BY 1, 2
ORDER BY 1;

-- Quiz: FULL OUTER JOIN
SELECT	*
FROM accounts AS acc
FULL JOIN sales_reps AS sales
ON acc.sales_rep_id = sales.id
-- WHERE acc.sales_rep_id IS NULL OR sales.id IS NULL;


-- JOINs without an Equals sign

-- First order for each account:
SELECT 	ord.id, ord.occurred_at AS order_date,
		events.*
FROM orders AS ord
LEFT JOIN web_events AS events
ON ord.account_id = events.account_id
AND ord.occurred_at = events.occurred_at
WHERE DATE_TRUNC('month', ord.occurred_at) = 
(
	SELECT 	DATE_TRUNC('month', MIN(orders.occurred_at))
	FROM orders
)
ORDER BY ord.account_id, ord.occurred_at;


-- Inequality JOINs
/* The query in Derek's video was pretty long. Let's now use a shorter query to showcase the 
power of joining with comparison operators.

Inequality operators (a.k.a. comparison operators) don't only need to be date times or numbers, 
they also work on strings! You'll see how this works by completing the following quiz, which will 
also reinforce the concept of joining with comparison operators. 
*/

-- Quiz: JOINs with comparison operators
SELECT	acc.name AS account_name,
		acc.primary_poc AS primary_poc,
		sales.name AS sales_name
FROM accounts AS acc
LEFT JOIN sales_reps AS sales
ON acc.sales_rep_id = sales.id

WHERE acc.primary_poc < sales.name;

-- Self JOINs
-- Which accounts made multiple orders within 30 days:
SELECT	o1.id AS o1_id,
		o1.account_id AS o1_account_id,
		o1.occurred_at AS o1_occurred_at,
		o2.id AS o2_id,
		o2.account_id AS o2_account_id,
		o2.occurred_at AS o2_occurred_at
FROM orders AS o1
LEFT JOIN orders AS o2
ON o1.account_id = o2.account_id
-- orders took place AFTER the original order was place :
AND o2.occurred_at > o1.occurred_at
-- orders that occurred 29 days after the 1st order occurred:
AND o2.occurred_at <= o1.occurred_at + INTERVAL '28 days'
ORDER BY o1.account_id, o1.occurred_at;






