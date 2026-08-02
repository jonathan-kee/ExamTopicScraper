# Question 8
Examine this SQL statement:

![](../../images/0000700001.png)
		
Which two are true? (Choose two.)


# Answers
A. All existing rows in the ORDERS table are updated.

B. The subquery is executed before the UPDATE statement is executed.

C. The subquery is not a correlated subquery.

D. The subquery is executed for every updated row in the ORDERS table.

E. The UPDATE statement executes successfully even if the subquery selects multiple rows.

# Discussions
## Discussion 1
A and D tested on Oracle 12c1

## Discussion 2
BD, A is incorrect only matching rows are updated, not all C is invalid, statement correct structure E is incorrect, in case multiple rows, error multiple rows in subquery

## Discussion 3
E - wrong because will cause an error "ORA-01427: Subquery returns more than one row"

## Discussion 4
Correct Answers: A. All existing rows in the ORDERS table are updated. D. The subquery is executed for every updated row in the ORDERS table.

## Discussion 5
B (false), depending EXPLAIN PLAN. no always is executed first. C (false), ".o" is correlative E (false) is possible multiple rows, an error more than row. A and D is correct

