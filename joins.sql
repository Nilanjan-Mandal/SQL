select course_name from courses where course_id = (



)

select f_name,l_name,course_name from students join courses
on students.enrolled_coursed = courses.course_id


select *
from customer AS c
INNER JOIN payment as p
on
c.customer_id=p.customer_id




INNER JOIN

select * from
orders JOIN customers
on orders.customer_id = customers.customer_id;

select order_id,first_name,last_name,c.customer_id from
orders o
JOIN customers c
on o.customer_id = c.customer_id;

select * from sql_store.order_items;
select * from sql_inventory.products;

select * from
sql_store.order_items o join sql_inventory.products p
on o.product_id = p.product_id;

SELF JOIN

select * from
sql_hr.employees e JOIN sql_hr.employees m
on e.reports_to = m.employee_id; 
