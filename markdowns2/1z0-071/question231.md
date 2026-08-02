# Question 231
Examine the contents of the EMP table:


![](../../images/image118.png)
		

Examine this query that executes successfully:


![](../../images/image119.png)
		

What is the result?

# Answers
A. It will return the five employees earning the lowest salaries, in ascending order.

B. It will return the six employees earning the highest salaries, in descending order.

C. It will return the six employees earning the lowest salaries, in ascending order.

D. It will return the five employees earning the highest salaries, in descending order.

# Discussions
## Discussion 1
Option A tested in DB. If the salary contain like the below example: id Salary 1 12000 2 15000 3 16000 4 16000 5 17000 in this case, with ties option return extra rows select id,salary from emp order by salary fetch first 3 rows with ties; o/p: 1 12000 2 15000 3 16000 4 16000

## Discussion 2
With Ties - Query would have returned one more row with an equal salary to the last row's salary if that salary number matches. In this case, it didn't so it returns 5 rows only.

## Discussion 3
A tested. However, what is the meaning of WITH TIES then. If replacing with ONLY returns the same result.

## Discussion 4
The WITH TIES returns additional rows with the same sort key as the LAST row fetched.

## Discussion 5
A is correct

