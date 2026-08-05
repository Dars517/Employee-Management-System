<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

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

.login-card {
	width: 100%;
	max-width: 500px;
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
	margin-bottom: 15px;
	font-size: 34px;
	border: 2px solid rgba(255, 255, 255, .30);
}

.title {
	font-size: 30px;
	font-weight: 700;
	margin-bottom: 5px;
}

.subtitle {
	font-size: 14px;
	color: rgba(255, 255, 255, .90);
	margin-bottom: 0;
}

.card-body {
	padding: 35px;
}

.form-label {
	font-weight: 600;
	color: #2e7d32;
	margin-bottom: 8px;
}

.form-control {
	height: 52px;
	border-radius: 12px;
	border: 1px solid #d8d8d8;
	padding-left: 15px;
	font-size: 15px;
	transition: .3s;
}

.form-control:focus {
	border-color: #16a34a;
	box-shadow: 0 0 0 .2rem rgba(22, 163, 74, .20);
}

.form-control::placeholder {
	color: #b0b0b0;
}

.btn-login {
	height: 52px;
	border: none;
	border-radius: 12px;
	font-size: 16px;
	font-weight: 600;
	background: linear-gradient(135deg, #16a34a, #0f9d58);
	transition: .3s;
}

.btn-login:hover {
	background: linear-gradient(135deg, #15803d, #0b8d48);
	transform: translateY(-2px);
	box-shadow: 0 10px 20px rgba(22, 163, 74, .35);
}

.login-text {
	margin-top: 25px;
	text-align: center;
	font-size: 15px;
	color: #555;
}

.login-link {
	color: #16a34a;
	font-weight: 600;
	text-decoration: none;
}

.login-link:hover {
	color: #0b8d48;
	text-decoration: underline;
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
@media ( max-width :576px) {
	.card-body {
		padding: 25px;
	}
	.title {
		font-size: 24px;
	}
}
</style>

</head>

<body>

	<div class="login-card">

		<div class="card-header-custom">

			<div class="logo-circle">🔐</div>

			<h2 class="title">Welcome Back!</h2>

			<p class="subtitle">Login to access your Employee Management
				account</p>

		</div>

		<div class="card-body">

			<div class="error-message">${msg}</div>

			<form method="post" action="./LoginServlet">

				<div class="mb-3">

					<label class="form-label">Email</label> <input type="email"
						class="form-control" name="email" placeholder="Enter your Email"
						required>

				</div>

				<div class="mb-4">

					<label class="form-label">Password</label> <input type="password"
						class="form-control" name="pwd" placeholder="Enter your Password"
						required>

				</div>

				<div class="d-grid">

					<button class="btn btn-success btn-login" type="submit">
						LOGIN</button>

				</div>

				<p class="login-text">

					Don't have an account? <a href="Register.jsp" class="login-link">
						Create Account </a>

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