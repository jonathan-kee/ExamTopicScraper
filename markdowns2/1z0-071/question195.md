# Question 195
Which three statements are true about performing DML operations on a view with no INSTEAD OF triggers defined? (Choose three.)

# Answers
A. Views cannot be used to query rows from an underlying table if the table has a PRIMARY KEY and the PRIMARY KEY columns are not referenced in the defining query of the view.

B. Delete statements can always be done on a table through a view.

C. The WITH CHECK clause has no effect when deleting rows from the underlying table through the view.

D. Views cannot be used to add rows to an underlying table if the table has columns with NOT NULL constraints lacking default values which are not referenced in the defining query of the view.

E. Views cannot be used to add or modify rows in an underlying table if the defining query of the view contains the DISTINCT keyword,

F. Insert statements can always be done on a table through a view.

# Discussions
## Discussion 1
are correct, check with chat gpt

## Discussion 2
The correct answer is CDE

## Discussion 3
DE for sure true.

## Discussion 4
https://forums.oracle.com/ords/apexds/post/dml-operations-on-multiple-views-3747

## Discussion 5
Should be C, D, E https://www.examtopics.com/discussions/oracle/view/20172-exam-1z0-071-topic-2-question-37-discussion/

