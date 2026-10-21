CREATE DATABASE IF NOT EXISTS EmployeePayrollDB;

USE EmployeePayrollDB;

SELECT DATABASE();
USE EmployeePayrollDB;

CREATE TABLE IF NOT EXISTS Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL UNIQUE
);

SHOW TABLES;
USE EmployeePayrollDB;

CREATE TABLE IF NOT EXISTS Employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    department_id INT,
    designation VARCHAR(50),
    joining_date DATE,
    FOREIGN KEY (department_id)
        REFERENCES Department(department_id)
);

SHOW TABLES;
USE EmployeePayrollDB;

SELECT * FROM Department;
USE EmployeePayrollDB;

SELECT * FROM Employee;
USE EmployeePayrollDB;

SELECT * FROM Payroll;
USE EmployeePayrollDB;

CREATE TABLE IF NOT EXISTS Payroll (
    payroll_id INT PRIMARY KEY,
    employee_id INT NOT NULL,
    basic_salary DECIMAL(10,2) NOT NULL,
    bonus DECIMAL(10,2) DEFAULT 0,
    deductions DECIMAL(10,2) DEFAULT 0,
    payroll_month VARCHAR(20),
    FOREIGN KEY (employee_id)
        REFERENCES Employee(employee_id)
);
USE EmployeePayrollDB;

SELECT
    employee_id,
    basic_salary,
    bonus,
    deductions,
    basic_salary + bonus - deductions AS net_salary
FROM Payroll;
USE EmployeePayrollDB;

INSERT IGNORE INTO Department VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Sales');

INSERT IGNORE INTO Employee VALUES
(101, 'Rahul', 'Male', 'rahul@example.com', '9876543210', 3, 'Software Developer', '2023-06-15'),
(102, 'Priya', 'Female', 'priya@example.com', '9876543211', 1, 'HR Executive', '2022-08-20'),
(103, 'Arjun', 'Male', 'arjun@example.com', '9876543212', 2, 'Accountant', '2021-04-10'),
(104, 'Sneha', 'Female', 'sneha@example.com', '9876543213', 4, 'Marketing Executive', '2023-01-05'),
(105, 'Kiran', 'Male', 'kiran@example.com', '9876543214', 5, 'Sales Executive', '2022-11-12');
SELECT
    employee_id,
    basic_salary,
    bonus,
    deductions,
    basic_salary + bonus - deductions AS net_salary
FROM Payroll;
INSERT IGNORE INTO Payroll VALUES
(1, 101, 50000, 5000, 2000, 'January'),
(2, 102, 35000, 3000, 1500, 'January'),
(3, 103, 45000, 4000, 1800, 'January'),
(4, 104, 40000, 3500, 1600, 'January'),
(5, 105, 30000, 2500, 1200, 'January');

SELECT * FROM Department;
SELECT * FROM Employee;
SELECT * FROM Payroll;
SELECT
    e.employee_name,
    d.department_name,
    p.basic_salary,
    p.bonus,
    p.deductions,
    p.basic_salary + p.bonus - p.deductions AS net_salary
FROM Employee e
JOIN Department d
    ON e.department_id = d.department_id
JOIN Payroll p
    ON e.employee_id = p.employee_id;
    SELECT
    e.employee_name,
    p.basic_salary + p.bonus - p.deductions AS net_salary
FROM Employee e
JOIN Payroll p
    ON e.employee_id = p.employee_id
ORDER BY net_salary DESC
LIMIT 1;
    SELECT
    d.department_name,
    SUM(p.basic_salary) AS total_basic_salary,
    AVG(p.basic_salary) AS average_basic_salary
FROM Department d
JOIN Employee e
    ON d.department_id = e.department_id
JOIN Payroll p
    ON e.employee_id = p.employee_id
GROUP BY d.department_id, d.department_name;
SHOW TABLES;