# Question 22
Which two are true about the precedence of operators and conditions? (Choose two.)


# Answers
+ (addition) has a higher order of precedence than * (multiplication). B.

A. || has a higher order of precedence than + (addition).

AND and OR have the same order of precedence in a condition. D.

C. NOT has a higher order of precedence than AND and OR in a condition.

E. Operators are evaluated before conditions.

# Discussions
## Discussion 1
The rules are listed in descending order: Parentheses (as well as brackets in lookup expressions and IN expressions). Note that you can freely add parentheses any time you want to impose an alternative precedence or to make precedence clearer. * / + - = <> < > <= >= IS (IS NULL, IS NOT NULL, IS EMPTY, IS NOT EMPTY) BETWEEN NOT AND OR

## Discussion 2
CE is correct

## Discussion 3
This Oracle doc explains between OR, AND, and NOT. https://docs.oracle.com/en/database/other-databases/nosql-database/22.2/sqlreferencefornosql/operator-precedence.html

## Discussion 4
|| has a higher order of precedence than + (addition).

## Discussion 5
select '9.9'||1+2 from dual Result 11.91 Contamination is done first

