# Question 132
The CUSTOMERS table has a CUST_CREDIT_LIMIT column of data type number.

Which two queries execute successfully? (Choose two.)

# Answers
A. SELECT NVL2(cust_credit_limit * .15, 'Not Available') FROM customers;

B. SELECT NVL2(cust_credit_limit, TO_CHAR(cust_credit_limit * .15), 'Not Available') FROM customers

C. SELECT NVL(cust_credit_limit * .15, 'Not Available') FROM customers;

D. SELECT NVL(TO_CHAR(cust_credit_limit * .15), 'Not Available') FROM customers;

E. SELECT TO_CHAR(NVL(cust_credit_iimit * .15, 'Not Available')) FROM customers;

# Discussions
## Discussion 1
BD tested

## Discussion 2
NVL2 requires 3 arguments and it doesnt have to be the same data type NVL requires 2 arguments and it must be the same datatype or something that is implicitly converted

## Discussion 3
BD correct -> Data type has to be the same for NVL but not for NVL2

