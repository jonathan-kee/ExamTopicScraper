# Question 60
The INVOICE table has a QTY_SOLD column of data type NUMBER and an INVOICE_DATE column of data type DATE.
NLS_DATE_FORMAT is set to DD-MON-RR.
Which two are true about data type conversions involving these columns in query expressions? (Choose two.)


# Answers
A. invoice_date = '15-march-2019' : uses implicit conversion

B. qty_sold BETWEEN '101' AND '110' : uses implicit conversion

C. invoice_date > '01-02-2019' : uses implicit conversion

CONCAT (qty_sold, invoice_date) : requires explicit conversion E.

D. qty_sold = '0554982' : requires explicit conversion

# Discussions
## Discussion 1
AB are correct, I tested it.

## Discussion 2
ABC are correct

## Discussion 3
A and C can't work because it doesn't match the NLS date format, D works fine by implicit conversion , so it's BE

## Discussion 4
Can anyone please explain the correct answers? not quite getting the sense... thank you.

## Discussion 5
why is E wrong?

