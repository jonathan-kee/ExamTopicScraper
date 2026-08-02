# Question 43
Which three statements are true about views in an Oracle Database? (Choose three.)


# Answers
A SELECT statement cannot contain a WHERE clause when querying a view containing a WHERE clause in its defining query. A.

A view can be created that refers to a non-existent table in its defining query. E.

B. Views have no segment.

C. Views have no object number.

D. Views can join tables only if they belong to the same schema.

F. Rows inserted into a table using a view are retained in the table if the view is dropped.

# Discussions
## Discussion 1
I don't understand the answer E. How can views refers to non-existent table ?

## Discussion 2
select object_id, object_name from user_objects In this table you will also find views so they do have an object number. Views have no segment since they don't take up physical space

## Discussion 3
the correct answer is B and e and F

## Discussion 4
what that is mean no segment about view

