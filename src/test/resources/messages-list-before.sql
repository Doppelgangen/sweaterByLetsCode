DELETE FROM message;

INSERT INTO message (id, text, tag, user_id) VALUES
(1, 'first', 'my-tag', 1),
(2, 'second', 'more', 1),
(3, 'third', 'my-tag', 1),
(4, 'fourth', 'one more', 1);

ALTER sequence hibernate_sequence restart WITH 10;