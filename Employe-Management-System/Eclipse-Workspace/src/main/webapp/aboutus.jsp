<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>

<style>
body{
	background:#f5fdf7;
}

/* Hero Card */

.about-card{
	border:none;
	border-radius:20px;
	box-shadow:0 12px 30px rgba(0,0,0,.10);
	overflow:hidden;
	margin-top:40px;
}

/* Header */

.about-header{
	background:linear-gradient(135deg,#0f9d58,#16a34a);
	color:white;
	padding:35px;
	text-align:center;
}

.about-header h2{
	font-weight:700;
	margin-bottom:8px;
}

.about-header p{
	margin:0;
	opacity:.95;
	font-size:16px;
}

/* Body */

.about-body{
	background:white;
	padding:45px;
}

/* Image */

.about-image{
	max-width:320px;
	border-radius:18px;
	box-shadow:0 10px 25px rgba(0,0,0,.15);
	transition:.3s;
}

.about-image:hover{
	transform:scale(1.03);
}

/* Text */

.about-title{
	color:#198754;
	font-weight:600;
	margin-bottom:20px;
}

.about-text{
	color:#555;
	font-size:17px;
	line-height:1.9;
	text-align:justify;
}

/* Feature Boxes */

.feature-box{
	background:#ffffff;
	border-radius:15px;
	padding:25px;
	text-align:center;
	box-shadow:0 5px 15px rgba(0,0,0,.08);
	height:100%;
	transition:.3s;
}

.feature-box:hover{
	transform:translateY(-6px);
	box-shadow:0 12px 25px rgba(25,135,84,.15);
}

.feature-icon{
	font-size:40px;
	margin-bottom:15px;
}

.feature-title{
	color:#198754;
	font-weight:600;
	margin-bottom:10px;
}
</style>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

</head>

<body>

<div class="container mb-5 mt-5">

	<div class="about-card">

		<div class="about-header">

			<h2>About Employee Management System</h2>

			<p>Simple • Secure • Reliable • Efficient</p>

		</div>

		<div class="about-body">

			<div class="row align-items-center">

				<div class="col-lg-4 text-center mb-4 mb-lg-0">

					<img src="image/about.png"
						class="img-fluid about-image"
						alt="About EMS">

				</div>

				<div class="col-lg-8">

					<h3 class="about-title">
						Who We Are?
					</h3>

					<p class="about-text">

						The <strong>Employee Management System (EMS)</strong> is a
						modern web-based application developed to simplify employee
						record management for organizations and businesses.
						It provides a secure and user-friendly platform where
						administrators can efficiently manage employee information
						with accuracy and ease.

					</p>

					<p class="about-text">

						Our system enables administrators to add new employees,
						display employee records, search employees instantly,
						update employee information, and delete records whenever
						necessary. The application minimizes manual paperwork,
						improves productivity, and ensures organized data
						management through an intuitive interface.

					</p>

				</div>

			</div>

			<hr class="my-5">

			<div class="row g-4">

				<div class="col-md-4">

					<div class="feature-box">

						<div class="feature-icon text-success">
							<i class="fa-solid fa-shield-halved"></i>
						</div>

						<h5 class="feature-title">
							Secure Management
						</h5>

						<p>
							Employee information is managed securely
							using authenticated access.
						</p>

					</div>

				</div>

				<div class="col-md-4">

					<div class="feature-box">

						<div class="feature-icon text-success">
							<i class="fa-solid fa-users"></i>
						</div>

						<h5 class="feature-title">
							Easy Employee Handling
						</h5>

						<p>
							Add, display, search, update and delete
							employee records effortlessly.
						</p>

					</div>

				</div>

				<div class="col-md-4">

					<div class="feature-box">

						<div class="feature-icon text-success">
							<i class="fa-solid fa-chart-line"></i>
						</div>

						<h5 class="feature-title">
							Improved Productivity
						</h5>

						<p>
							Reduce manual work and improve
							administrative efficiency.
						</p>

					</div>

				</div>

			</div>

		</div>

	</div>

</div>

</body>
</html>