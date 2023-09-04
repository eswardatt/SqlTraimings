Task on GroupBy 
----------------
Create tables Product and sales

Product
------
Id primary
name
createddate
price

Customer
----------
Id int primary key
name unique


Sales
-------
Id primary
productId foreign key
customerid foreign key
createddate

display data like : 
1. Productname, TotalSales
2. productname customername,totalsales