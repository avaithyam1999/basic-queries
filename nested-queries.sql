use northwind; 
-- 1. What is the product name(s) of the most expensive products? HINT: Find the max price in a subquery and then use that value to find products whose price equals that value.
select ProductName, UnitPrice
from Products
where UnitPrice = (select max(unitPrice) from Products);

-- 2. What is the order id, shipping name and shipping address of all orders shipped via "Federal Shipping"? HINT: Find the shipper id of "Federal Shipping" in a subquery and then use that value to find the orders that used that shipper.
select OrderID, ShipName, ShipAddress
from Orders
where ShipVia = (select ShipperID from Shippers where CompanyName like "%Federal Shipping%");

-- 3. What are the order ids of the orders that ordered "Sasquatch Ale"? HINT: Find the product id of "Sasquatch Ale" in a subquery and then use that value to find the matching orders from the `order details` table. Because the `order details` table has a space in its name, you will need to surround it with back ticks in the FROM clause.
select OrderID
from `order details`
where ProductID = (select ProductID from Products where ProductName like "%Sasquatch Ale%");

-- 4. What is the name of the employee that sold order 10266?
select FirstName, LastName
from Employees
where EmployeeID = (select EmployeeID from Orders where OrderID = 10266);

-- 5. What is the name of the customer that bought order 10266?
select CompanyName, ContactName
from Customers
where CustomerID = (select CustomerID from Orders where OrderID = 10266);
