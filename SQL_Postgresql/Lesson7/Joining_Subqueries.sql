-- Joining subqueries
-- First subquery
SELECT	DATE_TRUNC('day', o.occurred_at) AS date,
		COUNT (a.sales_rep_id) AS active_sales_reps,
		COUNT (o.id) AS orders
FROM accounts AS a
JOIN orders AS o
ON o.account_id = a.id
GROUP BY 1

SELECT	DATE_TRUNC('day', we.occurred_at),
		COUNT(we.id) AS web_visits
FROM web_events AS we
-- ON DATE_TRUNC('day', o.occurred_at) = DATE_TRUNC('day', we.occurred_at)
GROUP BY 1

ORDER BY 1 DESC;

