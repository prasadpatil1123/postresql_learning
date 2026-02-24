-- Day 25 Assignment

select * from products;

select product_name, quantity, 
	case
	when quantity >= 10 then 'In stock'
	when quantity >= 5 and quantity < 9 then 'Limited Stock'
	-- when quantity between 5 and 9 then 'Limited Stock'
	else 'Out of stock'
	end as stock_status
from products;

select product_name, category, 
	case
	when category like 'Electronics%' then 'Electronics Item'
	when category like 'Accessories%' then 'Accessories Item'
	else 'Furniture Item'
	end as category_type
from products;