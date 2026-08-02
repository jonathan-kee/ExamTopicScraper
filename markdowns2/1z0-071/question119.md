# Question 119
Which statement will return a comma-separated list of employee names in alphabetical order for each department in the EMP table?

# Answers
 A.

 B.

 C.

 D.

# Discussions
## Discussion 1
A is right answer.

## Discussion 2
A Correct select department_id, listagg(last_name, ',') within group (order by last_name) from employees group by department_id;

## Discussion 3
B, C, D will throw error. A is the only correct option

## Discussion 4
tried it in sql developer

