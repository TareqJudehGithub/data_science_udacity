/* LEFT and RIGHT JOINs */

SELECT *

FROM orders AS ord
LEFT JOIN accounts AS acc 
ON ord.account_id = acc.id 
AND acc.sales_rep_id = 321500
LIMIT 135;

/*  
AND here filters the query BEFORE the two tables combine.
Unlike JOIN, LEFT JOIN also pull records that do not have  a match in the accounts (right table).
*/
