# Question 102
Examine this query:

SELECT TRUNC(ROUND(156.00,-2),-1) FROM DUAL;

What is the result?

# Answers
100 D.

150 A.

160 C.

16 E.

200 B.

# Discussions
## Discussion 1
TRUNC does nothing here. The rounding of -2 gives closest order of 100, 156->200. Then 200 is truncated to 200

## Discussion 2
B is correct, run it in SQL Developer

## Discussion 3
A is the right one : The ROUND(156.00, -2) function call rounds the number 156.00 to the nearest hundredth, resulting in the value 200. The TRUNC(200, -1) function call truncates the number 200 to the nearest ten, resulting in the value 150. Therefore, the final result of the SQL query is 150.

## Discussion 4
Answer is B

## Discussion 5
can someone explain why the answer is 200?

