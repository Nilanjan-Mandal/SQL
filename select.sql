- alias



select * from customers order by first_name;

select *,(quantity * unit_price) as Total_Price
		from order_items
		where order_id = 2
		order by Total_Price desc;

select
	first_name,
	last_name,
    points,
    points + 10
from customers;


select
	first_name,
	last_name,
    points,
    points + 10 as Discount
from customers;


select
	first_name,
	last_name,
    points,
    points + 10 as "Discount Factor"
from customers;


select
		name,
		unit_price,
        unit_price * 1.1 as "New Price"
from products;
  
