-- UNION

/* 
- The UNION operator is used to combine the result sets of 2 or more SELECT statements. 
  It removes duplicate rows between the various SELECT statements.

- Each SELECT statement within the UNION must have the same number of fields in 
  the result sets with similar data types.

Details of UNION
There must be the same number of expressions in both SELECT statements.
The corresponding expressions must have the same data type in the SELECT statements.
For example: expression1 must be the same data type in both the first and second 
SELECT statement.

- UNION removes duplicate rows.
- UNION ALL does not remove duplicate rows.

QL's two strict rules for appending data:

Both tables must have the same number of columns.
Those columns must have the same data types in the same order as the first table.

Column names, in fact, don't need to be the same to append two tables but you 
will find that they typically are.

UNION only appends distinct values. More specifically, when you use UNION, the 
dataset is appended, and any rows in the appended table that are exactly identical 
to rows in the first table are dropped. If you’d like to append all the values 
from the second table, use UNION ALL.
*/

