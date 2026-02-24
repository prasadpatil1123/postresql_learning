-- Day 22 - date function

-- 1 . now() - get current  date & time

select now() as current_datetime;

-- 2. CURRENT_DATE() – Get Current Date

select current_date as today_date;

select added_date, current_date, (current_date - added_date) as date_difference
from products;

-- 3. EXTRACT() – Extract Parts of a Date
-- Extract the year, month, and day from the added_date column.

select product_name,
	extract(year from added_date) as year_added,
	extract(month from added_date) as month_added,
	extract(day from added_date) as day_added
from products;


-- 4. AGE() – Calculate Age Between Dates
-- Calculate the time difference between added_date and today’s date.

select product_name,
	age(current_date, added_date) as age_since_added
from products;

-- 5. TO_CHAR() – Format Dates as Strings
-- Format added_date in a custom format (DD-Mon-YYYY).

select product_name,
	to_char(added_date,'DD-MON-YYYY') as formated_date
from products;

