use northwind; 

-- insert into suppliers(SupplierID, CompanyName)
-- values(30, "Company Company");

-- insert into Products (ProductID,ProductName,UnitPrice,UnitsInStock,UnitsOnOrder,ReorderLevel,Discontinued)
-- values (500, "The Product", 570, 3, 15, 2, 0)

select Suppliers.SupplierID, Suppliers.CompanyName, Products.ProductID, Products.ProductName
from Suppliers
join Products
where Suppliers.CompanyName = "Company Company";

