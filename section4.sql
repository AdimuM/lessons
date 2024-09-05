--where clause
select product_id,
    product_name,
    category_id,
    model_year,
    list_price
from production.products
where category_id = 1
order by list_price desc;


select  product_id,
    product_name,
    category_id,
    model_year,
	list_price
from production.products
where category_id = 1 and model_year = 2018
order by list_price desc;

select product_id,
    product_name,
    category_id,
    model_year,
    list_price
from production.products
where list_price > 300 and model_year = 2018
order by list_price desc;


select product_id,
    product_name,
    category_id,
    model_year,
	list_price
from production.products
where list_price > 3000 OR model_year = 2018
order by list_price desc;

select product_id,
    product_name,
    category_id,
    model_year,
    list_price
from production.products
where list_price between 1899.00 and 1999.99
order by list_price desc;

select product_id,
    product_name,
    category_id,
    model_year,
    list_price
from production.products
where list_price in (299.99, 369.99, 489.99)
order by list_price desc;

select product_id,
    product_name,
    category_id,
    model_year,
    list_price
from production.products
where product_name like '%Cruiser%'
order by list_price;


--and operator
select * 
from production.products 
where category_id = 1 and list_price > 400 
order by list_price desc;

select * 
from production.products 
where category_id = 1 
	and list_price > 400 
	and brand_id=1
order by list_price desc;

select * 
from production.products 
where brand_id in (1,2) 
	and list_price>1000
order by brand_id desc;

select * 
from production.products 
where brand_id in (1,2)
	and list_price>1000
order by brand_id ;


--or operator
select product_name,
    list_price
from production.products
where list_price < 200
	or list_price > 6000
order by list_price;


select product_name,
    brand_id
from production.products
where brand_id = 1
	or brand_id = 2
	or brand_id = 4
order by brand_id desc;

select product_name,
    brand_id
from production.products
where brand_id in (1,2,3)
order by brand_id desc;

select product_name, 
    brand_id, 
    list_price
from production.products
where brand_id in (1,2)
    and list_price > 500
order by brand_id DESC, 
    list_price;

select product_name,
    brand_id,
    list_price
from production.products
where (brand_id = 1 OR brand_id = 2)
    and list_price > 500
order by brand_id;


--in operator
select product_name,
    list_price
from production.products
where list_price IN (89.99, 109.99, 159.99)
order by list_price;


select product_name,
    list_price
from production.products
where list_price = 89.99 
	or list_price = 109.99 
	or list_price = 159.99
order by list_price;

select product_name,
    list_price
from production.products
where list_price not in (89.99, 109.99, 159.99)
order by list_price;


select product_name,
    list_price
from production.products
where product_id in (
	select product_id
	from production.stocks
	where store_id = 1 
		and quantity >= 30
	)
order by product_name

--between operator
select product_id,
    product_name,
    list_price
from production.products
where list_price between 149.99 and 199.99
order by list_price;


select product_id,
    product_name,
    list_price
from production.products
where list_price not between 149.99 and 199.99
order by list_price;

select order_id,
    customer_id,
    order_date,
    order_status
from sales.orders
where order_date between '20170115' and '20170117'
order by order_date;


--like operator
select customer_id,
    first_name,
    last_name
from sales.customers
where last_name like 'z%'
order by first_name;


select customer_id,
    first_name,
    last_name
from sales.customers
where last_name like '%er'
order by first_name;

select customer_id,
    first_name,
    last_name
from sales.customers
where last_name like 't%s'
order by first_name;


select customer_id,
    first_name,
    last_name
from sales.customers
where last_name like '_u%'
order by first_name; 

select customer_id,
    first_name,
    last_name
from sales.customers
where last_name like '[YZ]%'
order by last_name;

select customer_id,
    first_name,
    last_name
from sales.customers
where last_name like '[A-C]%'
order by first_name;

select customer_id,
    first_name,
    last_name
from sales.customers
where last_name like '[^A-X]%'
order by last_name;

select customer_id,
    first_name,
    last_name
from sales.customers
where first_name not like 'A%'
order by first_name;

/*escape clause is used when you need to find in data 
something with symbol, and that symbol is also contained
in function itself, so in order to to find you need to use 
escape clause*/

/*
SELECT 
   feedback_id, 
   comment
FROM 
   sales.feedbacks
WHERE 
   comment LIKE '%30!%%' ESCAPE '!';
*/

--here in example we are trying to find the row which consist of 30%

--column alias
select first_name + ' ' + last_name as full_name
from sales.customers
order by first_name;

select first_name + ' ' + last_name as 'Full Name'
from sales.customers
order by first_name;

select first_name + ' ' + last_name as [Full Name]
from sales.customers
order by first_name;

select category_name 'Product Category'
from production.categories
order by category_name;

select category_name 'Product Category'
from production.categories
order by 'Product Category';

select c.customer_id,
    first_name,
    last_name,
    order_id
from sales.customers c
	inner join sales.orders o 
	on o.customer_id = c.customer_id;


--usage of select distinct
select distinct city 
from sales.customers 
order by city;

select city, 
  state 
from sales.customers 
order by city, 
  state;


select distinct phone 
from sales.customers 
order by phone;


select city, 
  state, 
  zip_code 
from sales.customers 
group by city, 
  state, 
  zip_code 
order by city, 
  state, 
  zip_code

select distinct city, state, zip_code 
from sales.customers;