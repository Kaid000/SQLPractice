select region, product, SUM(amount) as total_sales,
RANK() over (partition by region order by SUM(amount) DESC) as rank 
from Sales;