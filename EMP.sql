CREATE TABLE Department (
	ID int primary key,
	Name varchar(20),
	Location varchar(20),
)

CREATE TABLE Employee (
	ID int primary key,
	FirstName varchar(20),
	LastName varchar(20),
	SSN int,

	DeptID int,
	foreign key (DeptID) references Department(ID)
)

CREATE TABLE EmpDetails (
	ID int primary key,
	
	EmployeeID int,
	foreign key (EmployeeID) references Employee(ID),

	Salary money,
	Address_1 varchar(50),
	Address_2 varchar(50),
	City varchar(20),
	State varchar(20),
	Country varchar(20)
)

INSERT INTO Department (ID, Name, Location)
VALUES 
(1, 'Marketing', 'Austin'), 
(2, 'Test', 'Philadelphia'),
(3, 'Manufacturing', 'Orlando')

INSERT INTO Employee (ID, FirstName, LastName, SSN, DeptID)
VALUES
(1, 'Alice', 'Smith', 123456789, 1),
(2, 'Bob', 'Jones', 398481229, 3),
(3, 'Charlotte', 'Atkins', 123456789, 2),
(4, 'Tina', 'Smith', 98720028, 1),
(5, 'Test', 'Employee', 9427551, 1)


INSERT INTO EmpDetails
VALUES 
(1, 1, 65000, '12126 Guadalupe St', '', 'Austin', 'TX', 'USA'),
(2, 2, 45000, '8823 Mardi Gras Blvd', '', 'New Orleans', 'LA', 'USA'),
(3, 3, 70000, '4800 Generator Rd.', '', 'Sparks', 'NV', 'USA'),
(4, 4, 58000, '1001 S. Center St.', 'Apt A', 'Arlington', 'TX', 'USA'),
(5, 5, 100000, '100 CEO St.', '', 'Austin', 'TX', 'USA')
