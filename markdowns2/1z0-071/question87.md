# Question 87
Which two statements are true about the WHERE and HAVING clauses in a SELECT statement? (Choose two.)

# Answers
Aggregating functions and columns used in HAVING clauses must be specified in the SELECT list of a query. E.

A. WHERE and HAVING clauses can be used in the same statement only if applied to different table columns.

B. The WHERE clause can be used to exclude rows after dividing them into groups.

C. The HAVING clause can be used with aggregating functions in subqueries.

D. The WHERE clause can be used to exclude rows before dividing them into groups.

# Discussions
## Discussion 1
CD for me

## Discussion 2
C & D tested fine.

## Discussion 3
C is incorrect because subqueries using aggregate functions typically do not use HAVING clauses; rather, HAVING is used in the outer query to filter the results of aggregates

