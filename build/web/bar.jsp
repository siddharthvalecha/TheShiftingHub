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


    
  <!-- ? Navbar -->
  <nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
      <span class="hamburger" onclick="toggleSidebar()">&#9776;</span>
      <a class="navbar-brand ms-5 logo" href="#"><img src="icons/logo.png" alt="logo" width="100" height="75"></span></a>

      <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <form class="d-none d-md-flex mx-auto" role="search" style="width: 450px;">
        <div class="input-group">
          <span class="input-group-text bg-white border-end-0 rounded-start-pill">
            <i class="fas fa-search text-muted"></i>
          </span>
          <input class="form-control border-start-0 rounded-end-pill" type="search" placeholder="Search..." aria-label="Search">
        </div>
      </form>

      <!-- <form class="d-none d-lg-flex mx-auto" role="search" style="width: 300px;">
        <input class="form-control px-3" type="search" placeholder="Search" aria-label="Search">
      </form> -->


      <!-- simple search was taking whole width so upper one is updated search bar  -->
      <!-- <input class="form-control rounded-pill px-4" type="search" placeholder="Search" aria-label="Search"> -->

      <!-- navbar content hidden -->

        <!-- <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <a class="nav-link p-0 me-2 mt-2" href="#">
            <img src="images/image.png" alt="Log out" style="width: 30px; height: 30px; object-fit: contain;">
          </a>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle fs-5" href="#" role="button" data-bs-toggle="dropdown">
              Support
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Feedback</a></li>
              <li><a class="dropdown-item" href="#">Complain</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">Guide</a></li>
            </ul>
          </li>
        </ul> -->
      </div>
    </div>
  </nav>

  <!-- ? Marquee Section -->
  <marquee behavior="scroll" direction="left" style="background-color: lavender; color: #4b0082; padding: 8px; font-weight: 500; z-index: 1040; position: relative;">
    ? Bookings open for April! Hurry and grab your slot | ? Exciting discounts available this month | ? Office Hours: Mon-Sat, 9 AM - 6 PM | ? Support now available on WhatsApp!
  </marquee>
  



  <!-- ? Sidebar -->
  <div id="sidebar" class="sidebar">

    <nav class="nav flex-column ">
      <a class="nav-link" href="loginpage.jsp"><span class="icon"><img src="icons/home.png" alt="Home" width="20" height="20"></span><span class="text">Home</span></a>
      <a class="nav-link" href="productform.jsp "><span class="icon"><img src="icons/product.png" alt="Product" width="20" height="20"></span><span class="text">Sell Product</span></a>
      <a class="nav-link" href="ViewProductServlet "><span class="icon"><img src="icons/product.png" alt="Product" width="20" height="20"></span><span class="text">Buy Product</span></a>
      <a class="nav-link" href="bookingform.jsp"><span class="icon"><img src="icons/booking.png" alt="Booking" width="20" height="20"></span><span class="text">Booking</span></a>
      <a class="nav-link" href="account.jsp"><span class="icon"><img src="icons/account.png" alt="Account" width="20" height="20"></span><span class="text">Account</span></a>
      <a class="nav-link" href="feedbackform.jsp"><span class="icon"><img src="icons/feedback.png" alt="Feedback" width="20" height="20"></span><span class="text">Feedback</span></a>
      <a class="nav-link" href="complainform.jsp"><span class="icon"><img src="icons/complain.png" alt="Complain" width="20" height="20"></span><span class="text">Complain</span></a>
      <a class="nav-link" href="LogoutServlet">
    <span class="icon">
        <img src="icons/logout.png" alt="Logout" width="20" height="20">
    </span>
    <span class="text">Logout</span>
</a>
    </nav>
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
