# Question 34
Which three queries execute successfully? (Choose three.)


# Answers
A. SELECT 1 - SYSDATE - DATE '2019-01-01' FROM DUAL;

B. SELECT SYSDATE - DATE '2019-01-01' - 1 FROM DUAL;

C. SELECT SYSDATE / DATE '2019-01-01' - 1 FROM DUAL;

D. SELECT SYSDATE - 1 - DATE '2019-01-01' FROM DUAL;

E. SELECT (SYSDATE - DATE '2019-01-01') / 1 FROM DUAL;

F. SELECT 1 / SYSDATE - DATE '2019-01-01' FROM DUAL;

# Discussions
## Discussion 1
Tried all the alternatives

## Discussion 2
I am assuming it is supposed to be to_date

## Discussion 3
A is also right why?... ✅ A. SELECT 1 - SYSDATE - DATE '2019-01-01' FROM DUAL; Valid: Oracle allows arithmetic with dates and numbers. 1 - SYSDATE gives a negative number (interval), and subtracting another DATE results in a valid numeric result. ✅ Executes successfully

