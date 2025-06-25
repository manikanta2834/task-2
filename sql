CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT,
    salary INTEGER,
    hire_date DATE,
    is_active BOOLEAN DEFAULT 1
);
-- Insert complete row
INSERT INTO employees (id, name, department, salary, hire_date, is_active)
VALUES (1, 'John Doe', 'IT', 75000, '2020-05-15', 1);

-- Insert with NULL values
INSERT INTO employees (id, name, department, salary)
VALUES (2, 'Jane Smith', 'HR', NULL);

-- Insert using DEFAULT values
INSERT INTO employees (id, name, department)
VALUES (3, 'Bob Johnson', 'Finance');

-- Insert multiple rows at once
INSERT INTO employees (id, name, department, salary)
VALUES 
    (4, 'Alice Brown', 'Marketing', 68000),
    (5, 'Mike Davis', NULL, 72000);
    -- Update a single row
UPDATE employees
SET salary = 80000
WHERE id = 1;

-- Update multiple rows
UPDATE employees
SET department = 'Operations'
WHERE department IS NULL;

-- Update with NULL
UPDATE employees
SET hire_date = NULL
WHERE id = 5;
-- Delete specific rows
DELETE FROM employees
WHERE is_active = 0;

-- Delete with NULL condition
DELETE FROM employees
WHERE hire_date IS NULL;

-- Use COALESCE to handle NULL
SELECT name, COALESCE(department, 'Not Assigned') AS department
FROM employees;

-- Use IS NULL/IS NOT NULL
SELECT * FROM employees WHERE salary IS NULL;
SELECT * FROM employees WHERE department IS NOT NULL;
