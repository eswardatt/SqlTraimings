--In SQL, the GROUP BY clause is used to group rows from a table based on one or more columns. 
--It is often used in conjunction with aggregate functions like SUM, COUNT, AVG, MAX, or MIN to perform calculations on the grouped data. 
--Here are some examples of how to use the GROUP BY clause in SQL

-- Group by with single column
select dep.depName, count(emp.employeeEmail) as TotalEmployees from employees as emp
inner join departments as dep on emp.depid = dep.id 
group by dep.depName

-- Group by with multiple columns
select dep.Id,dep.depName, count(emp.employeeEmail) as TotalEmployees from employees as emp
inner join departments as dep on emp.depid = dep.id 
group by dep.depName,dep.Id order by dep.Id

--Group by with where condition
--Note : where condition should be apply before group by
select dep.Id,dep.depName, count(emp.employeeEmail) as TotalEmployees from employees as emp
inner join departments as dep on emp.depid = dep.id 
where dep.depName='ECE'
group by dep.depName,dep.Id order by dep.Id

--Group by with having
--Note : having clause should be apply after group by
select dep.Id,dep.depName, count(emp.employeeEmail) as TotalEmployees from employees as emp
inner join departments as dep on emp.depid = dep.id 
group by dep.depName,dep.Id
having dep.depName= 'CSE'
order by dep.Id

-- fetching department budget




insert into employees(employeeName,employeeEmail,depId) values 
('Divya','divya@gmail.com',5),
('Navya','navya@gmail.com',5),
('kiran','kiran@gmail.com',8),
('madhav','madhav@gmail.com',8)
;

select * from employees

insert into departments(depName) values 
('IS'),
('AI'),
('Mech'),
('CIVIL');

select * from departments;
update employees set salary=20000 where employeeId=1

alter table employees add salary money ;

-- fetching department budget for each department
select top 2 dep.depName,sum(emp.salary) as budget from departments as dep inner join employees as emp 
on dep.Id=emp.depId
group by dep.depName
order by budget desc;
--

