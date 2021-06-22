/* Alias */ 

SELECT acc.id, acc.name AS account_name
FROM accounts AS acc
LIMIT 10;


/* Q1 */
SELECT 
acc.name,
acc.primary_poc,
web.channel
FROM accounts AS acc
JOIN web_events AS web
ON acc.id = web.account_id
WHERE name = 'Walmart';


/* Q2 */
SELECT 
reg.name AS region_name,
reps.name AS sales_reps_name,
acc.name AS account_name
FROM accounts AS acc
JOIN sales_reps as reps
ON acc.sales_rep_id = reps.id
JOIN region AS reg
ON reg.id = reps.region_id
ORDER BY acc.name ASC
LIMIT 100;

/* Q3 */
SELECT 
acc.name AS account_name,
reg.name AS region_name,
ROUND((ord.total_amt_usd) / ord.total::numeric, 2) AS unit_price
FROM accounts AS acc
JOIN sales_reps AS reps
ON acc.sales_rep_id = reps.id
JOIN region AS reg
ON reg.id = reps.region_id
JOIN orders AS ord
ON acc.id = ord.account_id
WHERE ord.total_amt_usd > 0
LIMIT 100;

