USE codeup_test_db;

SHOW TABLES;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(100),
    name         VARCHAR(100),
    release_date INT UNSIGNED,
    genre        VARCHAR(250),
    sales        FLOAT,
    PRIMARY KEY (id),
    UNIQUE (artist, name)
);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUEs ('Meat Loaf', 'Bat Out of Hell', 1977, 'Hard rock/Progressive rock', 21.5),
       ('Eagles', 'Their Greatest Hits (1971–1975)', 1976, 'Rock/Soft rock/Folk rock', 32.2);

SELECT * FROM albums;
