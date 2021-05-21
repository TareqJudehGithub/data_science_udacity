-- Quiz: Self JOINs
SELECT 	events1.id AS events1_id,
		events1.account_id AS events1_account_id,
		events1.occurred_at AS events1_date,
		events1.channel AS events1_channel,
		events2.id AS events2_id,
		events2.account_id AS events2_account_id,
		events2.occurred_at AS events2_date,
		events2.channel AS events2_channel
FROM web_events AS events1
LEFT JOIN web_events AS events2
ON events1.account_id = events2.account_id 
AND events1.occurred_at > events2.occurred_at
AND events1.occurred_at <= events2.occurred_at + INTERVAL '1 day'
ORDER BY events1.account_id, events2.occurred_at;

SELECT	id,
		occurred_at,	
		occurred_at + INTERVAL '1 day'
FROM web_events
WHERE account_id = 1001;



