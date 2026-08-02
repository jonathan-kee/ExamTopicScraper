# Question 10
The STORES table has a column START_DATE of data type DATE, containing the date the row was inserted.
You only want to display details of rows where START_DATE is within the last 25 months.
Which WHERE clause can be used?


# Answers
A. WHERE TO_NUMBER(start_date - SYSDATE) <= 25

B. WHERE MONTHS_BETWEEN(start_date, SYSDATE) <= 25

C. WHERE MONTHS_BETWEEN(SYSDATE, start_date) <= 25

D. WHERE ADD_MONTHS(start_date, 25) <= SYSDATE

# Discussions
## Discussion 1
C is true. MONTHS_BETWEEN(date 1, date 2) Oracle gives a positive value when date 1 > date 2 and a negative when date 1 < date 2 https://www.techonthenet.com/oracle/functions/months_between.php

## Discussion 2
C is correct

## Discussion 3
c is the answer using ADD_MONTHS(date, n)

## Discussion 4
START_DATE stores "the date the row was inserted". Therefore cannot be > SYSDATE (that is "now") and C is the right one

## Discussion 5
I can't get why the B is incorrect. A negative value is still less than 25. I think I have to check it in DB.

