# Question 1: SQL Execution Flow
SQL (Structured Query Language) is used to communicate with relational databases. Although a SQL query is written in a particular order, the database engine executes it in a different logical sequence. Understanding this execution flow helps in writing efficient and optimized SQL queries.

# General SQL Query

```sql
SELECT column_name
FROM table_name
JOIN another_table
ON table_name.id = another_table.id
WHERE condition
GROUP BY column_name
HAVING condition
ORDER BY column_name
LIMIT number;
```

Although we write the query in the above order, SQL processes it differently.

---

# SQL Execution Flow

The logical execution order of a SQL query is:

```
FROM
    ↓
JOIN
    ↓
ON
    ↓
WHERE
    ↓
GROUP BY
    ↓
HAVING
    ↓
SELECT
    ↓
DISTINCT
    ↓
ORDER BY
    ↓
LIMIT
```

---

# Step 1: FROM

The database first identifies the table from which the data will be retrieved.

Example:

```sql
SELECT *
FROM Students;
```

Here, SQL first looks for the **Students** table.

---

# Step 2: JOIN

If multiple tables are involved, SQL combines them using JOIN operations.

Example:

```sql
SELECT *
FROM Students
INNER JOIN Departments
ON Students.dept_id = Departments.dept_id;
```

The database combines matching records from both tables.

---

# Step 3: ON

The ON clause specifies the condition used while joining two tables.

Example:

```sql
ON Students.dept_id = Departments.dept_id
```

SQL compares values from both tables to find matching rows.

---

# Step 4: WHERE

The WHERE clause filters rows before grouping.

Example:

```sql
SELECT *
FROM Students
WHERE age > 18;
```

Only students older than 18 are selected.

---

# Step 5: GROUP BY

Rows having the same value are grouped together.

Example:

```sql
SELECT department,
COUNT(*)
FROM Students
GROUP BY department;
```

Students are grouped according to their department.

---

# Step 6: HAVING

HAVING filters grouped data.

Example:

```sql
SELECT department,
COUNT(*)
FROM Students
GROUP BY department
HAVING COUNT(*) > 5;
```

Only departments having more than five students are displayed.

---

# Step 7: SELECT

After filtering and grouping, SQL selects the required columns.

Example:

```sql
SELECT name, age
FROM Students;
```

Only the Name and Age columns are returned.

---

# Step 8: DISTINCT

DISTINCT removes duplicate records.

Example:

```sql
SELECT DISTINCT department
FROM Students;
```

Only unique department names are displayed.

---

# Step 9: ORDER BY

ORDER BY sorts the final result.

Example:

```sql
SELECT *
FROM Students
ORDER BY age DESC;
```

Students are arranged from highest age to lowest.

---

# Step 10: LIMIT

LIMIT restricts the number of rows returned.

Example:

```sql
SELECT *
FROM Students
LIMIT 5;
```

Only the first five records are displayed.

---

# Why is SQL Execution Flow Important?

Understanding SQL execution flow helps developers:

* Write optimized queries.
* Reduce execution time.
* Improve database performance.
* Avoid logical mistakes.
* Debug SQL queries more efficiently.

---