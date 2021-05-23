-- Performance

-- A way make a query run faster, is to reduce the number of calculations (queries) 
-- that are needed to be performed.


/*

Factor affecting SQL performace:

- Table Size
- Joins
- Aggregations

Tuning performance with LIMIT:

- If you have time series data, limiting to a small time window can make your 
  queries run more quickly.
	 
- Testing your queries on a subset of data, finalizing your query, then removing 
  the subset limitation is a sound strategy.
	 
- When working with subqueries, limiting the amount of data you’re working with in 
  the place where it will be executed first will have the maximum impact on query 
  run time.

- Aggregate before joining, for better performace.
*/
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


-- And now using WITH:
  WITH CTE1 AS
  (
    SELECT	account_id,
        COUNT(*) AS web_events
    FROM web_events 
    GROUP BY 1
  )
  SELECT 	acc.name AS account_name,
          web_events
  FROM CTE1
  JOIN accounts AS acc
  ON acc.id = CTE1.account_id
  ORDER BY 2 DESC;


-- EXPLAIN.  EXPLAIN measures how much a query cost, and shows the query execution order.

EXPLAIN
SELECT *
FROM web_events;

