select * from employees
where salary >15000
union
select * from employees
where department_id=100;


select * from employees
where salary >15000
union all
select * from employees
where department_id=100;

SELECT employee_id, first_name, last_name, salary, department_id
FROM employees
WHERE salary > 15000
INTERSECT
SELECT employee_id, first_name, last_name, salary, department_id
FROM employees
WHERE department_id = 100;


