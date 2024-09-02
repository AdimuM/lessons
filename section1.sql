select *
from sales.customers;

--queries using SELECT expression
select first_name,
    last_name
from sales.customers;


select first_name,
    last_name,
	phone,
	email
from sales.customers;

--adding the where statement 
select *
from sales.customers
where state = 'CA';

select first_name,
	last_name
from sales.customers
where phone is null

select * 
from sales.orders
where
order_status=3

--adding the order by statement
select *
from sales.customers
where phone is null
order by first_name;

select *
from sales.customers
where phone is null
order by customer_id;

select *
from sales.customers
where phone is null
order by customer_id,
	first_name;


--adding the group by statement 
select city,
    count(*) as number_of_customers_by_city
from sales.customers
where state = 'CA'
group by city
order by city;

select * from sales.customers
 

select brand_id, 
	count(*) as [number_of_brands_in_categ?6]
from production.products
where category_id=6
group by brand_id;

select brand_id,
	sum(list_price) as [total_list_price_categ?6]
from production.products
where category_id=6
group by brand_id;


--adding the having clause
/*
SELECT city, count(*): This part selects the city and the count of rows for each city.
FROM sales.customers: Specifies the table sales.customers from which to retrieve the data.
WHERE state = ‘CA’: Filters the rows to include only those where the state is ‘CA’.
GROUP BY city: Groups the rows by city.
HAVING count(*) > 10: Filters the groups to include only those where the count of rows is greater than 10.
ORDER BY city: Sorts the results by city in ascending order.
*/
select city,
    count(*)
from sales.customers
where state = 'CA'
group by city
having count(*) > 10
order by city;

/*
Filters: It first filters the rows to include only those with a list_price greater than 1000.
Groups: It then groups these filtered rows by item_id.
Counts: For each group, it counts the number of rows.
Filters Groups: It only includes groups where the count of rows is greater than 200.
Sorts: Finally, it sorts the results by item_id.
*/
select item_id, count(*)
from sales.order_items
where list_price>1000
group by item_id
having count(*)>200
order by item_id






