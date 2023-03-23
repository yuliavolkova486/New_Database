CREATE TABLE employee (
id BIGSERIAL NOT NULL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR(6) NOT NULL,
age INT NOT NULL
);

SELECT * FROM employee;

INSERT INTO employee (
first_name, last_name, gender, age)
VALUES ('Ivan', 'Ivanov','Male', 32);

INSERT INTO employee (
first_name, last_name, gender, age)
VALUES ('Aleksandr', 'Petrov', 'Male', 21);

INSERT INTO employee (
first_name, last_name, gender, age)
VALUES ('Oksana', 'Orlova', 'Female', 19);

SELECT * FROM employee;

UPDATE employee SET first_name = 'Sidor', last_name = 'Sidorov', gender = 'Male', age = 48 WHERE id = 3;

SELECT * FROM employee;

DELETE FROM employee WHERE id = 2;

SELECT * FROM employee;

INSERT INTO employee(
first_name, last_name, gender, age)
VALUES ('Oleg', 'Rogov', 'Male', 52);

INSERT INTO employee(
first_name, last_name, gender, age)
VALUES ('Olga', 'Popova', 'Female', 38);

INSERT INTO employee(
first_name, last_name, gender, age)
VALUES ('Vera', 'Sharova', 'Female', 26);

SELECT first_name AS Имя, last_name AS Фамилия FROM employee;

SELECT * FROM employee WHERE age < 30 OR age > 50;

SELECT * FROM employee WHERE age BETWEEN 30 AND 50;

SELECT * FROM employee ORDER BY last_name DESC;

SELECT * FROM employee WHERE LENGTH (first_name) > 4;

UPDATE employee SET first_name = 'Ivan' WHERE first_name = 'Sidor';

UPDATE employee SET first_name = 'Olga' WHERE first_name = 'Vera';

SELECT first_name AS Имя, SUM(age) AS Суммарный_возраст FROM employee GROUP BY Имя;

SELECT first_name AS Имя, MIN(age) AS Минимальный_возраст FROM employee GROUP BY Имя;

SELECT DISTINCT first_name AS Имя, age AS Максимальный_возраст FROM employee ORDER BY age;
