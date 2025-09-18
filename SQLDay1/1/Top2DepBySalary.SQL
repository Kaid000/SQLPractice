SELECT department, AVG(salary) as avg_salary 
FROM Employees
GROUP BY department
HAVING AVG(salary) > (SELECT AVG(salary) FROM Employees)
ORDER BY avg_salary DESC
LIMIT 2;