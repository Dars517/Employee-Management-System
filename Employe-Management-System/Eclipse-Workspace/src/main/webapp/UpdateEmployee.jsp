<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Update Page</title>

<style>
body {
	background: #f5fdf7;
}

.employee-card {
	margin-top: 40px;
	border: none;
	border-radius: 20px;
	overflow: hidden;
	box-shadow: 0 12px 30px rgba(0, 0, 0, .12);
}

.card-header-custom {
	background: linear-gradient(135deg, #0f9d58, #16a34a);
	color: white;
	text-align: center;
	padding: 28px;
}

.card-header-custom h2 {
	font-weight: 700;
	margin-bottom: 5px;
}

.card-header-custom p {
	margin: 0;
	opacity: .9;
}

.search-box {
	padding: 25px 25px 10px;
}

.form-control {
	height: 48px;
	border-radius: 12px;
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
	font-weight: 600;
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
}

.table tbody tr:hover {
	background: #eefaf2;
}

.btn-update {
	background: #198754;
	color: white;
	border: none;
	border-radius: 10px;
	font-weight: 600;
	padding: 8px 18px;
}

.btn-update:hover {
	background: #157347;
	transform: scale(1.05);
}

.modal-header-green {
	background: linear-gradient(135deg, #0f9d58, #16a34a);
	color: white;
}

.no-record {
	color: #dc3545;
	font-weight: 600;
}
</style>


<script>

	function openPopupBox(seid)
	{
		var tr = document.getElementById(seid);
		
		var td = tr.getElementsByTagName("td");
		
		var seid = td[0].textContent.trim();
		var sname = td[1].textContent.trim();
		var sdept = td[2].textContent.trim();
		var ssal = td[3].textContent.trim().replace(/[₹,\s]/g, '');
		
		// point to that popup field to set value
		var modalEid = document.getElementById("ModalEid");
		//set the row value to popup
		modalEid.value = seid;
		
		var modalName = document.getElementById("ModalName");
		modalName.value = sname;
		
		var modalDept = document.getElementById("ModalDept");
		modalDept.value = sdept;
		
		var modalSal = document.getElementById("ModalSal");
		modalSal.value = ssal;
		
		//calling popup
		new bootstrap.Modal(document.getElementById("UpdateModal")).show();
	}
	
	function modify()
	{
		
		//get the data from textfield of popup
		var modalEid = document.getElementById("ModalEid");
		var modalName = document.getElementById("ModalName");
		var modalDept = document.getElementById("ModalDept");
		var modalSal = document.getElementById("ModalSal");
		
		// set that value to var which your send in request packet
		var seid = modalEid.value.trim();
		var sname = modalName.value.trim();
		var sdept = modalDept.value.trim();
		var ssal = modalSal.value.trim();
		
		
		fetch("http://localhost:8080/01-EMS-Mgmt-App/Update",
			{
				method : 'POST',
				body : new URLSearchParams({'seid' : seid, 'sname' : sname, 'sdept' : sdept, 'ssal' : ssal})
			}	
		)
		.then(response => response.text())
		.then(data => 
			{
				if(data.trim() == "Success")
				{
					alert('Record Is Updated Successfully For eid  !!!' + seid);
					var clsbtn = document.getElementById("clsbtn");
					clsbtn.click();
					//to change automatically not after refresh
					var tr = document.getElementById(seid);
					var td = tr.getElementsByTagName("td"); // use tr to get that row td data not document
					
					//td[0].textContent = seid;
					//td[1].textContent = sname;
					//td[2].tectContent = sdept;
					td[1].innerHTML = sname;
					td[2].innerHTML = sdept;
					td[3].innerHTML = ssal;
				}
				if(data.trim() == "Failed")
				{
					alert('Failed To Update Record !!!')
				}
				else if(data.trim() == "Number")
				{
					alert('Please Remove The Rupee Symbol From Salary Field !!!')
				}
			}
		)
		.catch(error => console.error("problem while delteing record!!!"));
	}
	
</script>

</head>


<body>

	<div class="container mt-5">

		<div class="employee-card">

			<div class="card-header-custom">

				<h2>Update Employee</h2>

				<p>Search and update employee information</p>

			</div>

			<div class="search-box">

				<form class="d-flex justify-content-end" method="GET"
					action="./Update">

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

											<button type="button" class="btn btn-update"
												onclick="openPopupBox('${e.eid}')">Update</button>

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

	<!-- Update Modal -->

	<div class="modal fade" id="UpdateModal" tabindex="-1">

		<div class="modal-dialog">

			<div class="modal-content">

				<div class="modal-header modal-header-green">

					<h5 class="modal-title">Update Employee</h5>

					<button type="button" class="btn-close btn-close-white"
						data-bs-dismiss="modal" aria-label="Close"></button>

				</div>

				<div class="modal-body">

					<div class="mb-3">

						<label class="form-label"> Employee ID </label> <input type="text"
							class="form-control" id="ModalEid" readonly disabled>

					</div>

					<div class="mb-3">

						<label class="form-label"> Employee Name </label> <input
							type="text" class="form-control" id="ModalName">

					</div>

					<div class="mb-3">

						<label class="form-label"> Department </label> <input type="text"
							class="form-control" id="ModalDept">

					</div>

					<div class="mb-4">

						<label class="form-label"> Salary </label> <input type="text"
							class="form-control" id="ModalSal" placeholder="Only Numbers">

					</div>

				</div>

				<div class="modal-footer">

					<button type="button" class="btn btn-outline-secondary"
						data-bs-dismiss="modal" id="clsbtn">Close</button>

					<button type="button" class="btn btn-success" onclick="modify()">

						Update Employee</button>

				</div>

			</div>

		</div>

	</div>

</body>
</html>
