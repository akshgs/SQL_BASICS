select database();
use task1;
show tables;
select * from salesman;
select * from custmer;
select * from custmer where(Grade between 100 and 300);
select * from salesman where Commission >0.12;
select * from salesman,custmer;
SELECT * FROM task1 
NATURAL JOIN customer  
NATURAL JOIN salesman;