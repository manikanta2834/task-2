# task-2
sql internship
# SQL Developer Internship - Task 2

**Data Insertion and Handling Nulls**

## 📌 Task Overview
Practice inserting, updating, and deleting data while handling NULL values in SQL.

## 🛠️ Technologies Used
- DB Fiddle (or SQLiteStudio)
- SQL (SQLite flavor)

## 📂 Repository Structure
```
[Insert the folder structure shown above]
```

## 🚀 How to Run
1. **Using DB Fiddle**:
   - Go to [db-fiddle.com](https://www.db-fiddle.com/)
   - Paste contents of `scripts/setup.sql` to create tables
   - Run `inserts.sql`, then `updates.sql`, then `deletes.sql`

2. **Using SQLiteStudio**:
   ```bash
   sqlite3 task2.db
   .read scripts/setup.sql
   .read scripts/inserts.sql
   ```

## 📝 Key Features Demonstrated
- Proper NULL handling with `IS NULL`, `COALESCE`
- Complex INSERT with multiple rows
- Conditional UPDATE statements
- Transaction-safe DELETE operations

## 🖼️ Screenshots
**Schema (MySQL v5.7)**

    

---

**Query #1**

    CREATE TABLE employees (
        id INTEGER PRIMARY KEY,
        name TEXT NOT NULL,
        department TEXT,
        salary INTEGER,
        hire_date DATE,
        is_active BOOLEAN DEFAULT 1
    );

There are no results to be displayed.

---
**Query #2**

    
    -- Insert complete row
    INSERT INTO employees (id, name, department, salary, hire_date, is_active)
    VALUES (1, 'John Doe', 'IT', 75000, '2020-05-15', 1);

There are no results to be displayed.

---
**Query #3**

    
    
    -- Insert with NULL values
    INSERT INTO employees (id, name, department, salary)
    VALUES (2, 'Jane Smith', 'HR', NULL);

There are no results to be displayed.

---
**Query #4**

    
    
    -- Insert using DEFAULT values
    INSERT INTO employees (id, name, department)
    VALUES (3, 'Bob Johnson', 'Finance');

There are no results to be displayed.

---
**Query #5**

    
    
    -- Insert multiple rows at once
    INSERT INTO employees (id, name, department, salary)
    VALUES 
        (4, 'Alice Brown', 'Marketing', 68000),
        (5, 'Mike Davis', NULL, 72000);

There are no results to be displayed.

---
**Query #6**

    
        -- Update a single row
    UPDATE employees
    SET salary = 80000
    WHERE id = 1;

There are no results to be displayed.

---
**Query #7**

    
    
    -- Update multiple rows
    UPDATE employees
    SET department = 'Operations'
    WHERE department IS NULL;

There are no results to be displayed.

---
**Query #8**

    
    
    -- Update with NULL
    UPDATE employees
    SET hire_date = NULL
    WHERE id = 5;

There are no results to be displayed.

---
**Query #9**

    
    -- Delete specific rows
    DELETE FROM employees
    WHERE is_active = 0;

There are no results to be displayed.

---
**Query #10**

    
    
    -- Delete with NULL condition
    DELETE FROM employees
    WHERE hire_date IS NULL;

There are no results to be displayed.

---
**Query #11**

    
    
    -- Use COALESCE to handle NULL
    SELECT name, COALESCE(department, 'Not Assigned') AS department
    FROM employees;

| name     | department |
| -------- | ---------- |
| John Doe | IT         |

---
**Query #12**

    
    
    -- Use IS NULL/IS NOT NULL
    SELECT * FROM employees WHERE salary IS NULL;

There are no results to be displayed.

---
**Query #13**

    
    SELECT * FROM employees WHERE department IS NOT NULL;

| id  | name     | department | salary | hire_date  | is_active |
| --- | -------- | ---------- | ------ | ---------- | --------- |
| 1   | John Doe | IT         | 80000  | 2020-05-15 | 1         |

---

[View on DB Fiddle](https://www.db-fiddle.com/)



## 📚 Learning Resources
- [SQLite Documentation](https://www.sqlite.org/docs.html)
- [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)
