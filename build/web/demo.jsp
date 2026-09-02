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

    <form action="bookingjavacode.jsp">
        
        <div class="col-md-6">
          <label for="UserName"  class="form-label fw-semibold">User Name</label>
          <input type="text" name="uname" class="form-control rounded-3 py-2" id="userName" placeholder="Enter User Name">
        </div>
       
      
        
          <div class="col-md-6">
          <label for="FullName"  class="form-label fw-semibold">Full Name</label>
          <input type="text" name="fname" class="form-control rounded-3 py-2" id="fullName" placeholder="Enter Full Name">
        </div>
      

      <div class="row g-4">
           <div class="col-md-6">
          <label for="shiftDate" class="form-label fw-semibold">Date</label>
          <input type="text" name="date" class="form-control rounded-3 py-2" id="shiftDate">
        </div>
          <div class="col-md-6">
          <label for="Contact" name="cont" class="form-label fw-semibold">Contact</label>
          <input type="number"  name="cont" class="form-control rounded-3 py-2" id="cont" placeholder="Enter Contact">
        </div>
          <div class="col-md-6">
          <label for="Email" class="form-label fw-semibold">Email</label>
          <input type="text" name="email" class="form-control rounded-3 py-2" id="em">
        </div>
          
        <div class="col-md-6">
          <label for="pickupLocation" class="form-label fw-semibold">Pickup Location</label>
          <input type="text" name="paddr" class="form-control rounded-3 py-2" id="pickupLocation" placeholder="e.g. Indore">
        </div>

        <div class="col-md-6">
          <label for="dropLocation" class="form-label fw-semibold">Drop Location</label>
          <input type="text" name="daddr" class="form-control rounded-3 py-2" id="dropLocation" placeholder="e.g. Bhopal">
        </div>


      <div class="mt-4 text-end">
        <button type="submit" class="btn px-4 py-2 rounded-pill text-white" style="background-color: #8877dc; border-color: #8877dc;">
          Book Shift
        </button>
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
