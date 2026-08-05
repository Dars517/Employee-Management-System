<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.ems.entites.User"%>
<%@ page session="true"%>
<%
//User user = (User) request.getAttribute("userObj");
User user = (User) session.getAttribute("userObj");

if (user == null) {
	response.sendRedirect("./Login.jsp");
	return;
}
%>

<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home | Employee Management System</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<style>
* {
	font-family: 'Poppins', sans-serif;
}

body {
	background: #f5fdf7;
}

/* Hero Section */
.hero {
	background: linear-gradient(135deg, #0f9d58, #16a34a);
	color: white;
	padding: 55px;
	border-radius: 20px;
	box-shadow: 0 12px 30px rgba(0, 0, 0, .15);
	margin-top: 60px;
}

.hero h1 {
	font-weight: 700;
}

.hero p {
	font-size: 17px;
	margin-top: 10px;
}

/* User Card */
.user-card {
	background: white;
	border: none;
	border-radius: 18px;
	box-shadow: 0 8px 25px rgba(0, 0, 0, .10);
	padding: 30px;
	margin-top: 35px;
}

.user-card h3 {
	color: #198754;
	font-weight: 600;
	margin-bottom: 20px;
}

.info {
	font-size: 17px;
	margin-bottom: 15px;
}

.info strong {
	color: #198754;
}

/* Feature Cards */
.feature-card {
	background: white;
	border: none;
	border-radius: 18px;
	padding: 25px;
	text-align: center;
	box-shadow: 0 5px 18px rgba(0, 0, 0, .08);
	transition: .3s;
	height: 100%;
}

.feature-card:hover {
	transform: translateY(-8px);
	box-shadow: 0 15px 30px rgba(25, 135, 84, .18);
}

.feature-card i {
	font-size: 42px;
	color: #198754;
	margin-bottom: 15px;
}

.feature-card h5 {
	font-weight: 600;
}

.feature-card p {
	color: #666;
	font-size: 15px;
}

/* Footer */
.footer {
	margin-top: 70px;
	background: #198754;
	color: white;
	padding: 40px 0 20px;
}

.footer h5 {
	font-weight: 600;
	margin-bottom: 18px;
}

.footer a {
	color: white;
	text-decoration: none;
	margin-right: 18px;
	font-size: 25px;
	transition: .3s;
}

.footer a:hover {
	color: #d4edda;
}

.footer hr {
	background: white;
}

.footer p {
	margin-bottom: 8px;
}
</style>

</head>

<body>

	<div class="container">

		<!-- Welcome Section -->

		<div class="hero">

			<h1>
				Welcome,
				<%=user.getUname()%>
				👋
			</h1>

			<p>
				Welcome to the <strong>Employee Management System</strong>. You are
				successfully logged in. Manage employee records securely and
				efficiently from one place.
			</p>

		</div>

		<!-- User Details -->

		<div class="user-card">

			<h3>Your Profile</h3>

			<p class="info">
				<strong>Username :</strong>
				<%=user.getUname()%>
			</p>

			<p class="info">
				<strong>Email :</strong>
				<%=user.getEmail()%>
			</p>

			<p class="info">
				<strong>Mobile Number :</strong>
				<%=user.getMobnum()%>
			</p>

		</div>

		<!-- Features -->

		<div class="row mt-5 g-4">

			<div class="col-md-4">

				<div class="feature-card">
					<a href="./AddEmployee.jsp"> <i class="fa fa-user-plus"></i>
					</a>
					<h5>Add Employee</h5>

					<p>Securely add new employee records with accurate information.
					</p>

				</div>

			</div>
			<div class="col-md-4">

				<div class="feature-card">
					<a href="./displayEmployee"> <i class="fa fa-users"></i>
					</a>
					<h5>Display Employees</h5>

					<p>View all employee records in a clean and organized table.</p>

				</div>

			</div>

			<div class="col-md-4">

				<div class="feature-card">
					<a href="./searchEmployee"> <i class="fa fa-search"></i>
					</a>
					<h5>Search Employee</h5>

					<p>Quickly search employees using their unique employee ID.</p>

				</div>

			</div>

			<div class="col-md-6">

				<div class="feature-card">
					<a href="./Update"> <i class="fa fa-pencil-square-o"></i>
					</a>
					<h5>Update Employee</h5>

					<p>Keep employee records updated with the latest information.</p>

				</div>

			</div>

			<div class="col-md-6">

				<div class="feature-card">
					<a href="./Delete"> <i class="fa fa-trash"></i>
					</a>
					<h5>Delete Employee</h5>

					<p>Remove employee records safely whenever required.</p>

				</div>

			</div>

		</div>

	</div>

	<!-- Footer -->

	<footer class="footer">

		<div class="container">

			<div class="row">

				<div class="col-md-4">

					<h5>Employee Management System</h5>

					<p>A secure and reliable platform to manage employee
						information efficiently.</p>

				</div>

				<div class="col-md-4">

					<h5>Quick Links</h5>

					<a href="#"><i class="fa fa-home"></i></a> <a
						href="./displayEmployee"><i class="fa fa-users"></i></a> <a
						href="./searchEmployee"><i class="fa fa-search"></i></a> <a
						href="./AddEmployee.jsp"><i class="fa fa-plus-circle"></i></a>

				</div>

				<div class="col-md-4">

					<h5>Contact</h5>

					<p>📧 admin@ems.com</p>

					<p>📞 +91 9876543210</p>

					<p>📍 India</p>

				</div>

			</div>

			<hr>

			<div class="text-center">© 2026 Employee Management System |
				All Rights Reserved</div>

		</div>

	</footer>

</body>
</html>