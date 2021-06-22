-- GROUP BY - Part 2
-- channels ordred by according to higher event total
SELECT
account_id,
channel,
COUNT (id) AS events
FROM web_events
GROUP BY account_id, channel
ORDER BY account_id ASC, events DESC;


SELECT *
FROM web_events;

-- Questions: GROUP BY Part II

-- Q1
SELECT 
accounts.name AS name,
ROUND(AVG (standard_qty)::NUMERIC, 2) AS standard_avg,
ROUND(AVG (gloss_qty)::NUMERIC, 2) AS gloss_avg,
ROUND(AVG (poster_qty)::NUMERIC, 2) AS poster_avg
FROM orders
JOIN accounts
ON orders.account_id = accounts.id
GROUP BY name
ORDER BY name;

-- Q2
SELECT 
accounts.name AS name,
ROUND(AVG(orders.standard_amt_usd)::NUMERIC, 2) AS avg_standard_usd,
ROUND(AVG(orders.gloss_amt_usd)::NUMERIC, 2) AS avg_gloss_usd,
ROUND(AVG (orders.poster_amt_usd)::NUMERIC, 2) AS avg_poster_usd
FROM accounts
JOIN orders
ON accounts.id = orders.account_id
GROUP BY name
ORDER BY name;

-- Q3
SELECT 
sales_reps.name AS sales_name,
web_events.channel AS channel,
COUNT (*) events
FROM accounts
JOIN sales_reps
ON accounts.sales_rep_id = sales_reps.id
JOIN web_events
ON accounts.id = web_events.account_id
GROUP BY sales_name, channel
ORDER BY events DESC;

-- Q4
SELECT 
web.channel AS channel,
region.name AS region_name,
COUNT (*) events
FROM accounts
JOIN web_events AS web
ON accounts.id = web.account_id
JOIN sales_reps
ON accounts.sales_rep_id = sales_reps.id
JOIN region
ON sales_reps.region_id = region.id
GROUP BY channel, region_name
ORDER BY events DESC;


SELECT *
FROM web_events

SELECT *
FROM sales_reps

SELECT *
FROM region
