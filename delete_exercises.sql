USE codeup_test_db;
-- Write SELECT statements for:
-- Albums released after 1991
SELECT name AS 'Albums after 1991' FROM albums WHERE release_date > 1991;
-- Albums with the genre 'disco'
SELECT name AS 'Disco Albums' WHERE genre = 'disco';
-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT name AS 'Albums from Nirvana' FROM albums WHERE artist = 'Nirvana';
-- Make sure to put appropriate captions before each SELECT.
-- Convert the SELECT statements to DELETE.
DELETE FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE artist = 'Nirvana';
-- Use the MySQL command line client to make sure your records really were removed.