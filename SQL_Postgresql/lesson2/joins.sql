/* 
#Joins 

Database Normalization
When creating a database, it is really important to think about how data will 
be stored. This is known as normalization.


Example:  Here, we join orders and accounts table in 1 query.
*/
SELECT 
name,
website,
total,
total_amt_usd
from accounts
JOIN orders
ON accounts.id = orders.account_id
LIMIT 10;


/* 
Keys

     Primary Key (PK)
     A primary key is a unique column in a particular table. 
     The primary key is a single column that must exist in each table of a database.

     oreign Key (FK)
     A foreign key is a column in one table that is a primary key in a different table. 


INNER JOINS    
     See Lesson 2 sql files Inner_joins.sql and 11_Quiz.sql for more info.
     

OUTER JOINS
     LEFT and RIGHT JOINs


Full Outer JOIN
This will return the inner join result set, as well as any unmatched rows from 
either of the two tables being joined.

*/
