select region, sale_date, amount, ROW_NUMBER over (partition by region Order by sale_date) as row_num
from Sales;