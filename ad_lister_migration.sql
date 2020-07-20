CREATE DATABASE IF NOT EXISTS ad_lister_db;

USE ad_lister_db;

DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS ads;

CREATE TABLE IF NOT EXISTS ads (
    id  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description VARCHAR(250) NOT NULL,
    FOREIGN KEY (id)
    REFERENCES users(id)
);

DROP TABLE IF EXISTS categories;

CREATE TABLE IF NOT EXISTS categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS ads_categories;

CREATE TABLE IF NOT EXISTS ads_categories (
    ads_id INT UNSIGNED NOT NULL PRIMARY KEY,
    categories_id INT UNSIGNED NOT NULL PRIMARY KEY,
    FOREIGN KEY (ads_id) REFERENCES ads(id),
    FOREIGN KEY (categories_id) REFERENCES categories(id)
);



