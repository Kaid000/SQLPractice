SELECT 
    sale_date,
    amount,
    LAG(amount) OVER (ORDER BY sale_date) as prev_sale
FROM Sales;