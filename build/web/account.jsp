<%@page import="java.sql.*"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <title>My Account</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>

  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(to right, #f8f5ff, #f2e7ff);
    }

    .content {
      margin-left: 220px;
      margin-top: 120px;
      padding: 20px;
    }

    .card {
      border-radius: 20px;
      box-shadow: 0 4px 20px rgba(162, 121, 255, 0.1);
    }

    .card-title {
      color: #7c3aed;
      font-weight: 600;
    }

    .btn-purple {
      background-color: #a78bfa !important;
      color: #fff !important;
    }

    .btn-purple:hover {
      background-color: #7c3aed !important;
    }

    .btn-danger {
      background-color: #ef4444;
    }

    .btn-danger:hover {
      background-color: #dc2626;
    }

    h2 {
      color: #6b21a8;
      font-weight: bold;
    }

    .label {
      font-weight: 500;
    }
  </style>
</head>

<body>

<%@ include file="bar.jsp" %>

<div class="content">
  <div class="container-fluid">

    <h2 class="text-center">My Account</h2>

    <%
       String userName = (String) session.getAttribute("username");
    %>


    <!-- Change Password -->
    <div class="card p-4 mb-4">

      <h5 class="card-title">Change Password</h5>

      <p>
        If you remember your old password, you can change it here.
      </p>

      <form action="UpdatePasswordServlet" method="post">

        <div class="mb-3">

          <label class="form-label">User Name</label>

          <input type="text"
                 name="uname"
                 class="form-control"
                 value="<%= userName != null ? userName : "" %>"
                 required>

          <label class="form-label">Old Password</label>

          <input type="password"
                 name="opwd"
                 class="form-control"
                 required>

        </div>

        <div class="mb-3">

          <label class="form-label">New Password</label>

          <input type="password"
                 name="npwd"
                 class="form-control"
                 required>

        </div>

        <button type="submit" class="btn btn-purple">
          Update Password
        </button>

      </form>

    </div>


    <!-- Forgot Password -->
    <div class="card p-4 mb-4">

      <h5 class="card-title">Forgot Password?</h5>

      <p>
        Don't remember your old password?
        Reset your password using OTP sent to your registered email.
      </p>

      <a href="forgotPassword.jsp" class="btn btn-purple">
        Forgot Password
      </a>

    </div>


    <!-- Delete Account -->
    <div class="card p-4">

      <h5 class="card-title">Delete Account</h5>

      <p>
        This action is <strong>permanent</strong>.
        Please confirm your credentials.
      </p>

      <form action="deleteaccount.jsp"
            method="post"
            onsubmit="return confirm('Are you sure you want to delete your account?');">

        <div class="mb-3">

          <label class="form-label">User Name</label>

          <input type="text"
                 name="username"
                 class="form-control"
                 value="<%= userName != null ? userName : "" %>"
                 placeholder="Enter your username"
                 required>

          <div class="mb-3">

            <label class="form-label">Password</label>

            <input type="password"
                   name="password"
                   class="form-control"
                   required>

          </div>

          <button type="submit" class="btn btn-purple">
            Delete My Account
          </button>

      </form>

    </div>

  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>