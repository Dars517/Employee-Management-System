# Employee Management System (EMS)

A professional **Employee Management System** developed using **Java, JSP, Servlets, JDBC, PostgreSQL, Bootstrap, and Dynamic Web Project**. This web application enables administrators to securely manage employee records through a clean, responsive, and user-friendly interface.

---

## 📖 Project Overview

The Employee Management System (EMS) is a Java Dynamic Web Application designed to simplify employee record management. It provides secure user authentication and complete employee management functionalities including adding, viewing, searching, updating, and deleting employee records.

This project demonstrates practical implementation of Java Full Stack technologies with database connectivity and session management.

---

## ✨ Features

### User Module

- User Registration
- Secure User Login
- Session-Based Authentication
- Logout Functionality

### Employee Module

- Add Employee
- Display Employee Records
- Search Employee by Employee ID
- Update Employee Details
- Delete Employee Records

### Additional Features

- Responsive Navigation Bar
- Professional Green & White User Interface
- About Us Page
- Welcome Dashboard
- Bootstrap Responsive Design

---

## 🛠 Technologies Used

### Frontend

- HTML5
- CSS3
- Bootstrap 5
- JavaScript
- JSP

### Backend

- Core Java
- Java Servlets
- JDBC

### Database

- PostgreSQL

### Build Tool

- Maven

### IDE

- Eclipse IDE

### Server

- Apache Tomcat

### Version Control

- Git
- GitHub

---

## 📁 Project Structure

```text
Employee-Management-System
│
├── src
│   ├── com.ems.servlet
│   ├── com.ems.entities
│
├── WebContent
│   ├── image
│   ├── Login.jsp
│   ├── Register.jsp
│   ├── home.jsp
│   ├── aboutus.jsp
│   ├── AddEmployee.jsp
|   ├── DeleteEmployee.jsp
|   ├── DisplayEmployee.jsp
|   ├── UpdateEmployee.jsp
│   ├── header.jsp
│   └── WEB-INF
│
├── pom.xml
└── README.md
```

> **Note:** Folder names may vary depending on your project structure.

---

## 📸 Screenshots

### Login Page

![Login Page](screenshots/login.png)

---

### Registration Page

![Registration Page](screenshots/register.png)

---

### Home Dashboard

![Home Dashboard](screenshots/home.png)

---

### About Us

![About Us](screenshots/about-us.png)

---

### Add Employee

![Add Employee](screenshots/add-employee.png)

---

### Display Employees

![Display Employees](screenshots/display-employee.png)

---

### Update Employee

![Update Employee](screenshots/update-employee.png)

---

### Delete Employee

![Delete Employee](screenshots/delete-employee.png)

---

## 🗄 Database

### Users Table

```sql
CREATE TABLE users (
    uname VARCHAR(100),
    email VARCHAR(100) PRIMARY KEY,
    mobnum VARCHAR(15),
    password VARCHAR(100)
);
```

### Employee Table

```sql
CREATE TABLE employee (
    eid INT PRIMARY KEY,
    name VARCHAR(100),
    dept VARCHAR(100),
    sal DOUBLE PRECISION
);
```

---

## 🚀 Installation & Setup

### Clone the Repository

```bash
git clone https://github.com/Dars517/Employee-Management-System.git
```

### Open the Project

Import the project into **Eclipse IDE** as an **Existing Maven Project**.

### Configure Database

- Install PostgreSQL
- Create the required database and tables
- Update the JDBC connection details

### Run the Application

- Configure Apache Tomcat in Eclipse
- Deploy the project
- Open the browser and visit:

```text
http://localhost:8080/Employee-Management-System
```

---

## 🎯 Learning Outcomes

This project helped me gain hands-on experience in:

- Java Programming
- Object-Oriented Programming (OOP)
- JSP Development
- Servlet Development
- JDBC Connectivity
- PostgreSQL Database Integration
- Session Management
- CRUD Operations
- Bootstrap Responsive UI Design
- Git & GitHub Version Control

---

## 🔮 Future Enhancements

- Password Encryption
- Role-Based Authentication
- Employee Profile Images
- Export Data to Excel/PDF
- Pagination
- Advanced Search & Filters
- Dashboard Analytics
- Email Notifications
- Spring Boot Migration
- REST API Integration

---

## 👨‍💻 Author

**Darshan Salunke**

- GitHub: https://github.com/Dars517
- LinkedIn: www.linkedin.com/in/darshan-salunke-2aa0bb255

---

## 📄 License

This project was developed for educational purposes and to demonstrate Java Full Stack development skills.
