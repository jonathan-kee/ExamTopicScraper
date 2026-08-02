# Question 6
Which two are true? (Choose two.)


# Answers
A. CONCAT joins two character strings together.

B. CONCAT joins two or more character strings together.

C. FLOOR returns the largest positive integer less than or equal to a specified number.

D. INSTR finds the offset within a character string, starting from position 0.

E. INSTR finds the offset within a string of a single character only.

F. FLOOR returns the largest integer less than or equal to a specified number.

# Discussions
## Discussion 1
How F is correct. In case argument is passed in a negative. eg -1.4. The output is -2. But -1 is greater than -2. And, its contrast with option F. F. FLOOR returns the largest integer less than or equal to a specified number. select floor(-1.4) from dual; o/p ---2

## Discussion 2
A. CONCAT joins two character strings together. F. FLOOR returns the largest integer less than or equal to a specified number.

## Discussion 3
A. CONCAT joins two character strings together F. FLOOR returns the largest integer less than or equal to a specified number

## Discussion 4
Selected Answer: AF

## Discussion 5
B is correct, CONCAT joins two or more arguments. --Example query select concat('this ', 'is ', 'a ', 'test') concat from dual; Output: "this is a test" F is also correct, since it accepts negative numbers as well. --Example query select floor(-5.2526) from dual; Output: -6 (-6 is smaller than -5, it also caught me offguard the first time).

