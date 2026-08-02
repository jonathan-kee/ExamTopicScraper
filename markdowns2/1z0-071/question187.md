# Question 187
Which two are true about multitable INSERT statements?

# Answers
A. The conditional INSERT FIRST statement always inserts a row into a single table.

B. The unconditional INSERT ALL statement must have the same number of columns in both the source and target tables.

C. They can transform a row from a source table into multiple rows in a target table.

D. The conditional INSERT ALL statement inserts rows into a singe table by aggregating source rows.

E. They always use subqueries.

# Discussions
## Discussion 1
CE are correct B I think is correct as well?

## Discussion 2
A - is correct, because INSERT FIRST evaluates conditions in order and inserts a row into the first matching target only. So a source row never gets inserted into more than one table with INSERT FIRST. C - is correct because it describes what INSERT ALL does. One row from the source can be inserted into multiple target tables. E - "is not Correct" --> The word “always” makes this statement false. Also, Multitable INSERT statements use a SELECT to generate source rows. And the SELECT can be a subquery, but it can also be a direct table or view.

## Discussion 3
CD is correct

