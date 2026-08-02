# Question 265
Which two are true about the USING clause when joining tables? (Choose two.)

# Answers
A. It is used to specify an equijoin of columns that have the same name in both tables.

All column names in a USING clause must be qualified with a table name or table alias. D.

B. It can never be used with a full outer join.

C. It can never be used with a natural join.

E. It is used to specify an explicit join condition involving operators.

# Discussions
## Discussion 1
B. USING can never be used with a full outer join. Use ON instead for full outer jon.

## Discussion 2
No, la cláusula USING no puede usarse directamente en un NATURAL JOIN en Oracle. El NATURAL JOIN realiza la unión basándose en todas las columnas con el mismo nombre y tipo de dato entre las tablas, sin necesidad de especificar la condición de unión explícitamente. La cláusula USING se utiliza en un JOIN convencional para especificar las columnas que se utilizarán en la unión, pero no reemplaza la necesidad de especificar la condición de unión.

## Discussion 3
A. It is used to specify an equijoin of columns that have the same name in both tables. C. It can never be used with a natural join.

## Discussion 4
CORRECT ANS IS A,C.

