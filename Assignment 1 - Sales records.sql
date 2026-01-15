
create database assignments;

use assignments;

--Salesman table creation

CREATE TABLE Salesman (
SalesmanId INT,
Name VARCHAR(255),
Commission DECIMAL(10, 2),
City VARCHAR(255),
Age INT
);


--Salesman table record insertion

INSERT INTO Salesman (SalesmanId, Name, Commission, City, Age)
VALUES
(101, 'Joe', 50, 'California', 17),
(102, 'Simon', 75, 'Texas', 25),
(103, 'Jessie', 105, 'Florida', 35),
(104, 'Danny', 100, 'Texas', 22),
(105, 'Lia', 65, 'New Jersey', 30);

--Customer table creation

CREATE TABLE Customer (
SalesmanId INT,
CustomerId INT,
CustomerName VARCHAR(255),
PurchaseAmount INT,
);

--Customer table record insertion

INSERT INTO Customer (SalesmanId, CustomerId, CustomerName, PurchaseAmount)
VALUES
(101, 2345, 'Andrew', 550),
(103, 1575, 'Lucky', 4500),
(104, 2345, 'Andrew', 4000),
(107, 3747, 'Remona', 2700),
(110, 4004, 'Julia', 4545);


--Orders table Creation

CREATE TABLE Orders (
OrderId int, 
CustomerId int, 
SalesmanId int, 
Orderdate Date, 
Amount money)


--Orders table record insertion

INSERT INTO Orders Values
(5001,2345,101,'2021-07-01',550),
(5003,1234,105,'2022-02-15',1500)

select * from orders;


--1. Insert a new record in your Orders table

insert into orders values (5005, 1575, 110, '2025-09-10', 1100) 

select * from orders;

--2. Add Primary key constraint for SalesmanId column in Salesman table. Add default
--constraint for City column in Salesman table. Add Foreign key constraint for SalesmanId
--column in Customer table. Add not null constraint in Customer_name column for the
--Customer table

alter table salesman
alter column salesmanID int not null;


alter table salesman
add constraint PK_Salesman PRIMARY KEY (SalesmanId);


alter table salesman
add constraint df_salesman_city default 'unknown' for city;



SELECT DISTINCT SalesmanId
FROM Customer
WHERE SalesmanId NOT IN (SELECT SalesmanId FROM Salesman);

INSERT INTO Salesman (SalesmanId, Name, City, Commission)
VALUES 
    (110, 'John Doe', 'Bengaluru', 0.10),
    (107, 'Jane Smith', 'Mumbai', 0.12);

alter table customer
add constraint FK_Customer_Salesman
foreign key (SalesmanId) references salesman(SalesmanId);



alter table customer
alter column CustomerName varchar(255) not null; 


--3. Fetch the data where the Customer’s name is ending with ‘N’ also get the purchase
--amount value greater than 500.

select * from customer
where CustomerName like '%N'
and PurchaseAmount > 500;  --if both conditions need to be met, which the question asks;


select * from customer
where CustomerName like '%N'
and PurchaseAmount > 500; --if only one condition needs to be met


--4. Using SET operators, retrieve the first result with unique SalesmanId values from two
--tables, and the other result containing SalesmanId with duplicates from two tables.

select salesmanId from salesman
union
select salesmanId from customer;


select salesmanId from salesman
intersect
select salesmanId from customer;


--5. Display the below columns which has the matching data.
--Orderdate, Salesman Name, Customer Name, Commission, and City which has the
--range of Purchase Amount between 500 to 1500.

select
     c.orderdate,
	 s.name,
	 c.customername,
	 s.commisson,
	 s.city
from 
     customer c
join
     salesman s on c.salesmanId = s.salesmanId
where
     c.purchaseamount vetween 500 and 1500;


--6. Using right join fetch all the results from Salesman and Orders table.

select * from orders o right join salesman s on o.salesmanId = s.salesmanId;


