<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Employee Management System</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
* {
	font-family: 'Poppins', sans-serif;
}

body {
	padding-top: 30px;
	background: #f5fdf7;
}

/* Navbar */
.navbar {
	background: #ffffff;
	box-shadow: 0 5px 20px rgba(0, 0, 0, .08);
	padding: 12px 0;
}

.navbar-brand {
	font-size: 22px;
	font-weight: 700;
	color: #198754 !important;
	letter-spacing: .5px;
}

.navbar-brand i {
	margin-right: 10px;
}

/* Toggle */
.navbar-toggler {
	border: 2px solid #198754;
}

.navbar-toggler:focus {
	box-shadow: none;
}

.navbar-toggler-icon {
	background-image:
		url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3E%3Cpath stroke='%23198754' stroke-width='2.5' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E");
}

/* Offcanvas */
.offcanvas {
	background: #ffffff;
	width: 300px;
}

.offcanvas-title {
	color: #198754;
	font-weight: 700;
}

.btn-close {
	filter: none;
}

/* Menu */
.nav-link {
	color: #444 !important;
	font-weight: 500;
	padding: 12px 15px;
	border-radius: 10px;
	transition: .3s;
}

.nav-link:hover {
	background: #198754;
	color: white !important;
}

.nav-link.active {
	background: #198754;
	color: white !important;
}

.dropdown-menu {
	border: none;
	border-radius: 12px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, .10);
}

.dropdown-item {
	padding: 10px 18px;
	font-weight: 500;
	transition: .3s;
}

.dropdown-item:hover {
	background: #198754;
	color: white;
}

/* Logout */
.logout-item {
	color: #dc3545;
	font-weight: 600;
}

.logout-item:hover {
	background: #dc3545;
	color: white;
}
</style>

</head>

<body>

	<nav class="navbar navbar-expand-lg fixed-top">

		<div class="container">

			<a class="navbar-brand" href="home.jsp"> <i
				class="fa-solid fa-building"></i> Employee Management System

			</a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar">

				<span class="navbar-toggler-icon"></span>

			</button>

			<div class="offcanvas offcanvas-end" tabindex="-1"
				id="offcanvasNavbar">

				<div class="offcanvas-header">

					<h5 class="offcanvas-title">Employee Management</h5>

					<button type="button" class="btn-close" data-bs-dismiss="offcanvas">
					</button>

				</div>

				<div class="offcanvas-body">

					<ul class="navbar-nav ms-auto">

						<li class="nav-item"><a class="nav-link active"
							href="home.jsp"> <i class="fa-solid fa-house me-2"></i> Home

						</a></li>

						<li class="nav-item"><a class="nav-link" href="aboutus.jsp">

								<i class="fa-solid fa-circle-info me-2"></i> About Us

						</a></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown"> <i class="fa-solid fa-users me-2"></i>

								Employees

						</a>

							<ul class="dropdown-menu">

								<li><a class="dropdown-item" href="./AddEmployee.jsp">

										<i class="fa-solid fa-user-plus me-2"></i> Add Employee

								</a></li>

								<li><a class="dropdown-item" href="./displayEmployee">

										<i class="fa-solid fa-table me-2"></i> Display Employee

								</a></li>

								<li><a class="dropdown-item" href="./searchEmployee"> <i
										class="fa-solid fa-magnifying-glass me-2"></i> Search Employee

								</a></li>

								<li><a class="dropdown-item" href="./Delete"> <i
										class="fa-solid fa-trash me-2"></i> Delete Employee

								</a></li>

								<li><a class="dropdown-item" href="./Update"> <i
										class="fa-solid fa-pen-to-square me-2"></i> Update Employee

								</a></li>

								<li>
									<hr class="dropdown-divider">
								</li>

								<li><a class="dropdown-item logout-item" href="./Logout">

										<i class="fa-solid fa-right-from-bracket me-2"></i> Logout

								</a></li>

							</ul></li>

					</ul>

				</div>

			</div>

		</div>

	</nav>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js">
		
	</script>

</body>
</html>