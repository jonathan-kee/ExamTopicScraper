# Question 94
Which two statements are true about views? (Choose two.)

# Answers
A. The WITH CHECK clause prevents certain rows from being updated or inserted in the underlying table through the view.

B. The WITH CHECK clause prevents certain rows from being displayed when querying the view.

C. Views can be indexed.

D. Views can be updated without the need to re-grant privileges on the view.

E. Tables in the defining query of a view must always exist in order to create the view.

# Discussions
## Discussion 1
Why E is wrong? Because - * Per official Oracle documentation, you can use 'FORCE' keyword to create view over table that doesn't exists when needed. https://www.oracletutorial.com/oracle-view/oracle-create-view/

## Discussion 2
AD is correct

## Discussion 3
C and E also correct?

