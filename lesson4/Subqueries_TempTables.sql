-- Subqueries/Nested Queries Allows us to answer more complex questions than a single
-- query can answer. So a subquery is a query result of another query.


-- Note that you should not include an alias when you write a subquery in a 
-- conditional statement.

SELECT *
FROM orders
WHERE DATE_TRUNC('month', occurred_at) = 
(
     SELECT DATE_TRUNC('month', MIN (occurred_at)) AS month
     FROM orders
)
ORDER BY occurred_at

/*  
Also, notice the query here compared a single value. If we returned an entire 
column IN would need to be used to perform a logical argument. If we are returning 
an entire table, then we must use an ALIAS for the table, and perform additional 
logic on the entire table.

*/

WITH

-- The WITH statement is often called a Common Table Expression or CTE.

-- WITH is more cleaner than Subqueries.
-- 

