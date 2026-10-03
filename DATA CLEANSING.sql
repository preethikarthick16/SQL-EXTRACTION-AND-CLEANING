CREATE DATABASE customer_db;

USE customer_db;
CREATE TABLE customer (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO customer (customer_id, customer_name, city)
VALUES
('C001', '  Arun Kumar  ', 'chennai'),
('C002', ' Kumar ', 'CHENNAI'),
('C003', '  Priya  ', 'Chennai'),
('C004', ' Ravi ', NULL);

SELECT * FROM customer;

SELECT
    customer_id,
    TRIM(customer_name) AS customer_name,
    CASE
        WHEN city IS NULL OR TRIM(city) = '' THEN 'Unknown'
        ELSE UPPER(TRIM(city))
    END AS city
FROM customer;