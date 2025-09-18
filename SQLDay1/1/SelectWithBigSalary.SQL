select * from Employees
where Employees.salary > (select AVG(salary) as average_salary from Employees);


---Альтернативно
--- CTE 

with average_salary as {
    select AVG(salary) as sal from Employees
}
select e.* from Employees e
where e.salary > average_salary.sal;