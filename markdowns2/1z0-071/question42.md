# Question 42
Which three are true about dropping columns from a table? (Choose three.)


# Answers
A column can be removed only if it contains no data. D.

A column drop is implicitly committed. F.

A column must be set as unused before it is dropped from a table. A.

A column that is referenced by another column in any other table cannot be dropped. E.

A primary key column cannot be dropped. B.

C. Multiple columns can be dropped simultaneously using the ALTER TABLE command.

# Discussions
## Discussion 1
E is partial correct because you can use ON DELETE clause

## Discussion 2
For E, using cascade constraints, I was able to delete a primary key column that was referenced by a foreign key. C and F seem like the only truly correct options.

## Discussion 3
CF are the most correct, the other options have some special cases

## Discussion 4
You can drop a column that is referenced by another column with CASCADE CONSTRAINTS clause (E), so I only find here 2 correct answers (CF)

## Discussion 5
CEF for me

