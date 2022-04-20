USE employees;

#////////////////////////  Problem #2  ///////////////////////////////
SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;
#////////////////////////  Problem #3  ///////////////////////////////
SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5;

#////////////////////////  Problem #4  ///////////////////////////////
SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 4 OFFSET 46;

#////////////////////////  Problem #4  ///////////////////////////////
SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 45;