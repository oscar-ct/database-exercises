
#/////////////////  Problem #1  ////////////////////
USE employees;

#/////////////////  Problem #2  ////////////////////
DESC employees;

#/////////////////  Problem #3  ////////////////////
USE codeup_test_db;

#/////////////////  Problem #4  ////////////////////

ALTER TABLE albums
    ADD UNIQUE name_key (name, artist);

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 49.2, 'Pop, post-disco, funk, rock');

#/////////////  (this shows name_key)  //////////////
SHOW INDEXES FROM albums;