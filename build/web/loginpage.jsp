<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Login Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

  <style>
      html{
   scroll-behavior: smooth;
   }


    body {
      font-family: 'Segoe UI', sans-serif;
      overflow-x: hidden;
    }

    .navbar {
      background-color: lavender;
      height: 80px;
      position: fixed;
      top: 0;
      width: 100%;
      z-index: 1050;

    }

    .hamburger {
      font-size: 24px;
      cursor: pointer;
      padding: 10px;
      position: absolute;
      left: 10px;
      top: 50%;
      transform: translateY(-50%);
      z-index: 1001;
    }

    .sidebar {
      position: fixed;
      width: 220px;
      background-color: #f0f0ff;
      transition: all 0.8s ease;
      padding-top: 20px;
      height: calc(100vh - 80px);
      top: 80px;
      left: 0;
      border-right: 2px solid lavender;
      z-index: 1;
      overflow-y: auto;
    }

    .sidebar.collapsed {
      width: 60px;
    }

    .sidebar .nav-link {
      color: #333;
      font-size: 1rem;
      padding: 12px 20px;
      display: flex;
      align-items: center;
      transition: 0.2s;
    }

    .sidebar .nav-link:hover {
      background-color: #dcdcff;
      border-radius: 8px;
    }

    .sidebar .nav-link .icon {
      display: inline-block;
      width: 25px;
      text-align: center;
      font-size: 1.2rem;
      margin-right: 10px;
    }

    .sidebar .nav-link .text {
      display: inline-block;
      transition: margin-left 0.5s ease-in-out; /*smooth motion */
      animation: fadeInSlide 0.6s ease;
      
    }

    .sidebar.collapsed .nav-link .text {
      display: none;

    }

    .sidebar.collapsed .nav-link .icon {
      margin-right: 0;
      width: 100%;
      text-align: center;
    }

    .content {
      margin-left: 220px;
      margin-top: 40px;
      padding: 20px;
      transition: margin-left 0.5s ease-in-out; /*smooth motion */
      animation: fadeInSlide 0.6s ease;
    }

    .sidebar.collapsed + .content {
      margin-left: 60px;
    }

    .notification{
     background-color: lavender;
     box-shadow: 0 4px 6px rgba(0,0,0,0.1);
     margin-top: auto;
     margin-right: 10px;



    }

  

.badge-theme {
    background-color: #a77ee0;
    color: white;
    font-weight: 500;
    padding: 6px 12px;
    border-radius: 12px;
    font-size: 0.9rem;
    display: inline-flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    min-width: 100px; /* optional: for consistent width */
  }


    @keyframes fadeInSlide {
  from {
    opacity: 0;
    transform: translateX(30px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}

/* styling for main content */

.card {
      border: none;
      border-radius: 15px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.05);
    }
    .greeting {
      font-size: 1.5rem;
      font-weight: 600;
    }
    .section-title {
      font-size: 1.2rem;
      font-weight: 500;
    }

  </style>
</head>
<body>


  <%@include file="bar.jsp" %>
  
<%
    String fullName = (String) session.getAttribute("fullname");
    if (fullName == null) {
        fullName = "User";
    }
%>

<%
    String userName = (String) session.getAttribute("username");
    if (userName == null) {
        userName = "User";
    }

    String pickup = "", drop = "", dos = "";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "root");

        PreparedStatement st = connection.prepareStatement("SELECT pickupaddr, deliveryaddr, dos FROM shifttable WHERE username = ?");
        st.setString(1, userName);

        ResultSet rs = st.executeQuery();

        if (rs.next()) {
            pickup = rs.getString("pickupaddr");
            drop = rs.getString("deliveryaddr");
            dos = rs.getString("dos");
        }

        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<%
    

    String  complaintDesc = "", doc= "",status="pending";

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "root");

        PreparedStatement st = connection.prepareStatement("SELECT complaindesc,status,dateofcomplain FROM complainttable WHERE fullname = ?");
        st.setString(1, userName);

        ResultSet rs = st.executeQuery();

        if (rs.next()) {
           
            complaintDesc = rs.getString("complaindesc");
            doc = rs.getString("doc");
        }

        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>


  

  <div class="container content py1   ">
<!-- Welcome Section -->
<div class="mb-4 text-center" style="margin-top: 0;">
  <p class="greeting fw-bold fs-3" style="color: #212529;">
    Welcome back, <span style="color: #6f42c1;"><%= fullName %></span>
  </p>
  <p class="text-muted fs-5">
    Every move is a new beginning, we're here to make it smooth!
  </p>
</div>
  
  



    

    <!-- Bookings Overview -->
    <div class="row mb-4">
      <div class="col-md-6">
        <div class="card p-3">
          <h5 class="section-title">Your Next Move</h5>
          <p><strong>Pickup:</strong> <%= pickup %></p>
          <p><strong>Drop:</strong> <%= drop %></p>
          <p><strong>Date:</strong> <%= dos %></p>
          <span class="badge-theme">Confirmed</span>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card p-3">
          <h5 class="section-title">Status Overview</h5>
          <p>Total Bookings: <strong>1</strong></p>
          <p>Completed Shifts: <strong>0</strong></p>
          <p>Pending Complaints: <strong>1</strong></p>
           <span class="badge-theme">Check status</span>
        </div>
      </div>
    </div>

    <!-- Additional Booking-like Cards -->
    <div class="row mb-4">
      <div class="col-md-6">
        <div class="card p-3">
          <h5 class="section-title">Service Requested</h5>
          <p><strong>Pickup:</strong><%= pickup %></p>
          <p><strong>Drop:</strong> <%= drop %></p>
          <p><strong>Date:</strong><%= dos %></p>
          <span class="badge-theme">In Progress</span>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card p-3">
          <h5 class="section-title">Last Complaint Raised</h5>
          <p><strong>Issue:</strong> Damaged Item</p>
          <p><strong>Status:</strong> Pending</p>
          <p><strong>Date:</strong>07,May 2025  </p>
          <span class="badge-theme">Pending</span>
        </div>
      </div>
    </div>

<!-- Notification Section
<div class="container my-5">
  <div class="row justify-content-center">
    <div class="col-md-8">
      <div class="card shadow-lg border-0" style="background-color: lavender;">
        <div class="card-body">
          <h3 class="card-title text-center mb-3" style="color: #5c4084;">Latest Notifications</h3>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">? Bookings open for April! Hurry up and grab your slot.</li>
            <li class="list-group-item">? Special discount on cross-country moves this month!</li>
            <li class="list-group-item">? New office timings: 9 AM - 6 PM (Mon-Sat)</li>
            <li class="list-group-item">? Customer support now available via WhatsApp.</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div> -->







  <!-- ? Script -->
  <script>
    function toggleSidebar() {
      const sidebar = document.getElementById("sidebar");
      sidebar.classList.toggle("collapsed");

      const content = document.querySelector(".content");
      if (sidebar.classList.contains("collapsed")) {
        content.style.marginLeft = "60px";
      } else {
        content.style.marginLeft = "220px";
      }
    }
    
  </script>
  <%
    String msg = request.getParameter("msg");
%>
<% if ("updated".equals(msg)) { %>
<script>
    alert("Password updated successfully!");
</script>
<% } %>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
