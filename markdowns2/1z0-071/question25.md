# Question 25
The SALES table has columns PROD_ID and QUANTITY_SOLD of data type NUMBER.
Which two queries execute successfully? (Choose two.)


# Answers
A. SELECT prod_id FROM sales WHERE quantity_sold > 55000 AND COUNT(*) > 10 GROUP BY COUNT(*) > 10;

B. SELECT prod_id FROM sales WHERE quantity_sold > 55000 GROUP BY prod_id HAVING COUNT(*) > 10;

C. SELECT COUNT(prod_id) FROM sales GROUP BY prod_id WHERE quantity_sold > 55000;

D. SELECT prod_id FROM sales WHERE quantity_sold > 55000 AND COUNT(*) > 10 GROUP BY prod_id HAVING COUNT(*) > 10;

E. SELECT COUNT(prod_id) FROM sales WHERE quantity_sold > 55000 GROUP BY prod_id;

# Discussions
## Discussion 1
BE is the correct one

## Discussion 2
You cannot have a COUNT() in a WHERE clause. That is what the HAVING clause is for

