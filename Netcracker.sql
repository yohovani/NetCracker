CREATE DATABASE IF NOT EXISTS NetCracker;
USE NetCracker;

DROP TABLE IF EXISTS emp_client_stat;
DROP TABLE IF EXISTS employees;

CREATE TABLE IF NOT EXISTS employees(
    employee_id INT NOT NULL  auto_increment,
    employee_name VARCHAR(250) NOT NULL,
    PRIMARY KEY(employee_id)
);

CREATE TABLE IF NOT EXISTS emp_client_stat(
    employee_id INT  NOT NULL,
    date_acquired DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL, 
    new_clients_count INT DEFAULT 0 NOT NULL,
    FOREIGN KEY(employee_id) REFERENCES employees(employee_id)
);

INSERT INTO employees (employee_name) VALUES('Jhon Johnson'),('Liam Liamson'),('Smitty Smothson');

INSERT INTO emp_client_stat (employee_id, date_acquired, new_clients_count) 
VALUES
    (1, "2021-03-01 00:00:00", 10),
    (1, "2021-03-02 00:00:00", 11),
    (1, "2021-03-03 00:00:00", 12),
    (1, "2021-03-04 00:00:00", 13),
    (1, "2021-03-05 00:00:00", 14),
    (1, "2021-03-06 00:00:00", 15),
    (1, "2021-03-07 00:00:00", 16),
    (2, "2021-03-01 00:00:00", 17),
    (2, "2021-03-02 00:00:00", 18),
    (2, "2021-03-03 00:00:00", 9),
    (2, "2021-03-04 00:00:00", 20),
    (2, "2021-03-05 00:00:00", 12),
    (2, "2021-03-06 00:00:00", 22),
    (2, "2021-03-07 00:00:00", 23),
    (3, "2021-03-01 00:00:00", 25),
    (3, "2021-03-02 00:00:00", 30),
    (3, "2021-03-03 00:00:00", 18),
    (3, "2021-03-04 00:00:00", 9),
    (3, "2021-03-05 00:00:00", 45),
    (3, "2021-03-06 00:00:00", 1),
    (3, "2021-03-07 00:00:00", 2),
    (1, "2021-04-01 00:00:00", 9),
    (1, "2021-04-02 00:00:00", 11),
    (1, "2021-04-03 00:00:00", 15),
    (1, "2021-04-04 00:00:00", 16),
    (1, "2021-04-05 00:00:00", 78),
    (1, "2021-04-06 00:00:00", 4),
    (1, "2021-04-07 00:00:00", 1),
    (2, "2021-04-01 00:00:00", 7),
    (2, "2021-04-02 00:00:00", 18),
    (2, "2021-04-03 00:00:00", 9),
    (2, "2021-04-04 00:00:00", 2),
    (2, "2021-04-05 00:00:00", 12),
    (2, "2021-04-06 00:00:00", 22),
    (2, "2021-04-07 00:00:00", 32),
    (3, "2021-04-01 00:00:00", 5),
    (3, "2021-04-02 00:00:00", 7),
    (3, "2021-04-03 00:00:00", 8),
    (3, "2021-04-04 00:00:00", 9),
    (3, "2021-04-05 00:00:00", 3),
    (3, "2021-04-06 00:00:00", 1),
    (3, "2021-04-07 00:00:00", 2);

SELECT "MARCH 2021" AS REPORT;

SELECT e.employee_name, SUM(ecs.new_clients_count) AS new_clients_count 
FROM employees e INNER JOIN emp_client_stat ecs 
ON e.employee_id = ecs.employee_id 
WHERE ecs.date_acquired LIKE "%2021-03%" GROUP BY e.employee_id;

SELECT "ALL" AS REPORT;

SELECT e.employee_name, SUM(ecs.new_clients_count) AS new_clients_count 
FROM employees e INNER JOIN emp_client_stat ecs 
ON e.employee_id = ecs.employee_id GROUP BY e.employee_id;
