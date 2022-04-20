USE employees;


#/////////////////////////// Problem #2  ///////////////////////////
SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') ORDER BY first_name;

#/////////////////////////// Problem #3  ///////////////////////////
SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') ORDER BY first_name, last_name;

#/////////////////////////// Problem #4  ///////////////////////////
SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') ORDER BY last_name, first_name;

#/////////////////////////// Problem #5  ///////////////////////////
SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no; #ASC;

#/////////////////////////// Problem #6  ///////////////////////////
SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC;

