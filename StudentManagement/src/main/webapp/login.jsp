<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Admin Login</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
</head>
<body>

  <div class="login-box">
    <h2> Login</h2>
    <form action="login" method="get">
      <div class="mb-3">
        <label for="username" class="form-label">User Name</label>
        <input type="text" id="username" name="username" class="form-control" placeholder="Enter UserName" required>
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Enter Password" required>
      </div>
      <button type="submit" class="btn btn-primary">Login</button>
    </form>
  </div>

</body>
</html>