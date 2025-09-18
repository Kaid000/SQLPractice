select name, AVG(Orders.amount) from Employees
join Orders on Employee.id = Orders.employee_id
Group by Employee.name;


---ИСправлено ГПТ
SELECT Employees.name, SUM(Orders.amount) as total_amount
FROM Employees 
JOIN Orders ON Employees.id = Orders.employee_id
GROUP BY Employees.name;