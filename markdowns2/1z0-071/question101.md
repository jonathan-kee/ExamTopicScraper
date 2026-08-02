# Question 101
Examine this query:

SELECT INTERVAL ‘100’ MONTH DURATION FROM DUAL;

What will be the output?

# Answers
+08 ----------

+08-04 ----------

+100 ----------

A. an error

 B.

 C.

 D.

# Discussions
## Discussion 1
Explanation: The given query is using an interval literal with a value of '100' and a unit of 'MONTH'. When using the interval literal syntax, the specified value represents the number of intervals of the given unit. In this case, the query is requesting an interval of 100 months. Since there are 12 months in a year, the interval '100' months is equivalent to 8 years and 4 months. The output format for intervals in Oracle is '+YY-MM', where YY represents the number of years and MM represents the number of months. Therefore, the output will be '+08-04', indicating an interval of 8 years and 4 months. The correct answer is D. +08-04.

## Discussion 2
D is correct

## Discussion 3
it's gets an error when I try it on https://livesql.oracle.com/apex

## Discussion 4
D respuesta revisada y correcta

## Discussion 5
try SELECT INTERVAL '100' MONTH as DURATION FROM DUAL;

