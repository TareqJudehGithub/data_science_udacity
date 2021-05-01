SELECT	channel,	
		ROUND(AVG (event_count)::NUMERIC, 2)  AS avg_count
FROM 
(
SELECT	DATE_TRUNC('day', occurred_at) AS day,
		channel,
		COUNT(*) AS event_count
FROM web_events
GROUP BY 1, 2
ORDER BY 3 DESC
) SUBSTRING
GROUP BY 1
ORDER BY 1;


SELECT	channel,
		MAX (event_count) AS most_used_channel
FROM
(
SELECT	channel,
		COUNT (*) AS event_count
FROM web_events
GROUP BY 1
ORDER BY 1
) AS sub
GROUP BY 1
ORDER BY 2 DESC;

