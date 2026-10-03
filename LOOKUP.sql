CREATE DATABASE Sales_DW;

USE Sales_DW;

CREATE TABLE DIM_CUSTOMER (
    customer_key INT PRIMARY KEY,
    customer_id VARCHAR(10) UNIQUE,
    customer_name VARCHAR(100));
    
INSERT INTO DIM_CUSTOMER VALUES
(101, 'C001', 'Arun'),
(102, 'C002', 'Kumar'),
(103, 'C003', 'Priya'),
(104, 'C004', 'Ravi'),
(105, 'C005', 'Divya'),
(106, 'C006', 'Suresh'),
(107, 'C007', 'Meena'),
(108, 'C008', 'Vijay'),
(109, 'C009', 'Anitha'),
(110, 'C010', 'Rahul');

CREATE TABLE SALES_SOURCE (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    amount DECIMAL(10,2));
    
INSERT INTO SALES_SOURCE VALUES
('O001', 'C001', 5000),
('O002', 'C002', 3000),
('O003', 'C003', 7000),
('O004', 'C004', 4500),
('O005', 'C005', 6000),
('O006', 'C006', 2500),
('O007', 'C007', 8000),
('O008', 'C008', 3500),
('O009', 'C009', 9000),
('O010', 'C010', 4000);

SELECT
    s.order_id,
    d.customer_key,
    s.amount
FROM SALES_SOURCE s
JOIN DIM_CUSTOMER d
    ON s.customer_id = d.customer_id;