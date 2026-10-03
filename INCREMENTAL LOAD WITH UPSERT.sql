CREATE DATABASE customer_dw;

USE customer_dw;

CREATE TABLE DIM_CUSTOMER (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(100));
    
INSERT INTO DIM_CUSTOMER VALUES
('C001', 'Arun', 'Chennai'),
('C002', 'Kumar', 'Madurai'),
('C003', 'Priya', 'Salem');

CREATE TABLE STG_CUSTOMER (
    customer_id VARCHAR(10),
    customer_name VARCHAR(100),
    city VARCHAR(100));
    
INSERT INTO STG_CUSTOMER VALUES
('C002', 'Kumar', 'Bangalore'),
('C004', 'Ravi', 'Chennai');

INSERT INTO DIM_CUSTOMER (customer_id, customer_name, city)
SELECT customer_id, customer_name, city
FROM STG_CUSTOMER
ON DUPLICATE KEY UPDATE
    customer_name = VALUES(customer_name),
    city = VALUES(city);

SELECT *
FROM DIM_CUSTOMER
ORDER BY customer_id;

SELECT *
FROM DIM_CUSTOMER
WHERE customer_id = 'C002'
  AND city = 'Bangalore';
  
SELECT *
FROM DIM_CUSTOMER
WHERE customer_id = 'C004';

SELECT *
FROM DIM_CUSTOMER
WHERE customer_id IN ('C002', 'C004');