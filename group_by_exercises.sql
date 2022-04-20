USE employees;


#///////////////////  Problem #2  ////////////////////////////////
SELECT DISTINCT title FROM titles;

#///////////////////  Problem #3  ////////////////////////////////

SELECT last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' GROUP BY last_name ORDER BY last_name;

#///////////////////  Problem #4  ////////////////////////////////

SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' GROUP BY first_name, last_name ORDER BY last_name;

#///////////////////  Problem #5  ////////////////////////////////

SELECT DISTINCT last_name FROM employees WHERE last_name NOT LIKE '%qu%' AND last_name LIKE '%q%';

#///////////////////  Problem #6  ////////////////////////////////

SELECT COUNT(*), last_name FROM employees WHERE last_name NOT LIKE '%qu%' AND last_name LIKE '%q%' GROUP BY last_name;

#///////////////////  Problem #7  ////////////////////////////////

SELECT COUNT(*), gender FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;
