<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminScreen</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="style1.css">

</head>
<body>
		<nav
			class="d-flex justify-content-between p-1 border border-dark custom-navbar">
			<img
				src="https://img.freepik.com/premium-vector/graduation-cap-resting-top-book-symbolizing-academic-achievement-success-sleek-minimalist-logo-design-cuttingedge-tech-startup_585735-32682.jpg?ga=GA1.1.863853441.1744995311&semt=ais_hybrid&w=740"
				width="120px" height="75px">
			<div class="pt-3 px-2">
				<a href="#enroll">
				<button type="button" class="btn btn-info btn-sm">Enroll Student</button>
				</a> <a href="/view">
				<button type="button" class="btn btn-info btn-sm">View Student</button>
				</a> <a href="/">
				<button type="button" class="btn btn-info btn-sm">Logout</button>
				</a>
			</div>
		</nav>

	<div class="main">
		<div class="heading">
			<h2 class="text-white">
				<b>Student Enrollment Form</b>
			</h2>

		</div>
		<section class="card text-center pt-2 p-4">
			<form action="enrollstudent">
				<div class="row">
					<div class="col-md-6">

						<div class="mb-2">
							<label class="text">Rollno</label><br> <input class="text1"
								type="number" name="rollno" placeholder="Enter Student Roll no">
						</div>

						<div class="mb-2">
							<label class="text">Name</label><br> <input class="text1"
								type="text" name="studentName" placeholder="Enter Student Name">
						</div>

						<div class="mb-2">
							<lable class="text">Age</lable>
							<br> <input class="text1" type="number" name="studentAge"
								placeholder="Enter Student Age">
						</div>

						<div class="mb-4">
							<lable class="text">Fees</lable>
							<br> <input class="text1" type="number" name="feesPaid"
								placeholder="Enter Fees Paid">
						</div>

						<div class="mb-3">
							<label class="text">Batch Mode</label><br> 
							<select class="text1" name="batchMode">
								<option>Select Batch</option>
								<option>online</option>
								<option>offline</option>
							</select>
						</div>
					</div>

					<div class="col-md-6">
						<div class="mb-2">
							<lable class="text">Email Id</lable>
							<br> <input class="text1" type="email" name="studentEmail"
								placeholder="Enter Student Email id">
						</div>

						<div class="mb-2">
							<lable class="text">College Name</lable>
							<br> <input class="text1" type="text"
								name="studentCollageName" placeholder="Enter College Name">
						</div>
                          
						<div class="radio-buttons mb-4">
							<label class="text">Course Name</label>
							<div class="text">
								<input class="text1" type="radio"
									name="studentCourse" value="Java"> <label
									class="form-check-label">Java</label>
							</div>
							<div class="text">
								<input class="text1" type="radio"
									name="studentCourse" value="Python"> <label
									class="form-check-label">Python</label>
							</div>
							<div class="text">
								<input class="text1" type="radio" name="studentCourse"
									value="Testing"> <label class="form-check-label">Testing</label>
							</div>
							<div class="text">
								<input class="text1" type="radio" name="studentCourse"
									value="Data Science"> <label class="form-check-label">Data
									Science</label>
							</div>
						</div>

						<div class="mb-3">
							<label class="text">Batch Number</label><br>
							<select class="text1" name="batchNumber">
								<option>Select Batch No</option>
								<option value="Reg-189">Reg-189</option>
								<option value="Reg-188">Reg-188</option>
							</select>
						</div>
					</div>
				</div>

				<div class="text-center mt-4">
					<button type="submit" class="btn btn-success btn-sm">Submit</button>
				</div>
			</form>
		</section>
	</div>

</body>
</html>