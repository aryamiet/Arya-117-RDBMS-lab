/* using aggrigate function*/
USE university2;
show tables;
select max(salary) as maxsal from instructors;
select max(salary) as maxsal,min(salary) as minsal from instructors;

select round(avg(salary),2) as avgsal from instructors;
select max(salary) as maxsal,
min(salary) as minsal,
round(avg(salary),5)as avgsal ,
sum(salary)as sumsal,
count(instructorID) as noofemp 
from instructors;







 
