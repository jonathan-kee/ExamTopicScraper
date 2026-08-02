# Question 33
Examine this list of requirements for a sequence:
1. Name: EMP_SEQ
2. First value returned: 1
3. Duplicates are never permitted.
4. Provide values to be inserted into the EMPLOYEES.EMPLOYEE_ID column.
5. Reduce the chances of gaps in the values.
Which two statements will satisfy these requirements? (Choose two.)


# Answers
A. CREATE SEQUENCE emp_seq START WITH 1 INCREMENT BY 1 CYCLE;

B. CREATE SEQUENCE emp_seq START WITH 1 INCREMENT BY 1 CACHE;

C. CREATE SEQUENCE emp_seq;

CREATE SEQUENCE emp_seq NOCACHE; E.

CREATE SEQUENCE emp_seq START WITH 1 CACHE; F.

CREATE SEQUENCE emp_seq START WITH 1 INCREMENT BY 1 NOCACHE; D.

# Discussions
## Discussion 1
NO CACHE

## Discussion 2
if there is cache option sequence get some numbers (for example 10). if oracle used some of this (less than 10) and restart instance occurs, then will be gap, because oracle will cache next 10 numbers.

## Discussion 3
Reduce chances of gaps: so NOCACHE is preferred, since cached sequences can create gaps if the database shuts down before cache is used.

## Discussion 4
How reduce the chances of gaps in the values by syntax?

