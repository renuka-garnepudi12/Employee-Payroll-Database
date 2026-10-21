# Employee Payroll Database Management System

**Internship Details**

- **Internship Company:** CODTECH IT SOLUTIONS
- **Domain:** SQL
- **Intern Name:** Garnepudi Renuka Rani
- **Intern ID:** CITS8857
- **Project Title:** Employee Payroll Database Management System
- **Technologies Used:** MySQL, MySQL Workbench, SQL

---

## Project Overview

The Employee Payroll Database Management System is a SQL-based project developed to manage employee information, department details, and payroll records efficiently.

## 🎯 Objectives
- Manage employee information efficiently.
- Maintain department details.
- Store employee salary, bonus, and deduction records.
- Calculate net salary for each employee.
- Generate salary reports using SQL queries.

## 🛠️ Technologies Used
- **Database:** MySQL
- **Tool:** MySQL Workbench
- **Language:** SQL

## 🗄️ Database Details
**Database Name:** `EmployeePayrollDB`

### Tables

**1. Department**
- `department_id` – Unique department ID
- `department_name` – Name of the department

**2. Employee**
- `employee_id` – Unique employee ID
- `employee_name` – Employee name
- `gender` – Employee gender
- `email` – Employee email address
- `phone` – Contact number
- `department_id` – Associated department ID
- `designation` – Job designation
- `joining_date` – Employee joining date

**3. Payroll**
- `payroll_id` – Unique payroll record ID
- `employee_id` – Associated employee ID
- `basic_salary` – Basic salary amount
- `bonus` – Additional bonus amount
- `deductions` – Salary deductions
- `payroll_month` – Payroll month

## ✨ Key Features
- Create and manage a relational database.
- Insert and retrieve employee records.
- Maintain department and payroll information.
- Use primary keys and foreign keys to establish relationships.
- Calculate employee net salary.
- Display employee and department details using JOIN queries.
- Identify the employee with the highest net salary.
- Generate department-wise salary summaries.

## 🧮 Net Salary Calculation
Net Salary = Basic Salary + Bonus − Deductions

## 📚 SQL Concepts Used
- `CREATE DATABASE`
- `CREATE TABLE`
- `INSERT INTO`
- `SELECT`
- `PRIMARY KEY`
- `FOREIGN KEY`
- `JOIN`
- `SUM()`
- `AVG()`
- `ORDER BY`
- `LIMIT`
- `GROUP BY`

## 📸 Project Screenshots

## 📸 Project Screenshots

### 1. Database Setup
![Database Setup](screenshots/db_setup.png)

### 2. Departments Table
![Departments Table](screenshots/departments_table.png)

### 3. Employees Table
![Employees Table](screenshots/employees_table.png)

### 4. Payroll Table
![Payroll Table](screenshots/payroll_table.png)

### 5. Net Salary Calculation
![Net Salary](screenshots/net_salary.png)

### 6. Payroll Join Report
![Payroll Join](screenshots/payroll_join.png)

### 7. Highest Salary
![Highest Salary](screenshots/highest_salary.png)

### 8. Salary Summary
![Salary Summary](screenshots/salary_summary.png)

## 📂 Project Structure

```text
Employee-Payroll-Database/
│
├── employee_payroll.sql
├── README.md
│
└── screenshots/
    ├── db_setup.png
    ├── departments_table.png
    ├── employees_table.png
    ├── payroll_table.png
    ├── net_salary.png
    ├── payroll_join.png
    ├── highest_salary.png
    └── salary_summary.png
```

## ▶️ How to Run the Project
1. Install and open MySQL Workbench.
2. Open the `employee_payroll.sql` file.
3. Execute the SQL statements in the correct order.
4. Verify that the Department, Employee, and Payroll tables are created.
5. Run the SELECT queries to view records and salary reports.

## 📊 Expected Results
- Employee and department records are displayed.
- Payroll records show basic salary, bonus, and deductions.
- Net salary is calculated for each employee.
- JOIN queries display employee names with department and salary details.
- The highest net salary employee is identified.
- Department-wise salary summaries are generated.

## ✅ Conclusion
The Employee Payroll Database Management System demonstrates the practical use of SQL and relational database concepts. It provides an organized way to maintain employee records, manage payroll data, calculate net salaries, and generate useful reports.

---

**Project Name:** Employee Payroll Database Management System  
**Repository Name:** `Employee-Payroll-Database`
