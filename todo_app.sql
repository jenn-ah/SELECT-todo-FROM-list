DROP TABLE IF EXISTS tasks;

CREATE TABLE tasks (
  id SERIAL NOT NULL PRIMARY KEY,
  title varchar(255) NOT NULL,
  description text,
  created_at timestamp NOT NULL DEFAULT now(),
  updated_at timestamp,
  completed_at boolean NOT NULL DEFAULT false

);


INSERT INTO tasks (id, title, description, created_at, updated_at, completed_at)
VALUES (default, 'Study SQL', 'Complete this exercise', now(), now(), default);

INSERT INTO  tasks (title, description)
VALUES ('Study PostgreSQL', 'Read all the documentation');

SELECT title FROM tasks WHERE completed_at is false;

--SELECT title FROM tasks WHERE 

INSERT INTO tasks (title)
VALUES ('Study SQL');

SELECT title, description
FROM tasks
WHERE completed_at is false;

SELECT *
FROM tasks
ORDER BY created_at DESC;

INSERT INTO tasks (title, description)
VALUES ('mistake 1', 'a test entry');

INSERT INTO tasks (title, description)
VALUES ('mistake 2', 'another test entry');

INSERT INTO tasks (title, description)
VALUES ('third mistake', 'another test entry');


SELECT *
FROM tasks
WHERE title LIKE '%mistake%';

DELETE FROM tasks
WHERE title LIKE '%mistake%';

SELECT *
FROM tasks
ORDER BY title ASC;
