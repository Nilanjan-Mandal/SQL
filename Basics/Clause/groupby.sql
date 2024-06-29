DataBase : northwind

select * from Customers c
select count(DISTINCT ContactTitle) from Customers c

select ContactTitle, COUNT(ContactName) as People from Customers c group by ContactTitle;


