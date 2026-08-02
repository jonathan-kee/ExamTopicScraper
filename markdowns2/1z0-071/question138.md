# Question 138
Which three are true about multitable INSERT statements? (Choose three.)

# Answers
A. They can insert each computed row into more than one table.

B. They can be performed on remote tables.

C. They can be performed on external tables using SQL*Loader.

D. They can be performed on views.

E. They can be performed only by using a subquery.

F. They can be performed on relational tables.

# Discussions
## Discussion 1
AEF Correct

## Discussion 2
A, F we all agree: B because when remote database is accessible via a database link, multitable INSERTS are widely used.

## Discussion 3
AEF correct

## Discussion 4
A C F are correct

## Discussion 5
A. Multitable INSERT statements can insert each computed row into more than one table. This is achieved by specifying multiple INTO clauses in the INSERT statement, each corresponding to a different table. Here's an example: INSERT ALL INTO table1 (column1, column2) VALUES (value1, value2) INTO table2 (column3, column4) VALUES (value3, value4) SELECT * FROM source_table; In this example, the computed rows from the source_table are inserted into both table1 and table2. C. Multitable INSERT statements can be performed on external tables using SQL*Loader. External tables allow you to access data in external files as if it were in a regular database table. Here's an example: INSERT ALL INTO table1 (column1, column2) VALUES (value1, value2) INTO table2 (column3, column4) VALUES (value3, value4) SELECT * FROM external_table; In this example, the data from the external_table is inserted into both table1 and table2. F. Multitable INSERT statements can be performed on relational tables. Relational tables

