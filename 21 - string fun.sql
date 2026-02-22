-- Day 21 String Function

select * from products;

select upper(category) as uppercase
from products;

select lower(category) as lowercase
from products;

select concat(product_name,'-',category) as combine
from products;

select product_name, length(product_name)  as size_word
from products;

select product_name, substring(product_name,1,5)  as short_word
from products;

select trim('  monitor    ') as trim_text;

select length(trim('  monitor    ')) as length_trim_text;

select length('  monitor    ') as length_text;

select replace(product_name, 'phone', 'device') as updated_text from products;

select product_name, left(product_name, 3) from products;
select product_name, right(product_name, 3) from products;