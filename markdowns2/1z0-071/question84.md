# Question 84
Which two will execute successfully? (Choose two.)

# Answers
A. SELECT COALESCE(0, SYSDATE) FROM DUAL;

B. SELECT NVL('DATE', SYSDATZ) FROM DUAL;

C. SELECT COALESCE('DATE', SYSDATE) FROM DUAL;

D. SELECT NVL('DATE', 200) FROM (SELECT NULL AS "DATE" FROM DUAL);

E. SELECT COALESCE('DATE', SYSDATE) FRCM (SELECT NULL AS "DATE" FROM DUAL);

# Discussions
## Discussion 1
checked

## Discussion 2
BD is the answer

## Discussion 3
B and D is correct answers.

## Discussion 4
BD are correct

## Discussion 5
checked for E -> ORA-00932: inconsistent datatypes: expected CHAR got DATE

