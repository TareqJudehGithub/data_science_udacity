-- Perforamce 2
SELECT	acc.name AS account_name,
		COUNT (*) AS "web events"
FROM accounts AS acc
JOIN web_events AS web
ON acc.id = web.account_id
GROUP BY 1
ORDER BY 2 DESC;


SELECT account_id
FROM web_events;

-- Aggregate in subqueries for better performance for large data size:
SELECT	acc.name AS account_name,
		sub.web_events
FROM 
(
	SELECT	account_id AS account_id,
			COUNT(*) AS web_events
	FROM web_events
	GROUP BY 1
) AS sub
JOIN accounts AS acc
ON acc.id = sub.account_id
ORDER BY 2 DESC;


-- Perforamce 3

-- EXPLAIN.  EXPLAIN measures how much a query cost, and shows the query execution order.

EXPLAIN
SELECT *
FROM web_events
LIMIT 100;
