# Question 107
A session's NLS_DATE_FORMAT is set to DD Mon YYYY.

Which two queries return the value 1 Jan 2019? (Choose two.)

# Answers
A. SELECT TO_DATE('2019-01-01') FROM DUAL;

B. SELECT DATE '2019-01-01' FROM DUAL;

C. SELECT '2019-01-01' FROM DUAL;

D. SELECT TO_DATE('2019-01-01', 'YYYY-MM-DD') FROM DUAL;

E. SELECT TO_CHAR('2019-01-01') FROM DUAL;

# Discussions
## Discussion 1
B wouldnt work right bc it doesnt match the nls_parameter thing?. D works tho

## Discussion 2
BD is right answer due to internal nls date format and explicit format parameter.

## Discussion 3
Answers are: B & D.

## Discussion 4
BD Works

## Discussion 5
BD IS CORRECT

