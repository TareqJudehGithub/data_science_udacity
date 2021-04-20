/* JOIN */

/* Joining 2 tables */
SELECT 
accounts.id,
accounts.name,
accounts.website,
orders.total_amt_usd
FROM accounts
JOIN orders
ON accounts.id = orders.account_id
ORDER BY accounts.name ASC
LIMIT 100;

SELECT *
from sales_reps
JOIN region
ON sales_reps.region_id = region.id
LIMIT 100;

/* Joining 3 tables */
SELECT 
accounts.name, web_events.channel, orders.total
FROM accounts
JOIN orders
ON accounts.id = orders.account_id
JOIN web_events
ON accounts.id = web_events.account_id
LIMIT 100;
