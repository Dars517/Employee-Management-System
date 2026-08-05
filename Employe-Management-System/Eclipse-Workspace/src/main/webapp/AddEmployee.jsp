<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>

<style>
body {
	background: #f5fdf7;
}

/* Card */
.employee-card {
	max-width: 600px;
	margin: 40px auto;
	border: none;
	border-radius: 20px;
	overflow: hidden;
	box-shadow: 0 12px 30px rgba(0, 0, 0, .12);
	background: #fff;
}

/* Header */
.card-header-custom {
	background: linear-gradient(135deg, #0f9d58, #16a34a);
	color: white;
	text-align: center;
	padding: 30px;
}

.card-header-custom h2 {
	font-weight: 700;
	margin-bottom: 8px;
}

.card-header-custom p {
	margin: 0;
	opacity: .9;
	font-size: 15px;
}

/* Body */
.card-body {
	padding: 35px;
}

/* Labels */
.form-label {
	font-weight: 600;
	color: #198754;
	margin-bottom: 8px;
}

/* Input */
.form-control {
	height: 50px;
	border-radius: 12px;
	border: 1px solid #d8d8d8;
	padding-left: 15px;
	transition: .3s;
}

.form-control:focus {
	border-color: #198754;
	box-shadow: 0 0 0 .2rem rgba(25, 135, 84, .20);
}

.form-control::placeholder {
	color: #b0b0b0;
}

/* Button */
.btn-save {
	height: 50px;
	border: none;
	border-radius: 12px;
	background: linear-gradient(135deg, #16a34a, #198754);
	font-size: 16px;
	font-weight: 600;
	color: white;
	transition: .3s;
}

.btn-save:hover {
	transform: translateY(-2px);
	box-shadow: 0 10px 20px rgba(25, 135, 84, .25);
}

/* Message */
.message {
	text-align: center;
	font-weight: 600;
	color: #dc3545;
	margin-bottom: 20px;
}
</style>

</head>

<body>

	<div class="container mt-5">

		<div class="employee-card">

			<div class="card-header-custom">

				<h2>Employee Registration</h2>

				<p>Add a new employee to the management system</p>

			</div>

			<div class="card-body">

				<div class="message">${msg}</div>

				<form method="post" action="./addemployee">

					<div class="mb-3">

						<label class="form-label"> Employee ID </label> <input type="text"
							class="form-control" name="eid" placeholder="Enter Employee ID"
							required>

					</div>

					<div class="mb-3">

						<label class="form-label"> Employee Name </label> <input
							type="text" class="form-control" name="name"
							placeholder="Enter Employee Name" required>

					</div>

					<div class="mb-3">

						<label class="form-label"> Department </label> <input type="text"
							class="form-control" name="dept" placeholder="Enter Department"
							required>

					</div>

					<div class="mb-4">

						<label class="form-label"> Salary </label> <input type="text"
							class="form-control" name="sal" placeholder="Enter Salary (Only Numbers)"
							required>

					</div>

					<div class="d-grid">

						<button type="submit" class="btn btn-save">Save Employee

						</button>

					</div>

				</form>

			</div>

		</div>

	</div>

</body>
</html>