/* group by clause function ,order by,having */
use university2;
show tables;
select  DeptID,max(salary) from instructors group by DeptID;
select  DeptID,max(salary),count(*) from instructors group by DeptID;

select * from students;
select count(name)from students group by Gender;
select deptno, job, sum(sal)as sumsal,count(*) from emp group by deptno,job order by deptno;
select grade, count(*) from Enrollments group by grade order by grade;
select StudentID, count(*) from enrollments group by studentid order by studentid;
select courseid,count(*) from enrollments group by courseid;
select courseid,count(*) from enrollments group by courseid having count(*)>10;
