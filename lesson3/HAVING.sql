--HAVING
SELECT 
		account_id,
		SUM (total_amt_usd) AS total_sales
FROM orders
GROUP BY 1
HAVING SUM (total_amt_usd) >= 25000
ORDER BY 2;

SELECT 
orders.account_id,
accounts.name,
SUM (orders.total) AS total_sales
FROM orders
JOIN accounts
ON orders.account_id = accounts.id
GROUP BY 1, 2
HAVING SUM(orders.total) >= 39000
ORDER BY 3 DESC;
