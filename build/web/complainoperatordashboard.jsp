<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Complain Operator Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            background-color: #f4f4f9;
            font-family: 'Segoe UI', sans-serif;
        }
        .sidebar {
            height: 100vh;
            background-color: #2c3e50;
            color: white;
            padding: 20px;
            position: fixed;
            width: 250px;
        }
        .sidebar h4 {
            margin-bottom: 30px;
        }
        .sidebar a {
            color: #ecf0f1;
            text-decoration: none;
            display: block;
            margin-bottom: 15px;
        }
        .sidebar a:hover {
            color: #1abc9c;
        }
        .content {
            margin-left: 270px;
            padding: 20px;
        }
        .card {
            border: none;
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .navbar {
            background-color: #5a5a89;
        }
        .navbar-brand, .nav-link, .navbar-text {
            color: #fff !important;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <h4><i class="fas fa-headset me-2"></i>Complain Operator</h4>
    <a href="complainoperatordashboard.jsp"><i class="fas fa-home me-2"></i>Dashboard</a>
    <a href="#"><i class="fas fa-plus me-2"></i>Register Complaint</a>
    <a href="#"><i class="fas fa-eye me-2"></i>View Complaints</a>
    <a href="home.jsp"><i class="fas fa-sign-out-alt me-2"></i>Logout</a>
</div>

<!-- Main Content -->
<div class="content">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg mb-4 rounded shadow">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">The Shifting Hub</a>
            <div class="d-flex">
                <span class="navbar-text">Welcome, Complain Operator</span>
            </div>
        </div>
    </nav>

    <!-- Dashboard Cards -->
    <div class="row g-4">
        <div class="col-md-4">
            <div class="card p-3">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-plus-circle me-2 text-primary"></i>Register Complaint</h5>
                    <p class="card-text">Submit a new customer complaint.</p>
                    <a href="#" class="btn btn-primary">Register</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card p-3">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-clipboard-list me-2 text-success"></i>View Complaints</h5>
                    <p class="card-text">Manage and resolve raised complaints.</p>
                    <a href="#" class="btn btn-success">View</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card p-3">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-sign-out-alt me-2 text-danger"></i>Logout</h5>
                    <p class="card-text">End your session securely.</p>
                    <a href="login.jsp" class="btn btn-danger">Logout</a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
