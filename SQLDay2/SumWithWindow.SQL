select sale_date, amount, SUM() over (partition by amount order by date) as sum from Sales;

---Исправленный

SELECT 
    sale_date,
    amount,
    SUM(amount) OVER (ORDER BY sale_date) as running_total
FROM Sales
ORDER BY sale_date;
