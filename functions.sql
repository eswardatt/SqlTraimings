-- Create a sample table named 'SampleData'
CREATE TABLE SampleData (
    ID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    BirthDate DATE,
    Salary DECIMAL(10, 2),
    ProductName NVARCHAR(100),
    Quantity INT
);

-- Insert sample data into the 'SampleData' table
INSERT INTO SampleData (FirstName, LastName, BirthDate, Salary, ProductName, Quantity)
VALUES
    ('John', 'Doe', '1980-05-15', 50000.50, 'Widget', 10),
    ('Jane', 'Smith', '1990-02-20', 60000.75, 'Gadget', 5),
    ('Robert', 'Johnson', '1975-08-10', 75000.25, 'Tool', 8),
    ('Emily', 'Davis', '1995-12-05', 45000.00, 'Widget', 15),
    ('Michael', 'Brown', '1988-04-30', 55000.90, 'Gadget', 3),
    ('Sarah', 'Wilson', '1992-07-22', 68000.60, 'Tool', 7);
	--concat and len functions
	--String functions manipulate and process text data.

	select CONCAT( FirstName,' ',LastName) as FullName, len(CONCAT( FirstName,' ',LastName)) as NameLength from SampleData;

	select SQRT(25)

	-- conversion and cast 
	select CAST( GETDATE() as date) as dateOnly
	select CAST( GETDATE() as time) as dateOnly

	select CONVERT(date,GETDATE()) as dateOnly
	select YEAR(GETDATE()) as [year]
	select month(GETDATE()) as [month]




	isnull();

	select isnull(ProductName,'NA') from SampleData

	update SampleData set ProductName = null where id = 6

	INSERT INTO Orders (OrderID, OrderDate, ShippingDate)
VALUES
    (1, '2023-09-01', '2023-09-10'),
    (2, '2023-09-02', NULL),
    (3, '2023-09-03', '2023-09-11'),
    (4, '2023-09-04', NULL),
    (5, '2023-09-05', '2023-09-12');

	select orderId,Orderdate,shippingdate from Orders
	
	select orderId,coalesce( Orderdate,shippingdate, '2023-05-10'),Orderdate,shippingdate from Orders

	-- table valued functions
	create function fetchOrdersById(@orderid int)
	returns table
	as
	return(
	select * from orders where orderId = @orderid
	);

	select * from dbo.fetchOrdersById(1)


