# Question 211
The SYSDATE function displays the current Oracle Server date as:

21-MAY-19


You wish to display the date as -


MONDAY, 21 MAY, 2019 -

Which statement will do this?

# Answers
A. SELECT TO_DATE(SYSDATE, 'FMDAY, DD MONTH, YYYY') FROM DUAL;

B. SELECT TO_CHAR(SYSDATE, 'FMDD, DAY MONTH, YYYY') FROM DUAL;

C. SELECT TO_CHAR(SYSDATE, 'FMDAY, DD MONTH, YYYY') FROM DUAL;

D. SELECT TO_CHAR(SYSDATE, 'FMDAY, DDTH MONTH, YYYY') EROM DUAL;

# Discussions
## Discussion 1
Only 2 statements will be successfull: B - 27, MONTAG FEBRUAR, 2023 C - MONTAG, 27 FEBRUAR, 2023 Correct and needed answer is C.

## Discussion 2
C tested

