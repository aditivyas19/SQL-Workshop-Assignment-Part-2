/*
==========================================================
SQL Workshop Assignment - Question 2
DDL Operations
==========================================================

Question:
Write five SQL queries demonstrating DDL operations.

DDL means Data Definition Language.
DDL commands are used to create, change, or delete the structure of database objects.
==========================================================
*/

USE WorkshopDB;
SELECT DATABASE();

-- ======================================================
-- Query 1: CREATE TABLE
-- Purpose: Creates a new table named Students
-- ======================================================

CREATE TABLE Students (

    StudentID INT PRIMARY KEY,

    StudentName VARCHAR(50),

    Department VARCHAR(50),

    Age INT

);

-- Display the structure of Students table

DESCRIBE Students;

-- ======================================================
-- Query 2: ALTER TABLE with ADD
-- Purpose: Adds a new column to an existing table
-- ======================================================

ALTER TABLE Students
ADD Email VARCHAR(100);

-- Display updated table structure after adding Email column

DESCRIBE Students;

-- ======================================================
-- Query 3: ALTER TABLE with MODIFY
-- Purpose: Changes the datatype or size of an existing column
-- ======================================================

ALTER TABLE Students
MODIFY StudentName VARCHAR(100);

-- Display updated table structure after modifying StudentName

DESCRIBE Students;

-- ======================================================
-- Extra Explanation: What can we do using ALTER TABLE?
-- ======================================================

/*
ALTER TABLE is used to change the structure of an existing table.

Using ALTER TABLE, we can:

1. ADD a new column

Example:
ALTER TABLE Students
ADD PhoneNumber VARCHAR(15);

2. MODIFY an existing column

Example:
ALTER TABLE Students
MODIFY Age SMALLINT;

3. DROP an existing column

Example:
ALTER TABLE Students
DROP COLUMN Email;

4. RENAME a column

Example:
ALTER TABLE Students
RENAME COLUMN StudentName TO FullName;

5. CHANGE column name and datatype together

Example:
ALTER TABLE Students
CHANGE StudentName FullName VARCHAR(100);

6. ADD constraints

Example:
ALTER TABLE Students
ADD CONSTRAINT unique_email UNIQUE (Email);

7. DROP constraints or indexes

Example:
ALTER TABLE Students
DROP INDEX unique_email;
*/

-- ======================================================
-- Can ALTER TABLE be used on a combination of columns?
-- ======================================================

/*
Yes, ALTER TABLE can be used on a combination of columns.

This means we can add, modify, or drop more than one column in a single ALTER TABLE command.

Example of adding multiple columns:

ALTER TABLE Students
ADD Address VARCHAR(150),
ADD City VARCHAR(50),
ADD PinCode INT;

Example of modifying multiple columns:

ALTER TABLE Students
MODIFY Department VARCHAR(100),
MODIFY Age SMALLINT;

Example of dropping multiple columns:

ALTER TABLE Students
DROP COLUMN Address,
DROP COLUMN City,
DROP COLUMN PinCode;

Note:
The exact syntax can vary depending on the database system.
The examples above follow MySQL syntax.
*/

-- ======================================================
-- Insert sample data before TRUNCATE
-- Purpose: To show that TRUNCATE removes all records
-- ======================================================

INSERT INTO Students
VALUES
(1,'Lumi','CSE',20,'lumi@gmail.com');

-- Display records before TRUNCATE

SELECT * FROM Students;

-- ======================================================
-- Query 4: TRUNCATE TABLE
-- Purpose: Removes all records from the table but keeps structure
-- ======================================================

TRUNCATE TABLE Students;

-- Display records after TRUNCATE

SELECT * FROM Students;

-- Display structure after TRUNCATE to show table still exists

DESCRIBE Students;

-- ======================================================
-- Query 5: DROP TABLE
-- Purpose: Deletes the complete table from the database
-- ======================================================

DROP TABLE Students;

-- Check tables after dropping Students table

SHOW TABLES;