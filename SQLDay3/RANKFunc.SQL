select region,
       amount,
       RANK() over (partition by region order by amount DESC) as rank
from Sales;

SELECT *
FROM (
    SELECT 
        region,
        amount,
        RANK() OVER (PARTITION BY region ORDER BY amount DESC) as rank
    FROM Sales
) t
WHERE rank <= 2;

select region,
       amount,
       RANK() over (partition by region order by amount DESC) as rank,
       DENSE_RANK() over (partition by region order by amount DESC) as dense_rank
from Sales;

select 
    product,
    total_amount,
    RANK() over (order by total_amount DESC) as rank
from (
    select
        product,
        SUM(amount) as total_amount
    from Sales
    Group by product
) t;

SELECT 
    product,
    sale_month,
    total,
    RANK() OVER (PARTITION BY sale_month ORDER BY total DESC) as month_rank
FROM (
    SELECT 
        product,
        EXTRACT(MONTH FROM sale_date) as sale_month,
        SUM(amount) as total
    FROM Sales
    GROUP BY product, EXTRACT(MONTH FROM sale_date)
) t
ORDER BY sale_month, month_rank;

SELECT 
    product,
    total,
    RANK() OVER (ORDER BY total DESC) as rank
FROM (
    SELECT 
        product,
        SUM(amount) as total
    FROM Sales
    GROUP BY product
) t
WHERE total >= 70000
ORDER BY rank;