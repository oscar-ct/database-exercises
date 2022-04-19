CREATE DATABASE IF NOT EXISTS blog_app;

USE blog_app;

CREATE TABLE IF NOT EXISTS users  (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    job_title VARCHAR(100),
    address VARCHAR(200),
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)

    );

CREATE TABLE IF NOT EXISTS posts   (

    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(100),
    body TEXT,
    PRIMARY KEY (id)

);

CREATE TABLE IF NOT EXISTS post_labels  (
    post_id INT UNSIGNED NOT NULL,
    label_id INT UNSIGNED NOT NULL
);

    CREATE TABLE IF NOT EXISTS labels   (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name CHAR(25) NOT NULL,
    primary key (id)

);


INSERT INTO  users (name, email, job_title, address)
VALUES ('Oscar Castro', 'oscar.a.castro818@gmail.com', 'Web Developer', '16505 Lookout Hollow');

INSERT INTO posts (user_id, title, body)
VALUES (1, 'My first post', 'lots of text');


INSERT INTO labels (name) VALUES ('Awesome');
INSERT INTO labels (name) VALUES ('The worst');
INSERT INTO labels (name) VALUES ('Ok');

INSERT INTO post_labels (post_id, label_id) VALUES (1,1);
INSERT INTO post_labels (post_id, label_id) VALUES (1,2);
INSERT INTO post_labels (post_id, label_id) VALUES (1,3);



DESC users;

