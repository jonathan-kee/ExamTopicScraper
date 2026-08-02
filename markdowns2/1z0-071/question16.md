# Question 16
Which two statements are true about Oracle synonyms? (Choose two.)


# Answers
A. Any user can create a PUBLIC synonym.

All private synonym names must be unique in the database. C.

A synonym can be created on an object in a package. D.

A synonym can have a synonym. E.

A synonym has an object number. B.

# Discussions
## Discussion 1
A. Any user can create a PUBLIC synonym.( x) Must have Create Publc Syn Priv. B. A synonym has an object number. C. All private synonym names must be unique in the database. (X) Unique in the schema. D. A synonym can be created on an object in a package. (X) A schema object can't be in a package E. A synonym can have a synonym.

## Discussion 2
Synonym can be created for the whole package but not for components of the package.

## Discussion 3
B & E is correct

## Discussion 4
B. A synonym has an object number E. A synonym can have a synonym

## Discussion 5
B,D,E are correct. B and E are obvious. Why D is correct : Following workd in oracle.livesql.com CREATE PACKAGE employee_pkg1 AS PROCEDURE add_employee(p_first_name VARCHAR2, p_last_name VARCHAR2); END employee_pkg1; CREATE SYNONYM emp_pkg_syn FOR employee_pkg1; --Works CREATE SYNONYM add_emp_addemp_syn FOR employee_pkg1.add_employee; -- works

