-- Section A: SELECT, WHERE, ORDER BY, GROUP BY
SELECT * FROM employees;
SELECT * FROM employees WHERE department = 'HR';
SELECT * FROM employees ORDER BY salary DESC;
SELECT department, AVG(salary) AS average_salary FROM employees GROUP BY department;

-- Section B: JOINs
SELECT e.name AS employee_name, e.department, d.manager
FROM employees e
JOIN departments d ON e.department = d.name;

-- Section C: Subqueries
SELECT name, salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

-- Section D: Views
CREATE VIEW high_earners AS
SELECT name, department, salary FROM employees WHERE salary > 60000;
SELECT * FROM high_earners;

-- Section E: Aggregate Functions
SELECT department, SUM(salary) AS total_salary FROM employees GROUP BY department;
SELECT department, COUNT(*) AS employee_count FROM employees GROUP BY department;

-- Section F: Indexes
CREATE INDEX idx_department ON employees(department);
CREATE INDEX idx_salary ON employees(salary);
