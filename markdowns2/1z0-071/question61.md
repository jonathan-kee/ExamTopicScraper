# Question 61
Which three statements are true about inner and outer joins? (Choose three.)


# Answers
A full outer join must use Oracle syntax. C.

A full outer join returns matched and unmatched rows. A.

A left or right outer join returns only unmatched rows. E.

An inner join returns matched rows. F.

B. Outer joins can be used when there are multiple join conditions on two tables.

D. Outer joins can only be used between two tables per query.

# Discussions
## Discussion 1
✅ B. Outer joins can be used when there are multiple join conditions on two tables. ➡️ True – You can absolutely have multiple conditions in an outer join using AND, and it works across columns. A & F are obvious.

## Discussion 2
Full Outer join returns rows from both tables regardless of match. Inner join only return matched rows

## Discussion 3
From chagpt A. Option A is true. A full outer join returns both matched rows and unmatched rows from the joined tables. Matched rows are those that satisfy the join condition, while unmatched rows are those that do not have a matching row in the other table. B. Option B is true. Outer joins can be used when there are multiple join conditions on two tables. This allows for more complex join conditions and provides flexibility in joining tables based on multiple criteria. F. Option F is true. An inner join returns only the matched rows from the joined tables. It filters out the unmatched rows, resulting in a result set that contains only the rows that satisfy the join condition.

## Discussion 4
What exactly is the Oracle syntax here?

## Discussion 5
QUESTION UNMATCHED COLUMN ARE THEY NOT PRODUCED BY LEFT AND RIGHT OUTER JOINS

