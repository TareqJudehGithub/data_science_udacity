-- Quiz: WITH VS Subquery

-- You need to find the average number of events for each channel per day.

-- Step1. Query for events for each channel per day.
SELECT	DATE_TRUNC('day', occurred_at) AS day,
		channel,
		COUNT (*) total_events
FROM web_events
GROUP BY 1, 2
ORDER BY 1;

-- Query for average events per day for every channel using Subquery:

SELECT	channel,
		ROUND (AVG(total_events)::NUMERIC, 2) AS average_events
FROM 
(
	SELECT	DATE_TRUNC('day', occurred_at) AS day,
		channel,
		COUNT (*) total_events
FROM web_events
GROUP BY 1, 2
) AS inner_q
GROUP BY 1
ORDER BY 2 DESC;


-- Query for average events per day for every channel using WITH:
WITH events AS
(
	SELECT	DATE_TRUNC('day', occurred_at) AS day,
			channel,
			COUNT (*) total_events
	FROM web_events
	GROUP BY 1, 2
)

SELECT	channel,
		ROUND (AVG(total_events)::NUMERIC, 2) AS average_events
FROM events
GROUP BY 1
ORDER BY 2 DESC;
--------------------------------------


SELECT	a.id AS account_id,
		a.name AS account_name,
		SUM (o.total_amt_usd) AS total_spent
FROM accounts AS a
JOIN orders AS o
ON a.id = o.account_id
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10;

SELECT ROUND (AVG(total_spent)::NUMERIC, 2) AS avg_spent
FROM 
(
	SELECT	a.id AS account_id,
		a.name AS account_name,
		SUM (o.total_amt_usd) AS total_spent
	FROM accounts AS a
	JOIN orders AS o
	ON a.id = o.account_id
	GROUP BY 1, 2
	ORDER BY 3 DESC
	LIMIT 10
) AS inner_q;


WITH events AS 
(
	SELECT	a.id AS account_id,
		a.name AS account_name,
		SUM (o.total_amt_usd) AS total_spent
	FROM accounts AS a
	JOIN orders AS o
	ON a.id = o.account_id
	GROUP BY 1, 2
	ORDER BY 3 DESC
	LIMIT 10
)

SELECT	ROUND (AVG(total_spent)::NUMERIC, 2) AS avg_spent
FROM events;




	
	
	
	