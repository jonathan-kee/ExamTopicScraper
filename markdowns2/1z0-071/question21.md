# Question 21
Which two are true about unused columns? (Choose two.)


# Answers
A foreign key column cannot be set to unused. F.

A primary key column cannot be set to unused. E.

A query can return data from unused columns, but no DML is possible on those columns. A.

B. Unused columns retain their data until they are dropped.

C. Once a column has been set to unused, a new column with the same name can be added to the table.

D. The DESCRIBE command displays unused columns.

# Discussions
## Discussion 1
Note on C: you can add the same name and data type as unused column even if it's not dropped. Tested and it works.

## Discussion 2
B C. Note on C. You can only add a new column with the same name as long as it's a different data type until the UNUSED is dropped.

## Discussion 3
Option B: "Unused columns retain their data until they are dropped." This is correct. Unused columns keep their data until they are explicitly removed from the table. Setting a column to unused does not immediately delete its data; it only marks the column as unavailable. Option C: "Once a column has been set to unused, a new column with the same name can be added to the table." This is correct. Once a column is marked as unused, you can add a new column with the same name to the table, because the unused column is effectively 'removed' from the table’s structure in a logical sense.

## Discussion 4
I tested, Unused can be added on primary key. Desc does not display unused column. not does select query.

