# Question 23
In your session, the NLS_DATE_FORMAT is DD-MM-YYYY.
There are 86400 seconds in a day.
Examine this result:

DATE -
-----------
02-JAN-2020
Which statement returns this?


# Answers
A. SELECT TO_CHAR(TO_DATE('29-10-2019') + INTERVAL '2' MONTH + INTERVAL '4' DAY - INTERVAL '120' SECOND, 'DD-MON-YYYY') AS "date" FROM DUAL;

B. SELECT TO_CHAR(TO_DATE('29-10-2019') + INTERVAL '3' MONTH + INTERVAL '7' DAY - INTERVAL '360' SECOND, 'DD-MON-YYYY') AS "date" FROM DUAL;

C. SELECT TO_CHAR(TO_DATE('29-10-2019') + INTERVAL '2' MONTH + INTERVAL '5' DAY - INTERVAL '120' SECOND, 'DD-MON-YYYY') AS "date" FROM DUAL;

D. SELECT TO_CHAR(TO_DATE('29-10-2019') + INTERVAL '2' MONTH + INTERVAL '5' DAY - INTERVAL '86410' SECOND, 'DD-MON- YYYY') AS "date" FROM DUAL;

E. SELECT TO_CHAR(TO_DATE('29-10-2019') + INTERVAL '2' MONTH + INTERVAL '6' DAY - INTERVAL '120' SECOND, 'DD-MON-YYYY') AS "date" FROM DUAL;

# Discussions
## Discussion 1
Option C is the statement that returns the result 02-JAN-2020. The statement converts the string '29-10-2019' to a date using the TO_DATE function, then adds an interval of 2 months and an interval of 5 days, and subtracts an interval of 120 seconds. The resulting date is then converted to a string using the TO_CHAR function with the format model 'DD-MON-YYYY', which produces the result 02-JAN-2020. Here is the calculation: TO_DATE('29-10-2019') = October 29, 2019 + INTERVAL '2' MONTH = December 29, 2019 + INTERVAL '5' DAY = January 3, 2020 - INTERVAL '120' SECOND = January 2, 2020

## Discussion 2
Correct answer should be SELECT TO_CHAR(TO_DATE('29-OCT-2019') + INTERVAL '2' MONTH + INTERVAL '5' DAY - INTERVAL '120' SECOND, 'DD-MON-YYYY') AS "date" FROM DUAL;

## Discussion 3
C because: when we add INTERVAL '2' MONTH + INTERVAL '5' DAY to 29-10-2019, we get 03-01-2020, as of midnight, and then we subtract - INTERVAL '120' SECOND i.e. 2 minutes, hence we get answer as '02-JAN-2020'

## Discussion 4
C is correct after testing, although I don't know why it is INTERVAL '5' instead of '4'.

## Discussion 5
note to self: study the calendar to know when months end, because if Dec ends on 30 instead of 31, the answer would've been A or D

