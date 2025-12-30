create database if not exists OperatorPerformance;

use OperatorPerformance;

CREATE TABLE operator_performance (
    operator_id INT PRIMARY KEY,
    name VARCHAR(50),
    task_type VARCHAR(20),
    work_time_minutes INT,
    standard_time TIME,
    performance DECIMAL(5,2),
    variance_percent DECIMAL(5,2),
    lines_actioned INT,
    quantity_actioned INT,
    lines_per_hour DECIMAL(5,2),
    quantity_per_hour DECIMAL(5,2)
);

INSERT INTO operator_performance VALUES
(1, 'John Murphy', 'Total', 480, '00:00:00', 95.5, -4.5, 120, 900, 15.0, 112.5),
(2, 'Aisha Khan', 'Total', 450, '00:00:00', 102.0, 2.0, 150, 1100, 20.0, 146.7),
(3, 'Carlos Mendes', 'Total', 500, '00:00:00', 88.0, -12.0, 100, 700, 12.0, 84.0),
(4, 'Emily Zhang', 'Total', 470, '00:00:00', 98.0, -2.0, 130, 950, 16.6, 121.3),
(5, 'David O\'Connor', 'Total', 460, '00:00:00', 105.0, 5.0, 160, 1200, 20.9, 156.5);

SELECT * operator_performanceoperator_performanceoperator_idoperator_idproducts FROM operator_performance;

SELECT name, quantity_per_hour
FROM operator_performance
WHERE quantity_per_hour > 140
ORDER BY quantity_per_hour DESC;

select name, quantity_per_hour
from operator_performance
where quantity_per_hour > 140
order by quantity_per_hour desc;

SELECT
    ROUND(AVG(lines_per_hour), 2) AS avg_lines_per_hour,
    ROUND(AVG(quantity_per_hour), 2) AS avg_quantity_per_hour
FROM operator_performance;

SELECT name, performance
FROM operator_performance
WHERE performance < 90;

SELECT name, quantity_per_hour,
       RANK() OVER (ORDER BY quantity_per_hour DESC) AS rank
FROM operator_performance;

SELECT VERSION();

DESCRIBE operator_performance;

SELECT 
    name,
    quantity_per_hour,
    RANK() OVER (ORDER BY quantity_per_hour DESC) AS ranking
FROM operator_performance;

show tables;

SELECT * FROM table_name;
