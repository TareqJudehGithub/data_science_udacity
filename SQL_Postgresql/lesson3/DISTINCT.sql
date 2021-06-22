-- DISTINCT
SELECT 
DISTINCT
account_id,
channel
FROM web_events
ORDER BY account_id
LIMIT 1500;

-- No Distinct usage..
SELECT 
account_id,
channel
FROM web_events
ORDER BY account_id
LIMIT 1500;

SELECT *
FROM distinct_demo;

 -- DISTINCT
SELECT DISTINCT 
bcolor,
fcolor
FROM distinct_demo
ORDER BY bcolor, fcolor;

-- DISTINCT ON

/* 
sorts the result set by the  bcolor and  fcolor, 
and then for each group of duplicates, it keeps 
the first row in the returned result set.
*/

SELECT 
DISTINCT ON (bcolor) bcolor,
fcolor
FROM distinct_demo
ORDER BY 
		bcolor,
		fcolor;

 -- DISTINCT Questions:
 
 -- Q1
 SELECT 
 DISTINCT accounts.name  AS account_name,
 region.name AS region
 FROM accounts
 JOIN sales_reps
 ON accounts.sales_rep_id = sales_reps.id
 JOIN region
 ON sales_reps.region_id = region.id
 ORDER BY account_name;
 
  -- Shorter solution:
 SELECT
 DISTINCT id,
 name
 FROM accounts;
 
 
 -- Q2
 SELECT 
s.id, 
s.name, 
COUNT (*) AS num_accounts
FROM accounts a
JOIN sales_reps s
ON s.id = a.sales_rep_id
GROUP BY s.id, s.name
ORDER BY num_accounts;

SELECT 
DISTINCT 
 		sales.id AS sales_id,
 		sales.name AS sales_name
FROM accounts
JOIN sales_reps AS sales
ON accounts.sales_rep_id = sales.id
ORDER BY sales.id;

 -- Shorter solution:
SELECT 
DISTINCT id, name
FROM sales_reps
ORDER BY id;

