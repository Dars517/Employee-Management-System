# Employee Management System (EMS)

A professional **Employee Management System** developed using **Java, JSP, Servlets, JDBC, MySQL, Bootstrap, and Dynamic Web Project**. This web application enables administrators to securely manage employee records through a clean, responsive, and user-friendly interface.

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

- MySQL

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
│   └── main
│       ├── java
│       │   ├── com.ems.entities
│       │   │   ├── Employee.java
│       │   │   └── User.java
│       │   │
│       │   └── com.ems.Servlet
│       │       ├── AddEmployeeServlet.java
│       │       ├── DeleteEmployeeServlet.java
│       │       ├── DisplayEmployeeServlet.java
│       │       ├── LoginServlet.java
│       │       ├── LogoutServlet.java
│       │       ├── RegisterServlet.java
│       │       └── UpdateEmployeeServlet.java
│       │
│       └── webapp
│           ├── image
│           ├── META-INF
│           ├── WEB-INF
│           ├── aboutus.jsp
│           ├── AddEmployee.jsp
│           ├── DeleteEmployee.jsp
│           ├── DisplayEmployee.jsp
│           ├── header.jsp
│           ├── home.jsp
│           ├── Login.jsp
│           ├── Register.jsp
│           └── UpdateEmployee.jsp
│
├── pom.xml
└── README.md
```

---

## 📸 Screenshots

### Login Page

<img width="1240" height="628" alt="Screenshot_5-8-2026_15589_localhost" src="https://github.com/user-attachments/assets/6a6e68de-6ac9-4ec7-8544-8b3b533d9044" />


---

### Registration Page

<img width="1240" height="809" alt="Screenshot_5-8-2026_155737_localhost" src="https://github.com/user-attachments/assets/29dc0b18-4797-4aec-802a-b94fd396ad1b" />


---

### Home Dashboard

<img width="1240" height="1287" alt="Screenshot_5-8-2026_155837_localhost" src="https://github.com/user-attachments/assets/58889a1f-e7a7-49a5-af51-518084e01ce6" />


---

### About Us

<img width="1240" height="1023" alt="Screenshot_5-8-2026_155858_localhost" src="https://github.com/user-attachments/assets/75153111-0443-4654-b013-6f3ee4eee943" />


---

### Add Employee

<img width="1240" height="726" alt="Screenshot_5-8-2026_155926_localhost" src="https://github.com/user-attachments/assets/66849159-39aa-4151-84e5-72f0d0d9d8ea" />


---

### Display Employees

<img width="1240" height="770" alt="Screenshot_5-8-2026_16459_localhost" src="https://github.com/user-attachments/assets/10df003f-bba5-4343-ad3e-973dfc647807" />


---

### Update Employee

<img width="1240" height="656" alt="Screenshot_5-8-2026_16558_localhost" src="https://github.com/user-attachments/assets/096c2d3b-8964-442b-ac15-0df71ea34124" />


---

### Delete Employee

<img width="1240" height="641" alt="Screenshot_5-8-2026_16540_localhost" src="https://github.com/user-attachments/assets/dc95aaf8-a86d-45a0-8fb3-58f2a8f3da30" />


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

- Install MySQL
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
