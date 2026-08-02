# Question 106
Which two are true about virtual columns? (Choose two.)

# Answers
A. They can be indexed.

B. They can be referenced in the column expression of another virtual column.

C. They cannot have a data type explicitly specified.

D. They can be referenced in the set clause of an update statement as the name of the column to be updated.

E. They can be referenced in the where clause of an update or delete statement.

# Discussions
## Discussion 1
https://oracle-base.com/articles/11g/virtual-columns-11gr1

## Discussion 2
more details about virtual columns: https://www.gpsos.es/2021/03/virtual-columns-in-oracle-use-and-limitations/?lang=en

## Discussion 3
AE is the right answer.

## Discussion 4
Correct answer is: AB A. Virtual columns can be indexed just like regular columns. This is useful when queries frequently filter or sort data based on the virtual column, as indexing improves performance. B. Virtual columns can be used in the expression of another virtual column. This allows for more complex derived data to be generated from other columns, including other virtual columns.

## Discussion 5
E is false. Although virtual columns can be used in a WHERE clause of queries to filter data, they cannot be used in the WHERE clause of an UPDATE or DELETE statement because these statements modify data, and virtual columns are not physically stored.

