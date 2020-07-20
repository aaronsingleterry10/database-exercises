USE ad_lister_db;

INSERT INTO users (user_name, email, password)
VALUES ('johndoe', 'johndoe@email.com', 'helloworld'),
       ('ferndo', 'ferndo@email.com', 'hellneverhavemypassword'),
       ('a-aron', 'aaron@email.com', 'suhdude');

INSERT INTO ads (title, description)
VALUES ('boat', 'doesn''t sink'),
       ('motorcycle', 'missing handlebars'),
       ('car', 'needs blinking fluid');

INSERT INTO categories (name)
VALUES ('giveaway'),
       ('watercraft'),
       ('vehicles');

INSERT INTO ads_categories ()