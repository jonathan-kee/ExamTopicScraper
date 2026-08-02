# Question 177
Which set of commands will prompt only once for the name of the table to use in the query?

# Answers
A. PROMPT Enter table name &x -

B. DEFINE x = ‘employees’

C. PROMPT Enter table name &x -

 DEFINE x = ‘employees’

PROMPT Enter table name &x -
SELECT employee_id FROM &x WHERE last_name = ‘King’;

D. PROMPT Enter table name &&x -

 PROMPT Enter table name &x -

 PROMPT Enter table name &&x -
SELECT employee_id FROM &x WHERE last_name = ‘King’;

 PROMPT Enter table name &x -
SELECT employee_id FROM &x WHERE last_name = ‘King’;

# Discussions
## Discussion 1
Tested D.

## Discussion 2
C prompted twice, while D prompted only once.

## Discussion 3
C is correct

## Discussion 4
C is the right answer tested

## Discussion 5
D is correct

