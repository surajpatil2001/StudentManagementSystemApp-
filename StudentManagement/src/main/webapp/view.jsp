<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.form {
	width: 100%;
}

.view {
	background-image:
		url("https://media.istockphoto.com/id/2108420065/vector/abstract-futuristic-electronic-circuit-technology-background.jpg?s=612x612&w=0&k=20&c=EknukgPcqzpqscf2FpTTrnEapUKuShZk49ChoEiT2NE=");
	background-size: cover;
	background-repeat: no-repeat;
}
</style>

<meta charset="UTF-8">
<title>View Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
	crossorigin="anonymous"></script>
</head>
<body>
	<section class="view" style="height: 607px" id="view">
		<h1 class="text-center text-white">Student Details..!</h1>

		<form action="search" class="w-100">
			<div class="text-center w-100">
				<select class="select form-control-sm border border-primary"
					name="batchNumber">
					<option value="#" select>Select Batch Number</option>
					<option value="Reg-188">Reg-188</option>
					<option value="Reg-189">Reg-189</option>
				</select>
				<button class="btn btn-outline-primary mb-1" type="submit">Search</button>

				<marquee>
					<h1 style="color: red;">${message}</h1>
				</marquee>
			</div>
		</form>
		<form action="view">
			<table border="2" class="table table-striped">
				<thead>
					<tr>
						<th>Rollno</th>
						<th>Student Name</th>
						<th>Student Email</th>
						<th>Age</th>
						<th>College Name</th>
						<th>Course Name</th>
						<th>Batch Number</th>
						<th>Batch Mode</th>
						<th>Fees Paid</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${data}" var="s">
						<tr>
							<td>${s.rollno}</td>
							<td>${s.studentName}</td>
							<td>${s.studentEmail}</td>
							<td>${s.studentAge}</td>
							<td>${s.studentCollageName}</td>
							<td>${s.studentCourse}</td>
							<td>${s.batchNumber}</td>
							<td>${s.batchMode}</td>
							<td>${s.feesPaid}</td>
							<td>
								<div class="btn-group btn-group-sm" role="group"
									aria-label="Actions">
									<button class="btn btn-outline-info btn-sm ms-2">
										<a href="feespay?rollno=${s.rollno}">FeesPay</a>
									</button>


									<div>
										<button class="btn btn-outline-info btn-sm ms-2">
											<a href="shiftbatch?rollno=${s.rollno}">ShiftBatch</a>
										</button>
									</div>



									<form action="remove">
										<div>
											<button class="btn btn-outline-danger btn-sm ms-2">
												<a href="remove?rollno=${s.rollno}">Remove</a>
											</button>
										</div>
									</form>

								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</form>

	</section>
</body>
</html>