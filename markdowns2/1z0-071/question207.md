# Question 207
The ORDERS table has a primary key constraint on the ORDER_ID column.

The ORDER_ITEMS table has a foreign key constraint on the ORDER_ID column, referencing the primary key of the ORDERS table.

The constraint is defined with ON DELETE CASCADE.

There are rows in the ORDERS table with an ORDER_TOTAL of less than 1000.

Which three DELETE statements execute successfully? (Choose three.)

# Answers
A. DELETE order_id FROM orders WHERE order_total < 1000;

B. DELETE orders WHERE order_total < 1000

C. DELETE * FROM orders WHERE order_total < 1000;

D. DELETE FROM orders;

DELETE FROM orders WHERE order_total < 1000; E.

# Discussions
## Discussion 1
BDE is the correct answer

## Discussion 2
BDE correct

## Discussion 3
BDE is correct

## Discussion 4
BDE is correct

## Discussion 5
BDE is correct

