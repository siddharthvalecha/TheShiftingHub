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
<%String fullName = (String) session.getAttribute("fullname");%>
<body>
    

    <%@include file="bar.jsp" %>
<!-- ? Booking Form Section -->
<div id="bookingSection" class="d-flex justify-content-center my-5">
  <div class="card shadow-lg p-5 w-100" style="
      max-width: 720px;
      background: linear-gradient(135deg, #f3f3ff, #ffffff);
      border-radius: 20px;
      box-shadow: 0 12px 30px rgba(128, 112, 224, 0.15);
    ">

    <h5 class="section-title mb-4 text-center" style="color: #5a5a89;">Book Your Shift</h5>

<form action="BookingServlet" method="post">

<div class="col-md-6">
    <label for="UserName" class="form-label fw-semibold">User Name</label>
    <input type="text"
           name="username"
           class="form-control rounded-3 py-2"
           id="userName"
           value="<%=session.getAttribute("username")%>"
           readonly>
</div>

<div class="col-md-6">
    <label for="FullName" class="form-label fw-semibold">Full Name</label>
    <input type="text"
           name="fullname"
           class="form-control rounded-3 py-2"
           id="fullName"
           value="<%=session.getAttribute("fullname")%>"
           readonly>
</div>

<div class="row g-4">

<div class="col-md-6">
    <label for="shiftDate" class="form-label fw-semibold">Moving Date</label>
    <input type="date"
           name="movingDate"
           class="form-control rounded-3 py-2"
           id="shiftDate"
           required>
</div>

<div class="col-md-6">
    <label for="Contact" class="form-label fw-semibold">Contact</label>
    <input type="text"
           name="contact"
           class="form-control rounded-3 py-2"
           id="cont"
           value="<%=session.getAttribute("contact")%>"
           readonly>
</div>

<div class="col-md-6">
    <label for="Email" class="form-label fw-semibold">Email</label>
    <input type="email"
           name="email"
           class="form-control rounded-3 py-2"
           id="em"
           value="<%=session.getAttribute("email")%>"
           readonly>
</div>

<div class="col-md-6">
    <label class="form-label fw-semibold">Moving Time</label>

    <select name="movingTime"
            class="form-select rounded-3">

        <option>Morning</option>
        <option>Afternoon</option>
        <option>Evening</option>

    </select>
</div>

<div class="col-md-6">
    <label class="form-label fw-semibold">Pickup Address</label>

    <input type="text"
           name="pickupAddress"
           class="form-control rounded-3 py-2"
           placeholder="Enter Pickup Address"
           required>

</div>

<div class="col-md-6">
    <label class="form-label fw-semibold">Drop Address</label>

    <input type="text"
           name="dropAddress"
           class="form-control rounded-3 py-2"
           placeholder="Enter Drop Address"
           required>

</div>

<div class="col-md-6">
    <label class="form-label fw-semibold">Vehicle Type</label>

    <select name="vehicleType"
            class="form-select rounded-3">

        <option>Mini Truck</option>
        <option>Pickup Van</option>
        <option>Truck</option>
        <option>Tempo</option>

    </select>

</div>

<div class="col-md-6">
    <label class="form-label fw-semibold">House Type</label>

    <select name="houseType"
            class="form-select rounded-3">

        <option>1 BHK</option>
        <option>2 BHK</option>
        <option>3 BHK</option>
        <option>Villa</option>
        <option>Office</option>

    </select>

</div>

<div class="col-12">
    <label class="form-label fw-semibold">Additional Instructions</label>

    <textarea
        name="instructions"
        class="form-control"
        rows="3"
        placeholder="Any special instructions..."></textarea>

</div>

<div class="mt-4 text-end">

<button type="submit"
class="btn px-4 py-2 rounded-pill text-white"
style="background:#8877dc;">

Book Shift

</button>

</div>

</div>

</form>

  </div>
</div>

 


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

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
