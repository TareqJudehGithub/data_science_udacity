-- COUNT
SELECT COUNT(name)
FROM accounts;

-- SUM
SELECT 
SUM (total) AS total,
SUM (standard_amt_usd) AS standard,
SUM (total_amt_usd) AS total_amt_usd
FROM orders;
