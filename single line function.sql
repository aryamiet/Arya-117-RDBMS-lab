USE university2;
show tables;

desc instructors;/* */

select *from instructors;

/* concat */
select  name,salary  from  instructors;
select concat(name,' earns ',salary) as 'earns' from  instructors;
select concat(name,' works in ', DeptID) as ' works in ' from instructors;

/* substring*/
select substr(name,5,5) from instructors;
select  name  from  students;

/* left, right command for not using substring*/
select left(name,5)from students;
select right(name,5)from students;


/* upper and lower case*/
select upper(name)from students;
select  lower(name)  from students;

/* nester if condition using  substring, concat, lower, upper case*/
select substr(name,1,1) from students;
select substr(name,1,1) , lower (substr(name,2))from students;
select concat(substr(name,1,1) , lower (substr(name,2)))from students;


/* triming*/
select ltrim('    hello    ');
select rtrim('    hello    ');
select trim('    hello    ');


/*padding*/
select salary from instructors;
select lpad(salary,15,'*') from instructors;
select rpad(salary,15,'*') from instructors;
select lpad(rpad(salary,15,'*'),20,'*') from instructors;

/* command date*/
select name,DOB from students;
desc students;
select name, month(DOB) from students;
select name, day(DOB) from students;
select name, second(DOB) from students;
select name, year(DOB) from students;
select minute(curtime());
select name,dayname(dob), monthname(DOB) from students  where dayname(dob)="sunday";
select name, dayname(dob), monthname(DOB), year(curdate())-year(dob) as age from students;

/* salary increment department wise*/
/* case function  */
select name, salary,DeptID,
case DeptID
when 3 then salary*1.30
when 6 then salary*1.40
when 9 then salary*1.50
else salary
end as incsal
 from instructors;














