 use dummydb;
 -- ********* select ******** 
select distinct * from countries;  -- its show all country without duplicat country name
select * from departments; 
select first_name ,last_name from employees;
--  ********  where ********
select * from employees where department_ID =60 and salary >5000;  
-- **********Arithmatic oparator ****
select first_name,salary , salary+1500 from employees;
select first_name,salary , salary-1500 from employees;
select first_name,salary , salary*1500 from employees;

-- **********Comparison oparator  *******
select * from employees
where salary  <= 6000;
select * from employees
where salary  >= 6000;

-- **********Logical AND  , OR  oparators  *******
select * from employees
where salary > 6000 and department_id=90;
select * from employees
where salary > 6000 or department_id=90;

-- ********** ORDER BY  *******
select * from employees 
where salary >5000 
order by salary ASC  ;

select * from employees 
where salary >5000 
order by salary DESC ;

-- ********** Limit  *******
select * from employees 
order by salary DESC 
limit  5;

select * from employees 
order by salary DESC 
limit  4,5;

-- ********** Ofset   *******
select * from employees 
order by salary DESC 
limit  5
offset 4;

-- ********** LIKE  *******
select * from employees 
where last_name  like 'green%';  -- after use( % ) for find last letter 

select * from employees 
where last_name like '%ee%' ;  --  joto gula name ar maje ee ase sob gula dekhabe 

-- ********** AS  *******
select first_name ,salary, salary+100 as 'incrage_salary' from employees
-- AS use for updateing name 


