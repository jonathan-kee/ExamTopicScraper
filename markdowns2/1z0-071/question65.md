# Question 65
Which two are true about the NVL, NVL2, and COALESCE functions? (Choose two.)


# Answers
A. NVL must have expressions of the same data type.

B. NVL can have any number of expressions in the list.

C. NVL2 can have any number of expressions in the list.

COALESCE stops evaluating the list of expressions when it finds the first non-null value. D.

COALESCE stops evaluating the list of expressions when it finds the first null value. F.

E. The first expression in NVL2 is never returned.

# Discussions
## Discussion 1
A: NVL, does implicit conversion. Could have expressions of different datatype

## Discussion 2
First expression of NVL2 is never returned, it's only used for evaluation.

## Discussion 3
DE is correct: D. COALESCE stops evaluating the list of expressions when it finds the first non-null value. TRUE https://www.oracletutorial.com/oracle-comparison-functions/oracle-coalesce/ E. The first expression in NVL2 is never returned. TRUE If expr1 is not null, then NVL2 returns expr2. If expr1 is null, then NVL2 returns expr3. (https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/NVL2.html)

## Discussion 4
DE is correct the data types of the nvl are possible to explicitly convert the data type

## Discussion 5
It should be AD. A: it is true that oracle can make implicit conversions but still the NVL function requires that the two exps be of the same data type. Hence A is correct E is wrong because if we specified that we want the same exp to be returned when it's not null it would return its first exp. Tried this in Toad and got 'h1' select nvl2('h1', 'h1', 4) from dual;

