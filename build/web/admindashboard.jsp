<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Admin Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />

  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f3f4fb;
    }

    .sidebar {
      height: 100vh;
      background: linear-gradient(135deg, #dcd5f7, #f3f3ff);
      padding-top: 20px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.05);
    }

    .sidebar a {
      display: block;
      padding: 12px 25px;
      color: #4c4c7d;
      text-decoration: none;
      font-weight: 500;
    }

    .sidebar a:hover {
      background-color: #eae4fb;
      border-radius: 0 30px 30px 0;
    }

    .content {
      padding: 30px;
    }

    .card {
      border: none;
      border-radius: 15px;
      box-shadow: 0 8px 18px rgba(0,0,0,0.05);
    }

    .table thead {
      background-color: #ece8fd;
      color: #5a5a89;
    }

    .btn-status {
      border-radius: 20px;
      padding: 4px 15px;
    }

    .status-pending {
      background-color: #fce4ec;
      color: #c2185b;
    }

    .status-resolved {
      background-color: #e0f2f1;
      color: #00796b;
    }

    .navbar {
      background-color: #fff;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.03);
    }

    .navbar-brand {
      font-weight: bold;
      color: #6f42c1;
    }
  </style>
</head>
<body>

  <div class="container-fluid">
    <div class="row">
      
      <!-- Sidebar -->
      <div class="col-md-2 sidebar">
        <h4 class="text-center mb-4">Admin Panel</h4>
        <a href="admindashboard.jsp">Dashboard</a>
        <a href="#">Complaints</a>
        <a href="#">Users</a>
        <a href="home.jsp">Logout</a>
      </div>

      <!-- Main Content -->
      <div class="col-md-10">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light mb-4">
          <div class="container-fluid">
            <a class="navbar-brand" href="#">Welcome, Admin</a>
          </div>
        </nav>

        <div class="content">
          <!-- Cards -->
          <div class="row g-4 mb-4">
            <div class="col-md-4">
              <div class="card p-4 text-center">
                <h5>Total Complaints</h5>
                <h2 class="text-primary">120</h2>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card p-4 text-center">
                <h5>Pending</h5>
                <h2 class="text-warning">45</h2>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card p-4 text-center">
                <h5>Resolved</h5>
                <h2 class="text-success">75</h2>
              </div>
            </div>
          </div>

          <!-- Complaint Table -->
          <div class="card p-4">
            <h5 class="mb-3">Recent Complaints</h5>
            <div class="table-responsive">
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Date</th>
                    <th>Status</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>Aarav Sharma</td>
                    <td>Shift vehicle was late</td>
                    <td>2025-04-10</td>
                    <td><span class="btn btn-sm btn-status status-pending">Pending</span></td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>Riya Patel</td>
                    <td>Items were damaged</td>
                    <td>2025-04-09</td>
                    <td><span class="btn btn-sm btn-status status-resolved">Resolved</span></td>
                  </tr>
                  <!-- Add more rows dynamically from DB -->
                </tbody>
              </table>
            </div>
          </div>

        </div>
      </div>

    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
