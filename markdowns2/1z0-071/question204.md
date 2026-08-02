# Question 204
Which two queries execute successfully? (Choose two.)

# Answers
A. SELECT NULLIF (NULL, 100) FROM DUAL;

B. SELECT NULLIF (100, ‘A’) FROM DUAL;

C. SELECT NULLIF (100, 100) FROM DUAL;

D. SELECT COALESCE (100, NULL, 200) FROM DUAL;

E. SELECT COALESCE (100, ‘A’) FROM DUAL;

# Discussions
## Discussion 1
A is not valid The correct answer is CD

## Discussion 2
CD is correct

## Discussion 3
CD ES CORRECTO YA ESTA VALIDADO

## Discussion 4
CD is correct NULLIF can't have NULL in the first expression

## Discussion 5
CD. For NULLIF you cannot specify the literal NULL for expr1 (1st parameter).

