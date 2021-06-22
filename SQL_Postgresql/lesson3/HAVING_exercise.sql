-- HAVING questions

-- Q1. How many of the sales reps have more than 5 accounts that they manage?
SELECT 
		sales.id,
		sales.name AS sales_name,
		COUNT (accounts.name) AS total_accounts
from sales_reps AS sales
JOIN accounts
ON accounts.sales_rep_id = sales.id
GROUP BY 
		1, 2
HAVING 
		COUNT (accounts.name) > 5
ORDER BY 
		3 DESC;

-- Q2. How many accounts have more than 20 orders?
SELECT 
accounts.name,
orders.account_id,
COUNT (*) AS total_orders
FROM accounts
JOIN orders
ON accounts.id = orders.account_id
GROUP BY 
		1, 2
HAVING COUNT (orders.account_id) > 20
ORDER BY 3 DESC;

-- Q3. Which account has the most orders
SELECT 
orders.account_id,
accounts.name,
COUNT (accounts.name) AS total_orders
FROM accounts
JOIN orders
ON accounts.id = orders.account_id
GROUP BY 1, 2
ORDER BY COUNT (accounts.name) DESC
LIMIT 1;

SELECT a.id, a.name, COUNT(*) num_orders
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.id, a.name
ORDER BY num_orders DESC
LIMIT 1;

SELECT *
FROM orders;


-- Q4. How many accounts spent more than 30,000 usd total across all orders?
SELECT 
acc.id,
acc.name,
SUM (ord.total_amt_usd) AS total_spent
FROM accounts AS acc
JOIN orders AS ord
ON acc.id = ord.account_id
GROUP BY 1, 2
HAVING SUM (ord.total_amt_usd) > 30000
ORDER BY acc.name;


-- Q5.	How many accounts spent less than 1,000 usd total across all orders?
SELECT 
acc.id,
acc.name,
SUM (ord.total_amt_usd) AS total_spent
FROM accounts AS acc
JOIN orders AS ord
ON acc.id = ord.account_id
GROUP BY 1, 2
HAVING SUM (ord.total_amt_usd) < 1000
ORDER BY acc.name;

-- Q6. Which account has spent the most with us?
SELECT 
acc.id,
acc.name,
SUM (ord.total_amt_usd) AS total_spent
FROM accounts AS acc
JOIN orders AS ord
ON acc.id = ord.account_id
GROUP BY 1, 2
ORDER BY total_spent DESC
LIMIT 1;

--Q7. Which account has spent the least with us?
SELECT 
acc.id,
acc.name,
SUM (ord.total_amt_usd) AS total_spent
FROM accounts AS acc
JOIN orders AS ord
ON acc.id = ord.account_id
GROUP BY 1, 2
ORDER BY total_spent
LIMIT 1;

--Q8. Which accounts used facebook as a channel to contact customers more than 6 times?

SELECT 
acc.id,
acc.name,
events.channel AS channel,
COUNT (*) AS channel_usage
FROM accounts AS acc
JOIN web_events AS events
ON acc.id = events.account_id
--WHERE channel = 'facebook' 
GROUP BY 1, 2, 3
HAVING COUNT (*) > 6 AND channel = 'facebook'
ORDER BY channel_usage DESC;


--Q9. Which account used facebook most as a channel?
SELECT 
		acc.id,
		acc.name,
		events.channel AS channel,
COUNT (*) AS channel_usage
FROM accounts as acc
JOIN web_events AS events
ON acc.id = events.account_id
WHERE channel = 'facebook'
GROUP BY 1, 2, 3
ORDER BY channel_usage DESC
LIMIT 1;

--10. Which channel was most frequently used by most accounts?
SELECT 
		acc.id,
		acc.name,
		events.channel AS channel,
COUNT (*) AS channel_usage
FROM accounts AS acc
JOIN web_events AS events
ON acc.id = events.account_id
GROUP BY 1, 2, 3
ORDER BY channel_usage DESC
LIMIT 10;
