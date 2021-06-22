SELECT 
account_id,
SUM (standard_qty) AS standard_sum,
SUM (gloss_qty) AS gloss_sum,
SUM (poster_qty) AS poster_sum
FROM orders
WHERE account_id IS NOT NULL
GROUP BY account_id
ORDER BY account_id DESC
LIMIT 10;

-- Questions: GROUP BY

-- Q1
SELECT 
accounts.name AS account_name, 
orders.occurred_at AS date_occured
FROM orders
JOIN accounts
ON orders.account_id = accounts.id
ORDER BY occurred_at
LIMIT 1;

-- Q2
SELECT 
accounts.name AS account_name,
SUM (orders.total_amt_usd) AS total_sales
FROM accounts
JOIN orders
ON accounts.id = orders.account_id
GROUP BY accounts.name;

-- Q3
SELECT  
accounts.name AS account_name,
web_events.channel,
web_events.occurred_at AS date_occured
FROM web_events
JOIN accounts
ON web_events.account_id = accounts.id
ORDER BY web_events.occurred_at DESC
LIMIT 1;

--Q4
SELECT 
channel,
COUNT (channel) AS channels_total
FROM web_events
GROUP BY channel
ORDER BY channel;

--Q5
SELECT
acc.primary_poc AS primary_contact
FROM web_events AS web
JOIN accounts AS acc
ON web.account_id = acc.id
ORDER BY web.occurred_at
LIMIT 1;

--Q6
SELECT 
acc.name AS account_name,
MIN (ord.total_amt_usd) AS total_usd
FROM accounts AS acc
JOIN orders AS ord
ON acc.id = ord.account_id
WHERE ord.total_amt_usd > 0
GROUP BY account_name
ORDER BY total_usd;

--Q7
SELECT 
region.name AS region_name,
COUNT (*) sales_reps
FROM sales_reps 
JOIN region
ON sales_reps.region_id = region.id
GROUP BY region.name
ORDER BY sales_reps;


