# Question 158
Which statement is true about the INTERSECT operator used in compound queries?

# Answers
A. It processes NULLs in the selected columns.

B. It ignores NULLs.

C. INTERSECT is of lower precedence than UNION or UNION ALL.

D. Multiple INTERSECT operators are not possible in the same SQL statement.

# Discussions
## Discussion 1
A definitely A it does not ignore NULL values

## Discussion 2
tested in sql dev

## Discussion 3
INTERSECT DOES NOT IGNORE NULLS

## Discussion 4
https://www.examtopics.com/discussions/oracle/view/8224-exam-1z0-071-topic-1-question-239-discussion/

## Discussion 5
A must be correct select null as nulltest from dual intesect select null as nulltest1 from dual it shows one row

