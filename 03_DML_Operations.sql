/*
==========================================================
SQL Workshop Assignment - Question 3
DML (Data Manipulation Language) Operations
==========================================================

Question:
Provide three SQL queries illustrating DML operations.

DML commands manipulate the data stored inside a table.

Main DML Operations Covered:

1. INSERT
2. UPDATE
3. DELETE

==========================================================
*/


USE WorkshopDB;

SELECT DATABASE();
CREATE TABLE Students (

    StudentID INT PRIMARY KEY,

    StudentName VARCHAR(100),

    Department VARCHAR(50),

    Age INT,

    Email VARCHAR(100)

);

DESCRIBE Students;

/*
INSERT is used to add one or more rows into a table.

Syntax:

INSERT INTO table_name
VALUES (...);

Multiple rows can also be inserted using a single INSERT statement.
*/

INSERT INTO Students
VALUES
(1,'Lumi','CSE',20,'lumi@gmail.com'),
(2,'Rahul','IT',21,'rahul@gmail.com'),
(3,'Priya','ECE',19,'priya@gmail.com');

SELECT * FROM Students;

/*
UPDATE changes existing values in one or more rows.

Syntax:

UPDATE table_name
SET column_name = value
WHERE condition;

Always use WHERE whenever required.
Without WHERE, every row gets updated.
*/

UPDATE Students
SET Department='Computer Science'
WHERE StudentID=1;

SELECT * FROM Students;

/*
DELETE removes records from a table.

Syntax:

DELETE FROM table_name
WHERE condition;

Without WHERE,
all records will be deleted.

Unlike TRUNCATE,
DELETE removes selected rows.
*/

DELETE FROM Students
WHERE StudentID=3;

SELECT * FROM Students;
