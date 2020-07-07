USE codeup_test_db;

-- Create a contacts migration file.
-- Use codeup_test_db.
DROP TABLE IF EXISTS contacts;
-- Create a table called contacts that incorporates the following:
CREATE TABLE IF NOT EXISTS contacts (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(125),
    email VARCHAR(125),
    phone CHAR(10);
    created DATETIME;
    updated DATETIME;
);
-- * Id - Integer
-- * Name - String
-- * Email - String
-- * Phone Number - String
-- * Created At - Datetime
-- * Updated At - Datetime