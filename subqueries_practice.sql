USE employees;


SELECT emp_no FROM dept_manager;

SELECT birth_date FROM employees WHERE emp_no IN (
    SELECT emp_no FROM dept_manager
    );


# Selecting all current manager's birthdays and their first and last name
SELECT CONCAT(first_name, ' ', last_name) AS Managers, birth_date
FROM employees WHERE emp_no IN (
    SELECT emp_no FROM dept_manager WHERE YEAR(dept_manager.to_date) = 9999
    );



USE codeup_test_db;

SELECT * FROM preferences;


INSERT INTO preferences (person_id, album_id) VALUES ((SELECT id FROM persons WHERE first_name = 'Tareq'), (SELECT id FROM albums WHERE name = 'Rumours'));


#//// checking the table for updates
SELECT first_name, name FROM persons JOIN preferences p on persons.id = p.person_id JOIN albums a on p.album_id = a.id WHERE first_name = 'Tareq';


UPDATE preferences SET album_id = (SELECT id FROM albums WHERE name = 'Led Zeppelin IV')
WHERE album_id = (SELECT id FROM albums WHERE name = 'Rumours')
AND person_id = (SELECT id FROM persons WHERE first_name = 'Tareq');


#//// checking the table for updates
SELECT first_name, name FROM persons JOIN preferences p on persons.id = p.person_id JOIN albums a on p.album_id = a.id WHERE first_name = 'Tareq';