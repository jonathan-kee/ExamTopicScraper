# Question 29
Which two statements are true about the COUNT function? (Choose two.)


# Answers
A. COUNT(*) returns the number of rows in a table including duplicate rows and rows containing NULLs in any column.

A SELECT statement using the COUNT function with a DISTINCT keyword cannot have a WHERE clause. E.

B. It can only be used for NUMBER data types.

C. COUNT(DISTINCT inv_amt) returns the number of rows excluding rows containing duplicates and NULLs in the INV_AMT column.

COUNT(inv_amt) returns the number of rows in a table including rows with NULL in the INV_AMT column D.

# Discussions
## Discussion 1
Group functions do not consider NULL values, except the COUNT(*)

## Discussion 2
A and C seem correct!

## Discussion 3
tested

## Discussion 4
A and C are correct.

