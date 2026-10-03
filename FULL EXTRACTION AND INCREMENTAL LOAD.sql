CREATE DATABASE customer_etl;
USE customer_etl;
CREATE TABLE source_customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    updated_at DATETIME);
    
INSERT INTO source_customer VALUES
(101, 'Arun Kumar', 'Chennai', '2026-09-01 10:15:00'),
(102, 'Priya Sharma', 'Bangalore', '2026-09-02 11:20:00'),
(103, 'Karthik Raj', 'Madurai', '2026-09-03 09:30:00'),
(104, 'Divya Priya', 'Coimbatore', '2026-09-04 14:10:00'),
(105, 'Suresh Kumar', 'Salem', '2026-09-05 16:25:00'),
(106, 'Meena Devi', 'Trichy', '2026-09-06 12:45:00'),
(107, 'Vijay Anand', 'Chennai', '2026-09-07 10:50:00'),
(108, 'Anitha Rani', 'Hyderabad', '2026-09-08 15:35:00'),
(109, 'Rahul Kumar', 'Mumbai', '2026-09-09 13:15:00'),
(110, 'Sneha Priya', 'Delhi', '2026-09-10 17:40:00');

SELECT * FROM source_customer;