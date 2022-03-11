CREATE TABLE customer
(
    id   VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    primary key (id)
) ENGINE = InnoDb;

SELECT *
FROM customer;

DELETE
FROM customer;

ALTER TABLE customer
    ADD COLUMN email      VARCHAR(100),
    ADD COLUMN balance    INT       DEFAULT 0,
    ADD COLUMN rating     DOUBLE    DEFAULT 0,
    ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ADD COLUMN birth_date DATE,
    ADD COLUMN married    BOOLEAN   DEFAULT false;

INSERT INTO customer(id, name, email, balance, rating, birth_date, married)
VALUES ('master', 'Master', 'master@master.com', 1000000, 90.0, '1999-10-10', false),
       ('zero', 'Zero', 'zero@zero.com', 1000000, 90.0, '1999-10-10', false),
       ('one', 'One', 'one@one.com', 1000000, 90.0, '1999-10-10', false);

UPDATE customer
SET email      = NULL,
    birth_date = NULL
WHERE id = 'one';

CREATE TABLE user
(
    username VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    primary key (username)
) ENGINE = InnoDb;

SELECT *
FROM user;

INSERT INTO user(username, password)
VALUES ('admin', 'admin');

CREATE TABLE comments
(
    id  INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    comment TEXT,
    primary key (id)
) ENGINE = InnoDb;

SELECT *
FROM comments;