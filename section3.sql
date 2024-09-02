SELECT
    product_name,
    list_price
FROM
    production.products
ORDER BY
    list_price,
    product_name;

--skipping the first 10 rows
select product_name,
    list_price
from production.products
order by list_price,
    product_name 
offset 10 rows;

--skipping the first 10 rows and showing next 10 rows only
select product_name,
    list_price
from production.products
order by list_price,
    product_name 
offset 10 rows 
fetch next 10 rows only;

--retrieve the top 10 most expensive products from products table
select product_name,
    list_price
from production.products
order by list_price DESC,
    product_name 
offset 0 rows 
fetch first 10 rows only;

--return the top 20 expensive products
select top 20
    product_name, 
    list_price
from production.products
order by list_price desc;

--choosing the top 1 percent 
select top 1 percent
    product_name, 
    list_price
from production.products
order by list_price desc;

--return the top 3 data and if there is some which's value is equal to 3rd, then them too
select top 3 with ties
    product_name, 
    list_price
from production.products
order by list_price desc;
