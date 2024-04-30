select * from customers where state IN ('MA','VA','GA','FL');
select * from customers where state NOT IN ('MA','VA','GA');
select * from products where quantity_in_stock IN (49,38,72);
-------------------------------------------------------------

select * from customers where points between 1000 and 3000;
select * from customers where birth_date between '1990-01-01' and '2000-01-01';

-------------------------------------------------------------
select * from customers where last_name like 'B%';
select * from customers where last_name like '%B%';
select * from customers where last_name like '_y';
select * from customers where last_name like '______y';
select * from customers where last_name like 'B_____y';

select * from customers where
		address like '%TRAIL%' or
		address like '%AVENUE%';
select * from customers where phone like '%9';
select * from customers where phone NOT like '%9';

-------------------REGEXP------------------
THIS IS VERY IMPORTANT TO KNOW. PLEASE GO THROUGH THE LECTURE - 12

select * from customers where
		address REGEXP 'TRAIL | MAC | FIELD';

-------------------------------------------------------------------

SELECT * from orders where shipped_date IS NULL;
SELECT * from orders where shipped_date IS NOT NULL;
