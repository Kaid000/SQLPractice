CREATE TABLE Sales (
    id INT,
    product VARCHAR(50),
    region VARCHAR(50),
    sale_date DATE,
    amount DECIMAL(10,2)
);

INSERT INTO Sales VALUES
(1, 'iPhone', 'Moscow', '2023-01-10', 100000),
(2, 'iPad', 'Moscow', '2023-01-15', 50000),
(3, 'iPhone', 'SPb', '2023-01-12', 80000),
(4, 'MacBook', 'Moscow', '2023-02-01', 150000),
(5, 'iPad', 'SPb', '2023-02-05', 45000),
(6, 'iPhone', 'Moscow', '2023-02-10', 90000),
(7, 'MacBook', 'SPb', '2023-02-15', 140000),
(8, 'iPad', 'Moscow', '2023-03-01', 55000);