# Question 188
Which statement is true about using functions in WHERE and HAVING?

# Answers
A. Using aggregate functions in the WHERE clause requires a subquery.

B. Using aggregate functions in the HAVING clause requires a subquery.

C. Using single-row functions in the WHERE clause requires a subquery.

D. Using single-row functions in the HAVING clause requires a subquery.

# Discussions
## Discussion 1
I thought aggregate functions cannot be used in the WHERE clause?

## Discussion 2
A select EmployeeId, sum(amount) from Sales group by Employee where EmployeeId in ( select max(EmployeeId) from Employees)

## Discussion 3
--B WRONG --select avg(salary) from emp group by dept_id having avg(salary) > 1000; --C WRONG --select last_name from emp where upper(last_name) like 'A%'; --D WRONG --Having is Used for Agg Functions. Single-row functions do not require grouping.

## Discussion 4
B is correct But I think C as well is correct

## Discussion 5
Example: select employee_id from employees where salary > (select avg(salary) from employees);

