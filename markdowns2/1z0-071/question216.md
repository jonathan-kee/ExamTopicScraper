# Question 216
You need to calculate the number of days from 1st January 2019 until today.

Dates are stored in the default format of DD-MON-RR.

Which two queries give the required output? (Choose two.)

# Answers
A. SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY') - '01-JAN-2019' FROM

B. SELECT ROUND(SYSDATE - '01-JAN-2019') FROM DUAL;

C. SELECT ROUND(SYSDATE – TO_DATE('01/JANUARY/2019')) FROM DUAL;

D. SELECT TO_DATE(SYSDATE, 'DD/MONTH/YYYY') - '01/JANUARY/2019' FROM DUAL;

E. SELECT SYSDATE - TO_DATE('01-JANUARY-2019') FROM DUAL;

# Discussions
## Discussion 1
To calculate the number of days between 1st January 2019 and the current date (SYSDATE) in Oracle SQL, the following considerations apply: SYSDATE is a date data type, so arithmetic operations on dates can directly calculate the difference in days. String literals representing dates (like '01-JAN-2019') must be explicitly converted to date values using TO_DATE. Correct Answers: C. SELECT ROUND(SYSDATE - TO_DATE('01/JANUARY/2019')) FROM DUAL; This query works because TO_DATE('01/JANUARY/2019') converts the string to a date, and subtracting it from SYSDATE gives the number of days. The ROUND function rounds the result to the nearest whole number. E. SELECT SYSDATE - TO_DATE('01-JANUARY-2019') FROM DUAL; This query also works because it correctly converts '01-JANUARY-2019' to a date and subtracts it from SYSDATE, returning the exact number of days as a decimal.

## Discussion 2
C, E is correct

## Discussion 3
C is correct if you change the - operator between sysdate and to_date manually. i think there is a mistake.

## Discussion 4
https://www.examtopics.com/discussions/oracle/view/20180-exam-1z0-071-topic-2-question-44-discussion/

## Discussion 5
The only working query is E all of the others are not working.

