<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTER</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	background: linear-gradient(135deg, #0f9d58 0%, #1db954 50%, #e8f5e9 100%);
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 30px;
}

.register-card {
	width: 100%;
	max-width: 520px;
	border: none;
	border-radius: 20px;
	background: #fff;
	box-shadow: 0 15px 40px rgba(0, 0, 0, .18);
	overflow: hidden;
}

.card-header-custom {
	background: linear-gradient(135deg, #0b8d48, #16a34a);
	padding: 35px 20px;
	text-align: center;
	color: white;
}

.logo-circle {
	width: 80px;
	height: 80px;
	background: rgba(255, 255, 255, .18);
	border-radius: 50%;
	display: flex;
	align-items: center;
	justify-content: center;
	margin: auto;
	font-size: 34px;
	margin-bottom: 15px;
	border: 2px solid rgba(255, 255, 255, .3);
}

.register-title {
	font-size: 30px;
	font-weight: 700;
	margin-bottom: 5px;
}

.register-subtitle {
	font-size: 14px;
	color: rgba(255, 255, 255, .9);
	margin-bottom: 0;
}

.card-body {
	padding: 35px;
}

.form-label {
	font-weight: 600;
	color: #2e7d32;
	margin-bottom: 7px;
}

.form-control {
	height: 52px;
	border-radius: 12px;
	border: 1px solid #d9d9d9;
	padding-left: 15px;
	font-size: 15px;
	transition: .3s;
}

.form-control:focus {
	border-color: #16a34a;
	box-shadow: 0 0 0 0.2rem rgba(22, 163, 74, .2);
}

.btn-register {
	height: 52px;
	border-radius: 12px;
	font-size: 16px;
	font-weight: 600;
	background: linear-gradient(135deg, #16a34a, #0f9d58);
	border: none;
	transition: .3s;
}

.btn-register:hover {
	transform: translateY(-2px);
	box-shadow: 0 10px 20px rgba(22, 163, 74, .35);
	background: linear-gradient(135deg, #15803d, #0b8d48);
}

.login-text {
	margin-top: 25px;
	text-align: center;
	color: #555;
	font-size: 15px;
}

.login-link {
	color: #16a34a;
	font-weight: 600;
	text-decoration: none;
}

.login-link:hover {
	text-decoration: underline;
	color: #0b8d48;
}

.error-message {
	display: block;
	color: #dc2626;
	background: #fef2f2;
	border: 1px solid #fecaca;
	border-radius: 8px;
	padding: 10px;
	text-align: center;
	margin-bottom: 20px;
}

.error-message:empty {
	display: none;
}

.form-control::placeholder {
	color: #b0b0b0;
}

@media ( max-width :576px) {
	.card-body {
		padding: 25px;
	}
	.register-title {
		font-size: 24px;
	}
}
</style>

</head>

<body>

	<div class="register-card">

		<div class="card-header-custom">

			<div class="logo-circle">👨‍💼</div>

			<h2 class="register-title">Employee Registration</h2>

			<p class="register-subtitle">Create your EMS account to continue</p>

		</div>

		<div class="card-body">

			<div class="error-message">${msg}</div>

			<form method="post" action="./register">

				<div class="mb-3">

					<label class="form-label">Username</label> <input type="text"
						class="form-control" name="uname" placeholder="Enter Username"
						required>

				</div>

				<div class="mb-3">

					<label class="form-label">Email</label> <input type="email"
						class="form-control" name="email"
						placeholder="Enter Email Address" required>

				</div>

				<div class="mb-3">

					<label class="form-label">Mobile Number</label> <input type="tel"
						class="form-control" name="mobnum"
						placeholder="Enter Mobile Number" required>

				</div>

				<div class="mb-4">

					<label class="form-label">Password</label> <input type="password"
						class="form-control" name="pwd" placeholder="Create Password"
						required>

				</div>

				<div class="d-grid">

					<button type="submit" class="btn btn-success btn-register">
						Create Account</button>

				</div>

				<p class="login-text">

					Already have an account? <a href="Login.jsp" class="login-link">Login</a>

				</p>

			</form>

		</div>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>