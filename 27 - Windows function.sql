-- Day 27 Windows Function

select * from products;

select product_name, category, price,
	dense_rank() over(partition by category order by price asc) as ranking
from products;

select product_name, category, price,
	sum(price) over(partition by category order by price desc) as running_total
from products;