select *, Employee.name from Orders
join Employee on Orders.employee_id = Employee.id;


---Исправлено ГПТ
SELECT Orders.*, Employees.name 
FROM Orders 
JOIN Employees ON Orders.employee_id = Employees.id;