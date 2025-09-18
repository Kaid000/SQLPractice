select * from Employees
OUTER JOIN Orders on Orders.employee_id = Employee.id


---Исправлено ГПТ
SELECT Employees.* 
FROM Employees 
LEFT JOIN Orders ON Employees.id = Orders.employee_id
WHERE Orders.employee_id IS NULL;