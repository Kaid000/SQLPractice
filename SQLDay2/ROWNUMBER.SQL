SELECT * FROM (
    SELECT 
        id, 
        amount, 
        ROW_NUMBER() OVER (ORDER BY amount DESC) as row_num 
    FROM Sales
) t
WHERE row_num <= 2;


SELECT * FROM (
    SELECT 
        id, 
        amount, 
        ROW_NUMBER() OVER (partition by region ORDER BY amount DESC) as row_num 
    FROM Sales
) t
WHERE row_num <= 2;

select * from (select
                    id, 
                    amount,
                    ROW_NUMBER OVER (partition BY product ORDER BY amount DESC) as row_num
                    from Sales) t
Where row_num = 1;


SELECT 
    EXTRACT(YEAR_MONTH FROM sale_date) as year_month,
    sale_date,
    amount,
    ROW_NUMBER() over (PARTITION BY EXTRACT(YEAR_MONTH FROM sale_date) 
        ORDER BY sale_date) as rank from Sales;


SELECT *
FROM (
    SELECT 
        region,
        sale_date,
        amount,
        ROW_NUMBER() over (partition by amount order by region) as rank_sale from Sales) t
        where rank_sale = 2;

Select * from (
    select
        id,
        amount,
        product,
        region,
        sale_date,
        ROW_NUMBER() over (order by sale_date DESC) as num_sum from Sales;
)