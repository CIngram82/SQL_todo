-- CREATE TABLE todo (
--   id SERIAL PRIMARY KEY,
--   title VARCHAR(255) NOT NULL,
--   details VARCHAR(1000) NULL,
--   priority INTEGER NOT NULL DEFAULT '1',
--   created_at TIMESTAMP NOT NULL,
--   completed_at TIMESTAMP NULL
--   ); I did this already in Terminal

INSERT INTO todo (title,details, priority, created_at) VALUES ('Make coffee', '18oz coffee, 2oz heavy cream, .5oz flavor', 1, NOW());

INSERT INTO todo (title, details, priority, created_at, completed_at) VALUES
('feed cats in the morning', '1/2 cup of cat food at 9am', 3,'2016-06-22 19:10:25', NOW() ),
('feed cats at night', '1/2 cup of cat food at 9pm', 3, NOW(), NULL),
('Pack lunch', 'salad, main course, and 2 snacks', 2, NOW(), NULL),
('Pack bookbag', 'Macbook, charger, notebook, and pens', 1, NOW(), NULL);

SELECT * FROM todo WHERE completed_at IS NULL;

SELECT * FROM todo WHERE priority >= 1 ORDER BY priority DESC; -- Added order by and desc for fun

UPDATE todo SET completed_at = NOW() WHERE id = 3;

DELETE FROM todo WHERE completed_at IS NOT NULL;

SELECT * FROM todo;



-- In a file called todo.sql:
--
-- Write the CREATE TABLE statement to make this table.
-- Write INSERT statements to insert five todos into this table, with one of them completed.
-- Write a SELECT statement to find all incomplete todos.
-- Write a SELECT statement to find all todos with a prioity above 1.
-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.

-- Write a DELETE statement to delete all completed todos.
