CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    ContactName VARCHAR(255),
    Country VARCHAR(255)
);



INSERT INTO Customers (CustomerID, CustomerName, ContactName, Country)
VALUES
    (1, 'Customer1', 'Contact1', 'USA'),
    (2, 'Customer2', 'Contact2', 'Canada'),
    (3, 'Customer3', 'Contact3', 'UK'),
    (4, 'Customer4', 'Contact4', 'Australia');



CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (101, 1, '2023-01-10', 100.50),
    (102, 2, '2023-01-15', 75.25),
    (103, 1, '2023-02-05', 200.00),
    (104, 3, '2023-02-20', 50.75);


SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID
FROM Customers
left JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


select * from Customers;
select * from Orders;


---------------------
--Views



CREATE VIEW vw_Getcustomersdata AS
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID
FROM Customers
left JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


CREATE VIEW vw_Getcustomersdata_1 AS
SELECT Customers.CustomerID, Customers.CustomerName
FROM Customers

update vw_Getcustomersdata_1 set CustomerName='Customer5' where CustomerID=4



Task : 1
------------
Create a table customers and create a view to fetch the data and update the data.

Create a stored procedure to update customer contact .


sp : for to insert
alter proc pc_InsertCustomers
(
@name varchar(40),
@contact varchar(40),
@country varchar(30),
@id int
)
as
 begin
   insert into Customers(CustomerID, CustomerName, ContactName, Country) values (@id,@name,@contact,@country)
 end