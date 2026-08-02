# Question 254
Examine this schema information:

1. EMPLOYEES.DEPARTMENT_ID has a foreign key referencing DEPARTMENTS.DEPARTMENT_ID.
2. EMP_VIEW is based on the EMPLOYEES and DEPARTMENTS tables.
3. EMP_VIEW has columns EMPLOYEE_ID, EMPLOYEE_NAME and DEPARTMENT_NAME.

You must add a new column, MANAGER_ID, from the EMPLOYEES table, to the view,  showing each employee’s manager.

Which statement will do this?

# Answers
A. ALTER VIEW emp_view ADD (employee.manager_id);

ALTER VIEW emp_view ADD (SELECT manager_id FROM employees); C.

ALTER VIEW emp_view MODIFY ( ALTER VIEW emp_view MODIFY (
SELECT employee_id, employee_name, department_name, manager_id

FROM employees e, departments d -
WHERE e.department_id = d.department_id);

 B.

CREATE OR REPLACE VIEW emp_view AS CREATE OR REPLACE VIEW emp_view AS
SELECT employee_id, employee_name, department_name, manager_id

FROM employees e, departments d -
WHERE e.department_id = d.department_id;

 D.

 FROM employees e, departments d -

# Discussions
## Discussion 1
You cannot alter view. You can only alter tables or sequences. SELECT - tables, views, sequences ALTER - tables, sequences all other - tables, views

