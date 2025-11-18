use northwind;

-- 1. What is the name of the table that holds the items Northwind sells?
select productName from Products;

-- 2. Write a query to list the product id, product name, and unit price of every product.
select productID, productName, UnitPrice
from Products;

-- 3. Write a query to list the product id, product name, and unit price of every product. Except this time, order then in ascending order by price.
select productID, productName, UnitPrice
from Products
order by UnitPrice asc;

-- 4. What are the products that we carry where the unit price is $7.50 or less?
select productID, productName, UnitPrice
from Products
where UnitPrice > 7.50;

-- 5. What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price.
select productID, productName, UnitPrice, QuantityPerUnit
from Products
where QuantityPerUnit >= 100
order by UnitPrice desc;

-- 6. What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price. If two or more have the same price, list those in ascending order by product name.
select productID, productName, UnitPrice, UnitsInStock
from Products
where UnitsInStock >= 100
order by UnitPrice desc, ProductName asc;

-- 7. What are the products that we carry where we have no units on hand, but 1 or more units of them on backorder? Order them by product name.
select productID, productName, UnitPrice, UnitsInStock, UnitsOnOrder
from Products
where UnitsInStock = 0 and UnitsOnOrder >= 1
order by ProductName;

-- 8. What is the name of the table that holds the types (categories) of the items Northwind sells?
select CategoryID, CategoryName
from Categories;

-- 9. Write a query that lists all of the columns and all the rows of the categories table? What is the category id of seafood?
select * from Categories
where CategoryName = "Seafood";

-- 10. Examine the Products table. How does it identify the type (category) of each item sold? Write a query to list all of the seafood items we carry.
select * from Products
where CategoryID = 8;

-- 11. What are the first and last names of all of the Northwind employees?
select FirstName, LastName from Employees;


-- 12. What employees have "manager" in their titles?
select * from Employees
where Title like '%manager%';

-- 13. List the distinct job titles in employees.
select distinct title from Employees;

-- 14. What employees have a salary that is between $200 0 and $2500?
select employeeID, LastName, FirstName, Title, Salary from Employees
where Salary between 2000 and 2500;

-- 15. List all the information about all of Northwind's suppliers.
select * from Suppliers;

-- 16. Examine the Products table. How do you know what supplier supplies each product? Write a query to list all the items that "Tokyo Traders" supplies to Northwind
select * from Products
where SupplierID = 4;