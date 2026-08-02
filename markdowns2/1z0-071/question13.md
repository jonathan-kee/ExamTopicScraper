# Question 13
You need to allow user ANDREW to:
1. Modify the TITLE and ADDRESS columns of your CUSTOMERS table.
2. GRANT that permission to other users.
Which statement will do this?


# Answers
A. GRANT UPDATE ON customers.title, customers.address TO andrew;

B. GRANT UPDATE (title, address) ON customers TO andrew;

C. GRANT UPDATE (title, address) ON customers TO andrew WITH GRANT OPTION;

D. GRANT UPDATE ON customers.title, customers.address TO andrew WITH ADMIN OPTION;

E. GRANT UPDATE ON customers.title, customers.address TO andrew WITH GRANT OPTION;

F. GRANT UPDATE (title, address) ON customers TO andrew WITH ADMIN OPTION;

# Discussions
## Discussion 1
C is correct: WITH GRANT OPTION is necessary in this case

## Discussion 2
E is also correct

## Discussion 3
C is correct

## Discussion 4
C is correct (GRANT option is for object privileges): GRANT UPDATE (title, address) ON customers TO andrew WITH GRANT OPTION E is not correct (ADMIN option is for system privileges): GRANT UPDATE (title, address) ON customers TO andrew WITH ADMIN OPTION gives the error ORA-00993: missing GRANT keyword.

## Discussion 5
The answer is C. C is for Cat.

