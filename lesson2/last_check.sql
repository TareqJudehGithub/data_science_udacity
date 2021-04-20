/* Q1 */
SELECT 
acc.name AS account_name,
sales.name AS sales_reps_name,
reg.name AS region_name
FROM accounts AS acc
JOIN sales_reps AS sales
ON sales.id = acc.sales_rep_id
JOIN region as reg
ON reg.id = sales.region_id
WHERE reg.name = 'Midwest'
ORDER BY acc.name;

/* Q2 */
SELECT 
acc.name AS account_name,
sales.name AS sales_reps_name,
reg.name AS region_name
FROM accounts AS acc
JOIN sales_reps AS sales
ON sales.id = acc.sales_rep_id
JOIN region as reg
ON reg.id = sales.region_id
WHERE reg.name = 'Midwest' AND sales.name LIKE 'S%'
ORDER BY acc.name;

/* Q3 */
SELECT 
acc.name AS account_name,
sales.name AS sales_reps_name,
reg.name AS region_name
FROM accounts AS acc
JOIN sales_reps AS sales
ON sales.id = acc.sales_rep_id
JOIN region as reg
ON reg.id = sales.region_id
WHERE reg.name = 'Midwest' AND sales.name LIKE '% K%'
ORDER BY acc.name;

/* Q4 */
SELECT 
reg.name AS region_name,
acc.name AS account_name,
ROUND(total_amt_usd/total ::numeric, 2) AS unit_price
FROM accounts AS acc
JOIN sales_reps AS sales
ON sales.id = acc.sales_rep_id
JOIN orders as ord
ON acc.id = ord.account_id
JOIN region AS reg
ON reg.id = sales.region_id
WHERE ord.standard_qty > 100 AND ord.total > 0;

/* Q5 */
SELECT 
reg.name AS region_name,
acc.name AS account_name,
ROUND(total_amt_usd/total ::numeric, 2) AS unit_price
FROM accounts AS acc
JOIN sales_reps AS sales
ON sales.id = acc.sales_rep_id
JOIN orders as ord
ON acc.id = ord.account_id
JOIN region AS reg
ON reg.id = sales.region_id
WHERE ord.standard_qty > 100 AND ord.poster_qty > 50 AND ord.total > 0
ORDER BY unit_price;

/* Q6 */
SELECT 
reg.name AS region_name,
acc.name AS account_name,
ROUND(total_amt_usd/total ::numeric, 2) AS unit_price
FROM accounts AS acc
JOIN sales_reps AS sales
ON sales.id = acc.sales_rep_id
JOIN orders as ord
ON acc.id = ord.account_id
JOIN region AS reg
ON reg.id = sales.region_id
WHERE ord.standard_qty > 100 AND ord.poster_qty > 50 AND ord.total > 0
ORDER BY unit_price DESC;

/* Q7 */
SELECT DISTINCT
acc.name AS acocunt_name,
web.channel
FROM accounts AS acc
JOIN web_events AS web
ON acc.id = web.account_id
WHERE acc.id = 1001
ORDER BY acc.name;

/* Q8 */
SELECT 
acc.name AS account_name,
ord.total AS total,
ord.total_amt_usd AS total_amt_usd,
ord.occurred_at AS occurred_at
FROM accounts AS acc
JOIN orders AS ord
ON acc.id = ord.account_id
WHERE ord.occurred_at BETWEEN '1-1-2015' AND '1-1-2016'
ORDER BY ord.occurred_at DESC;










