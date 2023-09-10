-- Create the Employees table
CREATE TABLE EmployeesSubQuery (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Insert sample data into the Employees table
INSERT INTO EmployeesSubQuery (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
    (1, 'John', 'Doe', 'HR', 50000.00),
    (2, 'Jane', 'Smith', 'Marketing', 55000.00),
    (3, 'Alice', 'Johnson', 'Engineering', 60000.00),
    (4, 'Bob', 'Williams', 'HR', 52000.00),
    (5, 'Eva', 'Brown', 'Marketing', 56000.00);

	select * from EmployeesSubQuery

	select Salary from EmployeesSubQuery where Salary > AVG(Salary)
	SELECT FirstName, salary FROM EmployeesSubQuery WHERE salary > (SELECT AVG(salary) FROM EmployeesSubQuery);

	SELECT *
	FROM Customers 
	WHERE CustomerID IN (SELECT distinct  CustomerID FROM orders);
	-- to remove duplicates from list use Distinct
	select * from orders where CustomerID in (1,2) and OrderID=101

	--functions
	--AVg,count,max,min,getdate()......n

select Upper('hello');

select len('hello world');

create function CalculateCircleArea(@radius float)
returns float
as
 begin
     declare @area float;
	 set @area=3.14159 * POWER(@radius,2);
	 return @area
 end
 declare @circleradius float;
 set @circleradius = 5.2
 select dbo.CalculateCircleArea(@circleradius) as circle_radius;

 create function GetFullName(@fname varchar(20),@lname varchar(20))
 returns varchar(40)
  as
  begin
   declare @fullname varchar(40) 
   set @fullname = concat(@fname,' ',@lname);
   return @fullname
   end

  select concat('fname', 'lname') as name


