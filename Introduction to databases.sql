CREATE TABLE city (
city_id INT PRIMARY KEY,
city_name VARCHAR(50) NOT NULL);

ALTER TABLE employee ADD COLUMN city_id INT;

ALTER TABLE employee ADD FOREIGN KEY (city_id) REFERENCES city(city_id);

INSERT INTO city (city_id,city_name) VALUES
(1,'Vladivostok'),
(2,'Moscow'),
(3,'Omsk'),
(4,'Saint-Petersburg'),
(5,'Nerungri'),
(6,'London');

UPDATE employee SET city_id = 2 WHERE id = 1;
UPDATE employee SET city_id = 5 WHERE id = 3;
UPDATE employee SET city_id = 3 WHERE id = 4;
UPDATE employee SET city_id = 2 WHERE id = 6;
UPDATE employee SET city_id = 1 WHERE id = 5;



SELECT first_name, last_name, city_name FROM employee
INNER JOIN city
ON employee.city_id = city.city_id;

SELECT city_name, first_name, last_name FROM employee
RIGHT JOIN city
ON employee.city_id = city.city_id;

SELECT first_name, city_name FROM employee
FULL JOIN city
ON employee.city_id = city.city_id;

SELECT first_name, city_name FROM employee
CROSS JOIN city;

SELECT DISTINCT city_name FROM city
LEFT JOIN employee
ON employee.city_id = city.city_id
WHERE employee.city_id IS NULL;
