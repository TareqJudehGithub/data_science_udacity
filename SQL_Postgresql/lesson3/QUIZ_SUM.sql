-- Aggregation Questions (quiz):
SELECT *
FROM orders;

-- Q1
SELECT SUM (poster_qty) AS poster_qty
FROM orders;

-- Q2
SELECT
SUM (standard_qty) AS standard_qty
FROM orders;

-- Q3
SELECT
SUM (total_amt_usd) AS total_amt_usd
FROM orders;

-- Q4
SELECT 
standard_amt_usd + gloss_amt_usd AS total_standard_gross
FROM orders;

-- Q5
SELECT 
ROUND(SUM(standard_amt_usd)  / SUM(standard_qty)::NUMERIC, 2) AS amt_used_per_unit 
FROM orders
WHERE standard_amt_usd > 0 AND standard_qty > 0;





