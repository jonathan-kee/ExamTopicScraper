# Question 143
The ORDERS table has a column ORDER_DATE of data type DATE.

The default display format for a date is DD-MON-RR.

Which two WHERE conditions demonstrate the correct usage of conversion functions? (Choose two.)

# Answers
A. WHERE order_date > TO_DATE(‘JUL 10 2018’, ‘ MON DD YYYY’)

B. WHERE order_date > TO_DATE(ADD_MONTH(SYSDATE, 6), ‘MON DD YYYY’)

C. WHERE order_date IN (TO_DATE(‘Oct 21 2018’, ‘Mon DD YYYY’), TO_CHAR(‘Nov 21 2018’, ‘Mon DD YYYY’))

D. WHERE order_date > TO_CHAR(ADD_MONTHS(SYSDATE, 6), ‘MON DD YYYY’)

E. WHERE TO_CHAR(order_date. ‘MON DD YYYY’) = ‘JAN 20 2019’

# Discussions
## Discussion 1
A & D is correct. below works select * from emp WHERE hire_date > To_Char(ADD_MONTHS(SYSDATE, 6), 'dd mm yyyy');

## Discussion 2
checked

## Discussion 3
Answers are: A & E - both tested.

## Discussion 4
E. when the typo '.' is replaced with a comma ','

## Discussion 5
I thin AE is correct

