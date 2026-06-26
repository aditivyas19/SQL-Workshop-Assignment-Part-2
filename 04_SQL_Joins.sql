USE WorkshopDB;
SELECT DATABASE();
CREATE TABLE Employees(

    EmployeeID INT PRIMARY KEY,

    EmployeeName VARCHAR(50),

    DepartmentID INT

);

DESCRIBE Employees;

CREATE TABLE Departments(

    DepartmentID INT PRIMARY KEY,

    DepartmentName VARCHAR(50)

);

DESCRIBE Departments;

INSERT INTO Employees
VALUES
(101, 'Aman', 1),
(102, 'Lumi', 2),
(103, 'Rahul', 3),
(104, 'Priya', 5);

-- Display Employees table

SELECT * FROM Employees;


INSERT INTO Departments
VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

-- Display Departments table

SELECT * FROM Departments;


SELECT
    Employees.EmployeeID,
    Employees.EmployeeName,
    Employees.DepartmentID,
    Departments.DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;


SELECT
    Employees.EmployeeID,
    Employees.EmployeeName,
    Employees.DepartmentID,
    Departments.DepartmentName
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;


SELECT
    Employees.EmployeeID,
    Employees.EmployeeName,
    Departments.DepartmentID,
    Departments.DepartmentName
FROM Employees
RIGHT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;


SELECT
    Employees.EmployeeID,
    Employees.EmployeeName,
    Employees.DepartmentID,
    Departments.DepartmentName
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID

UNION

SELECT
    Employees.EmployeeID,
    Employees.EmployeeName,
    Departments.DepartmentID,
    Departments.DepartmentName
FROM Employees
RIGHT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;