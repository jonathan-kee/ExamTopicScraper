# Question 178
The CUSTOMERS table has a CUST_LAST_NAME column of data type VARCHAR2.

The table has two rows whose CUST_LAST_NAME values are Anderson and Ausson.

Which query produces output for CUST_LAST_NAME containing Oder for the first row and Aus for the second?

# Answers
A. SELECT REPLACE(REPLACE(cust_last_name, ‘son’, ‘’), ‘An’, ‘O’) FROM customers;

B. SELECT REPLACE(TRIM(TRAILING ‘son’ FROM cust_last_name), ‘An’, ‘O’) FROM customers;

C. SELECT REPLACE(SUBSTR(cust_last_name, -3), ‘An’, ‘O’) FROM customers;

D. SELECT INITCAP(REPLACE(TRIM(‘son’ FROM cust_last_name), ‘An’, ‘O’)) FROM customers;

# Discussions
## Discussion 1
create table customers (cust_last_name varchar2(10)) select * from customers; insert into customers values ('Anderson') insert into customers values('Ausson') select replace (replace(cust_last_name,'son',''),'An','O') from customers; -- + select replace (trim(trailing 'son' from cust_last_name),'An','O') from customers; -- trim should have only one character select replace (substr (cust_last_name,-3),'An','O') from customers; -- both values are 'son' select initcap(replace(trim('son' from cust_last_name),'An','O')) from customers; -- trim should have only one character

## Discussion 2
A is the answer

## Discussion 3
A is the answer

