/* OR and LIKE*/
SELECT *
FROM accounts
WHERE name LIKE '%wal%' OR name LIKE '%Wal%';

SELECT name
from accounts
WHERE name IN ('Apple') OR name LIKE 'CV%';

/* IN */
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name IN ('Walmart', 'Target', 'Nordstrom');

SELECT *
FROM web_events
WHERE channel IN ('organic','adwords');

/* NOT */
SELECT 
name,
primary_poc, 
sales_rep_id
FROM accounts
WHERE name NOT IN ('Walmart', 'Target', 'Nordstrom');

SELECT *
from web_events
WHERE channel NOT IN ('organic', 'adwords');

SELECT *
FROM 

/* AND and BETWEEN */
SELECT *
FROM sales_reps
WHERE id BETWEEN 321500 AND 329000;

/* Q1 */
SELECT *
FROM orders
WHERE standard_qty > 1000 AND poster_qty = 0 AND gloss_qty = 0;

/* Q2 */
SELECT *
FROM accounts
WHERE name NOT LIKE 'C%' AND name LIKE '%s';

/* Q3 */
SELECT occurred_at, gloss_qty
FROM orders
WHERE gloss_qty BETWEEN 24 AND 29
ORDER BY gloss_qty DESC;

/* Q4 */
SELECT *
from web_events
WHERE channel IN ('organic', 'adwords') AND occurred_at BETWEEN '2016-01-01' AND '2017-01-01'
ORDER BY occurred_at DESC;


/* OR */

/* Q1 */
SELECT id
FROM orders
WHERE (gloss_qty > 4000 OR poster_qty > 4000);

/* Q2 */
SELECT *
FROM orders
WHERE standard_qty = 0 AND (gloss_qty > 1000 OR poster_qty > 1000)

/* Q3 */
SELECT name, primary_poc
FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%')
		AND (primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%') 
		AND (primary_poc NOT LIKE '%eana%');

