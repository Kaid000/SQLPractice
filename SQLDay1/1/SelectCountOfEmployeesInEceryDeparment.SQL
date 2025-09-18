select Count(*) as count_workers, department from Employees
group by department;

---Улучшение от гпт
select Count(*) as count_workers, department from Employees
group by department
order by count_workers DESC;