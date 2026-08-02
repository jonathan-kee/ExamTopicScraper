# Question 30
The EMPLOYEES table contains columns EMP_ID of data type NUMBER and HIRE_DATE of data type DATE.
You want to display the date of the first Monday after the completion of six months since hiring.
The NLS_TERRITORY parameter is set to AMERICA in the session and, therefore, Sunday is the first day of the week.
Which query can be used?


# Answers
A. SELECT emp_id, ADD_MONTHS(hire_date, 6), NEXT_DAY('MONDAY') FROM employees;

B. SELECT emp_id, NEXT_DAY(ADD_MONTHS(hire_date, 6), 1) FROM employees;

C. SELECT emp_id, NEXT_DAY(MONTHS_BETWEEN(hire_date, SYSDATE), 6) FROM employees;

D. SELECT emp_id, NEXT_DAY(ADD_MONTHS(hire_date, 6), 'MONDAY') FROM employees;

# Discussions
## Discussion 1
D is correct. https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/NEXT_DAY.html#GUID-01B2CC7A-1A64-4A74-918E-26158C9096F6

## Discussion 2
Oracle’s NEXT_DAY(date, 'DAY') function returns the next specified weekday after the given date. Since the NLS_TERRITORY is set to AMERICA, Oracle understands 'MONDAY' correctly.

## Discussion 3
This query first uses ADD_MONTHS(hire_date, 6) to calculate the date six months after the hire date, and then uses NEXT_DAY to find the first Monday after this date. This is the correct approach and meets the requirements of the problem.

