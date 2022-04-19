USE codeup_test_db;

SELECT name, release_date AS 'Albums released after 1991' FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;


SELECT name, genre AS 'Albums with the genre ''disco''' FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';

SELECT name, artist AS 'Albums by Whitney' FROM albums WHERE artist = 'Whitney';
DELETE FROM albums WHERE artist = 'Whitney';



