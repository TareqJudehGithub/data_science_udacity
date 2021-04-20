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