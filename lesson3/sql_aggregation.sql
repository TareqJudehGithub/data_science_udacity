/* SQL Aggregation */

NULL
 /*  NULLs are a datatype that specifies where no data exists in SQL. 
     NULLS means no data.

     When identifying NULLs in a WHERE clause, we write IS NULL or IS NOT NULL. 
     We don't use =, because NULL isn't considered a value in SQL. Rather, it 
     is a property of the data.
     WHERE primary_con IS NULL;    
 */

 COUNT

    -- COUNT the Number of Rows in a Table  
     SELECT COUNT(*)
     FROM accounts;

     SELECT COUNT(accounts.id)
     FROM accounts;

 -- COUNT does not consider rows that have NULL values.

SUM
/* 
Unlike COUNT, you can only use SUM on numeric columns. However, SUM will ignore 
NULL values, as do the other aggregation functions you will see in the upcoming 
lessons.
*/
SELECT SUM (total),
       SUM (total_amt_usd)
FROM orders;


MIN MAX

SELECT 
MIN (standard_qty),
MAX (total)
FROM orders;


AVG
 /* 
 AVG returns the mean of the data - that is the sum of all of the values in the 
 column divided by the number of values in a column.
 */
 SELECT 
 ROUND(AVG(total)::NUMERIC, 2) AS total_average
 FROM orders;

 GROUP BY

 /* 
 GROUP BY can be used to aggregate data within subsets of the data. For example, 
 grouping for different accounts, different regions, or different sales representatives.

 Any column in the SELECT statement that is not within an aggregator must be in the GROUP BY clause.


The GROUP BY always goes between WHERE and ORDER BY.


ORDER BY works like SORT in spreadsheet software.
 */

SELECT 
id,
SUM (total_amt_usd)
FROM orders
WHERE id IS NOT NULL
GROUP BY id
ORDER BY id;

SELECT
standard_qty, 
gloss_qty,
SUM (standard_qty + gloss_qty) AS total_sum
FROM orders
GROUP BY standard_qty, gloss_qty
LIMIT 10;


-- GROUP BY Part 2
/* 
You can GROUP BY multiple columns at once, as we showed here. This is often 
useful to aggregate across a number of different segments.

The order of columns listed in the ORDER BY clause does make a difference. 
You are ordering the columns from left to right.
*/

SELECT
account_id,
channel,
COUNT (id) AS events
FROM web_events
GROUP BY account_id, channel
ORDER BY account_id ASC, events DESC;


DISTINCT
 /* 
 DISTINCT is always used in SELECT statements, and it provides the unique rows 
 for all columns written in the SELECT statement.
 SELECT DISTINCT clause to remove duplicate rows from a result set returned by 
 a query.
 */

SELECT 
DISTINCT
account_id,
channel
FROM web_events
ORDER BY account_id;


HAVING

/*
 AVING is the “clean” way to filter a query that has been aggregated, any time 
you want to perform a WHERE on an element of your query that was created by an
aggregate, you need to use HAVING instead.

So basically, having adds filter to aggregators like SUM, where the WHERE clause
cannot.
*/


WHERE vs HAVING 

/* 
- WHERE subsets the returned data based on a logical condition.

- WHERE appears after the FROM, JOIN, and ON clauses, but before GROUP BY.

- HAVING appears after the GROUP BY clause, but before the ORDER BY clause.

- HAVING is like WHERE, but it works on logical statements involving aggregations.

*/