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



*/
