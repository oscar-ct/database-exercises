USE employees;

#///////////////////////  Problems 3-5  //////////////////////

SELECT CONCAT(emp_no, ' - ', last_name, ', ', last_name) AS full_name, birth_date AS DOB FROM employees LIMIT 10;