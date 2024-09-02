--use BikeStores
--go

--sorting by first_name
select first_name,
    last_name
from sales.customers
order by first_name;

--sorting in descending order
select first_name,
    last_name
from sales.customers
order by first_name desc;

--sorting by first_name then by last_name
select first_name,
    last_name
from sales.customers
order by first_name,last_name;

--sort a result set by multiple columns
select city,
    first_name,
    last_name
from sales.customers
order by city,
    first_name;

--sort a result set by multiple columns and different orders
select city,
	first_name,
	last_name
from sales.customers
order by city desc,
	first_name asc;

--sort a result set by a column that is not in the select list
select city,
    first_name,
    last_name
from sales.customers
order by state;

--sort a result set by an expression
select first_name,
    last_name
from sales.customers
order by len(first_name) desc;

--sort by ordinal positions of columns
select first_name,
    last_name
from sales.customers
order by 1,
    2;



select product_name,brand_id
from production.products
where category_id in (6,7)
order by brand_id,product_name

 
