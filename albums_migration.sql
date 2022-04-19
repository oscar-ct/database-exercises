USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date INT UNSIGNED NOT NULL,
    sales DOUBLE UNSIGNED NOT NULL,
    genre VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)

);


# INSERT INTO albums (artist, name, release_date, sales, genre)
# VALUES ('Dane', 'Codeup', 2022, 1.0, 'Instructor');
# INSERT INTO albums (artist, name, release_date, sales, genre)
# VALUES ('Javier', 'Codeup', 2022, 1.2, 'Instructor');
# INSERT INTO albums (artist, name, release_date, sales, genre)
# VALUES ('Justin', 'Codeup', 2022, 1.3, 'Instructor');
# INSERT INTO albums (artist, name, release_date, sales, genre)
# VALUES ('Jay', 'Codeup', 2022, 1.4, 'Instructor');
# INSERT INTO albums (artist, name, release_date, sales, genre)
# VALUES ('Trevor', 'Codeup', 2022, 1.5, 'Fellow');
#
#
# INSERT INTO albums (artist, name, release_date, sales, genre)
# VALUES ('Oscar', 'Codeup', 2022, 2.0, 'Student'),
#        ('Nathan', 'Codeup', 2022, 2.1, 'Student'),
#        ('Chris', 'Codeup', 2022, 2.2, 'Student'),
#        ('Matt', 'Codeup', 2022, 2.3, 'Student'),
#        ('John', 'Codeup', 2022, 2.4, 'Student');
#
#
#
# SELECT * FROM albums WHERE release_date > 2021;
#
# SELECT artist FROM albums WHERE sales between 1.2 and 1.4;
#
# UPDATE albums SET release_date = 2021
# WHERE artist = 'Dane';

# DELETE FROM albums WHERE release_date > 2022;
# DELETE FROM albums;

# TRUNCATE albums;


DESC albums;
SHOW CREATE TABLE albums;
