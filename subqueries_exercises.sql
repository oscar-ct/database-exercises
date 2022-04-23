USE employees;

# ////////////////////////////  Problem # 1  //////////////////////////////////

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows

SELECT CONCAT(first_name, ' ', last_name) AS employee_name, hire_date
FROM employees WHERE hire_date IN (
    SELECT hire_date FROM employees WHERE emp_no = 101010
    );


# ////////////////////////////  Problem # 2  //////////////////////////////////

# Find all the titles held by all employees with the first name Aamod. 314 total titles, 6 unique titles
SELECT title
FROM titles WHERE emp_no IN (
    SELECT emp_no FROM employees e WHERE first_name = 'Aamod'
    );
# Results: 314 total titles
SELECT DISTINCT title
FROM titles WHERE emp_no IN (
    SELECT emp_no FROM employees e WHERE first_name = 'Aamod'
    );
# Results: 6 unique titles


# ////////////////////////////  Problem # 3  //////////////////////////////////

# Find all the current department managers that are female.
/*
+------------+------------+
| first_name | last_name  |
+------------+------------+
| Isamu      | Legleitner |
| Karsten    | Sigstam    |
| Leon       | DasSarma   |
| Hilary     | Kambil     |
+------------+------------+
 */

SELECT first_name, last_name AS employee_name FROM employees WHERE emp_no IN (
    SELECT emp_no FROM dept_manager WHERE YEAR(to_date) = 9999 AND gender = 'F'
    );

# ////////////////////////////  BONUS 1  //////////////////////////////////

# Find all the department names that currently have female managers.
/*
+-----------------+
| dept_name       |
+-----------------+
| Development     |
| Finance         |
| Human Resources |
| Research        |
+-----------------+
 */

SELECT dept_name FROM departments WHERE dept_no IN (
    SELECT dept_no FROM dept_manager WHERE YEAR(to_date) = 9999 AND emp_no IN (
        SELECT emp_no FROM employees WHERE gender = 'F'
        )
    );

# ////////////////////////////  BONUS 2  //////////////////////////////////

# Find the first and last name of the employee with the highest salary.
/*
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Tokuyasu   | Pesch     |
+------------+-----------+
 */

SELECT first_name, last_name FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM salaries WHERE salary = 158220
    );

SELECT first_name, last_name FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM salaries WHERE salary IN (
        SELECT MAX(salary) FROM salaries
        )
    );