# Question 157
Examine this query:
SELECT SUBSTR(SYSDATE, 1, 5) "Result" FROM DUAL;

Which statement is true?

# Answers
A. It fails unless the expression is modified to SUBSTR(TO_CHAR(SYSDATE), 1, 5).

B. It fails unless the expression is modified to SUBSTR(TO_CHAR(TRUNC(SYSDATE), 1, 5).

C. It fails unless the expression is modified to TO_CHAR(SUBSTR(SYSDATE), 1, 5)).

D. It executes successfully with an implicit data type conversion.

# Discussions
## Discussion 1
Correct answer is D - it executes successfully, my result: 27-02

## Discussion 2
select sysdate from dual; --Result : 2/20/2023 10:32:16 AM select substr(sysdate,1,5) as "xxx" from dual; --Result: 20-FE

## Discussion 3
D works -> implicit conversion!

## Discussion 4
D, implicit conversion works

## Discussion 5
A. It fails unless the expression is modified to SUBSTR(TO_CHAR(SYSDATE), 1, 5). This statement is correct because the SUBSTR function needs a string as input, and SYSDATE must be converted to a string using TO_CHAR. The correct syntax would be SUBSTR(TO_CHAR(SYSDATE, 'DD-MON-YYYY'), 1, 5) if you wanted to extract the first 5 characters from the formatted date.

