# Question 11
Which three are true about scalar subquery expressions? (Choose three.)


# Answers
A scalar subquery expression that returns zero rows evaluates to NULL. E.

A scalar subquery expression that returns zero rows evaluates to zero. C.

A. They can be nested.

B. They cannot be used in the VALUES clause of an INSERT statement.

D. They can be used as default values for columns in a CREATE TABLE statement.

F. They cannot be used in GROUP BY clauses.

# Discussions
## Discussion 1
A. They can be nested. Scalar subqueries can be nested within other scalar subqueries or within other SQL expressions. E. A scalar subquery expression that returns zero rows evaluates to NULL. If a scalar subquery returns no rows, it evaluates to NULL. F. They cannot be used in GROUP BY clauses. Scalar subqueries cannot be used in GROUP BY clauses because they do not return a single value that can be used to group rows.

## Discussion 2
AEF are the correct answers https://docs.oracle.com/cd/B19306_01/server.102/b14200/expressions010.htm

## Discussion 3
Why is D incorrect?

## Discussion 4
I don't think they can be nested. Tried: select employee_id, (select department_name, (select city from locations l where l.location_id=d.location_id) from departments d where d.department_id=e.department_id) from employees e; But got 'too many values error'.

## Discussion 5
I also think AEF are the correct answers

