<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">

    <style>
        .view {
            background-image: url("https://t4.ftcdn.net/jpg/05/25/08/07/240_F_525080722_z1taRKunQMSoEUgZSIgLOO8kKN23L2vy.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh;
        }

        .card {
            background-color: rgba(128, 128, 128, 0.9); /* semi-transparent gray */
            margin: 0 auto;
            margin-top: 100px;
        }

        label {
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="view d-flex justify-content-center align-items-center ">
    <div class="card p-2 mb-5 shadow" style="width: 35rem;">
        <div class="card-body">
            <h4 class="text-center mb-4 text-white">Edit Student Info</h4>
            <form action="updateData">
                <input type="hidden" name="rollno" value="${data.rollno}">

                <div class="mb-3">
                    <label for="studentName" class="form-label text-white">Student Name</label>
                    <input type="text" class="form-control" id="studentName" name="studentName" value="${data.studentName}">
                </div>

                <div class="mb-3">
                    <label for="studentCourse" class="form-label text-white">Student Course</label>
                    <input type="text" class="form-control" id="studentCourse" name="studentCourse" value="${data.studentCourse}">
                </div>

                <div class="mb-3">
                    <label for="batchMode" class="form-label text-white">Batch Mode</label>
                    <select class="form-select" id="batchMode" name="batchMode">
                        <option>Select Batch</option>
                        <option ${data.batchMode == 'online' ? 'selected' : ''}>online</option>
                        <option ${data.batchMode == 'offline' ? 'selected' : ''}>offline</option>
                    </select>
                </div>

                <div class="mb-4">
                    <label for="batchNumber" class="form-label text-white">Batch Number</label>
                    <select class="form-select" id="batchNumber" name="batchNumber">
                        <option>Select Batch No</option>
                        <option value="Reg-189" ${data.batchNumber == 'Reg-189' ? 'selected' : ''}>Reg-189</option>
                        <option value="Reg-188" ${data.batchNumber == 'Reg-188' ? 'selected' : ''}>Reg-188</option>
                    </select>
                </div>

                <div class="d-grid">
                    <input type="submit" class="btn btn-light" value="Update">
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
