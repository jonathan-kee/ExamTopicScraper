# Question 74
Examine the description of the BRICKS table:

![](../../images/0005200001.png)
		
Examine the description of the BRICKS_STAGE table:

![](../../images/0005200002.png)
		
Which two queries execute successfully? (Choose two.)
A.

![](../../images/0005300002.png)
		


# Answers








A. 
![](../../images/0005200003.png)
		

B. 
![](../../images/0005200004.png)
		

C. 
![](../../images/0005200005.png)
		

D. 
![](../../images/0005300001.png)
		

# Discussions
## Discussion 1
AD are the correct answers

## Discussion 2
A D create table briks ( brick_id number(38) , shape varchar2(30) , color varchar2(30) , weight number ); create table bricks_stage( weight number , shape varchar2(30) , color varchar2(30)); --A + select brick_id , shape from briks minus select weight, color from bricks_stage; --B - select * from briks minus select * from bricks_stage; -- C - select shape, color from briks minus select weight, color from bricks_stage; -- D + select shape, color from briks minus select color, shape from bricks_stage; --E select shape, color, weight from briks minus select * from bricks_stage;

## Discussion 3
A,D are correct

## Discussion 4
AD for me

## Discussion 5
AD, number of columns and order types should match

