<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Tables - SB Admin</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="mltemp/css/styles.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
<style>
   #layoutSidenav{
      margin: 70px;
      padding-top: 30px;
   }
</style>
</head>
<body>
	<div id="layoutSidenav">
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">Student List</h1>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table me-1"></i> DataTable
						</div>
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>Id</th>
										<th>Email</th>
										<th>Password</th>
										<th>Name</th>
										<th>Birth</th>
										<th>Telephone</th>
										<th>Address</th>
										<th>Gender</th>
										<th>Division</th>
										<th>Parent</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${members }" var="member">
										<tr>
											<td>${member.id }</td>
											<td>${member.email }</td>
											<td>${member.password }</td>
											<td>${member.name }</td>
											<td>${member.birth }</td>
											<td>${member.tel }</td>
											<td>${member.address }</td>
											<td>${member.gender }</td>
											<td>${member.division }</td>
											<td>${member.parent }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div class="d-flex align-items-center justify-content-between small"></div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="mltemp/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="mltemp/js/datatables-simple-demo.js"></script>
</body>
</html>