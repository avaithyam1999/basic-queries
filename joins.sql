use northwind; 

-- 1. 
select products.ProductID, products.ProductName, products.UnitPrice, Products.CategoryID, Categories.CategoryName
from Products
inner join Categories
on Products.CategoryID = Categories.CategoryID
order by CategoryName, ProductName asc;

-- 2. 
select products.ProductID, Products.ProductName, Products.UnitPrice, Products.SupplierID, Suppliers.CompanyName
from Products
inner join Suppliers
on Products.SupplierID = Suppliers.SupplierID
where UnitPrice > 75
order by Products.ProductName;

-- 3. 
select Products.ProductID, Products.ProductName, Products.UnitPrice, Products.CategoryID, Categories.CategoryName, Suppliers.CompanyName
from Products
inner join Categories
on Products.CategoryID = Categories.CategoryID
inner join Suppliers
on Products.SupplierID = Suppliers.SupplierID
order by ProductName;

-- 4.
select Products.ProductID, Products.ProductName, Categories.CategoryName
from Products
inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice = (select max(UnitPrice) from Products);

-- 5. 
select Orders.OrderID, Orders.ShipName, Orders.ShipAddress, Shippers.CompanyName, Orders.ShipCountry
from Orders
inner join Shippers
on Orders.ShipVia = Shippers.ShipperID
where Orders.ShipCountry = "Germany";

-- 6. 
select Orders.OrderID, Orders.OrderDate, Orders.ShipName, Orders.ShipAddress, Products.ProductName
from Orders
inner join `Order Details`
on Orders.OrderID = `Order Details`.OrderID
inner join Products
on `Order Details`.ProductID = Products.ProductID
where Products.ProductName = "Sasquatch Ale";
