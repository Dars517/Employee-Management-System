<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="./header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Delete Employee</title>

<style>
body {
	background: #f5fdf7;
}

/* Card */
.employee-card {
	margin-top: 40px;
	border: none;
	border-radius: 20px;
	overflow: hidden;
	box-shadow: 0 12px 30px rgba(0, 0, 0, .12);
}

/* Header */
.card-header-custom {
	background: linear-gradient(135deg, #0f9d58, #16a34a);
	color: white;
	padding: 28px;
	text-align: center;
}

.card-header-custom h2 {
	font-weight: 700;
	margin-bottom: 5px;
}

.card-header-custom p {
	margin: 0;
	opacity: .9;
}

/* Search */
.search-box {
	padding: 25px 25px 10px;
}

.form-control {
	height: 48px;
	border-radius: 12px;
	border: 1px solid #d8d8d8;
}

.form-control:focus {
	border-color: #198754;
	box-shadow: 0 0 0 .2rem rgba(25, 135, 84, .20);
}

.btn-search {
	background: #198754;
	color: white;
	border: none;
	border-radius: 12px;
	padding: 10px 22px;
	font-weight: 600;
}

.btn-search:hover {
	background: #157347;
	color: white;
}

.btn-refresh {
	border-radius: 12px;
	padding: 10px 22px;
	font-weight: 600;
}

/* Table */
.table {
	margin-bottom: 0;
}

.table thead {
	background: #198754;
	color: white;
}

.table thead th {
	border: none;
	padding: 16px;
}

.table tbody td {
	padding: 15px;
	vertical-align: middle;
}

.table tbody tr:hover {
	background: #eefaf2;
}

/* Delete Button */
.btn-remove {
	background: #dc3545;
	border: none;
	border-radius: 10px;
	font-weight: 600;
	padding: 8px 18px;
	transition: .3s;
}

.btn-remove:hover {
	background: #bb2d3b;
	transform: scale(1.05);
}

/* Empty */
.no-record {
	font-weight: 600;
	color: #dc3545;
}
</style>

<script>

function del(seid)
{
	var status = confirm("Do You Want to Delete The Employee ID : " + seid);

	if(status==true)
	{
		fetch("http://localhost:8080/01-EMS-Mgmt-App/Delete",
		{
			method:'POST',
			body:new URLSearchParams({'seid':seid})
		})

		.then(response=>response.text())

		.then(data=>{

			if(data.trim()=="Success")
			{
				alert("Employee Deleted Successfully");

				document.getElementById(seid).remove();
			}

			if(data.trim()=="failed")
			{
				alert("Failed To Delete Employee");
			}

		})

		.catch(error=>console.error("Problem while deleting employee"));

	}
}

</script>

</head>

<body>

	<div class="container mt-5">

		<div class="employee-card">

			<div class="card-header-custom">

				<h2>Delete Employee</h2>

				<p>Search and remove employee records securely</p>

			</div>

			<div class="search-box">

				<form class="d-flex justify-content-end" method="GET"
					action="./Delete">

					<input class="form-control me-2" type="search" name="seid"
						placeholder="Enter Employee ID">

					<button class="btn btn-search me-2" type="submit" name="sbtn"
						value="search">Search</button>

					<button class="btn btn-outline-success btn-refresh" type="submit"
						name="sbtn" value="Refresh">Refresh</button>

				</form>

			</div>

			<div class="card-body">

				<div class="table-responsive">

					<table class="table table-hover text-center align-middle">

						<thead>

							<tr>

								<th>Employee ID</th>

								<th>Employee Name</th>

								<th>Department</th>

								<th>Salary</th>

								<th>Action</th>

							</tr>

						</thead>

						<tbody>

							<c:if test="${empty employees}">

								<tr>

									<td colspan="5" class="no-record">No Employee Record Found

									</td>

								</tr>

							</c:if>

							<c:if test="${not empty employees}">

								<c:forEach var="e" items="${employees}">

									<tr id="${e.eid}">

										<td>${e.eid}</td>

										<td>${e.name}</td>

										<td>${e.dept}</td>

										<td>₹ ${e.sal}</td>

										<td>

											<button type="button" class="btn btn-remove"
												onclick="del(${e.eid})">Remove</button>

										</td>

									</tr>

								</c:forEach>

							</c:if>

						</tbody>

					</table>

				</div>

			</div>

		</div>

	</div>

</body>
</html>