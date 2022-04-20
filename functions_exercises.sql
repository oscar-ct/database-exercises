USE employees;

# /////////////////////    Problem #2   ////////////////////////////////////////
SELECT CONCAT(first_name, ' ', last_name) AS 'Employees with an ''e'' in their name' FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no;


# /////////////////////    Problem #3   ////////////////////////////////////////
SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;
SELECT * FROM employees WHERE birth_date LIKE '%-12-25';


# /////////////////////    Problem #4   ////////////////////////////////////////
SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) BETWEEN 1990 AND 1999;
SELECT * FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%';


# /////////////////////    Problem #5   ////////////////////////////////////////
SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) BETWEEN 1990 AND 1999 ORDER BY birth_date, hire_date DESC;
SELECT * FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%' ORDER BY birth_date, hire_date DESC;

# /////////////////////    Problem #6   ////////////////////////////////////////
SELECT first_name, last_name, DATEDIFF(NOW(), hire_date) AS 'Total days worked'  FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) BETWEEN 1990 AND 1999 ORDER BY hire_date DESC;



