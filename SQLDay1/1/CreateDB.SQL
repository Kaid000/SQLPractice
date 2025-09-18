CREATE DATABASE PracticDB;
use PracticDB;

CREATE Table Employeers {
    Id INT PRIMARY KEY,
    name Varchar(50),
    department Varchar(50),
    salary Decimal(10, 2),
    hire_Date Timestamp,
}

CREATE Table Orders {
    Id INT PRIMARY KEY,
    employee_id INT,
    order_date Timestamp,
    amount Decimal(10, 2),
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
}

INSERT INTO Employees VALUES 
(1, 'Иван Иванов', 'IT', 50000, '2020-01-15'),
(2, 'Мария Петрова', 'HR', 45000, '2019-03-10'),
(3, 'Алексей Сидоров', 'IT', 55000, '2021-05-20'),
(4, 'Ольга Кузнецова', 'Sales', 48000, '2018-11-05'),
(5, 'Дмитрий Смирнов', 'HR', 42000, '2022-02-15');

INSERT INTO Orders VALUES 
(101, 1, '2023-01-10', 15000),
(102, 1, '2023-02-15', 20000),
(103, 3, '2023-01-20', 10000),
(104, 4, '2023-03-05', 30000),
(105, 4, '2023-03-10', 25000),
(106, 2, '2023-02-01', 18000);