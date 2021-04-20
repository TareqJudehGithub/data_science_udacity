-- AVG
SELECT 
ROUND(AVG(standard_amt_usd)::NUMERIC, 2) AS standard_average
from orders;


SELECT
ROUND(AVG(total)::NUMERIC, 2) AS total_average
FROM orders;

-- QUIZ: MIN, MAX, AVG
SELECT * 
FROM orders;


-- Q1
SELECT 
MIN (occurred_at) AS earliest_order
FROM orders;

-- Q2
SELECT occurred_at AS date
FROM orders
ORDER BY occurred_at
LIMIT 1;

-- Q3
SELECT 
MAX (occurred_at) AS recent_web_event
FROM web_events;

-- Q4
SELECT
occurred_at
FROM web_events
ORDER BY occurred_at DESC
LIMIT 1;

-- Q5
SELECT
ROUND(AVG(standard_qty)::NUMERIC, 2) AS standard_average,
ROUND(AVG(gloss_qty)::NUMERIC, 2) AS glossy_average,
ROUND(AVG(poster_qty)::NUMERIC, 2) AS poster_qty,
ROUND(AVG(standard_amt_usd)::NUMERIC, 2) AS standard_amt_average_usd,
ROUND(AVG(gloss_amt_usd)::NUMERIC, 2) AS glossy_amt_average_usd,
ROUND(AVG(poster_amt_usd)::NUMERIC, 2) AS poster_amt_average_usd
FROM orders;

-- Q6
SELECT *
FROM (SELECT total_amt_usd
      FROM orders
      ORDER BY total_amt_usd
      LIMIT 3457) AS Table1
ORDER BY total_amt_usd DESC
LIMIT 2;
