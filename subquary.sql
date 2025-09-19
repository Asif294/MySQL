select * from employees
where salary <( select salary
				from employees
                where employee_id =144
                       );

select * from employees
where salary =(select max(salary) from employees);


--  find 2nd leargest salary 
select max(salary) from employees
where salary <(select max(salary) from employees)