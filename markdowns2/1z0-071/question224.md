# Question 224
Which two statements are true about Entity Relationships? (Choose two.)

# Answers
A many-to-many relationship can be implemented only by using foreign keys. C.

A one-to-many relationship in one direction is a one-to-one relationship in the other direction. D.

A one-to-one relationship is always a self-referencing relationship. A.

A relationship can be mandatory for both entities. B.

A table name can be specified just once when selecting data from a table having a self-referencing relationship. E.

# Discussions
## Discussion 1
I think many-to-many relationships are implemented using an associative table with foreign keys.

## Discussion 2
B. A relationship can be mandatory for both entities. Explanation: In an entity relationship, it is possible to define a relationship as mandatory for both entities. For example: A "Student" must be enrolled in a "Course" (mandatory for "Student"). A "Course" must have at least one "Student" (mandatory for "Course"). This is known as a mandatory participation constraint. E. A table name can be specified just once when selecting data from a table having a self-referencing relationship. Explanation: In a self-referencing relationship, a table refers to itself through a foreign key. When querying, you can use a single table name but must use aliases to differentiate between the parent and child references. SELECT e1.employee_id, e1.name AS manager_name, e2.name AS employee_name FROM employees e1 JOIN employees e2 ON e1.employee_id = e2.manager_id;

## Discussion 3
C IS NOT CORRECT WITH ''ONLY''.

## Discussion 4
BD can be correct

## Discussion 5
D because A one-to-many relationship in one direction is a many-to-one relationship in the other direction. For example, if a customer can have many orders, then an order can have only one customer. Statement C, “A many-to-many relationship can be implemented only by using foreign keys,” is not correct because a many-to-many relationship cannot be implemented directly using foreign keys. Instead, it is typically implemented using a junction table (also known as a bridge table or associative table) that sits between the two tables representing the entities in the relationship.

