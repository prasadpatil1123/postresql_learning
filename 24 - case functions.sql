-- Day 24 - Case function

-- 1. CASE function - categorizing Based on Conditions

 /*  we will catogorizing products into price range: */

select * from products;

select product_name, price,
	case
		when price > 50000 then 'Expensive'
				when price < 49999 and price > 10000 then 'Moderate'
		else 'Affordable'
	end as price_category
from products;