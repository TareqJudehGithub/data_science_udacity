-- WITH

-- Example of a subquery
SELECT 	channel,
		ROUND(AVG (total_events)::NUMERIC, 2) 
FROM 
(
	SELECT	DATE_TRUNC('day', occurred_at) AS day,
			channel,
			COUNT (*) AS total_events
	FROM web_events
	GROUP BY 1, 2	
) AS inner_q
GROUP BY 1
ORDER BY 2 DESC;




-- Now same query, but using WITH:

-- CTE Alias (events)
WITH events AS 
(
	-- Common table expression (CTE):
	SELECT	DATE_TRUNC('day', occurred_at) AS day,
			channel,
			COUNT (*) AS total_events
	FROM web_events
	GROUP BY 1, 2
)
SELECT	channel,
		ROUND(AVG(total_events)::NUMERIC, 2) AS avg_events
FROM events
GROUP BY 1
ORDER BY 2 DESC;






