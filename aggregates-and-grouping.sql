use northwind; 

-- 1. How many suppliers are there? Use a query!
select count(CompanyName) as "Total Suppliers" 
from Suppliers;

-- 2. What is the sum of all the employee's salaries?
select sum(salary) as "Sum of all salaries"
from Employees;

-- 3. What is the price of the cheapest item that Northwind sells?
select min(UnitPrice) as "Cheapest Item"
from Products;

-- 4. What is the average price of items that Northwind sells?
select avg(unitprice) as "average price of items"
from Products;

-- 5. What is the price of the most expensive item that Northwind sells?
select max(unitPrice) as "most expensive item"
from Products;

-- 6. What is the supplier ID of each supplier and the number of items they supply? You can answer this query by only looking at the Products table.
select supplierID, count(ProductID) as "Number of Items"
from Products
group by SupplierID
order by SupplierID;

-- 7. What is the category ID of each category and the average price of each item in the category? You can answer this query by only looking at the Products table.
select CategoryID, avg(UnitPrice)
from Products
group by CategoryID
order by CategoryID;

-- 8. For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each supplier and the number of items they supply? You can answer this query by only looking at the Products table.
select SupplierID, count(ProductID)
from Products
group by SupplierID
having count(ProductID) >= 5
order by SupplierID;

-- 9. List the product id, product name, and inventory value (calculated by multiplying unit price by the number of units on hand). Sort the results in descending order by value. If two or more have the same value, order by product name.
select ProductID, ProductName, (UnitPrice * UnitsInStock) as InventoryValue
from Products
group by InventoryValue desc
order by ProductName asc;
