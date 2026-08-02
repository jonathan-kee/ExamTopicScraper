# Question 28
Which two statements are true about conditional INSERT ALL? (Choose two.)


# Answers
A. Each row returned by the subquery can be inserted into only a single target table.

A single WHEN condition can be used for multiple INTO clauses. B.

C. Each WHEN condition is tested for each row returned by the subquery.

D. It cannot have an ELSE clause.

E. The total number of rows inserted is always equal to the number of rows returned by the subquery.

# Discussions
## Discussion 1
BC are correct https://oracle-base.com/articles/9i/multitable-inserts

## Discussion 2
A,c are correct

## Discussion 3
Not A Because: ❌ A. Each row returned by the subquery can be inserted into only a single target table. False. A row can be inserted into multiple tables if multiple WHEN clauses are true, or if a WHEN clause targets multiple INTO tables

## Discussion 4
B and C are correct.

