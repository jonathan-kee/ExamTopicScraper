# Question 135
Which three statements are true about dropping and unused columns in an Oracle database? (Choose three.)

# Answers
A. An UNUSED column's space is reclaimed automatically when the row containing that column is next queried.

A column that is set to UNUSED still counts towards the limit of 1000 columns per table. B.

A DROP COLUMN command can be rolled back. C.

An UNUSED column's space is reclaimed automatically when the block containing that column is next queried. E.

A primary key column referenced by another column as a foreign key can be dropped if using the CASCADE option. D.

F. Partition key columns cannot be dropped.

# Discussions
## Discussion 1
Correct answers

## Discussion 2
Correct answers are B , D and F see : https://dbaclass.com/article/ora-12984-cannot-drop-partitioning-column/#google_vignette

