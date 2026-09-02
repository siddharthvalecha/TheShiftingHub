<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Login / Complaint Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

  <style>
    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f8f9fa;
      overflow-x: hidden;
    }

    .content {
      margin-left: 220px;
      margin-top: 40px;
      padding: 20px;
      transition: margin-left 0.5s ease-in-out;
      animation: fadeInSlide 0.6s ease;
    }

    .sidebar.collapsed + .content {
      margin-left: 60px;
    }

    .card {
      border: none;
      border-radius: 20px;
      background: linear-gradient(135deg, #f3f3ff, #ffffff);
      box-shadow: 0 12px 30px rgba(128, 112, 224, 0.15);
    }

    .section-title {
      font-size: 1.5rem;
      font-weight: 600;
      color: #5a5a89;
    }

    .form-label {
      font-weight: 600;
      color: #333;
    }

    .form-control {
      border-radius: 12px;
      padding: 10px 15px;
    }

    .btn-lavender {
  background: linear-gradient(135deg, #bfaaff, #d9d4f7);
  border: none;
  border-radius: 50px;
  color: #fff;
  font-weight: 500;
  padding: 10px 30px;
  transition: all 0.3s ease;
  box-shadow: 0 8px 20px rgba(170, 150, 250, 0.2);
}

.btn-lavender:hover {
  background: linear-gradient(135deg, #a78bfa, #c6b7f7);
  box-shadow: 0 10px 24px rgba(130, 110, 230, 0.25);
  transform: translateY(-2px);
}


    @keyframes fadeInSlide {
      from {
        opacity: 0;
        transform: translateY(30px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }
  </style>
</head>
<%String fullName = (String) session.getAttribute("fullname");%>
<body>

  <%@include file="bar.jsp" %>

  <!-- Booking/Complaint Form Section -->
  <div id="bookingSection" class="d-flex justify-content-center align-items-center min-vh-100">
    <div class="card p-5 w-100" style="max-width: 720px;">
      <h5 class="section-title text-center mb-4">Raise a Complaint</h5>

      <form action="complainjavacode.jsp">
         <div class="row g-4">
        <div class="col-md-12">
            <label for="fname" class="form-label">Full Name</label>
    <input type="text" name="fname" class="form-control" id="fname"
           value="<%= fullName != null ? fullName : "" %>" 
           placeholder="Enter your full name" required>
  </div>
</div>


          <div class="col-md-12">
            <label for="desc" class="form-label">Complaint Description</label>
            <textarea name="desc" class="form-control" id="desc" rows="4" placeholder="Describe your issue here..." required></textarea>
          </div>
        </div>

        <div class="mt-4 text-center">
          <button type="submit" class="btn btn-lavender">Submit</button>
        </div>
      </form>
    </div>
  </div>

  <!-- Sidebar Toggle Script -->
  <script>
    function toggleSidebar() {
      const sidebar = document.getElementById("sidebar");
      sidebar.classList.toggle("collapsed");

      const content = document.querySelector(".content");
      content.style.marginLeft = sidebar.classList.contains("collapsed") ? "60px" : "220px";
    }
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
