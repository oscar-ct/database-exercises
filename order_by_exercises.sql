USE employees;


SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') ORDER BY first_name;

SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') ORDER BY first_name, last_name;

SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') ORDER BY last_name, first_name;

SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC;


# SELECT * FROM employees WHERE last_name LIKE 'E%';
# SELECT * FROM employees WHERE last_name LIKE '%q%';
# SELECT DISTINCT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';
# SELECT * FROM employees WHERE last_name NOT LIKE '%qu%' AND last_name LIKE '%q%'