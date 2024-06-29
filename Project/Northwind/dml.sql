1. Insert yourself into the Employees table Include the following fields: LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, City, Region, PostalCode, Country, HomePhone, Notes, ReportsTo. 

INSERT into Employees (LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, City, Region, PostalCode, Country, HomePhone, Notes, ReportsTo)
values ('Mandal', 'Nilanjan', 'Vice President', 'Mr.', '1997-07-16', '1998-05-01', 'Kolkata', 'Bengal', '293 Street', 'IND', '(206) 345-9857', 'Education', 2)

2. Insert an order for yourself in the Orders table
Include the following fields: CustomerID, EmployeeID, OrderDate, RequiredDate

3. Insert order details in the Order_Details table
Include the following fields: OrderID, ProductID, UnitPrice, Quantity, Discount


1. Update the phone of yourself (from the previous entry in Employees table) (1 row)
2. Double the quantity of the order details record you inserted before (1 row)
3. Repeat previous update but this time update all orders associated with you (1 row)


Delete the records you inserted before. Don't delete any other records!


How to insert a record while you have a foreign key constraints is there. 