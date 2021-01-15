DELETE FROM user_role;
DELETE FROM usr;

INSERT INTO usr (id, active, password, username) VALUES
(1, true, '$2a$08$ay7qXKdJWSagyK9tzaSJ4uJhOOY2N4wTjNy.ZYw2HK.K2nCrQGxvS', 'Dop'),
(2, true, '$2a$08$ay7qXKdJWSagyK9tzaSJ4uJhOOY2N4wTjNy.ZYw2HK.K2nCrQGxvS', 'Jack');

INSERT INTO user_role (user_id, roles) VALUES
(1, 'USER'), (1, 'ADMIN'),
(2, 'USER');
