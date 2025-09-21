SELECT 
    amount,
    NTILE(3) OVER (ORDER BY amount) as group_number
FROM Sales;