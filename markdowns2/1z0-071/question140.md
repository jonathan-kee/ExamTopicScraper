# Question 140
In your session NLS_DATE_FORMAT is set to DD-MON-RR.

Which two queries display the year as four digits? (Choose two.)

# Answers
A. SELECT TO_DATE(SYSDATE, 'RRRR-MM-DD') FROM DUAL;

B. SELECT TO_CHAR(SYSDATE, MM/DD/YYYY) FROM DUAL;

C. SELECT TO_DATE(ADD_MONTHS(SYSDATE, 6), 'dd-non-yyyy') FROM DUAL;

D. SELECT TO_CHAR(ADD_MONTHS(SYSDATE, 6)) FROM DUAL;

E. SELECT TO_CHAR(ADD_MONTHS(SYSDATE, 6), 'dd-mon-yyyy') FROM DUAL;

F. SELECT TO_DATE(TO_CHAR(SYSDATE, 'MM/DD/YYYY'), 'MM/DD/YYYY') FROM DUAL;

# Discussions
## Discussion 1
BE is correct

## Discussion 2
B is not correct, because the date format 'MM/DD/YYYY' should be enclosed in single quotes, otherwise it's a syntax error.

## Discussion 3
BE is correct

## Discussion 4
Just need quotes around format string in B

## Discussion 5
E and F are the correct answers: tested and confirmed: SELECT TO_DATE(TO_CHAR(SYSDATE, 'MM/DD/YYYY'), 'MM/DD/YYYY') FROM DUAL; SELECT TO_CHAR(ADD_MONTHS(SYSDATE, 6), 'dd-mon-yyyy') FROM DUAL;

